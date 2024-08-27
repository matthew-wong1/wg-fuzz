struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f));
    var_0 = _wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(249f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(995f * -1112f)))))));
    var_0 = -568f;
    var_0 = 1f;
    return -1593f;
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(1u, 37428u, firstLeadingBit(~4294967295u), ~(~(~1u)));
    return Struct_2(_wgslsmith_add_vec2_i32(u_input.a, select(u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(1694i, u_input.a.x), -vec2<i32>(-2147483647i, u_input.a.x)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)))), Struct_1((_wgslsmith_f_op_f32(func_3()) > _wgslsmith_div_f32(-1498f, 1963f)) & (reverseBits(0i) <= (u_input.a.x >> (4294967295u % 32u))), false, ~(var_0.x | var_0.x), ~vec3<u32>(_wgslsmith_mult_u32(var_0.x, 35060u), min(var_0.x, 4294967295u), var_0.x), ~reverseBits(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) & vec3<i32>(u_input.a.x, -1i, u_input.a.x))), vec2<u32>(select(var_0.x, var_0.x, true), abs(var_0.x)), -188f);
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = Struct_4(-760f);
    var_1 = Struct_4(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(floor(-141f))));
    let var_2 = vec3<f32>(-361f, _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(round(-1000f)))), var_0.b.b)), var_1.a);
    let var_3 = Struct_1(all(select(!(!vec4<bool>(false, true, false, var_0.b.a)), select(!vec4<bool>(true, var_0.b.a, false, true), !vec4<bool>(false, var_0.b.a, var_0.b.b, false), all(vec2<bool>(var_0.b.a, true))), true)), var_0.b.b, _wgslsmith_dot_vec2_u32(var_0.b.d.xz ^ var_0.b.d.xy, var_0.c), ~var_0.b.d, max(vec3<i32>(var_0.a.x, -41105i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec3<i32>(i32(-1i) * -var_0.a.x, 58039i, abs(-7063i))));
    return !(any(select(select(vec4<bool>(var_0.b.a, var_3.a, true, var_3.b), vec4<bool>(var_3.b, var_0.b.a, false, var_3.b), true), vec4<bool>(false, var_0.b.a, var_3.b, true), var_1.a > -470f)) | var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), false), vec2<bool>(true, false), all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, false, false))))));
    var_0 = !vec2<bool>(false, select(true, var_0.x, false));
    var var_1 = select(select(vec3<bool>(select(any(vec3<bool>(false, false, var_0.x)), var_0.x, var_0.x), all(vec4<bool>(true, var_0.x, false, false)) | true, any(!vec4<bool>(true, var_0.x, true, false))), !select(!vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, false)), false), false & !func_1()), select(vec3<bool>(!(!var_0.x), (u_input.a.x != 1i) != true, var_0.x), vec3<bool>(true, var_0.x | var_0.x, true), false == var_0.x), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-187f, -1614f, 905f))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1886f, -2418f, -1318f))))));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26951u), vec2<u32>(47916u, 0u)), countOneBits(1u)), 1u), ~(~1u), 4294967295u);
    var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-197f + 183f) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_1.x)), _wgslsmith_f_op_f32(ceil(-1085f)))), !(false && var_1.x), !(!var_0.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2)))));
    var var_5 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(true, false, var_1.x, true), false)), var_1.x), false));
    var_0 = vec2<bool>(false, var_5.a.x != any(!(!vec4<bool>(true, var_1.x, var_0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-222f))), select(-(~(-vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i))), vec4<i32>(2147483647i, ~(-2147483647i), u_input.a.x, u_input.a.x), select(vec4<bool>(-47455i < u_input.a.x, 469f >= var_2.x, false, u_input.a.x >= u_input.a.x), !vec4<bool>(false, var_5.a.x, var_0.x, var_1.x), !(!var_1.x))), -57555i, _wgslsmith_f_op_f32(-var_4.x), var_2.x);
}

