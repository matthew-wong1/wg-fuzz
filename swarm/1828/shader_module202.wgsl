struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(602f, 282f) * vec2<f32>(1500f, -1222f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1022f, -1375f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, 599f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(453f, arg_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1322f, 992f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)))), ~vec2<u32>(4294967295u, _wgslsmith_div_u32(2866u, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)), arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0), 590f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-756f, arg_0, -1165f, -1719f), vec4<f32>(1007f, -564f, -950f, 227f))))), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    let var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, var_2.d.x), var_0.b.zz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.d.wx, var_0.a, vec2<bool>(false, var_0.e))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1177f, var_0.a.x) * var_0.d.zz)) + _wgslsmith_f_op_vec2_f32(var_0.b.yz + var_0.d.yz))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x))) - 452f), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-508f, -238f), 1194f)))), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, _wgslsmith_div_f32(2016f, var_0.b.x), -1027f, -2303f)))), false);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(ceil(1000f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f + _wgslsmith_f_op_f32(-var_2.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f))), 1521f))));
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = -224f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(570f, _wgslsmith_f_op_f32(-var_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-607f, 1788f))) - 1000f)));
    var var_2 = vec2<i32>(u_input.a.x | ~u_input.a.x, _wgslsmith_mult_i32(abs(i32(-1i) * -1i) | _wgslsmith_div_i32(u_input.a.x >> (7789u % 32u), u_input.a.x), abs(func_3(135f)) ^ countOneBits(1i)));
    var_2 = ~min(vec2<i32>(_wgslsmith_div_i32(var_2.x, u_input.a.x), _wgslsmith_mult_i32(-67199i & var_2.x, 30956i ^ var_2.x)), -reverseBits(vec2<i32>(9523i, 33308i)) >> (~(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)));
    var_2 = ~u_input.a.yy;
    return _wgslsmith_f_op_f32(round(var_1));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(func_2(1000f));
    var var_1 = ~63293u;
    var_1 = 0u;
    let var_2 = ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(min(46907u, 2868u), _wgslsmith_div_u32(77213u, 4294967295u), 0u, select(22345u, 62281u, false)), ~select(vec4<u32>(1u, 8062u, 4294967295u, 7439u), vec4<u32>(1u, 1u, 37396u, 3341u), true)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = all(select(!vec3<bool>(true, 29782u != var_2.x, false), !vec3<bool>(var_2.x <= 1u, any(vec3<bool>(true, true, true)), false), vec3<bool>(true, true, true)));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 - -1495f), var_0)))), _wgslsmith_f_op_f32(trunc(134f))), -firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-2079f - -1511f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

