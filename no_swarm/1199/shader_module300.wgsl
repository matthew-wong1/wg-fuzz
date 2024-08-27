struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec4<f32>(-1306f, 1071f, 911f, 1182f), vec2<u32>(48606u, 20792u), vec3<i32>(0i, 20530i, 40426i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<f32>(-2267f, 1102f, 1571f, -419f), vec2<u32>(29559u, 0u), vec3<i32>(1889i, i32(-2147483648), 2147483647i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<f32>(655f, 1755f, -1003f, 1465f), vec2<u32>(1u, 25250u), vec3<i32>(-23343i, 0i, 1i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<f32>(439f, 725f, 382f, 179f), vec2<u32>(30618u, 0u), vec3<i32>(0i, 1i, -3191i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<f32>(-168f, -1047f, -655f, 235f), vec2<u32>(0u, 24438u), vec3<i32>(0i, 7205i, -3781i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<f32>(-561f, 210f, -167f, 135f), vec2<u32>(47953u, 6836u), vec3<i32>(-1i, 1396i, 0i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<f32>(-472f, -356f, 265f, -622f), vec2<u32>(0u, 1u), vec3<i32>(15334i, -10257i, 1i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<f32>(1585f, -485f, 404f, 811f), vec2<u32>(1u, 44766u), vec3<i32>(-9138i, 59546i, 0i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<f32>(1127f, 794f, 1606f, -148f), vec2<u32>(0u, 1u), vec3<i32>(-6081i, i32(-2147483648), -1i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<f32>(1956f, -745f, 772f, 112f), vec2<u32>(16811u, 15757u), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<f32>(183f, 1203f, 1328f, 667f), vec2<u32>(0u, 1u), vec3<i32>(-33656i, -12516i, -32947i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<f32>(417f, 778f, 493f, -1031f), vec2<u32>(93819u, 0u), vec3<i32>(-21643i, 46900i, 2147483647i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<f32>(-503f, 160f, -512f, -516f), vec2<u32>(4294967295u, 0u), vec3<i32>(0i, i32(-2147483648), 1i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<f32>(-830f, 646f, 564f, -630f), vec2<u32>(4294967295u, 1u), vec3<i32>(i32(-2147483648), -5295i, 2147483647i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<f32>(-1000f, 831f, -955f, 152f), vec2<u32>(4279u, 1u), vec3<i32>(-1i, 8013i, -1i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<f32>(1965f, 1064f, 207f, -914f), vec2<u32>(7602u, 32301u), vec3<i32>(-1631i, 56842i, 1i)), vec2<bool>(false, true)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-876f, -2559f, -1000f, 653f), vec2<u32>(78226u, 1u), vec3<i32>(13507i, -1i, 1i)), vec2<bool>(false, false));

var<private> global2: vec4<f32> = vec4<f32>(1589f, -737f, -308f, 1128f);

var<private> global3: Struct_4;

var<private> global4: array<f32, 30> = array<f32, 30>(1000f, 702f, 102f, 1000f, -126f, 1211f, 1057f, 522f, -879f, 213f, 1000f, 1014f, 1110f, -348f, -747f, -1260f, 1991f, 1000f, -1004f, 446f, -540f, 218f, -612f, 528f, 253f, -484f, -528f, 1393f, -1000f, 295f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_5(Struct_4(7514u, Struct_3(select(vec4<bool>(global1.b.x, global3.b.b.b.x, global1.b.x, global1.b.x), vec4<bool>(false, false, false, global3.e.b.x), any(vec2<bool>(false, global1.b.x))), global3.e, global3.b.c, select(!global1.b, vec2<bool>(global1.b.x, false), -548f != arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -496f), vec4<bool>(global3.b.d.x, global1.b.x, global1.b.x, global1.b.x), global3.e), global1.b.x, select(global1.b, select(select(global1.b, vec2<bool>(global1.b.x, global3.e.b.x), 984f == global2.x), global3.b.d, global1.b.x), !global1.b.x), _wgslsmith_f_op_f32(-global2.x));
    var var_1 = vec4<bool>(var_0.c.x, true, !(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.a.e.a.c.x, var_0.a.b.c.a.c.x), countOneBits(-1i)) < global3.e.a.c.x), max(_wgslsmith_clamp_u32(~var_0.a.a, _wgslsmith_mult_u32(4294967295u, u_input.c.x), 12807u), _wgslsmith_dot_vec2_u32(~var_0.a.b.b.a.b, u_input.c.xz >> (global1.a.b % vec2<u32>(32u)))) > u_input.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), 936f, _wgslsmith_f_op_f32(var_0.a.c * 376f), 819f))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(-arg_0), 1000f), !(!global3.b.a))));
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.b.a.a.x, global4[_wgslsmith_index_u32(107672u, 30u)], arg_0.x))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(93496u, 30u)]) * _wgslsmith_f_op_f32(select(263f, global3.e.a.a.x, true))), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global4[_wgslsmith_index_u32(global3.e.a.b.x, 30u)])).x), global4[_wgslsmith_index_u32(abs(114576u), 30u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-153f + global2.x), -778f, -187f, global3.b.b.a.a.x)))), !(!global3.b.b.b.x)));
    let var_0 = Struct_4(global3.a, global3.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global3.e.a.a.x)))))))), global3.b.a, Struct_2(global1.a, vec2<bool>(true, arg_0.x)));
    var var_1 = (var_0.b.c.a.b.x & abs(global3.b.c.a.b.x)) ^ (global1.a.b.x ^ ~u_input.c.x);
    var var_2 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.c.x) >> (global1.a.b.x % 32u)), 16u)];
    var var_3 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global3.b.c.a.b.x, global1.a.b.x, 35255u, var_0.a)), ~(vec4<u32>(70104u, 4294967295u, 25428u, 38855u) << (vec4<u32>(0u, global1.a.b.x, var_2.a.b.x, 0u) % vec4<u32>(32u)))), vec4<u32>(global1.a.b.x, _wgslsmith_clamp_u32(var_0.e.a.b.x, _wgslsmith_mult_u32(var_0.a, global3.a), 35659u), _wgslsmith_sub_u32(abs(global3.e.a.b.x), ~global1.a.b.x), _wgslsmith_mult_u32(var_2.a.b.x, ~4294967295u)), ~vec4<u32>(u_input.b, _wgslsmith_mult_u32(50288u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(53679u, u_input.c.x, var_0.e.a.b.x), vec3<u32>(u_input.c.x, var_2.a.b.x, 4294967295u)), firstTrailingBit(var_2.a.b.x)));
    return vec4<u32>(~4294967295u, min(1u, max(var_2.a.b.x, 1u)), _wgslsmith_add_u32(global1.a.b.x ^ 0u, reverseBits(reverseBits(_wgslsmith_clamp_u32(6603u, global3.e.a.b.x, 38179u)))), ~max(abs(~64226u), var_2.a.b.x ^ ~var_2.a.b.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = ~vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.x, 0u), ~1u, 39445u | global1.a.b.x), _wgslsmith_add_u32(1u, 9172u), u_input.b) & func_2(vec3<bool>(false, any(select(global3.b.c.b, global1.b, vec2<bool>(false, false))), !select(false, global3.b.d.x, false)));
    global2 = vec4<f32>(-735f, -1996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-769f - -416f), _wgslsmith_f_op_f32(-203f + -1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.b.b.a.a.x - global3.e.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(global3.b.c.a.b, arg_0, true), vec2<u32>(global3.a, global3.e.a.b.x)), 30u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(1190f, 1404f) + global3.c))) + _wgslsmith_f_op_f32(-global2.x)));
    let var_1 = abs(u_input.c.x);
    let var_2 = global3.b.c.a.c.x;
    global4 = array<f32, 30>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.e.a.a.x, 479f, 697f, global4[_wgslsmith_index_u32(var_1, 30u)]))))))), _wgslsmith_mod_vec2_u32((u_input.c.yx & vec2<u32>(13568u, global3.e.a.b.x)) >> (arg_0 % vec2<u32>(32u)), vec2<u32>(~var_1, firstLeadingBit(global3.e.a.b.x))) ^ func_2(select(global3.b.a.zwy, select(global3.d.wyx, global3.d.zwz, true), !vec3<bool>(global3.b.c.b.x, arg_1, global1.b.x))).xy, _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a ^ _wgslsmith_dot_vec2_i32(global1.a.c.xx, global3.b.b.a.c.xx), u_input.a, 0i), vec3<i32>(49258i, 0i, -23362i) & ~firstTrailingBit(vec3<i32>(u_input.a, global1.a.c.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    let var_1 = !global3.d.xx;
    var var_2 = global1.a.c;
    var var_3 = global1.a.b.x >> (~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(10100u, 74839u), global3.e.a.b.x), _wgslsmith_mult_u32(u_input.c.x, 0u)) % 32u);
    var_3 = u_input.c.x;
    let var_4 = Struct_4(~countOneBits(u_input.b), Struct_3(global3.d, Struct_2(func_1(vec2<u32>(global3.e.a.b.x, 3171u) >> (vec2<u32>(1u, global3.e.a.b.x) % vec2<u32>(32u)), global2.x > 1662f), !select(global3.e.b, vec2<bool>(global1.b.x, false), var_0.x)), Struct_2(func_1(global1.a.b, false), select(select(vec2<bool>(true, var_0.x), global1.b, global1.b.x), vec2<bool>(true, var_1.x), 138f >= global1.a.a.x)), !(!var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 30u)]), -937f, any(!vec4<bool>(global1.b.x, global1.b.x, true, false))))), !vec4<bool>(true, !any(vec2<bool>(var_1.x, global1.b.x)), !(global3.e.b.x && false), true), global3.b.b);
    var_3 = ~u_input.b;
    var_2 = -(global1.a.c >> (~min(reverseBits(vec3<u32>(u_input.b, u_input.c.x, var_4.b.b.a.b.x)), max(vec3<u32>(global3.e.a.b.x, 0u, global3.e.a.b.x), u_input.c)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_vec3_u32(~vec3<u32>(38117u, 0u, 22022u), max(u_input.c, u_input.c)) | u_input.c), func_1(_wgslsmith_add_vec2_u32(countOneBits(var_4.b.c.a.b), firstTrailingBit(vec2<u32>(global1.a.b.x, 0u))), any(vec4<bool>(!var_4.e.b.x, 32750u >= var_4.e.a.b.x, global1.b.x, true))).a.zzz, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1.a.b.x), 30u)]));
}

