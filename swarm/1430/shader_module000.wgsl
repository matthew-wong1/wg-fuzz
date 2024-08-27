struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_4, 29>;

var<private> global2: Struct_3 = Struct_3(-862f);

var<private> global3: bool = false;

var<private> global4: array<vec4<bool>, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    global2 = Struct_3(global2.a);
    var var_0 = ~(arg_2 ^ max(reverseBits(countOneBits(vec4<u32>(u_input.c, 1u, 9195u, 25069u))), vec4<u32>(select(arg_2.x, u_input.d.x, arg_0.x), 0u, ~u_input.d.x, u_input.a.x)));
    return -542f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, false), u_input.b.x, _wgslsmith_mult_vec4_u32(vec4<u32>(6319u, u_input.a.x, u_input.d.x, 1u), u_input.d))) + _wgslsmith_f_op_f32(abs(128f)))));
    let var_1 = u_input.b.x;
    var var_2 = false;
    var_2 = true;
    var_2 = false;
    return Struct_2(any(global4[_wgslsmith_index_u32(u_input.c, 5u)]) && true, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 20u)], select(~firstLeadingBit(global0[_wgslsmith_index_u32(53555u, 20u)]), _wgslsmith_sub_u32(0u, 61907u ^ u_input.c), var_1 > ~1i)), 0i, vec4<i32>(~u_input.b.x, -1i, u_input.b.x, _wgslsmith_mult_i32(~(i32(-1i) * -4457i), _wgslsmith_sub_i32(u_input.b.x, -3363i ^ var_1))), Struct_1(1035f, any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(135f, -116f) * vec2<f32>(global2.a, var_0.a))))));
}

fn func_1() -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(51803u, ~(~(~u_input.d.x))), 20u)], 29u)];
    var var_1 = var_0.c;
    let var_2 = -_wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, var_0.d.c)), select(var_0.b.d, vec4<i32>(27999i, u_input.b.x, var_0.a.d.x, 0i), false)), var_0.d.d);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(777f - var_0.d.e.a)), var_0.d.e.a, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(-1120f + -1205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_0.d.e.c.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1686f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-151f, var_0.c.a, 1209f), vec3<f32>(167f, 1306f, var_1.a)), vec3<f32>(global2.a, var_1.a, var_1.a), !var_0.e)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(968f, -453f, 1479f))))));
    var var_4 = Struct_4(func_2(), func_2(), var_0.c, Struct_2(var_0.e.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], -31298i, -vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(25957i, 1i), select(0i, -2147483647i, var_0.b.a), var_2.x), func_2().e), vec3<bool>(true, var_0.d.a, true));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-255f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) - global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a - global2.a))))))));
    global3 = !any(!vec2<bool>(any(vec2<bool>(true, true)), false));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -411f)) - _wgslsmith_f_op_f32(abs(994f)))));
    global4 = array<vec4<bool>, 5>();
    var var_2 = func_1();
    var var_3 = 77862u;
    global0 = array<u32, 20>();
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(40416u | ~(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(40099u, 20u)], 64717u) | abs(0u)), 20u)], ~(~u_input.b), 45668u, ~(~(~(~u_input.c))));
}

