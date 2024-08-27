struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-756f, false, vec4<i32>(-47827i, 52791i, -1i, -1i), vec2<u32>(71537u, 1u)), Struct_1(1503f, false, vec4<i32>(-295i, -44896i, -20567i, 2147483647i), vec2<u32>(2839u, 18900u)), Struct_1(331f, false, vec4<i32>(i32(-2147483648), i32(-2147483648), -40307i, 1i), vec2<u32>(23208u, 39363u)), Struct_1(-589f, true, vec4<i32>(-24939i, 0i, -28351i, -1i), vec2<u32>(1u, 15464u)), Struct_1(-1000f, false, vec4<i32>(1i, 1i, i32(-2147483648), -19442i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(-1295f, false, vec4<i32>(-62160i, -37722i, 2147483647i, 22695i), vec2<u32>(0u, 4294967295u)), Struct_1(1314f, false, vec4<i32>(7905i, i32(-2147483648), 2147483647i, -26179i), vec2<u32>(0u, 16838u)), Struct_1(-1545f, true, vec4<i32>(2147483647i, -37898i, 1i, -11447i), vec2<u32>(4827u, 90553u)), Struct_1(1271f, true, vec4<i32>(-27724i, -9105i, 10348i, 1i), vec2<u32>(1u, 1u)), Struct_1(1356f, true, vec4<i32>(i32(-2147483648), -1i, -33908i, -25029i), vec2<u32>(1u, 0u)), Struct_1(-891f, true, vec4<i32>(-6601i, 45679i, 2147483647i, 0i), vec2<u32>(9785u, 1u)), Struct_1(-1926f, true, vec4<i32>(2147483647i, 2147483647i, 1i, 0i), vec2<u32>(0u, 17049u)), Struct_1(-853f, false, vec4<i32>(i32(-2147483648), i32(-2147483648), 68413i, -3051i), vec2<u32>(31796u, 4294967295u)), Struct_1(648f, false, vec4<i32>(-96111i, 0i, -1i, -1i), vec2<u32>(6612u, 4294967295u)));

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1738f, true, vec4<i32>(1i, -12113i, i32(-2147483648), 644i), vec2<u32>(1u, 0u)), Struct_1(191f, false, vec4<i32>(55716i, 15686i, 20635i, -63714i), vec2<u32>(1u, 43703u)), Struct_1(-143f, false, vec4<i32>(2147483647i, 10047i, 6623i, -9734i), vec2<u32>(95266u, 5362u)), Struct_1(344f, false, vec4<i32>(1i, 24535i, 2147483647i, 2147483647i), vec2<u32>(78746u, 9503u)), Struct_1(1000f, false, vec4<i32>(1i, -1i, i32(-2147483648), -13907i), vec2<u32>(0u, 0u)), Struct_1(-1181f, true, vec4<i32>(1i, -19724i, 2147483647i, 2147483647i), vec2<u32>(1u, 0u)), Struct_1(-1146f, true, vec4<i32>(44188i, 0i, -43543i, i32(-2147483648)), vec2<u32>(26973u, 4294967295u)), Struct_1(185f, false, vec4<i32>(i32(-2147483648), 1i, -20949i, i32(-2147483648)), vec2<u32>(37573u, 4294967295u)), Struct_1(375f, false, vec4<i32>(-12933i, 1i, 16105i, -36705i), vec2<u32>(1280u, 4294967295u)), Struct_1(-1000f, true, vec4<i32>(6740i, 1i, 0i, -49635i), vec2<u32>(33590u, 5990u)), Struct_1(824f, false, vec4<i32>(9251i, -25594i, -1i, i32(-2147483648)), vec2<u32>(4294967295u, 50483u)), Struct_1(-1013f, false, vec4<i32>(-1i, 2147483647i, -11673i, -102704i), vec2<u32>(20317u, 34880u)), Struct_1(-2559f, true, vec4<i32>(2147483647i, 2147483647i, 2147483647i, -26988i), vec2<u32>(1u, 0u)), Struct_1(996f, true, vec4<i32>(-14124i, -1i, 18161i, 0i), vec2<u32>(0u, 51525u)), Struct_1(-562f, true, vec4<i32>(-1i, 8959i, 1i, i32(-2147483648)), vec2<u32>(4687u, 0u)), Struct_1(479f, true, vec4<i32>(-66752i, -1i, -1i, -21649i), vec2<u32>(0u, 4294967295u)), Struct_1(824f, true, vec4<i32>(-29116i, 6904i, 2147483647i, i32(-2147483648)), vec2<u32>(4294967295u, 7000u)), Struct_1(-727f, false, vec4<i32>(11934i, 1i, 1i, 2147483647i), vec2<u32>(2186u, 1u)), Struct_1(-188f, true, vec4<i32>(-27i, i32(-2147483648), 0i, 15887i), vec2<u32>(39614u, 14236u)), Struct_1(-376f, true, vec4<i32>(-54251i, -46946i, 0i, 19180i), vec2<u32>(0u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = true;
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = !(var_0 || (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-527f)))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(394f + 873f), 1f))));
    return vec3<bool>(var_0, var_1, true);
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    var var_0 = ~(abs(max(_wgslsmith_sub_vec2_u32(vec2<u32>(82652u, 1u), vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)))) ^ min(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~0u, 1u)));
    global1 = array<Struct_1, 20>();
    var_0 = ~min(abs(abs(vec2<u32>(u_input.a, 0u))), reverseBits(vec2<u32>(u_input.a, 1u)) << (firstTrailingBit(vec2<u32>(4892u, var_0.x)) % vec2<u32>(32u))) | firstLeadingBit(vec2<u32>(abs(~u_input.a), 1u));
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<u32> {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.b.ww, vec2<i32>(2147483647i, u_input.c) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~abs(-1i), (u_input.b.x ^ (10168i | u_input.c)) >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b.zww, vec3<i32>(1i, u_input.c, 0i)), u_input.b.x), _wgslsmith_div_vec3_i32(u_input.b.xyx, u_input.b.yyz))));
    let var_1 = select(vec3<bool>(true, !(!all(vec4<bool>(true, true, false, true))), (_wgslsmith_f_op_f32(floor(arg_1)) > _wgslsmith_f_op_f32(arg_1 * arg_0)) == any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), func_2(_wgslsmith_add_vec4_i32(u_input.b, firstLeadingBit(vec4<i32>(-3054i, -58655i, u_input.b.x, -2147483647i)))), !any(vec2<bool>(true, true)));
    var var_2 = 4294967295u;
    global0 = array<Struct_1, 14>();
    var var_3 = u_input.b;
    return vec3<u32>(func_3(), min(min(_wgslsmith_div_u32(u_input.a, u_input.a), 33829u) << (1u % 32u), max(41462u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(0u, u_input.a, u_input.a)))), 70539u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-8411i, firstLeadingBit(u_input.c), 1i);
    var_0 = -(_wgslsmith_mult_vec3_i32(u_input.b.zzx, u_input.b.zxz & u_input.b.xzz) >> (vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a), ~u_input.a, 25621u) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(-(vec3<i32>(u_input.c, 1i, u_input.c) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), u_input.b.www >> (func_1(_wgslsmith_f_op_f32(-1723f - -453f), -546f) % vec3<u32>(32u)));
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<i32>(-2147483647i, -55015i), vec2<i32>(-5471i, var_0.x)));
}

