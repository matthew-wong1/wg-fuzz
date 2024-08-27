struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(408f, 13734u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    return Struct_2(687f, Struct_1(_wgslsmith_f_op_f32(-global2.a), global2.b), 11559u);
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = min(global2.b | 1u, 4294967295u);
    let var_2 = Struct_2(-1670f, Struct_1(1664f, 25152u), ~(global2.b << (23584u % 32u)) >> ((1u & _wgslsmith_div_u32(global2.b, u_input.a.x >> (global2.b % 32u))) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-arg_0)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -776f));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_div_f32(-458f, -675f)) * -591f), select(~(~47059u), ~12202u, true)), func_2(), func_2(), abs(abs((vec4<u32>(13592u, u_input.e.x, var_2.c, 1u) | vec4<u32>(var_1, 73823u, var_1, 82465u)) << ((vec4<u32>(30540u, 0u, global2.b, 4294967295u) ^ vec4<u32>(18940u, u_input.b, var_1, var_2.b.b)) % vec4<u32>(32u)))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = ~(1i >> (0u % 32u));
    let var_1 = global2.b;
    let var_2 = arg_1.b.b;
    global0 = array<vec2<u32>, 14>();
    var var_3 = _wgslsmith_add_vec2_i32(select(u_input.d.yz, abs(u_input.d.zy) ^ _wgslsmith_clamp_vec2_i32(u_input.d.xz, u_input.d.zy, vec2<i32>(-20060i, -1670i)), all(vec2<bool>(true, true))) << (arg_1.d.zz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, 0i), reverseBits(u_input.d.yz & u_input.d.wy)), ~abs(1i)));
    return Struct_1(_wgslsmith_f_op_f32(sign(-1083f)), 64951u);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1.b;
    let var_1 = arg_1.b;
    global0 = array<vec2<u32>, 14>();
    global1 = _wgslsmith_mult_u32(abs(func_2().c) & _wgslsmith_clamp_u32(4294967295u, 10965u, 89188u), firstTrailingBit(arg_0 >> (_wgslsmith_add_u32(global2.b, var_1.c) % 32u)));
    var var_2 = select(firstTrailingBit(var_0.c) << (_wgslsmith_mod_u32(var_1.c, var_1.b.b) % 32u), ~global2.b, ((abs(arg_0) > ~125567u) & select(true, all(vec4<bool>(false, false, true, false)), true)) != ((arg_2 | _wgslsmith_clamp_i32(-52070i, -20189i, arg_2)) > _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.wy, u_input.d.yx), u_input.d.x)));
    return func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.a, 1340f, -1021f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, 1000f, global2.a) + vec3<f32>(var_0.a, var_0.b.a, -777f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, 1225f, -1000f) - vec3<f32>(global2.a, 910f, -230f))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec3<i32>(-1i) * -vec3<i32>(~(-22914i), 0i, 14813i));
    global0 = array<vec2<u32>, 14>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global2.a), func_4(~(~countOneBits(25321u)), Struct_4(func_3(i32(-1i) * -1i, func_1(vec3<f32>(423f, global2.a, 1248f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.a) + vec2<f32>(global2.a, global2.a))), func_2(), func_1(vec3<f32>(global2.a, 301f, global2.a)).b, ~_wgslsmith_mod_vec4_u32(vec4<u32>(31331u, u_input.c.x, 17303u, 4294967295u), vec4<u32>(global2.b, global2.b, 100916u, u_input.e.x))), _wgslsmith_mult_i32(2147483647i, var_0.x)), 0u);
    global0 = array<vec2<u32>, 14>();
    var var_2 = u_input.d;
    var_2 = vec4<i32>(0i, var_2.x, ~(i32(-1i) * -7074i), firstTrailingBit(u_input.d.x));
    var var_3 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.a, 1058f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a, -980f, global2.a) - vec3<f32>(-1127f, 287f, global2.a)), vec3<f32>(-733f, 315f, -923f), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-139f, var_1.a, var_1.b.a) * vec3<f32>(-151f, global2.a, -252f)) - vec3<f32>(global2.a, -459f, var_1.a)))))).b;
    let var_4 = _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], ~(~(~(~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b.a + var_1.a))) + _wgslsmith_f_op_f32(round(360f))) * global2.a), vec4<i32>(0i, _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(var_0.x, var_2.x)), min(-1i, -14213i)), ~(-35378i), ~u_input.d.x));
}

