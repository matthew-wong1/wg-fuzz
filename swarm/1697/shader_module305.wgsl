struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(9971i, -1i, i32(-2147483648), -32020i);

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<u32>(16525u, 0u, 54807u, 0u), vec3<i32>(42860i, 1i, -2532i)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 106924u, 1u), vec3<i32>(i32(-2147483648), 19589i, 1i)), Struct_2(vec4<u32>(0u, 4294967295u, 2602u, 1u), vec3<i32>(-36107i, 23267i, 55220i)), Struct_2(vec4<u32>(51732u, 0u, 83343u, 0u), vec3<i32>(2147483647i, 2147483647i, 1i)), Struct_2(vec4<u32>(0u, 28961u, 77349u, 0u), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_2(vec4<u32>(99080u, 1507u, 1u, 0u), vec3<i32>(0i, -1i, 14781i)), Struct_2(vec4<u32>(54478u, 44067u, 6917u, 4294967295u), vec3<i32>(1i, -1i, -42716i)), Struct_2(vec4<u32>(4294967295u, 34447u, 23177u, 54531u), vec3<i32>(1i, -20075i, 18440i)), Struct_2(vec4<u32>(8969u, 4294967295u, 55550u, 4294967295u), vec3<i32>(-14596i, i32(-2147483648), -2128i)), Struct_2(vec4<u32>(26245u, 19838u, 0u, 1u), vec3<i32>(1i, 1i, 2147483647i)), Struct_2(vec4<u32>(4294967295u, 67180u, 6643u, 66500u), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_2(vec4<u32>(42408u, 2348u, 0u, 4294967295u), vec3<i32>(-14175i, 2147483647i, -6757i)), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 1u), vec3<i32>(1i, -1i, 1324i)), Struct_2(vec4<u32>(4294967295u, 10432u, 4294967295u, 4294967295u), vec3<i32>(-1i, 2147483647i, -34774i)), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec3<i32>(0i, 20995i, i32(-2147483648))), Struct_2(vec4<u32>(50960u, 4294967295u, 1u, 51549u), vec3<i32>(-1i, -1i, -49386i)), Struct_2(vec4<u32>(0u, 42559u, 0u, 241u), vec3<i32>(7068i, -23726i, -35516i)), Struct_2(vec4<u32>(8866u, 4294967295u, 71723u, 70980u), vec3<i32>(46649i, 23956i, -1i)), Struct_2(vec4<u32>(0u, 1u, 1u, 51693u), vec3<i32>(0i, 1i, 2147483647i)), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 36988u), vec3<i32>(-1i, -28078i, 12691i)), Struct_2(vec4<u32>(56655u, 110926u, 1u, 77661u), vec3<i32>(14524i, -1i, 1i)), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec3<i32>(0i, 35303i, -76313i)), Struct_2(vec4<u32>(2411u, 1u, 4294967295u, 0u), vec3<i32>(0i, 0i, -41973i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_3(Struct_2(select(u_input.d, arg_1.a, select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))) & (arg_1.a & vec4<u32>(4294967295u, 0u, 35801u, arg_1.a.x)), select(_wgslsmith_mod_vec3_i32(-arg_1.b, arg_0), arg_1.b, (u_input.b != global0.x) != all(vec3<bool>(false, false, true)))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), true));
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -846f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-863f, -308f), vec2<f32>(2340f, -717f), var_0.b.x)))) * vec2<f32>(-1900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-866f, -1314f)) * _wgslsmith_f_op_f32(ceil(-991f))))));
    var var_3 = !var_0.b.zz;
    var_1 = ~u_input.d >> (_wgslsmith_mult_vec4_u32(~countOneBits(u_input.d), vec4<u32>(var_0.a.a.x, arg_1.a.x, u_input.c, _wgslsmith_mod_u32(4294967295u, var_0.a.a.x) & arg_1.a.x)) % vec4<u32>(32u));
    return !var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    return Struct_3(Struct_2(select(vec4<u32>(33004u, arg_1.x, u_input.c, u_input.d.x), reverseBits(vec4<u32>(42158u, 1854u, 4294967295u, u_input.a)), select(arg_0.a, vec4<bool>(arg_0.d, arg_0.a.x, true, arg_0.a.x), arg_0.a)) >> (~(arg_1 | vec4<u32>(23210u, arg_0.c, 16606u, u_input.d.x)) % vec4<u32>(32u)), firstLeadingBit(global0.xzx | _wgslsmith_add_vec3_i32(arg_0.b.zzw, arg_0.b.wwz))), vec3<bool>(true, false, func_3(vec3<i32>(arg_0.b.x ^ arg_0.b.x, 15851i, ~arg_0.b.x), Struct_2(~arg_1, arg_0.b.ywx))));
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    global1 = array<Struct_2, 23>();
    var var_0 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.d.x, 4294967295u, arg_0.a.a.x)), vec4<u32>(arg_0.a.a.x, func_2(Struct_1(vec4<bool>(false, false, false, arg_0.b.x), vec4<i32>(u_input.e.x, 15845i, 26841i, -27260i), 1u, arg_0.b.x, u_input.d), ~arg_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, -1000f, -562f, 131f)), _wgslsmith_div_f32(1598f, 602f)).a.a.x, 27286u, ~arg_0.a.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, -133f, 204f, -1727f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, -130f, -107f, -1206f) + vec4<f32>(-1163f, 193f, 1000f, 886f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -569f, -1204f, -821f)))))), false));
    var var_2 = !(!(!arg_0.b));
    let var_3 = any(select(!vec4<bool>(true, any(arg_0.b), !arg_0.b.x, true), select(!(!vec4<bool>(var_2.x, true, var_2.x, true)), vec4<bool>(26635i > u_input.e.x, any(arg_0.b.xx), false, arg_0.b.x), true), false));
    return vec3<i32>(reverseBits(~u_input.e.x), countOneBits(-_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, 48346i, 0i), vec4<i32>(u_input.e.x, 16104i, u_input.e.x, arg_0.a.b.x))), min(arg_0.a.b.x, 1i));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec4<i32>(-abs(u_input.e.x), firstTrailingBit(firstTrailingBit(global0.x)), -_wgslsmith_dot_vec3_i32(func_4(func_2(Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(u_input.e.x, global0.x, 3531i, global0.x), u_input.d.x, false, vec4<u32>(u_input.d.x, u_input.c, 62107u, 0u)), u_input.d, vec4<f32>(1146f, 555f, 1000f, -898f), -1662f)), ~global0.xwx), global0.x);
    let var_1 = Struct_1(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false)), select(any(vec3<bool>(true, false, true)), true, false)), vec4<i32>(-9813i, select(_wgslsmith_mult_i32(var_0.x, -57370i), global0.x, select(false, false, false)), -func_4(Struct_3(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], vec3<bool>(false, false, true))).x, ~global0.x) ^ (min(_wgslsmith_add_vec4_i32(vec4<i32>(5476i, u_input.b, u_input.b, var_0.x), vec4<i32>(global0.x, 14968i, u_input.e.x, 0i)), -vec4<i32>(u_input.e.x, -4356i, u_input.b, -58495i)) >> (vec4<u32>(~47678u, abs(u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.d.yw, vec2<u32>(u_input.c, u_input.c)), u_input.c << (4083u % 32u)) % vec4<u32>(32u))), u_input.c >> (0u % 32u), false, u_input.d);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(var_1.c & _wgslsmith_clamp_u32(41539u, 0u, _wgslsmith_sub_u32(~0u, ~29220u)), 23u)], vec3<bool>(func_3(func_2(Struct_1(vec4<bool>(var_1.a.x, true, false, false), var_1.b, u_input.a, false, u_input.d), vec4<u32>(27910u, 1u, u_input.d.x, u_input.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1070f, -1000f, -1893f, -827f), vec4<f32>(2347f, -1147f, 948f, -374f))), _wgslsmith_f_op_f32(f32(-1f) * -835f)).a.b, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~0u), 23u)]), var_1.d, any(!var_1.a) || var_1.a.x));
    var var_3 = any(vec4<bool>(all(vec3<bool>(var_1.a.x, var_1.a.x, all(var_1.a.zy))), true, var_2.b.x, false));
    var var_4 = var_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(441f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1219f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -948f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(948f + 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1()))));
    global1 = array<Struct_2, 23>();
    var var_1 = var_0.x;
    var var_2 = -_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, u_input.e.x, u_input.b)) | abs(~vec4<i32>(global0.x, u_input.b, global0.x, u_input.b)), select(firstLeadingBit(abs(vec4<i32>(18500i, -54083i, -37624i, u_input.b))), vec4<i32>(-global0.x, ~(-1i), ~global0.x, -2147483647i), true));
    var var_3 = Struct_1(vec4<bool>(!all(vec4<bool>(true, false, true, true)), !any(vec4<bool>(true, true, true, true)), true, !all(vec4<bool>(true, true, true, true))), ~vec4<i32>(_wgslsmith_div_i32(u_input.b, -1i), ~1i, i32(-1i) * -2147483647i, 0i) | vec4<i32>(select(global0.x & 7692i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 2147483647i), global0.xx), true), global0.x, i32(-1i) * -10523i, 1i & min(global0.x, u_input.b)), 96621u, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false))) & true, countOneBits(vec4<u32>(1u, 0u, ~(~u_input.d.x), max(u_input.c, firstLeadingBit(u_input.a)))));
    let var_4 = var_3.d;
    global0 = -var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.e.x, 1u, firstTrailingBit(u_input.a)), vec3<u32>(46846u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), u_input.d.x >> (u_input.a % 32u))), ~func_2(Struct_1(var_3.a, vec4<i32>(1821i, -2147483647i, -1i, -1i), 4294967295u, false, vec4<u32>(u_input.c, var_3.e.x, u_input.c, var_3.c)), u_input.d, vec4<f32>(821f, var_0.x, var_0.x, -156f), var_0.x).a.a.zww >> (~(u_input.d.zyy << (vec3<u32>(var_3.e.x, 4294967295u, 43404u) % vec3<u32>(32u))) % vec3<u32>(32u))), ~abs(var_3.c), var_3.b.wxz, vec4<i32>(abs(global0.x), u_input.b, ~var_2.x, ~var_2.x));
}

