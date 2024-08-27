struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1752f, 308f, 592f) - vec3<f32>(882f, -1731f, -319f))))));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.b.b)), _wgslsmith_f_op_f32(select(arg_0.b.a.x, arg_0.b.b, arg_1)))) * arg_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(590f, 106f)), 612f)) - _wgslsmith_f_op_f32(-arg_0.b.a.x)), _wgslsmith_f_op_f32(min(237f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(-2083f, -434f)), _wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(round(2144f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.a.x + -124f), _wgslsmith_f_op_f32(max(arg_0.b.a.x, arg_0.b.b)), _wgslsmith_f_op_f32(arg_0.b.a.x * 1132f), -254f), !all(vec2<bool>(false, false))))), !(!vec4<bool>(arg_1, arg_1, all(vec4<bool>(false, false, false, false)), !arg_1))));
    let var_1 = Struct_1(firstLeadingBit(firstLeadingBit(-1i)), abs(u_input.b));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), -1000f, !any(vec3<bool>(arg_1, arg_1, arg_1)))) + 1017f));
    var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, -634f, -1122f), var_0.zxx, true)) + _wgslsmith_f_op_vec3_f32(max(var_0.wyz, vec3<f32>(338f, var_0.x, var_2.b))))))), _wgslsmith_f_op_f32(-471f * 1776f));
    let var_3 = true;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -1009f, var_3)))) + vec2<f32>(-899f, var_0.x)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_5 {
    let var_0 = Struct_1(-26831i, -(~countOneBits(2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2364f, -1031f), vec2<f32>(624f, -758f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 881f) + vec2<f32>(-964f, 703f))), vec2<f32>(-1629f, -236f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec3<u32>(u_input.e.x, u_input.e.x, u_input.a), Struct_4(vec3<f32>(205f, -624f, 499f), 195f)), any(vec2<bool>(false, false)), 1u)))));
    let var_2 = var_0;
    let var_3 = 1u;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, 207f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -929f)), vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x))))))));
    return Struct_5(u_input.e.xxw, Struct_4(_wgslsmith_f_op_vec3_f32(-var_4.zxw), -290f));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> f32 {
    let var_0 = all(vec3<bool>(select(true, true & (arg_0.b.b != arg_0.b.b), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))), false, (all(vec2<bool>(false, true)) == true) & all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    let var_1 = -vec3<i32>(_wgslsmith_mod_i32(min(max(u_input.b, u_input.b), 7722i), -43297i), 0i, _wgslsmith_sub_i32(1i, reverseBits(-29229i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x));
    var var_3 = Struct_3(firstLeadingBit(1i), select(vec2<bool>(var_0, ~arg_0.a.x <= arg_0.a.x), select(vec2<bool>(true, false), vec2<bool>(false, false), all(select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)))), !(!(u_input.c.x == 0u))));
    let var_4 = Struct_3(~reverseBits(reverseBits(_wgslsmith_mod_i32(var_3.a, 2147483647i))), select(select(!vec2<bool>(var_0, var_3.b.x), !vec2<bool>(true, var_3.b.x), !var_0), var_3.b, vec2<bool>(true, (var_1.x >> (u_input.c.x % 32u)) >= u_input.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0.b.b)))), -476f)) + 588f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~(~u_input.e.x);
    let var_2 = true;
    var var_3 = vec3<bool>(var_2, !(!var_2), false);
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(u_input.e.x, u_input.e.x))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-759f, -1574f, -276f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1828f, -182f, -372f) * vec3<f32>(-578f, 641f, 978f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-850f, 1042f, 460f), vec3<f32>(801f, 121f, 1000f), vec3<bool>(false, true, true))))))), _wgslsmith_f_op_f32(max(-1683f, _wgslsmith_f_op_f32(-938f + _wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(17390i, u_input.b, -2147483647i, u_input.b)), Struct_1(-26597i, u_input.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_2(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)).b.a, var_4.a) - _wgslsmith_div_vec3_f32(var_4.a, func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.b, -15540i), vec4<i32>(-29977i, -7159i, 2147483647i, 0i))).b.a)), ~select((78155u << (u_input.a % 32u)) << (firstLeadingBit(u_input.e.x) % 32u), ~17208u, any(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, true, var_3.x, true), var_2))));
}

