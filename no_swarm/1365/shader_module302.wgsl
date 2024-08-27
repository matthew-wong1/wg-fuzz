struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(firstTrailingBit(72264u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(786f, -1184f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-332f, -1346f), _wgslsmith_f_op_f32(f32(-1f) * -1594f))))), vec2<i32>(-1i) * -vec2<i32>(~2147483647i, 0i), true, vec3<bool>(select(all(vec2<bool>(false, true)), true, true), !select(true, true, true), false));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, var_0.b, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(select(822f, -645f, true)))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(921f, _wgslsmith_f_op_f32(max(-130f, var_0.b)))))), var_0.b);
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -1705f)));
    return vec2<i32>(-70642i, var_0.c.x) << (vec2<u32>(var_0.a, u_input.b) % vec2<u32>(32u));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2340f, -1683f)) - _wgslsmith_f_op_f32(sign(-831f))), _wgslsmith_sub_vec2_i32(reverseBits(~vec2<i32>(42335i, -2147483647i)), func_3()), true, vec3<bool>(false, !(!arg_0), arg_0)));
    let var_1 = var_0;
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f + -1000f)), var_1.a.b), var_1.a.b);
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.b, 1792f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-709f, var_1.a.b))), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(false, true)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b, -879f), vec2<f32>(-1096f, -345f), vec2<bool>(var_0.a.e.x, true))), vec2<f32>(var_0.a.b, var_1.a.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b, var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(-307f * 584f), _wgslsmith_f_op_f32(sign(296f))));
    let var_3 = _wgslsmith_sub_i32(var_1.a.c.x, ~(-18818i));
    return ~(~(~(~0u)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = vec4<i32>(u_input.a, u_input.a, -u_input.a, -1i) << (~firstLeadingBit(vec4<u32>(u_input.b, min(1u, u_input.b), u_input.b | u_input.b, firstLeadingBit(50358u))) % vec4<u32>(32u));
    let var_1 = max(vec2<u32>(func_2(true), firstLeadingBit(abs(_wgslsmith_div_u32(0u, u_input.b)))), countOneBits(abs(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)))));
    let var_2 = Struct_2(Struct_1((4294967295u & u_input.b) >> (abs(1u) % 32u), arg_0, vec2<i32>(firstTrailingBit(1i), ~(-77207i)), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), vec3<bool>(false, true, all(vec2<bool>(true, true)))));
    var var_3 = var_2.a.c.x;
    var var_4 = vec2<bool>(!var_2.a.e.x, false);
    return ~(-17527i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(func_1(1590f));
    var_0 = u_input.a;
    var_0 = -abs(-2147483647i);
    var var_1 = vec3<u32>(43337u, _wgslsmith_add_u32(u_input.b, 5269u), 16818u);
    var var_2 = select(!vec3<bool>(false, all(vec4<bool>(true, true, true, true)), false), !select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), !all(vec4<bool>(true, true, true, true)) && any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))));
    let var_3 = 1f;
    var_2 = select(!select(vec3<bool>(true, false, u_input.a != u_input.a), !vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false || var_2.x, !var_2.x, var_2.x != var_2.x)), !(!vec3<bool>(true, var_2.x, any(vec2<bool>(true, var_2.x)))), !select(vec3<bool>(any(var_2.yy), all(vec2<bool>(var_2.x, var_2.x)), u_input.a != 51836i), vec3<bool>(false, any(vec3<bool>(var_2.x, true, true)), true), all(vec2<bool>(var_2.x, var_2.x))));
    var var_4 = Struct_1(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -234f), -(~func_3()), false, !vec3<bool>(false, var_2.x, all(select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, var_2.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-234f * var_4.b))))));
}

