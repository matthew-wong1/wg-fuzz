struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: Struct_3 = Struct_3(Struct_2(4294967295u, 1i, vec4<i32>(i32(-2147483648), -1i, 24159i, i32(-2147483648)), 484f, vec2<f32>(705f, 509f)), -1411f);

var<private> global2: array<Struct_3, 19>;

var<private> global3: array<u32, 5>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = max(u_input.a.yz, (_wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.wy) ^ ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 5u)], 1u)) >> (u_input.a.yz % vec2<u32>(32u))) << (vec2<u32>(global3[_wgslsmith_index_u32(global1.a.a, 5u)], u_input.a.x) % vec2<u32>(32u));
    var var_1 = abs(_wgslsmith_mult_u32(52620u, 1u));
    let var_2 = Struct_3(Struct_2(_wgslsmith_sub_u32(firstTrailingBit(var_0.x), ~1u), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(0i, -11273i, 1i, arg_2.x)), abs(global1.a.c)), reverseBits(global1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.d - arg_0.x), 2435f)), vec2<f32>(_wgslsmith_div_f32(217f, -418f), arg_1.x)), -1301f);
    let var_3 = var_2.a.c.zzx;
    global1 = global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(74601u, 0u, 44999u), vec3<u32>(49879u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(1u, 38637u)), _wgslsmith_dot_vec3_u32(~u_input.a.wyw, ~u_input.a.zxy)), _wgslsmith_clamp_u32(50184u, var_0.x, ~(u_input.a.x & 4294967295u)), (~u_input.a.x >> (1484u % 32u)) == countOneBits(countOneBits(var_2.a.a))) & min(global3[_wgslsmith_index_u32(u_input.a.x, 5u)] & 4294967295u, abs(4294967295u)), 19u)];
    return !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), any(vec2<bool>(true, true)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = arg_1.wz;
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = 126f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), global1.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2518f)), _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(global1.a.e.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.e.x * global1.b), -157f))));
    global3 = array<u32, 5>();
    let var_2 = Struct_2(_wgslsmith_dot_vec4_u32(func_4(global1.a.b >= reverseBits(arg_1.a.c.x), _wgslsmith_f_op_vec4_f32(-var_1), vec3<f32>(_wgslsmith_f_op_f32(min(-294f, var_0)), _wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)), -1514f), func_3(_wgslsmith_div_vec2_f32(var_1.yz, global1.a.e), _wgslsmith_div_vec2_f32(arg_1.a.e, global1.a.e), select(arg_1.a.c.yy, vec2<i32>(0i, global1.a.b), true))), u_input.a), global1.a.c.x, abs(abs(vec4<i32>(global1.a.c.x, ~arg_1.a.c.x, i32(-1i) * -53394i, global1.a.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global1.a.e.x)) - 400f)));
    global3 = array<u32, 5>();
    return global1.a;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = u_input.a;
    var var_1 = vec2<u32>(20228u, arg_2);
    let var_2 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true));
    let var_3 = var_0;
    let var_4 = vec3<bool>(false, true, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.x));
}

fn func_1() -> Struct_2 {
    let var_0 = select(select(vec3<bool>(true, true, u_input.a.x > abs(global3[_wgslsmith_index_u32(u_input.a.x, 5u)])), select(vec3<bool>(true, global1.a.b < global1.a.b, global1.b < global1.b), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(false, false, false), select(true, true, true));
    let var_1 = ~vec2<i32>(-(global1.a.b | abs(global1.a.b)), global1.a.b);
    let var_2 = vec2<bool>(var_0.x & !(global1.a.c.x > -60449i), var_0.x);
    global3 = array<u32, 5>();
    var var_3 = Struct_2(u_input.a.x, -var_1.x, global1.a.c, _wgslsmith_f_op_f32(func_5(~0u, (vec3<i32>(-1i) * -vec3<i32>(2147483647i, 6811i, global1.a.c.x)) << (firstLeadingBit(vec3<u32>(994u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a.a, 5u)], 5u)], 4294967295u) | vec3<u32>(global3[_wgslsmith_index_u32(global1.a.a, 5u)], 8303u, global1.a.a)) % vec3<u32>(32u)), 4294967295u, func_2(select(vec2<bool>(var_2.x, true), !vec2<bool>(true, var_0.x), !vec2<bool>(var_2.x, false)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~4294967295u), 19u)], vec2<u32>(select(28156u, global1.a.a, var_2.x), global3[_wgslsmith_index_u32(u_input.a.x, 5u)])))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.a.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.e * vec2<f32>(641f, global1.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -1450f) - vec2<f32>(global1.b, global1.b))))), vec2<f32>(_wgslsmith_div_f32(171f, -309f), _wgslsmith_f_op_f32(step(global1.b, -640f)))));
    return func_2(vec2<bool>(var_0.x, var_2.x), Struct_3(Struct_2(func_2(select(var_0.yz, vec2<bool>(var_2.x, var_0.x), var_2), global2[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.zx).a, ~_wgslsmith_div_i32(var_3.b, var_3.c.x), vec4<i32>(-39294i, _wgslsmith_dot_vec2_i32(global1.a.c.ww, global1.a.c.xx), global1.a.c.x, -45909i), 2162f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a.d, var_3.d))))), -640f), ~vec2<u32>(global1.a.a, _wgslsmith_dot_vec4_u32(u_input.a, min(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], 0u, global3[_wgslsmith_index_u32(62924u, 5u)], 1u), vec4<u32>(var_3.a, 0u, u_input.a.x, 1u)))));
}

fn func_6(arg_0: Struct_2) -> i32 {
    global2 = array<Struct_3, 19>();
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(29493u, global1.a.a), ~firstLeadingBit(vec2<u32>(62170u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], ~0u)));
    var var_1 = var_0.x;
    global3 = array<u32, 5>();
    var var_2 = func_1();
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_u32(~(~u_input.a.x), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)]), 0i, vec4<i32>(func_6(func_1()), global1.a.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.c.x, global1.a.b, global1.a.c.x, 8907i), global1.a.c), min(global1.a.c ^ vec4<i32>(global1.a.b, global1.a.b, global1.a.b, -9055i), vec4<i32>(0i, global1.a.c.x, global1.a.c.x, global1.a.c.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global1.a.c.x, global1.a.b), vec2<i32>(1i, global1.a.b), vec2<bool>(false, true)), global1.a.c.zx), (i32(-1i) * -31350i) | (global1.a.c.x ^ 2147483647i))), -1238f, global1.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.xwy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(697f, 1085f))))), var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(vec2<bool>(true, true), Struct_3(Struct_2(var_0.a, 2147483647i, vec4<i32>(var_0.b, var_0.b, 21633i, global1.a.b), var_0.e.x, vec2<f32>(global1.a.d, 1474f)), var_0.d), firstTrailingBit(u_input.a.zz)).e.x, var_0.e.x, _wgslsmith_f_op_f32(-global1.b)) + vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x)), -641f);
}

