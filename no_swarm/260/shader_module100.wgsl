struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-360f))) * 895f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1328f))), select(!(!select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, false))), select(select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, arg_0, arg_0, false)), !vec4<bool>(true, arg_0, arg_0, arg_0), arg_0 | true), select(!vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, false, arg_0, false), true), !(!arg_0)), all(vec4<bool>(true, any(vec2<bool>(arg_0, false)), arg_0 || false, true))));
    return u_input.a.x >> (u_input.a.x % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = ~(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.a, 2147483647i)), ~vec2<i32>(-9627i, arg_0.a)), firstLeadingBit(min(vec2<i32>(11515i, -1530i), vec2<i32>(2147483647i, -46914i)))) >> (u_input.a.ww % vec2<u32>(32u)));
    let var_1 = countOneBits(~4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    var var_3 = countOneBits(max(abs(-var_0.x ^ 2147483647i), -1i));
    let var_4 = arg_0;
    return u_input.b > ~u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(~(arg_3.a | min(~arg_3.a, _wgslsmith_add_vec3_i32(arg_3.a, vec3<i32>(18565i, arg_2, arg_0)))), Struct_1(-arg_3.b.a, -897f, !select(arg_3.b.c, vec4<bool>(true, arg_3.d, arg_3.d, arg_3.d), true)), arg_3.c, arg_3.b.c.x);
    var var_1 = !var_0.b.c.yyy;
    var_1 = !vec3<bool>(u_input.a.x > firstTrailingBit(4294967295u), arg_3.d, func_3(var_0.b, ~select(u_input.a, vec4<u32>(102614u, 4294967295u, u_input.b, 0u), var_0.d)));
    var_1 = select(!(!var_0.b.c.zxz), arg_3.b.c.xwx, arg_3.b.c.zxw);
    let var_2 = Struct_2(arg_3.a, arg_3.b, vec4<f32>(var_0.c.x, arg_3.c.x, -259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1123f)))))), (any(select(var_0.b.c, arg_3.b.c, false)) & (true || (var_0.c.x >= arg_3.b.b))) | var_0.d);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * _wgslsmith_f_op_f32(203f - -304f))), _wgslsmith_f_op_f32(-243f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_1), arg_1)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(313f))), var_1.x)), var_2.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(101408u, countOneBits(func_1(u_input.a.x < 24829u)), u_input.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.yw) & ~vec2<u32>(22840u, 72268u), u_input.a.xw));
    let var_1 = firstLeadingBit(-(_wgslsmith_mult_i32(firstLeadingBit(-1i), -42322i) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(29897i, 3142i, 1i, -1i), vec4<i32>(1i, 18184i, 0i, -52322i))));
    var_0 = reverseBits(~u_input.a);
    var var_2 = Struct_1(_wgslsmith_mult_i32(~var_1, 1i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(0i, _wgslsmith_f_op_f32(select(-2265f, 1949f, false)), countOneBits(i32(-1i) * -2147483647i), Struct_2(vec3<i32>(var_1, var_1, 87784i), Struct_1(var_1, -1234f, vec4<bool>(false, false, false, false)), vec4<f32>(-1607f, 1280f, 1456f, 352f), true))))), vec4<bool>(true, true, false, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))));
    var_2 = Struct_1(_wgslsmith_mult_i32(~(-42704i), firstTrailingBit(max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, 2147483647i), vec2<i32>(var_2.a, var_1)), reverseBits(var_1)))), _wgslsmith_f_op_f32(-var_2.b), var_2.c);
    var_2 = Struct_1(_wgslsmith_mult_i32(var_1, 46218i), 1960f, !select(var_2.c, !select(var_2.c, vec4<bool>(false, true, var_2.c.x, var_2.c.x), true), var_2.c.x));
    var_2 = Struct_1((var_2.a ^ abs(-2147483647i)) & 0i, -1180f, select(!var_2.c, vec4<bool>(true, !(!var_2.c.x), var_2.c.x, !(var_2.a != var_1)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(4216i, -var_1, (max(var_2.a, var_1) & max(var_1, var_1)) & firstTrailingBit(abs(var_2.a)), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, var_2.a), var_1))), ~select(vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(37768u, var_0.x, 97777u, 0u), u_input.a), max(var_0.x, 6651u), ~14087u), ~u_input.a, !(!vec4<bool>(true, true, true, var_2.c.x))));
}

