struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<f32, 26>;

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(27236i, -24439i, -23773i), Struct_1(0i, -338f, vec2<bool>(true, true), true), 22597u, Struct_2(vec3<u32>(45079u, 18137u, 107679u), Struct_1(i32(-2147483648), -484f, vec2<bool>(true, true), false)), Struct_3(vec4<i32>(i32(-2147483648), -18575i, 45983i, 9197i), Struct_1(-16217i, -1011f, vec2<bool>(false, true), false)));

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<u32>(1u, 0u, 10433u), Struct_1(-69420i, -289f, vec2<bool>(true, false), false)), Struct_2(vec3<u32>(10317u, 4294967295u, 20944u), Struct_1(i32(-2147483648), -1257f, vec2<bool>(false, true), false)), Struct_2(vec3<u32>(60236u, 33921u, 4294967295u), Struct_1(2147483647i, 533f, vec2<bool>(false, true), false)), Struct_2(vec3<u32>(65877u, 4294967295u, 1u), Struct_1(7681i, 404f, vec2<bool>(false, false), false)), Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(-1i, -903f, vec2<bool>(false, false), false)), Struct_2(vec3<u32>(2092u, 4294967295u, 0u), Struct_1(0i, 1000f, vec2<bool>(false, false), false)), Struct_2(vec3<u32>(37180u, 9768u, 4294967295u), Struct_1(4473i, -831f, vec2<bool>(true, true), false)), Struct_2(vec3<u32>(1u, 56522u, 42801u), Struct_1(-1i, 2488f, vec2<bool>(true, true), false)), Struct_2(vec3<u32>(30053u, 1u, 4294967295u), Struct_1(-17626i, -346f, vec2<bool>(false, true), true)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(vec3<i32>(-15219i, global3.d.b.a & ~firstTrailingBit(global3.e.b.a), global3.e.a.x), global0[_wgslsmith_index_u32(u_input.c, 26u)], 38289u, global3.d, Struct_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-26841i, global3.b.a, 0i, u_input.a), vec4<i32>(u_input.a, global3.e.a.x, u_input.a, 0i)), u_input.d, countOneBits(~u_input.d)), Struct_1(_wgslsmith_div_i32(max(global3.e.b.a, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(58699i, 0i, -2147483647i, global3.a.x), global3.e.a)), -333f, vec2<bool>(global3.e.b.d, !global3.d.b.c.x), global3.d.b.c.x)));
    return Struct_5(global3.d.a.x, Struct_4(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.e.a.x, u_input.a, global3.b.a), var_0.a), ~(-u_input.d.zyz)), global0[_wgslsmith_index_u32(~(~(~global3.c)), 26u)], ~var_0.c, var_0.d, Struct_3(global3.e.a, Struct_1(-var_0.b.a, 1000f, !var_0.e.b.c, all(vec4<bool>(false, var_0.b.c.x, true, true))))), ~abs(vec4<u32>(18291u, abs(4294967295u), ~var_0.c, 1u)));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> Struct_5 {
    global2 = array<vec2<f32>, 25>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2527f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.b.b)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global3.d.a.x, 26u)])))))) * _wgslsmith_div_f32(var_0.b.b.b, _wgslsmith_f_op_f32(-var_0.b.b.b)));
    let var_2 = select(!vec4<bool>((u_input.b > -44215i) & false, all(func_2().b.e.b.c), true, func_2().b.e.b.d), vec4<bool>(!global3.e.b.d, (arg_0.a | ~4294967295u) > ~_wgslsmith_dot_vec3_u32(arg_0.b.d.a, vec3<u32>(global3.c, 4294967295u, u_input.c)), !arg_2, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.c, 26u)]) != global3.d.b.b), vec4<bool>(!(-1000f > _wgslsmith_f_op_f32(-global3.d.b.b)), true, arg_2, true));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1255f * -1000f))))) - global1[_wgslsmith_index_u32(~(~(u_input.c << (0u % 32u))), 26u)]));
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global4 = array<Struct_2, 9>();
    let var_0 = func_3(func_2(), 2147483647i << (arg_0.x % 32u), all(vec4<bool>(true, true, any(vec3<bool>(false, global3.e.b.c.x, global3.b.c.x)), global3.b.c.x)));
    global3 = func_2().b;
    var var_1 = true;
    let var_2 = global3.d.a.x;
    return Struct_2(vec3<u32>(global3.c, ~min(global3.d.a.x, 1u) | ~1580u, countOneBits(~1u)), func_2().b.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<u32>(1u, 1u, u_input.c, 4294967295u));
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    let var_1 = _wgslsmith_dot_vec2_i32(abs(u_input.d.wz), u_input.d.wz);
    let var_2 = func_2();
    global3 = var_2.b;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec4<u32>(48816u, var_0.a.x, u_input.c, 1u) << (var_2.c % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-734f, _wgslsmith_f_op_f32(select(415f, var_2.b.e.b.b, var_2.b.b.c.x)), _wgslsmith_f_op_f32(max(-542f, var_0.b.b))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(11282u, 26u)], -1516f, var_3.b.b) - vec3<f32>(var_2.b.b.b, 303f, var_2.b.e.b.b)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 26u)], var_0.b.b, var_0.b.b), vec3<f32>(546f, -954f, 1656f))))))));
}

