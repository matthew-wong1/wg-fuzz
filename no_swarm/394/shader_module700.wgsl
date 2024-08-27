struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(vec2<i32>(i32(-2147483648), 4268i), vec2<f32>(-652f, -420f), false, 1i, -26986i), i32(-2147483648), true), Struct_2(vec2<i32>(-4319i, 2147483647i), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(724f, 642f), true, 0i, 6000i), i32(-2147483648), false), Struct_2(vec2<i32>(-68291i, -22371i), Struct_1(vec2<i32>(1275i, -12490i), vec2<f32>(132f, -324f), true, -53932i, 60133i), 2147483647i, false), Struct_2(vec2<i32>(i32(-2147483648), 46658i), Struct_1(vec2<i32>(-8726i, 1016i), vec2<f32>(-884f, 1000f), true, 0i, -13291i), 17435i, false), Struct_2(vec2<i32>(-22303i, -34046i), Struct_1(vec2<i32>(66291i, 33632i), vec2<f32>(-346f, 505f), true, 1i, -21094i), 2147483647i, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    global3 = Struct_1(~vec2<i32>(_wgslsmith_clamp_i32(16086i, 0i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.e, -2147483647i), u_input.e.zww ^ u_input.e.wxw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-445f + -985f), -2758f)) + _wgslsmith_f_op_vec2_f32(-var_0.b)), true, 1i, global3.a.x);
    let var_1 = var_0;
    var var_2 = Struct_1(arg_0.zw, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(global3.b.x, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1051f, var_1.b.x)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-393f, 1000f) * arg_2.b)))))), _wgslsmith_f_op_f32(-var_0.b.x) == var_0.b.x, ~var_1.e, -15819i);
    let var_3 = -(~vec3<i32>(2147483647i, -2147483647i, -21090i));
    return 0u << (u_input.d.x % 32u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: i32) -> vec3<bool> {
    var var_0 = u_input.d;
    var var_1 = ~min(vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(var_0.x, 3243u), u_input.b.x | 2143u), ~vec3<u32>(1u, var_0.x, 12448u)) ^ vec3<u32>(_wgslsmith_mult_u32(var_0.x, _wgslsmith_add_u32(var_0.x, u_input.b.x) | ~14393u), u_input.b.x, ~u_input.d.x ^ ~reverseBits(var_0.x));
    let var_2 = global1[_wgslsmith_index_u32(var_0.x, 7u)];
    var var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(42355u), 3957u), ~func_3(u_input.e, firstTrailingBit(vec2<i32>(u_input.c, 12714i)) & u_input.e.xw, global1[_wgslsmith_index_u32(select(34974u, ~1004u, true), 7u)]));
    var var_4 = global3.b.x;
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, var_0.x), u_input.b), 4u)];
}

fn func_4(arg_0: bool) -> bool {
    return func_2(false, global3.b.x, true, ~(-_wgslsmith_mod_i32(_wgslsmith_add_i32(global3.e, -8405i), -58884i))).x;
}

fn func_1() -> i32 {
    var var_0 = all(vec2<bool>(func_4(any(func_2(false, -673f, false, global3.a.x))), true));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), min(vec4<u32>(47402u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.d.x, 62849u, 14828u))), 0u), _wgslsmith_add_u32(21672u, u_input.b.x)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), select(vec2<u32>(u_input.b.x, u_input.d.x), u_input.d, vec2<bool>(true, true)), ~u_input.b), u_input.b)), 7u)];
    var_1 = Struct_1(global3.a, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -1162f) != _wgslsmith_f_op_f32(select(var_1.b.x, -1154f, 1u == u_input.d.x)), global3.a.x << (u_input.d.x % 32u), ~u_input.e.x);
    var_0 = global3.c;
    let var_2 = global1[_wgslsmith_index_u32(1u, 7u)];
    return -9668i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<Struct_1, 7>();
    let var_1 = vec3<bool>(global3.c, false, all(vec4<bool>(true, global3.c, !global3.c, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_0, false, true), global0[_wgslsmith_index_u32(u_input.d.x, 31u)])))));
    var var_2 = Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.b.x, global3.b.x), global3.b))))), true, (30109i ^ -func_1()) | select(u_input.e.x << (1u % 32u), u_input.e.x, true), u_input.c);
    var var_3 = ~select(~(~abs(vec4<u32>(u_input.b.x, 11210u, 29078u, 1u))), ~(~vec4<u32>(26842u, u_input.b.x, u_input.d.x, u_input.b.x)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(-var_2.a.x) | 0i), global3.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), 1182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f * -701f)), -2944f) * vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_div_f32(-1448f, global3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - _wgslsmith_f_op_f32(global3.b.x + 253f)), -1355f)));
}

