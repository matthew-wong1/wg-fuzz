struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, true, true, true, true, true, true, false, false, false, false, false, true, true, true, true, false, false, false, true, true);

var<private> global1: array<u32, 22> = array<u32, 22>(49544u, 4294967295u, 4294967295u, 4294967295u, 9399u, 1227u, 1922u, 0u, 1u, 1u, 48068u, 9185u, 2450u, 4294967295u, 1u, 65482u, 0u, 72426u, 45830u, 4294967295u, 4294967295u, 0u);

var<private> global2: Struct_2 = Struct_2(vec4<u32>(88721u, 4294967295u, 22040u, 49905u));

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(23754u), Struct_1(4294967295u), Struct_1(19024u), Struct_1(53377u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(5462u), Struct_1(4294967295u), Struct_1(0u), Struct_1(18614u), Struct_1(4371u), Struct_1(8606u), Struct_1(8393u), Struct_1(0u), Struct_1(1u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    return -1i;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = arg_0;
    global2 = arg_0;
    global3 = array<Struct_1, 19>();
    var var_1 = vec3<u32>(~(~reverseBits(u_input.d)) >> (_wgslsmith_sub_u32(~abs(48462u), global2.a.x) % 32u), countOneBits(firstLeadingBit(var_0.a.x)), arg_0.a.x);
    let var_2 = ~var_0.a.xy;
    return 32022u;
}

fn func_4(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = Struct_2(~(~(~global2.a)));
    global3 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.b >> (select(global2.a.wzx, var_0.a.yxw, any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 21u)], arg_0, true))) % vec3<u32>(32u))), vec3<i32>(func_1(Struct_1(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 0u, arg_0), 22u)])), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.b.x, -1i, 2147483647i, -268i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_0, arg_0, true)), vec4<i32>(u_input.b.x, -12542i, _wgslsmith_add_i32(u_input.a, u_input.b.x), min(-1i, u_input.a))), abs(0i)));
    let var_2 = min(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.c.wy) >> (~vec2<u32>(global1[_wgslsmith_index_u32(global2.a.x, 22u)], 4294967295u) % vec2<u32>(32u)), var_0.a.wz), ~(~vec2<u32>(38105u, u_input.c.x)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, arg_1), global2.a.wz) % vec2<u32>(32u))), ~_wgslsmith_mod_vec2_u32(abs(var_0.a.xw), ~u_input.c.zz | (global2.a.xx << (var_0.a.wx % vec2<u32>(32u)))));
    global0 = array<bool, 21>();
    return countOneBits(_wgslsmith_add_u32(global2.a.x, arg_1 | _wgslsmith_mult_u32(~arg_1, 4103u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, _wgslsmith_sub_u32(~global2.a.x, ~_wgslsmith_mod_u32(21032u, ~1u)), func_4(global0[_wgslsmith_index_u32(u_input.e, 21u)], ~_wgslsmith_div_u32(func_3(Struct_2(u_input.c), 0i, 876f), 4294967295u))), 19u)];
    let var_1 = global3[_wgslsmith_index_u32(~var_0.a, 19u)];
    var_0 = arg_1;
    global0 = array<bool, 21>();
    var var_2 = min(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(19747i, 1569i, -1i, -36305i), vec4<i32>(0i, 2147483647i, u_input.a, u_input.a))) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, 43027i, u_input.a, -12115i)), select(vec4<i32>(u_input.a, u_input.b.x, u_input.a, -9646i), vec4<i32>(1i, u_input.a, u_input.b.x, -10336i), global0[_wgslsmith_index_u32(global2.a.x, 21u)])), vec4<i32>(-70968i, 23920i, 5763i, u_input.b.x), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 21u)], global0[_wgslsmith_index_u32(global2.a.x, 21u)], global0[_wgslsmith_index_u32(var_1.a, 21u)]), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 21u)], true, global0[_wgslsmith_index_u32(global2.a.x, 21u)], global0[_wgslsmith_index_u32(arg_1.a, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(37630u, 21u)], true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 21u)]), global0[_wgslsmith_index_u32(13099u, 21u)]), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a.x, 22u)], 21u)])), -abs(-vec4<i32>(2147483647i, 48713i, u_input.b.x, u_input.b.x))));
    return Struct_2(reverseBits(~(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(~global2.a);
    var var_0 = _wgslsmith_sub_vec2_u32(global2.a.xy, ~(~(vec2<u32>(4294967295u, global2.a.x) | global2.a.zw))) & vec2<u32>(4294967295u, _wgslsmith_mult_u32(~(~0u), abs(~u_input.c.x)));
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, ~(vec3<i32>(1181i, -23390i, 1i) << (vec3<u32>(0u, global2.a.x, u_input.c.x) % vec3<u32>(32u)))), vec3<i32>(countOneBits(func_1(Struct_1(69094u))), u_input.b.x, u_input.b.x)), u_input.b);
    global2 = func_2(0u, Struct_1(128003u));
    var var_2 = !global0[_wgslsmith_index_u32(1u, 21u)];
    let var_3 = !(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.e), _wgslsmith_dot_vec4_u32(select(global2.a, global2.a, vec4<bool>(global0[_wgslsmith_index_u32(3803u, 21u)], global0[_wgslsmith_index_u32(29636u, 21u)], global0[_wgslsmith_index_u32(18134u, 21u)], false)), u_input.c)), 21u)] | !(true | !global0[_wgslsmith_index_u32(0u, 21u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-var_1.x >> (u_input.c.x % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(u_input.b.x, u_input.a)), -u_input.b.x)), 49994i, (var_0.x ^ _wgslsmith_sub_u32(1u, 0u >> (u_input.c.x % 32u))) & ~(~var_0.x));
}

