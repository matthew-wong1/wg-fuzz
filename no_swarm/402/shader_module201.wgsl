struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, false, false, true, false, false, true, true, true, true, true, false, true, false, true, false, true, false, false, false, false, false, true, true, false, true, true, false, true, false, true);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-402f, 85956u, vec4<i32>(-1i, 0i, 2147483647i, 46636i)), Struct_1(-1093f, 46348u, vec4<i32>(-16006i, 1i, -3286i, -18552i)), Struct_1(196f, 4386u, vec4<i32>(2147483647i, 2147483647i, 31721i, -39348i)), Struct_1(600f, 4294967295u, vec4<i32>(0i, 2136i, -1i, 1i)), Struct_1(-1723f, 1u, vec4<i32>(39032i, -26726i, 2147483647i, 27788i)), Struct_1(1000f, 0u, vec4<i32>(-11186i, 28418i, 25212i, -34048i)), Struct_1(850f, 55906u, vec4<i32>(-1i, 1i, 49658i, 48491i)), Struct_1(686f, 23127u, vec4<i32>(60266i, -18950i, 0i, 0i)), Struct_1(-442f, 0u, vec4<i32>(23393i, 1i, -20036i, 28351i)), Struct_1(-947f, 1u, vec4<i32>(12547i, 0i, 2147483647i, 1i)), Struct_1(1345f, 1914u, vec4<i32>(i32(-2147483648), 1i, 1i, -9685i)), Struct_1(1309f, 0u, vec4<i32>(-21061i, i32(-2147483648), 1i, -1i)), Struct_1(-701f, 21389u, vec4<i32>(-25766i, 2147483647i, -11610i, 2147483647i)), Struct_1(1000f, 23730u, vec4<i32>(0i, -15809i, 0i, 20402i)), Struct_1(699f, 23419u, vec4<i32>(27821i, 7206i, 1i, 1i)), Struct_1(-1422f, 96799u, vec4<i32>(-10345i, 32389i, -26905i, 9781i)), Struct_1(1000f, 47661u, vec4<i32>(-1i, 0i, 0i, i32(-2147483648))), Struct_1(1028f, 1u, vec4<i32>(1i, -11676i, 48595i, -23511i)), Struct_1(2161f, 4294967295u, vec4<i32>(-1i, 2147483647i, 10792i, 5207i)), Struct_1(-1274f, 64418u, vec4<i32>(18587i, i32(-2147483648), 27945i, 1i)), Struct_1(-220f, 0u, vec4<i32>(1i, -20331i, i32(-2147483648), 0i)), Struct_1(-1143f, 28043u, vec4<i32>(-1i, 21001i, i32(-2147483648), 2147483647i)), Struct_1(-1000f, 47946u, vec4<i32>(-17691i, 2147483647i, i32(-2147483648), -52151i)), Struct_1(-2210f, 49303u, vec4<i32>(1i, 16875i, -33630i, 0i)), Struct_1(-900f, 0u, vec4<i32>(2147483647i, -12591i, i32(-2147483648), 1i)), Struct_1(-701f, 8462u, vec4<i32>(-14241i, -1i, 2871i, -1i)), Struct_1(549f, 928u, vec4<i32>(-14640i, 25914i, 0i, -2728i)), Struct_1(-108f, 3328u, vec4<i32>(-29510i, 2147483647i, -26985i, 2147483647i)), Struct_1(417f, 0u, vec4<i32>(-1i, 11184i, 36226i, 16114i)), Struct_1(570f, 4294967295u, vec4<i32>(i32(-2147483648), -4720i, i32(-2147483648), 0i)), Struct_1(-2098f, 1u, vec4<i32>(1i, -4i, 0i, i32(-2147483648))), Struct_1(-874f, 0u, vec4<i32>(1i, 1i, 19143i, -1i)));

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(237f, -1089f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    return _wgslsmith_sub_u32(~(~global2.b), 4294967295u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32) -> StorageBuffer {
    global1 = array<Struct_1, 32>();
    var var_0 = global1[_wgslsmith_index_u32(12775u, 32u)];
    return StorageBuffer(4294967295u, ~_wgslsmith_sub_vec4_i32(var_0.c >> ((u_input.d >> (vec4<u32>(75151u, arg_0.x, 13902u, 28861u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(var_0.c)), abs(countOneBits(vec2<i32>(var_0.c.x, 1i) >> (vec2<u32>(u_input.a, u_input.d.x) % vec2<u32>(32u)))) << (vec2<u32>(16488u, _wgslsmith_add_u32(40136u, u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, global2.b, global2.b, 0u), vec4<u32>(0u, 1u, var_0.b, var_0.b))) % vec2<u32>(32u)), u_input.c.x ^ 7603u, var_0.c.x);
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    return func_3(select(~vec3<u32>(abs(u_input.c.x), func_2(vec3<bool>(false, arg_0.x, false)), abs(global2.b)), u_input.d.zwz, !(!(u_input.b.x <= global2.c.x))), (max(u_input.d.yx, u_input.d.wx ^ u_input.c) ^ _wgslsmith_sub_vec2_u32(u_input.d.yx, u_input.d.wx)) | _wgslsmith_add_vec2_u32(vec2<u32>(~36174u, u_input.a), max(vec2<u32>(68488u, u_input.c.x), u_input.c >> (u_input.c % vec2<u32>(32u)))), ~global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(0u, global2.b, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global2.b, global2.b | 1u), 32u)]), u_input.d.x & u_input.d.x), 32u)];
    global0 = array<bool, 32>();
    global2 = global1[_wgslsmith_index_u32(u_input.c.x, 32u)];
    global2 = Struct_1(global2.a, ~(~(~1u)), _wgslsmith_mult_vec4_i32(global2.c, ~vec4<i32>(u_input.e, select(2147483647i, global2.c.x, global0[_wgslsmith_index_u32(46157u, 32u)]), 1i, u_input.e)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(31948u, 5125u), 32u)];
    var var_2 = 15451u;
    let x = u_input.a;
    s_output = func_1(vec3<bool>(all(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], false)), true, global0[_wgslsmith_index_u32(44244u | _wgslsmith_add_u32(global2.b, global2.b), 32u)]));
}

