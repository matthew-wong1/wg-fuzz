struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = vec2<i32>(abs(_wgslsmith_dot_vec3_i32(reverseBits(u_input.e), arg_3.d.wzz)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-21531i, -17506i, u_input.d, _wgslsmith_dot_vec4_i32(arg_3.d, vec4<i32>(-7226i, 7651i, u_input.e.x, -14980i))), arg_3.d));
    let var_1 = -abs(~_wgslsmith_sub_vec4_i32(arg_3.d, arg_3.d));
    let var_2 = Struct_2(select(arg_0.x, !arg_1.a, true), arg_1.b, _wgslsmith_f_op_f32(trunc(-1700f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.d - arg_1.d), arg_1.b, !vec4<bool>(false, true, arg_0.x, false))) + vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-825f + -1209f), arg_1.c, arg_1.c)) + arg_1.d));
    var var_3 = u_input.e.xz;
    let var_4 = ~97u;
    return arg_1.d;
}

fn func_2() -> Struct_2 {
    return Struct_2((true & any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))) & (u_input.a.x > u_input.c.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(859f, -1407f, 364f, 1716f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -521f, 1391f, 2154f))))), -1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, 1187f, 288f, -1921f)), _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(777f, 283f, -331f, -1083f), vec4<f32>(1000f, -766f, -218f, -128f)))), _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x), u_input.c.wwz)), Struct_1(5379i, 2147483647i, abs(1u), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.d, 0i, u_input.e.x), vec4<i32>(19562i, 1i, u_input.e.x, u_input.d)))))));
}

fn func_4(arg_0: Struct_2) -> u32 {
    return _wgslsmith_div_u32(firstTrailingBit(4294967295u), 1u) & max(47613u, 19505u);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = select(~max(vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(107195u, u_input.c.x), _wgslsmith_add_u32(u_input.a.x, u_input.c.x), 41344u), vec4<u32>(~0u, 53722u, arg_1, u_input.c.x >> (u_input.a.x % 32u))), _wgslsmith_clamp_vec4_u32(~max(u_input.c, ~vec4<u32>(4294967295u, u_input.c.x, arg_1, 0u)), vec4<u32>(35265u, arg_1, 42316u, arg_1), u_input.c), true);
    let var_1 = (~(~(25962u ^ arg_1)) & ~func_4(func_2())) & arg_1;
    let var_2 = 18034u;
    var var_3 = firstLeadingBit(firstLeadingBit(~19736u));
    let var_4 = select(vec4<bool>(any(select(vec3<bool>(false, true, arg_0.c.a), vec3<bool>(arg_0.d.a, true, arg_0.d.a), any(vec3<bool>(arg_0.d.a, false, true)))), true, true, all(!(!vec4<bool>(true, arg_0.b.a, arg_0.d.a, true)))), select(vec4<bool>(!(arg_0.d.a | arg_0.b.a), true, arg_0.d.a, arg_0.b.a), !(!select(vec4<bool>(arg_0.c.a, true, arg_0.c.a, true), vec4<bool>(arg_0.d.a, true, true, true), true)), vec4<bool>(all(vec4<bool>(true, arg_0.c.a, arg_0.c.a, true)), u_input.d != abs(0i), true || select(true, arg_0.b.a, false), arg_0.b.a)), vec4<bool>(false, (1u ^ _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xx)) >= _wgslsmith_mod_u32(0u, ~0u), any(!vec3<bool>(arg_0.b.a, true, true)), arg_0.d.a));
    return select(var_4.yxz, vec3<bool>(true, !arg_0.b.a, all(select(select(var_4, var_4, arg_0.c.a), vec4<bool>(false, var_4.x, true, false), !var_4))), var_4.wzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(countOneBits(-2147483647i) | (u_input.b | u_input.e.x), ~firstTrailingBit(0i))), u_input.e.x, -30189i);
    let var_1 = vec3<bool>(all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), func_1(Struct_3(451f, Struct_2(false, vec4<f32>(1062f, 677f, 717f, -1000f), 1000f, vec4<f32>(-1000f, -651f, 1155f, 731f)), Struct_2(false, vec4<f32>(858f, -163f, 174f, -945f), -894f, vec4<f32>(675f, 229f, 617f, -1289f)), Struct_2(false, vec4<f32>(1219f, -305f, -421f, -1658f), 581f, vec4<f32>(-1023f, 1716f, 465f, -546f))), u_input.c.x, vec3<f32>(-202f, -1310f, 1000f))), !func_1(Struct_3(1262f, Struct_2(true, vec4<f32>(1497f, 1377f, -923f, 463f), -700f, vec4<f32>(-1000f, -274f, 454f, -235f)), Struct_2(false, vec4<f32>(410f, -632f, 1060f, 1801f), 352f, vec4<f32>(1360f, -1639f, 448f, -2195f)), Struct_2(true, vec4<f32>(-324f, 1260f, 608f, -233f), 907f, vec4<f32>(-378f, -1000f, -519f, -468f))), u_input.c.x, vec3<f32>(368f, 425f, 862f)).x)), (i32(-1i) * -u_input.d) > max(firstLeadingBit(-49000i), 25899i), !(-9473i < _wgslsmith_dot_vec2_i32(-vec2<i32>(1887i, var_0.x), ~u_input.e.zy)));
    let var_2 = func_2();
    var var_3 = var_2.d.wyz;
    let var_4 = Struct_1(-1i, var_0.x, 43721u, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, 1i), vec4<i32>(49660i, 54435i, 2147483647i, u_input.b), vec4<i32>(-2147483647i, var_0.x, -21286i, -38205i)), ~vec4<i32>(u_input.e.x, -7413i, u_input.b, var_0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 1i, var_0.x, u_input.e.x), abs(vec4<i32>(-16796i, var_0.x, 2147483647i, var_0.x)), ~vec4<i32>(2147483647i, -60427i, -83483i, var_0.x))) | vec4<i32>(-u_input.d, _wgslsmith_mult_i32(var_0.x, var_0.x), u_input.b, reverseBits(select(28968i, -2147483647i, var_1.x))));
    let var_5 = vec4<bool>(var_1.x, !((u_input.d == countOneBits(0i)) | var_2.a), select(true, any(select(vec2<bool>(var_1.x, true), select(var_1.zz, var_1.zz, vec2<bool>(var_1.x, false)), false)), true), func_1(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(var_1, Struct_2(var_1.x, var_2.b, -1274f, vec4<f32>(-1181f, var_2.b.x, var_2.d.x, var_3.x)), 31901u, Struct_1(0i, 39214i, 4294967295u, var_4.d))).x)), var_2, func_2(), func_2()), ~(~countOneBits(var_4.c)), var_2.b.wwz).x);
    var var_6 = var_4;
    let var_7 = _wgslsmith_dot_vec2_i32(var_4.d.yy, -(var_4.d.yz >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))) < 2147483647i;
    var var_8 = _wgslsmith_f_op_vec4_f32(-var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(-44943i);
}

