struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_1(true, vec4<i32>(-2147483647i, ~0i, -_wgslsmith_add_i32(u_input.a | -2147483647i, select(u_input.a, u_input.a, false)), -24611i));
    let var_1 = Struct_3(~(~(~_wgslsmith_sub_u32(61868u, arg_0.x))), ~4294967295u & ~(29689u ^ ~arg_0.x));
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, -88595i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -29321i) ^ var_0.b.yz, vec2<i32>(var_0.b.x, u_input.a))), ~_wgslsmith_clamp_vec3_i32(var_0.b.zzz, var_0.b.xyw, ~var_0.b.xzx));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-770f, _wgslsmith_f_op_f32(f32(-1f) * -2035f))))))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_4(any(vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), true, all(vec2<bool>(false, true)) != true)), Struct_1(select(all(vec3<bool>(false, true, false)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))), ~(vec4<i32>(1i, 2147483647i, 62299i, arg_1) ^ vec4<i32>(arg_2.x, 28855i, arg_1, 3556i))), 1i, Struct_2(-arg_2.x, _wgslsmith_f_op_vec3_f32(arg_0.b * vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(528f * -120f), _wgslsmith_f_op_f32(f32(-1f) * -1035f)))), countOneBits(u_input.d));
    var_0 = Struct_4(var_0.d.b.x > _wgslsmith_f_op_f32(func_3(u_input.d)), Struct_1(false, vec4<i32>(_wgslsmith_mult_i32(~u_input.a, select(arg_2.x, -1i, true)), 4462i, ~select(5892i, u_input.a, true), (-34271i | u_input.a) ^ ~arg_0.a)), i32(-1i) * -arg_0.a, arg_0, vec3<u32>(countOneBits(u_input.d.x), u_input.d.x, var_0.e.x));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.b.yz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1748f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(637f, 193f))), arg_0.b.yy) + vec2<f32>(-1725f, _wgslsmith_div_f32(324f, -436f))), var_0.b.a))));
    var var_3 = var_0.b;
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = reverseBits(max(arg_3.b.b.wwz, vec3<i32>(firstLeadingBit(arg_3.c), -61978i, arg_3.c)));
    var var_1 = Struct_5(arg_3.b);
    var_1 = Struct_5(Struct_1(any(vec3<bool>(any(vec4<bool>(arg_3.a, arg_3.a, arg_3.b.a, true)), true, true)), vec4<i32>(-arg_2.d.a, _wgslsmith_sub_i32(~u_input.a, abs(0i)), ~1i, u_input.a)));
    let var_2 = -max(vec2<i32>(~countOneBits(var_0.x), (u_input.a | -2147483647i) & arg_2.b.b.x), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2416i, arg_2.b.b.x), vec2<i32>(-49611i, 0i), vec2<i32>(1i, -21520i)), arg_2.b.b.zy), u_input.a));
    var var_3 = arg_3;
    return vec2<bool>(!arg_3.b.a, !var_1.a.a);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = select(!func_4(max(u_input.d, vec3<u32>(u_input.c, u_input.c, u_input.b)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, u_input.a, u_input.a, arg_0.x)), ~vec4<i32>(52200i, u_input.a, u_input.a, u_input.a)), Struct_4(true, Struct_1(true, vec4<i32>(0i, arg_0.x, 1i, u_input.a)), abs(-8125i), func_2(Struct_2(-1i, vec3<f32>(-2060f, 253f, -898f)), 13186i, vec3<i32>(2147483647i, 0i, 34321i)), u_input.d), Struct_4(true, Struct_1(true, vec4<i32>(0i, u_input.a, -2147483647i, 82815i)), ~0i, func_2(Struct_2(arg_0.x, vec3<f32>(-1925f, 376f, 144f)), 41636i, vec3<i32>(arg_0.x, arg_0.x, 2147483647i)), u_input.d)), vec2<bool>(true, select(any(vec3<bool>(true, true, true)), true, true)), func_4(select(~select(u_input.d, u_input.d, vec3<bool>(true, true, true)), vec3<u32>(u_input.d.x, ~u_input.d.x, ~u_input.c), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), (-vec4<i32>(2147483647i, arg_0.x, 67517i, -8884i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 14445u, u_input.c), vec4<u32>(u_input.b, 131399u, 1u, u_input.c)) % vec4<u32>(32u))) & abs(select(vec4<i32>(u_input.a, arg_0.x, arg_0.x, 2147483647i), vec4<i32>(2147483647i, -68314i, arg_0.x, arg_0.x), vec4<bool>(true, false, true, false))), Struct_4(any(vec4<bool>(true, true, false, false)), Struct_1(true, -vec4<i32>(arg_0.x, arg_0.x, -2147483647i, -2147483647i)), 2147483647i, Struct_2(firstLeadingBit(3707i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(137f, 610f, -298f), vec3<f32>(978f, 226f, -1183f)))), abs(vec3<u32>(1u, u_input.b, u_input.c) << (u_input.d % vec3<u32>(32u)))), Struct_4(func_4(vec3<u32>(38514u, 0u, 4294967295u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-61847i, -20277i, arg_0.x, 17074i), vec4<i32>(arg_0.x, -2650i, arg_0.x, -2147483647i), vec4<i32>(1i, arg_0.x, -1i, u_input.a)), Struct_4(false, Struct_1(true, vec4<i32>(20447i, arg_0.x, 3271i, u_input.a)), arg_0.x, Struct_2(-1i, vec3<f32>(-194f, 357f, -1237f)), u_input.d), Struct_4(true, Struct_1(true, vec4<i32>(-51302i, 931i, 34912i, arg_0.x)), -1i, Struct_2(-42372i, vec3<f32>(-468f, 706f, -269f)), vec3<u32>(88677u, 19106u, u_input.b))).x, Struct_1(true, min(vec4<i32>(arg_0.x, 1i, u_input.a, u_input.a), vec4<i32>(arg_0.x, 17720i, 20826i, u_input.a))), abs(arg_0.x) >> (u_input.b % 32u), Struct_2(0i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(356f, -154f, 865f), vec3<f32>(1102f, -1147f, 343f)))), ~vec3<u32>(u_input.d.x, 1u, u_input.d.x) | u_input.d)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2398f, -644f, 214f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) + _wgslsmith_f_op_f32(f32(-1f) * -807f)), _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(852f)))))));
    var var_2 = u_input.a;
    var_2 = arg_0.x;
    let var_3 = Struct_1(!all(vec4<bool>(var_0.x, !var_0.x, false, !var_0.x)), -reverseBits(abs(vec4<i32>(u_input.a, u_input.a, arg_0.x, 0i)) >> (vec4<u32>(4294967295u, 82521u, u_input.c, u_input.c) % vec4<u32>(32u))));
    return vec4<bool>(var_3.a, !(firstTrailingBit(u_input.b) >= ~u_input.d.x), func_4(abs(u_input.d | vec3<u32>(0u, u_input.d.x, u_input.d.x)), var_3.b, Struct_4(any(vec3<bool>(true, true, var_3.a)), var_3, 4353i, func_2(Struct_2(u_input.a, var_1), -6977i, vec3<i32>(arg_0.x, -2147483647i, u_input.a)), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_4(true, var_3, _wgslsmith_clamp_i32(-1i, 16917i, u_input.a), Struct_2(17290i, var_1), u_input.d)).x && var_0.x, any(vec4<bool>(var_3.a, all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_3.a, var_0.x, true, true), false)), all(vec3<bool>(var_0.x, true, false)), func_4(~vec3<u32>(1u, u_input.b, 1u), ~vec4<i32>(u_input.a, 1i, 5098i, var_3.b.x), Struct_4(var_3.a, var_3, -1i, Struct_2(arg_0.x, var_1), vec3<u32>(u_input.b, 0u, u_input.c)), Struct_4(var_0.x, Struct_1(var_3.a, var_3.b), -59451i, Struct_2(2147483647i, var_1), vec3<u32>(4294967295u, u_input.c, u_input.d.x))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(all(!func_1(vec2<i32>(1i, -18679i))) | (all(vec2<bool>(true, true)) | select(true, false, true)));
    var var_1 = !((u_input.c == max(75085u, countOneBits(0u))) || any(vec3<bool>(true, true, any(vec4<bool>(false, true, true, true)))));
    let var_2 = Struct_4(func_1(vec2<i32>(countOneBits(~u_input.a), _wgslsmith_add_i32(~18819i, 1i))).x, Struct_1(false, -vec4<i32>(u_input.a, 0i, ~(-13434i), u_input.a)), u_input.a, Struct_2(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -4037i), ~vec2<i32>(-59164i, -50030i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-836f, 344f, -1494f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, 962f, -1755f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-952f, 1000f, 953f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(336f, 655f, -1251f))))), vec3<bool>(true, false, any(vec3<bool>(false, true, true)))))), ~select(~vec3<u32>(1u, 1u, u_input.d.x), reverseBits(u_input.d >> (u_input.d % vec3<u32>(32u))), func_1(~vec2<i32>(-2147483647i, u_input.a)).zwy));
    let var_3 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(-235f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.b.x, var_2.d.b.x) * vec2<f32>(var_2.d.b.x, var_2.d.b.x)), _wgslsmith_f_op_vec2_f32(-var_2.d.b.xx)))))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e.x, ~(~var_2.e.x), var_3.x, ~_wgslsmith_div_u32(43747u, var_3.x)), vec4<u32>(u_input.d.x, _wgslsmith_add_u32(var_3.x, 1u), ~var_3.x, ~34510u) ^ min(~vec4<u32>(u_input.b, var_3.x, 93041u, u_input.b), abs(vec4<u32>(54425u, var_2.e.x, var_3.x, var_2.e.x)))), var_2.d.a, var_3.x | 73676u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-168f, -455f, -334f, var_2.d.b.x), vec4<f32>(1404f, -932f, var_2.d.b.x, 1429f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.b.x, var_2.d.b.x, var_2.d.b.x, -1428f) - vec4<f32>(457f, -266f, 1535f, -291f)), func_1(vec2<i32>(-1i, 25943i))))))));
}

