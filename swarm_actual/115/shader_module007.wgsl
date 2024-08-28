struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec3<f32>, 2>();
    global0 = array<vec3<f32>, 2>();
    let var_0 = ~(-firstTrailingBit(min(-arg_0.b, i32(-1i) * -2147483647i)));
    global0 = array<vec3<f32>, 2>();
    var var_1 = abs(13203i);
    return vec4<bool>(-2147483647i >= arg_0.b, _wgslsmith_f_op_f32(-arg_0.a.x) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -163f), _wgslsmith_f_op_f32(f32(-1f) * -256f)), true, all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global0 = array<vec3<f32>, 2>();
    return ~(-u_input.e.x) >> (_wgslsmith_mod_u32(~(select(76961u, u_input.a, false) ^ 4082u), u_input.c) % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~(~52047u), 2u)];
    global0 = array<vec3<f32>, 2>();
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x), -(~(-13864i)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz), vec2<f32>(var_1.a.x, var_0.x)))), _wgslsmith_mult_i32(-1i, func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(Struct_1(var_0.zx, -761i), global0[_wgslsmith_index_u32(51855u, 2u)], Struct_1(var_1.a, u_input.e.x))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), ~1i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 1612f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-213f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-401f, var_1.a.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, var_0.x)))))), ~u_input.b);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f))), 13988i);
    let var_1 = func_2();
    global0 = array<vec3<f32>, 2>();
    let var_2 = var_1;
    var_0 = var_2;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 2>();
    var var_0 = ~(max(4294967295u, func_1(any(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(837f, 2371f, -651f) - vec3<f32>(672f, 704f, -342f)), _wgslsmith_f_op_f32(117f - -329f))) << (~reverseBits(u_input.a) % 32u));
    global0 = array<vec3<f32>, 2>();
    let var_1 = func_2();
    global0 = array<vec3<f32>, 2>();
    var var_2 = u_input.a;
    let var_3 = u_input.a;
    var var_4 = !vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_1.b, u_input.b, 20162i), vec4<i32>(2147483647i, var_1.b, 8668i, -2147483647i)), countOneBits(vec4<i32>(2147483647i, u_input.e.x, -1i, 0i)))) | abs(_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, u_input.b, var_1.b, 22080i), vec4<i32>(var_1.b, u_input.e.x, 5628i, var_1.b), vec4<bool>(var_4.x, true, false, true)), vec4<i32>(-20569i, var_1.b, 2823i, 31533i) << (vec4<u32>(u_input.c, 0u, 1u, 1u) % vec4<u32>(32u)))));
}

