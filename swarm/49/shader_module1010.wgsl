struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = firstLeadingBit(~u_input.a.xww);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-438f - arg_0.c), _wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-876f)))))));
    var var_1 = select(select(vec2<bool>(all(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, false)), any(vec3<bool>(true, arg_0.d.x, arg_0.d.x))), vec2<bool>(!(-1i == arg_0.a.x), any(select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, true, true, true), arg_0.d.x))), select(arg_0.d, select(select(arg_0.d, vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(true, false)), arg_0.d, false), !arg_0.d.x | arg_0.d.x)), arg_0.d, vec2<bool>(!(!(arg_0.d.x != arg_0.d.x)), !(!all(vec2<bool>(arg_0.d.x, false)))));
    var var_2 = vec3<i32>(select(arg_0.a.x, 6184i, all(vec4<bool>(true, !var_1.x, var_1.x, false))), ~(-2147483647i), reverseBits(u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, arg_0.b.b.x, arg_0.b.d)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(486f, arg_0.b.b.x, 1532f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1776f, var_0.x, var_0.x)))))));
    return _wgslsmith_sub_i32(-2147483647i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(28837i), _wgslsmith_add_i32(-91701i, arg_0.a.x)), -firstTrailingBit(vec2<i32>(22751i, 30865i)))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_2(u_input.a.xxw, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.xx)) * _wgslsmith_f_op_vec2_f32(arg_1.xy * vec2<f32>(arg_1.x, arg_1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.zw) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1837f, arg_1.x), arg_1.yx, vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -356f))), _wgslsmith_mod_i32(func_3(Struct_2(u_input.a.yxw, Struct_1(arg_1.xz, arg_1.yx, -1i, arg_1.x), 200f, vec2<bool>(false, true))), _wgslsmith_div_i32(u_input.a.x, 1i & global0.x)), _wgslsmith_f_op_f32(floor(309f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, arg_1.x)) - _wgslsmith_div_f32(arg_1.x, arg_1.x))))), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), false), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))));
    var var_1 = all(select(vec3<bool>(any(vec3<bool>(true, var_0.d.x, false)), true, var_0.d.x), vec3<bool>(select(true, var_0.d.x, true) | true, false, var_0.d.x), !select(true, var_0.d.x, var_0.d.x) || var_0.d.x));
    var var_2 = var_0;
    var var_3 = vec2<f32>(-119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.b.x, _wgslsmith_f_op_f32(var_2.c + 569f))) - _wgslsmith_f_op_f32(f32(-1f) * -160f)) + -1000f));
    let var_4 = arg_2.x;
    return ~0u;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_5(~_wgslsmith_dot_vec4_u32(arg_3.b, vec4<u32>(arg_3.b.x, 58243u, arg_2.x, 121202u)) < _wgslsmith_div_u32(func_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(879f, -1488f, -582f, -122f) * vec4<f32>(-1393f, 1613f, arg_0.a.c, arg_0.a.c)), ~vec4<i32>(1i, global0.x, arg_1.x, -49358i)), 0u));
    let var_1 = Struct_3(~vec3<u32>(func_2(reverseBits(arg_0.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(932f, arg_0.a.c, 1081f, arg_0.c.b.b.x)), arg_1 ^ arg_1), arg_3.b.x & arg_2.x, arg_2.x), min(1u, arg_2.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(104f)), _wgslsmith_f_op_f32(trunc(-180f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.c.b.a, arg_3.a.b.a, arg_3.a.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.c.c, 1195f), arg_0.c.b.b))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.a.b.a), vec2<f32>(1453f, arg_0.c.b.a.x), vec2<bool>(true, true)))), 3924i, -318f), _wgslsmith_div_vec2_i32(u_input.a.wy, countOneBits(-select(u_input.a.wy, u_input.a.yy, var_0.a))));
    let var_2 = Struct_5(any(!vec3<bool>(false, false, !arg_3.c.d.x)));
    let var_3 = arg_3.a;
    global0 = max(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(-u_input.a), vec4<i32>(var_3.a.x, -u_input.a.x, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-2147483647i, arg_3.c.a.x, arg_0.c.a.x, -1050i)), ~var_3.b.c)), abs(2147483647i), -max(_wgslsmith_add_i32(-20457i, var_1.d.x), ~(-9823i))), abs(~(~(~u_input.a.xww))));
    return var_3.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1009f, -154f)), _wgslsmith_f_op_f32(1000f + -725f)) - vec2<f32>(-1961f, _wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(u_input.a.zxw, Struct_1(vec2<f32>(-174f, -120f), vec2<f32>(-1983f, 397f), global0.x, -278f), -423f, vec2<bool>(false, false)), vec4<u32>(28625u, 0u, 0u, 1u), Struct_2(vec3<i32>(u_input.a.x, -31472i, global0.x), Struct_1(vec2<f32>(1043f, -210f), vec2<f32>(-479f, 952f), global0.x, -900f), -1286f, vec2<bool>(true, false))), vec4<i32>(-2147483647i, global0.x, -1i, 1i), vec2<u32>(9430u, 4294967295u), Struct_4(Struct_2(vec3<i32>(u_input.a.x, -1472i, global0.x), Struct_1(vec2<f32>(1000f, 1047f), vec2<f32>(-287f, -1793f), global0.x, -1145f), -1947f, vec2<bool>(false, false)), vec4<u32>(5767u, 0u, 104538u, 18405u), Struct_2(vec3<i32>(7870i, -1466i, global0.x), Struct_1(vec2<f32>(-1217f, -1296f), vec2<f32>(1190f, -320f), u_input.a.x, -1479f), 502f, vec2<bool>(false, false))))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, -468f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, 113f) + vec2<f32>(799f, 857f))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f - 1000f) - _wgslsmith_f_op_f32(-1567f * -955f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1849f)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-555f, 844f, false))), _wgslsmith_f_op_f32(trunc(-739f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-461f))))))));
    var var_1 = -929f;
    var var_2 = Struct_3(~vec3<u32>(~min(33147u, 0u), abs(128297u), 1u), 1u, var_0, global0.yy);
    var_2 = Struct_3(vec3<u32>(11865u, ~(_wgslsmith_sub_u32(var_2.b, 105100u) | 0u), 0u), var_2.a.x, var_2.c, _wgslsmith_sub_vec2_i32(var_2.d, abs(firstLeadingBit(vec2<i32>(var_0.c, -8979i)))) >> (~vec2<u32>(var_2.a.x | 1u, ~4104u) % vec2<u32>(32u)));
    let var_3 = Struct_5(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)));
    global0 = -u_input.a.yxx;
    var var_4 = _wgslsmith_f_op_f32(abs(-1308f));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.c), 0u, -(~_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(38567i, var_2.d.x, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, var_2.d.x, u_input.a.x), u_input.a.yww), vec3<i32>(var_2.d.x, var_2.d.x, -13311i))), -1320f, var_0.c);
}

