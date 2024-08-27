struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(44202u, 79407u, 31729u, 0u);

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(18563u, 0u), vec2<u32>(0u, 65095u), vec2<u32>(5897u, 20892u), vec2<u32>(1u, 3416u), vec2<u32>(37551u, 4294967295u), vec2<u32>(34822u, 4988u), vec2<u32>(10747u, 4294967295u), vec2<u32>(1u, 35241u), vec2<u32>(10139u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(34510u, 36563u), vec2<u32>(26149u, 10414u), vec2<u32>(27803u, 1u), vec2<u32>(1u, 1u), vec2<u32>(81766u, 0u), vec2<u32>(11107u, 1u), vec2<u32>(37490u, 8380u), vec2<u32>(4294967295u, 11230u), vec2<u32>(13826u, 1951u), vec2<u32>(38587u, 4294967295u), vec2<u32>(29517u, 0u), vec2<u32>(1u, 37347u), vec2<u32>(1u, 19484u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = (-_wgslsmith_clamp_i32(u_input.a, -2147483647i, _wgslsmith_clamp_i32(u_input.a, 0i, 6498i)) != -12102i) && any(select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(select(false, false, true), false)));
    global1 = array<vec2<u32>, 23>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(510f, -1302f, -747f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 290f, -1631f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, 312f, 274f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(2152f, 1000f, -1000f), vec3<f32>(493f, 1781f, -2162f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, 750f, -1106f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-997f, 1326f, -381f))) * vec3<f32>(-581f, -1310f, 680f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f + -819f)), -1136f, _wgslsmith_f_op_f32(2023f - _wgslsmith_f_op_f32(f32(-1f) * -334f)))));
    global1 = array<vec2<u32>, 23>();
    var var_2 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(false, false)), true)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(476f, _wgslsmith_f_op_f32(max(-1776f, var_1.x)), -430f, _wgslsmith_f_op_f32(abs(507f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1813f, 1264f, -1074f, -1000f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, 769f, 361f, _wgslsmith_f_op_f32(var_1.x + var_1.x))));
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = select(reverseBits(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(arg_0.x, 23u)], vec2<u32>(arg_0.x, 21176u)))), ~(~vec2<u32>(arg_0.x, global0.x)), false) | ~vec2<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0.x, 34817u), global0.zwx));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1092f + 156f))), -1000f, -879f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1117f, 1821f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-714f, 134f, 901f, 211f) - vec4<f32>(871f, -456f, -341f, 1577f)))) - _wgslsmith_f_op_vec4_f32(func_3()))));
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_0.x, global0.x, 67717u, 46183u)), vec4<u32>(11725u, _wgslsmith_add_u32(17104u, 558u), 60915u & var_0.x, abs(1u))) & ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(12978u, var_0.x, 116699u, 4294967295u), vec4<u32>(4294967295u, global0.x, global0.x, 0u) << (vec4<u32>(var_0.x, var_0.x, 22982u, global0.x) % vec4<u32>(32u)), vec4<u32>(var_0.x, var_0.x, global0.x, global0.x) & vec4<u32>(1u, arg_0.x, var_0.x, var_0.x)), select(max(abs(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, 57082u, var_0.x), vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x), vec4<u32>(47340u, global0.x, var_0.x, var_0.x))), ~(vec4<u32>(var_0.x, 8654u, arg_0.x, 4294967295u) ^ vec4<u32>(8100u, 1u, 63482u, var_0.x)), vec4<bool>(false, true, true, true)) >> (~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, global0.x, var_0.x, 106178u), _wgslsmith_sub_vec4_u32(vec4<u32>(6055u, arg_0.x, 19889u, 45768u), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, var_0.x))) % vec4<u32>(32u)), ~(~(~abs(vec4<u32>(31203u, var_0.x, 76889u, 0u)))));
    global1 = array<vec2<u32>, 23>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-436f - var_1.a.x))));
    return vec4<u32>(~0u, 1u, _wgslsmith_dot_vec4_u32(~(abs(vec4<u32>(arg_0.x, arg_0.x, 35103u, arg_0.x)) << (vec4<u32>(1u, 9042u, arg_0.x, 10943u) % vec4<u32>(32u))), abs((vec4<u32>(1u, var_0.x, global0.x, global0.x) & vec4<u32>(1u, arg_0.x, arg_0.x, 1u)) | vec4<u32>(global0.x, 4294967295u, arg_0.x, 62309u))), _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(global0.x, 8166u)));
}

fn func_1() -> Struct_3 {
    var var_0 = global0.x;
    global1 = array<vec2<u32>, 23>();
    let var_1 = any(!vec2<bool>(_wgslsmith_div_i32(64724i, u_input.a) >= 2147483647i, !select(true, true, false)));
    global0 = ~(~func_2(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), global1[_wgslsmith_index_u32(10664u, 23u)]))) >> (vec4<u32>(_wgslsmith_mod_u32(global0.x, 676u), ~4294967295u, abs(~abs(4294967295u)), ~(~0u)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_add_vec3_u32(~global0.zxx, ~(~_wgslsmith_clamp_vec3_u32(~global0.zzx, ~global0.zyw, vec3<u32>(60870u, global0.x, 1u))));
    return Struct_3(~(~global0.x) > var_2.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1599f, 1052f), vec2<f32>(-1182f, -326f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(698f, 816f), vec2<f32>(110f, -622f))), true)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(393f, 2159f), _wgslsmith_f_op_vec2_f32(vec2<f32>(232f, 523f) * vec2<f32>(629f, 1608f))))))), Struct_2(select(vec3<u32>(global0.x, 18160u, var_2.x) << (firstLeadingBit(global0.ywz) % vec3<u32>(32u)), vec3<u32>(global0.x, max(1u, 0u), 4294967295u << (0u % 32u)), false), min(global0.zxw, ~vec3<u32>(0u, var_2.x, 4294967295u)), _wgslsmith_f_op_f32(-1f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1391f, 1050f, -303f, 157f)))), Struct_1(vec4<f32>(1000f, _wgslsmith_div_f32(1204f, -381f), 811f, -107f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, 1450f, -1000f, -1230f)))), firstLeadingBit(~(~vec2<i32>(u_input.a, 0i) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 44529u), vec2<u32>(7302u, var_2.x)) % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_div_vec3_u32(arg_0.c.a, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 25947u), 1u, _wgslsmith_dot_vec2_u32(arg_3.a.zy, vec2<u32>(arg_0.c.b.x, arg_1.x))), ~reverseBits(vec3<u32>(39317u, 21472u, arg_1.x))) & arg_0.c.a);
    let var_1 = arg_0.a;
    var var_2 = vec4<i32>(min(2147483647i, u_input.a), u_input.a, -28417i, ~arg_0.e.x);
    let var_3 = 79271u;
    var_0 = ~_wgslsmith_mod_vec3_u32(firstTrailingBit(func_2(var_0.xy).xzx << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 11839u, arg_3.a.x), vec3<u32>(arg_1.x, 0u, arg_0.c.a.x)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c.a.x, 30u, 57057u << (var_0.x % 32u)), vec3<u32>(_wgslsmith_div_u32(var_0.x, global0.x), _wgslsmith_div_u32(var_3, 4294967295u), ~arg_1.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, select(true, func_4(func_1(), vec2<u32>(4294967295u, 33755u), Struct_4(vec4<u32>(23377u, global0.x, 67067u, global0.x)), Struct_4(reverseBits(vec4<u32>(global0.x, global0.x, 5985u, 0u)))), any(vec4<bool>(true, true, select(false, true, true), true))));
    global1 = array<vec2<u32>, 23>();
    var var_1 = 4294967295u;
    let var_2 = u_input.a != u_input.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3()).yz)))));
    global0 = min(~abs(max(vec4<u32>(62658u, 0u, 4294967295u, global0.x), vec4<u32>(56212u, global0.x, 78681u, global0.x)) >> ((vec4<u32>(global0.x, global0.x, 55058u, global0.x) ^ vec4<u32>(0u, 0u, global0.x, global0.x)) % vec4<u32>(32u))), vec4<u32>(reverseBits(~global0.x), max(_wgslsmith_mod_u32(39466u & global0.x, global0.x), ~(~17057u)), global0.x, _wgslsmith_sub_u32(firstTrailingBit(firstTrailingBit(global0.x)), func_1().c.b.x)));
    var var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<i32>(~(-1i), i32(-1i) * -2147483647i, -u_input.a, -47010i)), max(9453u, countOneBits(select(0u, global0.x, !var_2))), vec4<u32>(abs(1u), 28543u, ~firstLeadingBit(21795u), 4294967295u), abs(firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.a, -53862i, u_input.a, -2147483647i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<bool>(var_0.x, true, false, true)), select(vec4<i32>(u_input.a, 30569i, 10250i, 50992i), vec4<i32>(0i, -2147483647i, u_input.a, u_input.a), var_2), vec4<i32>(-2147483647i, -2147483647i, 24247i, 2147483647i)))));
}

