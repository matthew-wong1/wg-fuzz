struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_2(vec3<u32>(0u, 1u, 46726u)), vec2<u32>(1u, 0u), Struct_1(false, -21591i), vec2<i32>(12344i, 34489i), 821f), Struct_4(Struct_2(vec3<u32>(4294967295u, 0u, 28791u)), vec2<u32>(40049u, 1u), Struct_1(true, 1i), vec2<i32>(1i, 41179i), 360f), Struct_4(Struct_2(vec3<u32>(18970u, 10441u, 4294967295u)), vec2<u32>(34807u, 2673u), Struct_1(false, -1i), vec2<i32>(-27799i, 35596i), 923f), Struct_4(Struct_2(vec3<u32>(4294967295u, 4294967295u, 21634u)), vec2<u32>(0u, 49490u), Struct_1(true, 1043i), vec2<i32>(-41095i, 85861i), -395f), Struct_4(Struct_2(vec3<u32>(12716u, 1u, 4294967295u)), vec2<u32>(18491u, 25525u), Struct_1(true, -4614i), vec2<i32>(-57714i, 0i), -429f), Struct_4(Struct_2(vec3<u32>(99734u, 80859u, 1589u)), vec2<u32>(4294967295u, 57048u), Struct_1(false, -14104i), vec2<i32>(13817i, i32(-2147483648)), -947f), Struct_4(Struct_2(vec3<u32>(0u, 0u, 0u)), vec2<u32>(0u, 0u), Struct_1(true, 0i), vec2<i32>(1i, 22725i), 550f), Struct_4(Struct_2(vec3<u32>(4294967295u, 53627u, 58753u)), vec2<u32>(51888u, 4294967295u), Struct_1(true, 0i), vec2<i32>(-66475i, -8931i), -820f), Struct_4(Struct_2(vec3<u32>(71053u, 4294967295u, 72417u)), vec2<u32>(57953u, 4294967295u), Struct_1(true, i32(-2147483648)), vec2<i32>(0i, -1i), -1000f), Struct_4(Struct_2(vec3<u32>(0u, 4294967295u, 34444u)), vec2<u32>(14209u, 0u), Struct_1(true, 5277i), vec2<i32>(0i, 0i), 1207f), Struct_4(Struct_2(vec3<u32>(0u, 9803u, 12620u)), vec2<u32>(0u, 4294967295u), Struct_1(true, 1494i), vec2<i32>(2147483647i, -59807i), -155f), Struct_4(Struct_2(vec3<u32>(7211u, 44847u, 4294967295u)), vec2<u32>(1u, 4294967295u), Struct_1(true, 2147483647i), vec2<i32>(40086i, 1i), 1000f), Struct_4(Struct_2(vec3<u32>(0u, 1u, 4294967295u)), vec2<u32>(81825u, 1u), Struct_1(false, 0i), vec2<i32>(1i, -1i), 776f), Struct_4(Struct_2(vec3<u32>(97784u, 1u, 4294967295u)), vec2<u32>(9781u, 57124u), Struct_1(true, i32(-2147483648)), vec2<i32>(-78993i, 1i), 161f), Struct_4(Struct_2(vec3<u32>(34892u, 19268u, 4294967295u)), vec2<u32>(12963u, 15103u), Struct_1(false, 87482i), vec2<i32>(4200i, -25711i), 130f), Struct_4(Struct_2(vec3<u32>(70131u, 12213u, 47119u)), vec2<u32>(0u, 4294967295u), Struct_1(false, 0i), vec2<i32>(-1i, i32(-2147483648)), 598f), Struct_4(Struct_2(vec3<u32>(40061u, 4294967295u, 53831u)), vec2<u32>(59278u, 21963u), Struct_1(true, 0i), vec2<i32>(-19430i, 14203i), -957f), Struct_4(Struct_2(vec3<u32>(1u, 39770u, 0u)), vec2<u32>(11808u, 73282u), Struct_1(true, 44977i), vec2<i32>(22278i, 0i), -484f), Struct_4(Struct_2(vec3<u32>(0u, 1u, 0u)), vec2<u32>(59121u, 66293u), Struct_1(true, 43311i), vec2<i32>(-13269i, 0i), 504f), Struct_4(Struct_2(vec3<u32>(56854u, 38717u, 0u)), vec2<u32>(0u, 23585u), Struct_1(false, 41035i), vec2<i32>(7751i, 829i), 176f), Struct_4(Struct_2(vec3<u32>(60535u, 1u, 0u)), vec2<u32>(4294967295u, 35699u), Struct_1(false, -1i), vec2<i32>(-1i, i32(-2147483648)), 1080f), Struct_4(Struct_2(vec3<u32>(0u, 18790u, 4294967295u)), vec2<u32>(3015u, 20144u), Struct_1(false, 37789i), vec2<i32>(0i, i32(-2147483648)), 423f), Struct_4(Struct_2(vec3<u32>(34025u, 1u, 32353u)), vec2<u32>(4294967295u, 9647u), Struct_1(false, 0i), vec2<i32>(-11294i, 1i), 210f), Struct_4(Struct_2(vec3<u32>(54138u, 1u, 1u)), vec2<u32>(0u, 4294967295u), Struct_1(true, -32277i), vec2<i32>(-22727i, -15845i), 1000f));

var<private> global1: Struct_1 = Struct_1(false, 0i);

var<private> global2: vec4<f32> = vec4<f32>(349f, 864f, 1896f, 586f);

var<private> global3: Struct_3;

var<private> global4: vec2<u32> = vec2<u32>(1u, 17825u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = -arg_2;
    global3 = Struct_3(countOneBits(global3.a), !global3.b);
    var var_1 = global3.a.x;
    let var_2 = min(~vec4<u32>(u_input.e.x, ~33597u, 115824u << (global4.x % 32u), ~4294967295u) ^ ~(vec4<u32>(global3.a.x, u_input.d, 1u, global3.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(6062u, u_input.a.x, global3.a.x, global4.x), vec4<u32>(29432u, 1u, 1u, 0u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(2675u, global4.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, arg_0), 1u), 4294967295u), vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_div_u32(~4294967295u, countOneBits(u_input.a.x)), 36311u)));
    var var_3 = 44533u;
    return 49209u;
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    global3 = Struct_3(vec2<u32>(u_input.c.x, ~_wgslsmith_mod_u32(0u, ~1u)), vec4<bool>(!all(vec3<bool>(false, global3.b.x, false)), arg_0.b.x, false, any(arg_0.b)));
    var var_0 = max(vec4<u32>(func_2(24078u ^ u_input.e.x, global2.xy, firstLeadingBit(global1.b), -429f), 26581u, _wgslsmith_div_u32(67036u, 4294967295u), global3.a.x) & ~vec4<u32>(1u, abs(69186u), u_input.d, countOneBits(arg_0.a.x)), ~vec4<u32>(min(global4.x >> (1u % 32u), global4.x), 1u, arg_0.a.x ^ ~0u, countOneBits(7163u << (global3.a.x % 32u))));
    var var_1 = global3.b.x;
    return StorageBuffer(~7026u, firstLeadingBit(global4.x), _wgslsmith_f_op_vec3_f32(floor(global2.yyz)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_3(global3.a, !global3.b));
}

