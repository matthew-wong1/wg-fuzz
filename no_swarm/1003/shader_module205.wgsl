struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_2(i32(-2147483648), false), Struct_1(vec3<i32>(2147483647i, -24392i, i32(-2147483648)), 4294967295u, 5103i)), Struct_4(Struct_2(21298i, false), Struct_1(vec3<i32>(0i, 11526i, -43112i), 4294967295u, 0i)), Struct_4(Struct_2(-23941i, false), Struct_1(vec3<i32>(-26000i, 1476i, -9911i), 4294967295u, 0i)), Struct_4(Struct_2(i32(-2147483648), true), Struct_1(vec3<i32>(-78901i, i32(-2147483648), 31417i), 1u, 78186i)), Struct_4(Struct_2(0i, false), Struct_1(vec3<i32>(1i, 1i, -50020i), 1u, 2147483647i)), Struct_4(Struct_2(2147483647i, false), Struct_1(vec3<i32>(11614i, 1280i, -1i), 24285u, -43097i)), Struct_4(Struct_2(14595i, false), Struct_1(vec3<i32>(-34775i, -1i, -3343i), 1u, 49041i)), Struct_4(Struct_2(53355i, false), Struct_1(vec3<i32>(2147483647i, -53321i, -23510i), 4294967295u, i32(-2147483648))), Struct_4(Struct_2(-1i, true), Struct_1(vec3<i32>(11467i, 1i, -47539i), 4294967295u, 2147483647i)), Struct_4(Struct_2(0i, false), Struct_1(vec3<i32>(2147483647i, 1i, -72332i), 1u, 0i)), Struct_4(Struct_2(1i, true), Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), 77101u, -25410i)), Struct_4(Struct_2(-12898i, false), Struct_1(vec3<i32>(2147483647i, 37505i, 0i), 13216u, 1i)), Struct_4(Struct_2(-28128i, false), Struct_1(vec3<i32>(i32(-2147483648), 14876i, 0i), 0u, -49540i)), Struct_4(Struct_2(-27824i, false), Struct_1(vec3<i32>(10270i, 2147483647i, -20883i), 4451u, 2147483647i)), Struct_4(Struct_2(1i, true), Struct_1(vec3<i32>(22010i, 2147483647i, 0i), 0u, i32(-2147483648))), Struct_4(Struct_2(i32(-2147483648), true), Struct_1(vec3<i32>(-40418i, -25350i, -12123i), 0u, -15870i)), Struct_4(Struct_2(-23610i, false), Struct_1(vec3<i32>(-12759i, 22126i, -4057i), 18358u, 2147483647i)), Struct_4(Struct_2(2147483647i, true), Struct_1(vec3<i32>(0i, 2147483647i, -33407i), 1u, -34014i)), Struct_4(Struct_2(i32(-2147483648), true), Struct_1(vec3<i32>(0i, 8594i, 37523i), 29925u, 29941i)), Struct_4(Struct_2(2147483647i, false), Struct_1(vec3<i32>(2449i, -1i, 1i), 3348u, i32(-2147483648))), Struct_4(Struct_2(0i, false), Struct_1(vec3<i32>(48690i, 25328i, 0i), 8943u, -28476i)), Struct_4(Struct_2(-1i, false), Struct_1(vec3<i32>(55074i, -1i, 0i), 32609u, 0i)), Struct_4(Struct_2(5523i, false), Struct_1(vec3<i32>(-1124i, 2147483647i, 19105i), 11600u, -28753i)), Struct_4(Struct_2(-1i, false), Struct_1(vec3<i32>(-3480i, -14393i, 0i), 28544u, 19796i)), Struct_4(Struct_2(-11067i, false), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -41076i), 98785u, 1i)), Struct_4(Struct_2(42151i, true), Struct_1(vec3<i32>(55268i, 1i, 2147483647i), 17707u, 8456i)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_1(u_input.e.zwy, u_input.b.x | ~(~(~u_input.c.x)), abs(5367i));
    let var_1 = vec4<i32>(var_0.c, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_sub_i32(-2812i, -1i), 1i, _wgslsmith_sub_i32(var_0.c, -1i)), firstLeadingBit(u_input.e)), select(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-62660i, -2147483647i, u_input.e.x, 2147483647i), vec4<i32>(6838i, 1i, u_input.a.x, var_0.a.x) & u_input.e, -u_input.e), u_input.e << (~vec4<u32>(var_0.b, u_input.d.x, 62080u, 29979u) % vec4<u32>(32u)), select(vec4<bool>(arg_0.x, false, false, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, arg_0.x)), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))), -14601i, 0i);
    global0 = array<Struct_4, 26>();
    let var_2 = Struct_1(abs(var_0.a), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_0.b, 15510u, var_0.b), vec4<u32>(1u, 70134u, u_input.b.x, var_0.b)) | ~vec4<u32>(var_0.b, var_0.b, u_input.c.x, var_0.b), vec4<u32>(~_wgslsmith_add_u32(4294967295u, u_input.b.x), ~(~u_input.c.x), select(select(u_input.d.x, var_0.b, false), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.b), u_input.d.zz), true), ~(~u_input.c.x))), i32(-1i) * -2147483647i);
    global0 = array<Struct_4, 26>();
    return vec2<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.d.x, var_0.b) ^ firstLeadingBit(4294967295u));
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_4, 26>();
    let var_0 = Struct_4(Struct_2(~0i, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_1(~(-u_input.a), 72837u, ~u_input.a.x));
    global0 = array<Struct_4, 26>();
    let var_1 = Struct_4(Struct_2(u_input.e.x, any(vec2<bool>(true, true))), var_0.b);
    var var_2 = 1u;
    return max(u_input.d.zz, func_3(!vec2<bool>(var_0.a.b, var_0.a.b)) | u_input.d.yx);
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(reverseBits(u_input.d.x), 38479u), ~func_2()), u_input.d.x, u_input.b.x | (u_input.c.x | u_input.d.x), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.b.x, u_input.c.x), vec3<u32>(u_input.b.x, 0u, 0u)), ~vec3<u32>(u_input.d.x, 16678u, 1u)), _wgslsmith_div_u32(u_input.b.x, firstTrailingBit(func_3(vec2<bool>(true, true)).x))));
    global0 = array<Struct_4, 26>();
    let var_1 = ~_wgslsmith_mult_u32(var_0.x, 19199u);
    let var_2 = Struct_2(u_input.e.x, u_input.e.x != ~(-38710i));
    var_0 = reverseBits(abs(max(max(vec4<u32>(0u, 25277u, 99985u, var_1), vec4<u32>(0u, 9750u, u_input.c.x, u_input.c.x)), vec4<u32>(1u, 8294u, ~u_input.d.x, var_1))));
    return Struct_1(max(~vec3<i32>(~(-7297i), var_2.a, 4389i ^ u_input.a.x), select(abs(u_input.e.ywx) >> (var_0.zxw % vec3<u32>(32u)), u_input.e.wzw, all(select(vec3<bool>(true, true, false), vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(false, false, var_2.b))))), ~firstTrailingBit(var_0.x), _wgslsmith_mult_i32(~1i, min(var_2.a, _wgslsmith_clamp_i32(~var_2.a, 1i | var_2.a, _wgslsmith_mod_i32(u_input.a.x, var_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = countOneBits(0u);
    let var_2 = abs(min(u_input.b.zz ^ vec2<u32>(12889u, ~4294967295u), vec2<u32>(1u, u_input.d.x)));
    var var_3 = var_0;
    global0 = array<Struct_4, 26>();
    var var_4 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(0u, 14060u)), var_2), select(firstTrailingBit(vec2<u32>(4198u, var_3.b)), func_3(vec2<bool>(false, var_4.x)), all(vec2<bool>(var_4.x, var_4.x)))), vec2<u32>(_wgslsmith_mult_u32(var_2.x, 26588u) >> (4294967295u % 32u), u_input.c.x)));
}

