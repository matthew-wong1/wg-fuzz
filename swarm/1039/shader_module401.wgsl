struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = vec2<i32>(22616i, _wgslsmith_add_i32(-(~u_input.a.x), global0.x << (arg_0.x % 32u)));
    var var_0 = global1[_wgslsmith_index_u32(~arg_0.x, 32u)];
    let var_1 = Struct_2(vec4<bool>(false, !all(!var_0.a.a.yz), any(var_0.a.a.zw), true), _wgslsmith_mod_i32(-41701i, ~(-_wgslsmith_add_i32(global0.x, u_input.a.x))), all(var_0.a.a.yyx));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: i32) -> Struct_3 {
    global1 = array<Struct_3, 32>();
    let var_0 = arg_2.x;
    var var_1 = _wgslsmith_div_f32(2160f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(~vec4<u32>(1u, 4294967295u, 39328u, 4294967295u))))))));
    var var_2 = Struct_2(vec4<bool>(var_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1521f) * arg_2.x), arg_0.x, true, false | arg_0.x), u_input.a.x, arg_1.x);
    var var_3 = abs(vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(45537u, abs(30466u), 4294967295u), 1u)));
    return global1[_wgslsmith_index_u32(88240u, 32u)];
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), u_input.a.x, false);
    return func_2(var_0.a.yw, vec4<bool>(true, !var_0.c, true, var_0.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), -625f, 1259f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(131f)), _wgslsmith_f_op_f32(trunc(1176f))))))), ~(~(var_0.b >> (10356u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a.a.wwy;
    let var_2 = func_1().a;
    var var_3 = var_2.c;
    let var_4 = ~30383u;
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_0.a.b, var_0.a.b), vec3<i32>(-47393i, 0i, var_5.b)) | min(_wgslsmith_sub_vec3_i32(vec3<i32>(-27561i, var_2.b, var_5.b), vec3<i32>(1i, var_0.a.b, 1i)), ~vec3<i32>(var_2.b, global0.x, var_0.a.b))));
}

