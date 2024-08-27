struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(-1000f, vec3<u32>(0u, 49372u, 0u), vec4<f32>(-843f, -444f, 132f, -974f), vec2<f32>(173f, -280f), vec3<i32>(52847i, -1i, -1i)), Struct_4(-1000f, vec3<u32>(39105u, 1u, 45625u), vec4<f32>(1438f, 299f, 559f, 876f), vec2<f32>(-359f, -1970f), vec3<i32>(1i, -28902i, i32(-2147483648))), Struct_4(-1000f, vec3<u32>(67644u, 1u, 1u), vec4<f32>(213f, -1000f, 1562f, 331f), vec2<f32>(928f, 172f), vec3<i32>(-29085i, 2147483647i, 7026i)), Struct_4(-1724f, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<f32>(583f, -1486f, 2116f, -175f), vec2<f32>(1089f, 720f), vec3<i32>(-6913i, -1i, 1i)), Struct_4(1000f, vec3<u32>(0u, 1u, 69624u), vec4<f32>(-1000f, 881f, 1046f, -365f), vec2<f32>(440f, 250f), vec3<i32>(1i, i32(-2147483648), -1i)), Struct_4(-244f, vec3<u32>(16972u, 4294967295u, 0u), vec4<f32>(1292f, 803f, 671f, -815f), vec2<f32>(906f, -348f), vec3<i32>(i32(-2147483648), 15045i, -43720i)), Struct_4(-1226f, vec3<u32>(1u, 7152u, 124424u), vec4<f32>(-1000f, 1475f, -968f, 1659f), vec2<f32>(-477f, -493f), vec3<i32>(0i, -290i, 16199i)), Struct_4(1216f, vec3<u32>(0u, 1u, 0u), vec4<f32>(-1096f, 733f, 1169f, -1065f), vec2<f32>(-1373f, -598f), vec3<i32>(-1i, -1i, 0i)), Struct_4(-1224f, vec3<u32>(49685u, 0u, 0u), vec4<f32>(1248f, 1734f, -861f, -1000f), vec2<f32>(2010f, -259f), vec3<i32>(2147483647i, 12009i, -52199i)), Struct_4(906f, vec3<u32>(1u, 0u, 48780u), vec4<f32>(-1081f, -1282f, 1689f, -292f), vec2<f32>(1218f, -248f), vec3<i32>(54790i, -1i, -1i)), Struct_4(1000f, vec3<u32>(0u, 1u, 8586u), vec4<f32>(1485f, -473f, 839f, -135f), vec2<f32>(-1000f, 328f), vec3<i32>(1i, 2147483647i, 10391i)), Struct_4(-202f, vec3<u32>(0u, 0u, 4294967295u), vec4<f32>(-475f, -1276f, 1116f, -1000f), vec2<f32>(990f, -844f), vec3<i32>(0i, 29992i, 74137i)), Struct_4(-632f, vec3<u32>(4294967295u, 27435u, 1u), vec4<f32>(1491f, 1172f, -118f, -102f), vec2<f32>(-1229f, 911f), vec3<i32>(-85843i, -7144i, 0i)), Struct_4(1668f, vec3<u32>(80918u, 38946u, 26268u), vec4<f32>(-967f, 403f, -168f, -455f), vec2<f32>(-1087f, 2001f), vec3<i32>(8630i, -10815i, i32(-2147483648))));

var<private> global1: array<u32, 28>;

var<private> global2: array<f32, 4> = array<f32, 4>(-308f, 429f, 471f, -1026f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<bool> {
    global2 = array<f32, 4>();
    let var_0 = Struct_2(any(select(vec4<bool>(any(vec4<bool>(true, false, true, false)), u_input.a.x > global1[_wgslsmith_index_u32(1u, 28u)], true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false)));
    var var_1 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 28u)], 4u)];
    global1 = array<u32, 28>();
    var var_2 = u_input.c.x;
    return vec4<bool>(var_0.a, true, true, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~abs(~_wgslsmith_clamp_u32(76717u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 28u)])) ^ 1767u, 14u)];
    let var_1 = ~arg_1.b.x;
    var var_2 = arg_0.yz;
    let var_3 = vec4<bool>(true, true, all(select(!(!arg_0.zwz), vec3<bool>(select(true, arg_0.x, false), func_3().x, !arg_0.x), select(!arg_0.wxy, arg_0.xyy, vec3<bool>(true, true, true)))), !(var_2.x & all(vec4<bool>(false, arg_0.x, true, var_2.x))));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f))), arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a * arg_1.a))), 1794f)), -1563f, _wgslsmith_f_op_f32(-156f * -237f), var_0.c.x), vec2<f32>(global2[_wgslsmith_index_u32(1u, 4u)], 333f), vec3<i32>(-(-u_input.c.x >> (4294967295u % 32u)), -(~arg_2) | _wgslsmith_sub_i32(1i, min(40667i, var_0.e.x)), firstLeadingBit(u_input.c.x)));
    return var_4.b.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = global2[_wgslsmith_index_u32(~countOneBits(~_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(55129u, 28u)], 28u)])), 4u)];
    var_0 = global2[_wgslsmith_index_u32(func_4(!func_3(), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.wwz, u_input.a.zxz), ~global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), 14u)], -1i) | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(17408u, 28u)]), u_input.a.zw), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, 74633u, 50057u)) << (~global1[_wgslsmith_index_u32(3727u, 28u)] % 32u)), 4u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(-738f + global2[_wgslsmith_index_u32(0u, 4u)])));
    let var_1 = -442f;
    let var_2 = -(i32(-1i) * -27955i);
    return vec4<i32>(0i, u_input.d, -reverseBits(~1i), max(max(abs(53836i), (-1i & var_2) << (4294967295u % 32u)), abs(reverseBits(var_2))));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, max(select(-arg_0.a, u_input.d, false), -(i32(-1i) * -2147483647i)), reverseBits(1i), var_0.x), _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, -1i, -1i, arg_0.a), vec4<i32>(-13285i, -53894i, 2176i, -13026i)), vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.c.x)) << (~(u_input.a ^ (vec4<u32>(29277u, 51657u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u) >> (vec4<u32>(4294967295u, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(135574u, 28u)], 28u)]) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_2 = vec2<bool>(any(vec4<bool>(!(u_input.a.x > global1[_wgslsmith_index_u32(45518u, 28u)]), true, true, !(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 4u)] <= global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 4u)]))), ((true | (1u != global1[_wgslsmith_index_u32(0u, 28u)])) | (arg_0.b >= _wgslsmith_f_op_f32(arg_0.b + arg_0.b))) & true);
    global0 = array<Struct_4, 14>();
    global2 = array<f32, 4>();
    return -var_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 14u)];
    global1 = array<u32, 28>();
    let var_1 = Struct_3(-13061i);
    let var_2 = (vec4<u32>(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(58397u >> (u_input.b.x % 32u), 28u)], ~u_input.b.x, max(global1[_wgslsmith_index_u32(var_0.b.x, 28u)], 4294967295u)), countOneBits(1u), ~4294967295u) | abs(u_input.b)) << (vec4<u32>(1u, firstLeadingBit(~(var_0.b.x ^ u_input.b.x)), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(var_0.b.x, global1[_wgslsmith_index_u32(var_0.b.x, 28u)] << (var_0.b.x % 32u))), u_input.b.x) % vec4<u32>(32u));
    global0 = array<Struct_4, 14>();
    return StorageBuffer(vec3<u32>(max(var_2.x, 0u), var_0.b.x, _wgslsmith_div_u32(~4294967295u, ~(~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 14>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b.x, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f))) * -610f);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d, 2147483647i, u_input.c.x, u_input.d) & (vec4<i32>(u_input.d, u_input.c.x, u_input.d, 19743i) ^ vec4<i32>(u_input.d, u_input.c.x, 23607i, u_input.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(11321i, u_input.d, u_input.c.x, 25984i), vec4<i32>(-11494i, u_input.d, 2147483647i, u_input.d)))), ~_wgslsmith_add_vec4_i32(func_1(Struct_1(-42770i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3575u, 28u)], 28u)], 4u)])), max(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 2147483647i), vec4<i32>(-1i, u_input.d, u_input.c.x, u_input.d)))), vec3<i32>(firstLeadingBit(~(-u_input.d)), 70371i, -(u_input.c.x ^ (i32(-1i) * -48995i))));
}

