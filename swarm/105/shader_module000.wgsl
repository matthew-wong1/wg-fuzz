struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: Struct_4) -> i32 {
    var var_0 = 0i;
    var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(arg_3.c.c.wxz, vec3<i32>(arg_3.c.b, arg_3.d.d.b, -16731i)), ~max(arg_3.c.c.x, 2147483647i)), arg_0.c.d.x << (arg_0.b.x % 32u)), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.d.e.b, -2147483647i, -42963i), countOneBits(arg_0.d.d.c.wyy))));
    let var_1 = vec4<u32>(4294967295u, select(firstTrailingBit(1u), arg_3.b.x, false), arg_0.b.x, ~u_input.a);
    var_0 = -2147483647i;
    var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(0i | arg_3.c.d.x, _wgslsmith_sub_i32(i32(-1i) * -49369i, -arg_0.d.d.b)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(-arg_3.c.c.wz), vec2<i32>(-44159i, arg_0.d.e.c.x)), reverseBits(vec2<i32>(1i, ~arg_3.c.b))));
    return -(~2147483647i);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = Struct_1(vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 488f), _wgslsmith_f_op_f32(f32(-1f) * -381f))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(286f - 949f)))), arg_0, reverseBits(vec4<i32>(u_input.b, i32(-1i) * -46020i, func_3(Struct_4(559f, vec4<u32>(4294967295u, u_input.a, u_input.a, 66141u), Struct_1(vec3<bool>(true, false, false), u_input.b, vec4<i32>(u_input.b, -9260i, -1i, u_input.b), vec4<i32>(u_input.b, u_input.b, arg_0, 1i)), Struct_3(false, vec4<f32>(-782f, 1014f, 754f, -503f), vec2<i32>(arg_0, 38649i), Struct_1(vec3<bool>(true, false, false), u_input.b, vec4<i32>(-32567i, 2147483647i, -34678i, -2147483647i), vec4<i32>(-11578i, arg_0, u_input.b, -1i)), Struct_1(vec3<bool>(false, true, false), u_input.b, vec4<i32>(75143i, u_input.b, u_input.b, 22806i), vec4<i32>(-21675i, arg_0, -32089i, 36141i))), 469f), vec4<bool>(true, true, true, true), vec4<u32>(90402u, 1u, 1u, u_input.a), Struct_4(1000f, vec4<u32>(u_input.a, 0u, 1u, u_input.a), Struct_1(vec3<bool>(false, false, false), u_input.b, vec4<i32>(-13834i, arg_0, u_input.b, arg_0), vec4<i32>(0i, -2147483647i, arg_0, 1i)), Struct_3(true, vec4<f32>(-1000f, 247f, 1000f, -214f), vec2<i32>(25650i, u_input.b), Struct_1(vec3<bool>(true, true, true), u_input.b, vec4<i32>(arg_0, arg_0, u_input.b, u_input.b), vec4<i32>(u_input.b, arg_0, u_input.b, 2147483647i)), Struct_1(vec3<bool>(true, true, false), arg_0, vec4<i32>(32018i, arg_0, -1i, 24392i), vec4<i32>(u_input.b, 47581i, -1i, 48070i))), 538f)), 6380i)), vec4<i32>(abs(arg_0), ~select(_wgslsmith_sub_i32(-30016i, arg_0), func_3(Struct_4(-1000f, vec4<u32>(22617u, 9085u, u_input.a, u_input.a), Struct_1(vec3<bool>(false, true, false), 0i, vec4<i32>(u_input.b, -1i, u_input.b, -51430i), vec4<i32>(-35805i, -2147483647i, arg_0, 0i)), Struct_3(false, vec4<f32>(-1475f, 930f, -298f, 1186f), vec2<i32>(u_input.b, 1i), Struct_1(vec3<bool>(false, false, false), -35312i, vec4<i32>(u_input.b, arg_0, 68363i, 24929i), vec4<i32>(u_input.b, 2147483647i, arg_0, 0i)), Struct_1(vec3<bool>(false, false, true), arg_0, vec4<i32>(11332i, u_input.b, -2147483647i, u_input.b), vec4<i32>(-2595i, arg_0, 2147483647i, arg_0))), 1119f), vec4<bool>(true, true, false, true), vec4<u32>(4294967295u, 59603u, u_input.a, 30978u), Struct_4(-372f, vec4<u32>(u_input.a, u_input.a, 6838u, 1u), Struct_1(vec3<bool>(true, false, true), 9092i, vec4<i32>(arg_0, arg_0, 11195i, -2147483647i), vec4<i32>(18869i, 2147483647i, -2147483647i, arg_0)), Struct_3(true, vec4<f32>(879f, -673f, -447f, 241f), vec2<i32>(u_input.b, u_input.b), Struct_1(vec3<bool>(true, false, false), -53283i, vec4<i32>(-23409i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, arg_0)), Struct_1(vec3<bool>(true, true, true), 0i, vec4<i32>(u_input.b, u_input.b, arg_0, arg_0), vec4<i32>(arg_0, u_input.b, u_input.b, arg_0))), 903f)), all(vec3<bool>(true, false, true))), abs(max(arg_0, arg_0)), countOneBits(arg_0)));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = Struct_1(var_1.a, ~(-2147483647i), var_0.c, max(countOneBits(~firstTrailingBit(var_1.d)), vec4<i32>(0i, -45828i, -(var_0.c.x << (4294967295u % 32u)), _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 2147483647i), _wgslsmith_mult_i32(var_0.b, arg_0)))));
    var_1 = var_0;
    return var_1.c;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(!vec3<bool>(true, !any(vec2<bool>(true, false)), false), 2147483647i, ~(~vec4<i32>(u_input.b, -u_input.b, ~(-74544i), _wgslsmith_div_i32(u_input.b, u_input.b))), vec4<i32>(-1i) * -func_2(u_input.b));
    let var_1 = _wgslsmith_add_i32(-1i, u_input.b);
    let var_2 = Struct_2(~abs(select(-var_0.c.xx, vec2<i32>(var_1, var_0.d.x), select(vec2<bool>(true, var_0.a.x), var_0.a.zz, var_0.a.yx))), _wgslsmith_mod_u32(~u_input.a, 39504u), var_0);
    let var_3 = 23854u;
    var var_4 = 110f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1123f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)) * _wgslsmith_f_op_f32(select(-1075f, -816f, false))) * 1499f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1136f);
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1628f);
    var_0 = 808f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1641f))) <= _wgslsmith_f_op_f32(func_1()), all(select(vec3<bool>(u_input.a != u_input.a, true, true), vec3<bool>(true, any(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true))), select(any(vec4<bool>(true, true, all(vec2<bool>(true, true)), false)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false)) | false, any(!select(vec2<bool>(false, true), vec2<bool>(false, true), false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec2<i32>(_wgslsmith_div_i32(55675i, u_input.b), u_input.b)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(ceil(838f))), ~firstLeadingBit(vec2<u32>(~1u, 23776u)), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b & u_input.b, u_input.b), -abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))));
}

