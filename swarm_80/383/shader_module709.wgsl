struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(i32(-2147483648)), Struct_4(i32(-2147483648)), Struct_4(-25853i), Struct_4(0i), Struct_4(-1i), Struct_4(39226i), Struct_4(2147483647i), Struct_4(13287i), Struct_4(-70860i), Struct_4(0i), Struct_4(-29443i), Struct_4(0i), Struct_4(2147483647i), Struct_4(0i), Struct_4(0i), Struct_4(-51396i), Struct_4(-1i), Struct_4(0i), Struct_4(-19391i), Struct_4(2147483647i), Struct_4(-24086i), Struct_4(1i), Struct_4(8701i));

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: array<u32, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = 4294967295u;
    var var_2 = vec4<i32>(67697i, ~_wgslsmith_div_i32(arg_1.a.d.x, _wgslsmith_clamp_i32(u_input.e, 2147483647i, ~51438i)), 41739i, _wgslsmith_dot_vec2_i32(max(-(vec2<i32>(-1i, arg_1.a.d.x) | arg_1.a.d.wx), select(vec2<i32>(u_input.e, 1i), arg_1.a.d.zz, true) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), reverseBits(vec2<i32>(_wgslsmith_div_i32(arg_1.a.d.x, u_input.e), 0i))));
    let var_3 = Struct_2(arg_0.x);
    var_1 = u_input.a;
    return 0u;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    global2 = array<u32, 26>();
    global0 = array<Struct_4, 23>();
    let var_0 = Struct_2(_wgslsmith_div_f32(-730f, 661f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(sign(-713f)), arg_2, -1498f));
    var var_2 = 61903u;
    return _wgslsmith_f_op_f32(max(687f, 262f));
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1069f * 133f))))))));
    var var_1 = ~vec3<u32>(u_input.c, u_input.a, reverseBits(_wgslsmith_mult_u32(28095u, u_input.c)));
    let var_2 = vec2<u32>(u_input.d, ~(~u_input.a));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(3199u, func_3(vec4<f32>(var_0, -1891f, 799f, -521f), Struct_3(Struct_1(var_0, vec3<bool>(false, true, true), vec2<u32>(26527u, global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<i32>(-2147483647i, 16691i, 21270i, 33965i), vec3<f32>(1000f, -390f, -174f)), false))), 23u)], ~max(~var_1.yx, var_2 | var_2), _wgslsmith_f_op_f32(-var_0))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-251f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_3.a)))));
    return vec3<i32>(u_input.e >> (_wgslsmith_div_u32(0u, 4109u) % 32u), reverseBits(u_input.e) & -_wgslsmith_div_i32(~u_input.e, -47368i), -1i);
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = u_input.e;
    let var_1 = func_2() & countOneBits(_wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(u_input.e, 1i, u_input.e)), firstLeadingBit(~vec3<i32>(2147483647i, u_input.e, u_input.e))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(arg_0.a)));
    global0 = array<Struct_4, 23>();
    global2 = array<u32, 26>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), 371f), -1182f, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1000f - 601f), vec3<bool>(all(!global1[_wgslsmith_index_u32(646u, 20u)]), false, true), ~(~max(vec2<u32>(97629u, u_input.b), vec2<u32>(6702u, u_input.b))), -vec4<i32>(u_input.e, u_input.e, -14677i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -26222i), vec2<i32>(-50822i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(-733f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), !(true || ((27399u < u_input.c) | true)));
    var_0 = _wgslsmith_sub_u32(34637u, ~global2[_wgslsmith_index_u32(1u, 26u)]);
    var_0 = abs(firstLeadingBit(u_input.a));
    let var_2 = vec2<u32>(~u_input.d, 13162u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.e.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_1.a.a))).x, _wgslsmith_f_op_f32(exp2(var_1.a.e.x))), -783f)));
}

