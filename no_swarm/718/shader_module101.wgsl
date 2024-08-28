struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: vec4<i32> = vec4<i32>(16142i, -20474i, 69274i, 23806i);

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<Struct_3, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(Struct_2(arg_2)), Struct_2(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, false))))), 0i, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_3.a.x, 1000f)), arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)) - arg_1.a.x)), firstTrailingBit(global1.x | (i32(-1i) * -24768i)), 1i, vec3<i32>(-(i32(-1i) * -1i), select(1i, arg_1.c, arg_3.a.x != 1041f), _wgslsmith_add_i32(-10226i, arg_1.d.x))));
    let var_1 = var_0.d.d.zz;
    let var_2 = global2[_wgslsmith_index_u32(abs(~reverseBits(firstLeadingBit(u_input.b.x))), 28u)];
    let var_3 = firstTrailingBit(vec3<i32>(var_1.x, -1590i, -var_1.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.x * arg_3.a.x) + arg_3.a.x), -1000f) - arg_3.a);
    return vec4<bool>(false, var_0.a.a.a, var_0.b.a, true);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    global3 = array<Struct_3, 10>();
    let var_0 = all(arg_1);
    global1 = vec4<i32>(-31974i, i32(-1i) * -67834i, ~u_input.a.x, global1.x);
    let var_1 = !select(vec4<bool>(any(!arg_1.zww), arg_1.x, func_3(u_input.b.x, Struct_1(vec2<f32>(1000f, 632f), -1i, 1i, vec3<i32>(-2147483647i, 17779i, u_input.a.x)), false || arg_1.x, Struct_1(vec2<f32>(821f, 369f), arg_0, 0i, vec3<i32>(u_input.a.x, global1.x, -14285i))).x, !var_0), arg_1, vec4<bool>(arg_1.x, any(arg_1), var_0, all(arg_1)));
    var var_2 = ~(~(~arg_0));
    return ~u_input.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global1 = vec4<i32>(abs(u_input.a.x), global1.x, u_input.a.x, ~(-2147483647i));
    let var_0 = arg_1;
    global1 = -reverseBits(firstTrailingBit(firstTrailingBit(vec4<i32>(global1.x, -16445i, u_input.a.x, u_input.a.x))));
    var var_1 = Struct_5(abs(vec3<i32>(31440i & -u_input.a.x, global1.x, _wgslsmith_add_i32(-global1.x, 11097i))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(arg_0.zz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1139f) * vec2<f32>(arg_0.x, arg_0.x)))))), func_4(-reverseBits(u_input.a.x), select(var_0, select(select(arg_1, vec4<bool>(true, false, arg_2.a, false), arg_1), func_3(27497u, Struct_1(vec2<f32>(-222f, arg_0.x), var_1.a.x, 0i, u_input.a), arg_2.a, Struct_1(arg_0.xy, -2147483647i, -1i, vec3<i32>(global1.x, global1.x, 18631i))), vec4<bool>(true, true, true, true)), true)), func_4(var_1.a.x, vec4<bool>(true, all(var_0), any(vec3<bool>(arg_1.x, arg_3, true)), !(global1.x != 17186i))), firstLeadingBit(~vec3<i32>(global1.x, -global1.x, 1i)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~abs(u_input.b.x), 10u)];
    var var_1 = vec3<bool>(!(var_0.a.a | true), true, !(!(reverseBits(u_input.b.x) == 1u)));
    let var_2 = var_0.a.a;
    var_0 = Struct_3(var_0.a);
    let var_3 = select(var_1.xx, func_3(~(~(u_input.b.x << (u_input.b.x % 32u))), arg_1, 42724u <= ~(u_input.b.x << (u_input.b.x % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1514f, -1000f) - vec2<f32>(arg_2.a.x, arg_1.a.x)))), -func_2(vec3<f32>(arg_1.a.x, arg_2.a.x, -1897f), vec4<bool>(var_0.a.a, true, var_0.a.a, var_0.a.a), var_0.a, var_0.a.a).c, func_2(vec3<f32>(arg_0, 2156f, 896f), vec4<bool>(false, var_1.x, true, var_1.x), global2[_wgslsmith_index_u32(4294967295u, 28u)], var_0.a.a == var_1.x).c, global1.wxy)).zy, !vec2<bool>(true, var_0.a.a));
    return arg_2;
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a.x))))), Struct_1(arg_0.d.a, -15596i, 0i, arg_0.d.d), func_2(vec3<f32>(arg_0.d.a.x, _wgslsmith_div_f32(2761f, arg_0.d.a.x), arg_1), vec4<bool>(arg_0.a.a.a, arg_0.b.a, select(arg_0.d.a.x > 1139f, true, arg_0.b.a), !(34782u <= u_input.b.x)), Struct_2(!any(vec2<bool>(true, true))), true));
    global0 = array<vec2<u32>, 13>();
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1033f, 1162f, arg_1))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-2339f)), 428f, _wgslsmith_f_op_f32(-arg_1)), vec3<f32>(-434f, arg_0.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -962f)))), false)), vec4<bool>(arg_0.b.a, all(select(func_3(4148u, Struct_1(vec2<f32>(arg_0.d.a.x, var_0.a.x), 27070i, var_0.d.x, u_input.a), true, arg_0.d).xz, select(vec2<bool>(false, arg_0.b.a), vec2<bool>(false, true), arg_0.a.a.a), !arg_0.a.a.a)), false, arg_0.b.a), global2[_wgslsmith_index_u32(61017u, 28u)], (_wgslsmith_mod_u32(max(4294967295u, u_input.b.x), abs(u_input.b.x)) ^ abs(max(1u, u_input.b.x))) >= (_wgslsmith_sub_u32(u_input.b.x, 5413u) << (u_input.b.x % 32u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -132f))) * -1072f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.d.a.x, arg_1), 176f))))));
    global3 = array<Struct_3, 10>();
    return u_input.b.x;
}

fn func_6(arg_0: Struct_2) -> StorageBuffer {
    global1 = vec4<i32>(~select(_wgslsmith_mult_i32(countOneBits(global1.x), ~u_input.a.x), 2147483647i, true), _wgslsmith_clamp_i32(u_input.a.x, ~global1.x, ~(-_wgslsmith_mod_i32(u_input.a.x, global1.x))), ~global1.x, -_wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 30499i), _wgslsmith_add_vec3_i32(global1.yyy, global1.ywz))));
    return StorageBuffer(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), -53536i), -(-21968i | u_input.a.x), ~countOneBits(global1.x), global1.x), -112f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(576f, 1626f, -145f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, -1078f, 428f)), func_3(42001u, Struct_1(vec2<f32>(-1000f, -870f), global1.x, 49477i, u_input.a), arg_0.a, Struct_1(vec2<f32>(862f, 1090f), 1i, u_input.a.x, u_input.a)).wyz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1899f, 857f, 422f), vec3<f32>(695f, 287f, 665f)))), true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) * _wgslsmith_f_op_f32(max(-1515f, -464f))), _wgslsmith_f_op_f32(step(771f, 310f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-448f, 1556f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_2(!(~u_input.b.x < func_1(Struct_4(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(1u, 28u)], 19264i, Struct_1(vec2<f32>(-744f, -1575f), 48557i, u_input.a.x, global1.yzw)), 979f))));
}

