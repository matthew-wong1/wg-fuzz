struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0;
    let var_1 = max(vec3<u32>(~(~var_0.a.a & 4294967295u), min(16104u, ~var_0.a.a), 0u | _wgslsmith_clamp_u32(~arg_0.a.a, 1u, abs(100491u))), _wgslsmith_sub_vec3_u32(vec3<u32>(56187u, _wgslsmith_clamp_u32(var_0.a.a, 1u, 1u), firstTrailingBit(arg_0.a.a)), max(~vec3<u32>(28253u, var_0.a.a, 70426u), vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 21796u), vec2<u32>(var_0.a.a, 4294967295u)), 4294967295u))));
    let var_2 = _wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.b.zz, vec2<i32>(-u_input.a.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), vec2<i32>(-reverseBits(_wgslsmith_mult_i32(23812i, u_input.b.x)), 44469i));
    let var_3 = vec3<bool>(-1260f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(788f, 851f)))), 156f)), !any(vec4<bool>(true, true, true, true)), true);
    let var_4 = vec2<u32>(max(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.a.a, 1u), ~59523u), ~(~30661u)), var_1.x), 0u);
    return 18428i;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = arg_0.a;
    var_0 = arg_0.a;
    let var_1 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(-_wgslsmith_div_i32(u_input.a.x, u_input.a.x) | _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -16681i, 23208i), vec3<i32>(u_input.a.x, -32484i, u_input.a.x))), func_3(arg_0)), ~2147483647i);
    var_0 = Struct_1(4294967295u);
    var_0 = Struct_1(firstTrailingBit(50769u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -508f)), _wgslsmith_f_op_f32(max(-629f, _wgslsmith_f_op_f32(510f - 167f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-224f, 1534f), _wgslsmith_f_op_f32(max(-514f, -827f)), false)), -589f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(351f, -694f, -868f, -1397f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(449f, 329f, -968f, -457f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1765f, 847f, 1494f, -988f)))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_3(Struct_1(4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1205f, arg_0.c.x, 982f)) * vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.b.a.x, arg_0.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1850f), arg_0.c.x))) * arg_0.d.a.xyy);
    let var_2 = vec4<i32>(-(2147483647i & ~(-u_input.a.x)), abs(-(~firstTrailingBit(u_input.b.x))), max(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), _wgslsmith_mult_vec2_i32(u_input.b.xx, u_input.a))), _wgslsmith_add_i32(u_input.a.x, -1289i)), 27752i);
    var var_3 = _wgslsmith_sub_i32(0i, 33991i);
    var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(536f * -1037f))))), _wgslsmith_f_op_f32(floor(916f)), _wgslsmith_f_op_f32(func_4(Struct_4(vec3<f32>(1325f, 305f, -486f), Struct_2(vec4<f32>(-814f, 449f, -695f, -1051f)), vec4<f32>(-951f, -1000f, 1643f, -1527f), func_2(Struct_3(Struct_1(arg_0)), vec3<u32>(0u, arg_0, arg_0)))))), func_2(Struct_3(Struct_1(arg_0 | arg_0)), select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(40617u, 4294967295u, 4294967295u), vec3<u32>(44716u, arg_0, 4294967295u), vec3<u32>(18963u, 43867u, arg_0)), abs(~vec3<u32>(22119u, arg_0, arg_0)), select(!arg_1, !arg_1, u_input.b.x < 14896i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(Struct_3(Struct_1(0u)), vec3<u32>(273u, arg_0, 27337u)).a) - _wgslsmith_div_vec4_f32(vec4<f32>(-308f, -131f, 1184f, -1422f), func_2(Struct_3(Struct_1(27819u)), vec3<u32>(4294967295u, arg_0, 8136u)).a)) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1466f)))), _wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(145f)), _wgslsmith_f_op_f32(343f * -1410f))), func_2(Struct_3(Struct_1(arg_0)), ~vec3<u32>(29605u, arg_0, arg_0)).a.x)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(func_4(Struct_4(vec3<f32>(1436f, 120f, 292f), Struct_2(vec4<f32>(221f, 1108f, 885f, -435f)), vec4<f32>(-185f, -1272f, 1000f, -870f), Struct_2(vec4<f32>(896f, -1000f, 344f, 300f))))), _wgslsmith_f_op_f32(select(-1312f, -2834f, arg_0 < 61494u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f - 512f)))));
    let var_1 = var_0.a.x;
    let var_2 = vec4<i32>(~u_input.b.x, u_input.a.x, 12533i, -reverseBits(0i));
    var var_3 = u_input.b.xz;
    var_3 = firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(38967i, var_2.x), firstLeadingBit(vec2<i32>(1i, 1i))));
    return Struct_1(_wgslsmith_div_u32(select(arg_0, arg_0, 0u != abs(arg_0)), 32001u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), vec3<bool>(false, true, true));
    let var_1 = vec4<u32>(countOneBits(var_0.a ^ 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, ~(var_0.a | 6629u)), reverseBits(firstTrailingBit(vec2<u32>(var_0.a, 77125u)))), min(4294967295u, var_0.a << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 72695u, var_0.a), max(var_0.a, 0u)) % 32u)), ~var_0.a);
    let var_2 = 134f;
    var_0 = Struct_1(_wgslsmith_div_u32(countOneBits(~max(var_0.a, 0u)), ~(~_wgslsmith_div_u32(4294967295u, 11588u))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(vec3<f32>(func_2(Struct_3(Struct_1(var_1.x)), var_1.xxy).a.x, var_2, _wgslsmith_f_op_f32(select(-1687f, -2254f, true))), func_2(Struct_3(Struct_1(101277u)), select(var_1.xyw, vec3<u32>(1u, 4294967295u, var_1.x), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -683f, 375f, var_2) + vec4<f32>(var_2, -1000f, 1035f, var_2))), func_2(Struct_3(Struct_1(var_1.x)), vec3<u32>(4294967295u, var_1.x, 34641u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(339f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_2))), _wgslsmith_f_op_f32(round(func_2(Struct_3(Struct_1(var_1.x)), var_1.www | var_1.yzx).a.x)), !(any(vec3<bool>(false, true, false)) != true))));
    var var_4 = vec4<i32>(u_input.b.x, _wgslsmith_div_i32(min(-2147483647i, u_input.b.x), _wgslsmith_dot_vec2_i32(max(~vec2<i32>(0i, u_input.b.x), abs(vec2<i32>(3062i, u_input.a.x))), u_input.b.yx)), -1i, func_3(Struct_3(func_1(~var_0.a, vec3<bool>(true, false, true)))));
    var var_5 = ~var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zz, abs(var_0.a), ~(~vec2<i32>(3895i, u_input.b.x)), (var_1.xwy << (reverseBits(vec3<u32>(var_0.a, 24622u, var_0.a)) % vec3<u32>(32u))) << ((vec3<u32>(min(var_1.x, 55219u), _wgslsmith_add_u32(var_0.a, var_1.x), ~4294967295u) | (_wgslsmith_sub_vec3_u32(var_1.wxz, vec3<u32>(41456u, var_1.x, 1u)) << (min(var_1.ywz, vec3<u32>(4294967295u, 1u, 1419u)) % vec3<u32>(32u)))) % vec3<u32>(32u)), countOneBits(vec4<u32>(var_1.x, _wgslsmith_mod_u32(~var_1.x, _wgslsmith_div_u32(0u, 1u)), ~(~4915u), _wgslsmith_dot_vec3_u32(vec3<u32>(26822u, 103516u, var_0.a) << (vec3<u32>(4294967295u, var_1.x, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(var_1.yyx, var_1.zyy)))));
}

