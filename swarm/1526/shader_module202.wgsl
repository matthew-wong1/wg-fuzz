struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(-14355i, 0i, -8841i, 13532i), 160f, false, -793f), Struct_1(vec4<i32>(-15613i, -20179i, 32427i, 6234i), -384f, false, -957f), Struct_1(vec4<i32>(10256i, 34731i, 20923i, -45251i), -1842f, true, -740f), Struct_1(vec4<i32>(1i, -12371i, 46215i, 0i), 833f, true, 1027f), Struct_1(vec4<i32>(33110i, -1i, 13775i, -1i), 271f, true, 1106f), Struct_1(vec4<i32>(-23230i, 19584i, 0i, 0i), 1013f, false, -1354f), Struct_1(vec4<i32>(37230i, 28879i, -15618i, -38439i), 499f, true, 951f), Struct_1(vec4<i32>(1i, i32(-2147483648), 55489i, 28436i), 687f, false, -408f), Struct_1(vec4<i32>(-12250i, i32(-2147483648), 28860i, 0i), -269f, true, -552f), Struct_1(vec4<i32>(48884i, 6273i, 1i, -65434i), -431f, false, 1000f), Struct_1(vec4<i32>(0i, 14413i, 16722i, -60454i), -2011f, true, -394f), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, -1i), -882f, false, -1271f), Struct_1(vec4<i32>(8825i, -1i, -1i, i32(-2147483648)), -703f, false, 2413f), Struct_1(vec4<i32>(0i, 14318i, 1i, -2522i), -1883f, true, -216f), Struct_1(vec4<i32>(-3622i, -14805i, 12115i, -55482i), 895f, false, 263f), Struct_1(vec4<i32>(-22387i, 33378i, -45288i, -19652i), -246f, true, -694f), Struct_1(vec4<i32>(1i, -1i, -1i, 31487i), -1000f, false, -388f), Struct_1(vec4<i32>(4207i, -53953i, -1i, 38875i), 303f, true, 675f), Struct_1(vec4<i32>(-1i, 0i, -28268i, 2147483647i), -1000f, false, 157f), Struct_1(vec4<i32>(18968i, -1i, 9496i, 0i), 612f, true, -1040f), Struct_1(vec4<i32>(2975i, -1i, 1i, 0i), -521f, false, -497f), Struct_1(vec4<i32>(i32(-2147483648), 1i, 14304i, -27615i), -838f, false, -829f), Struct_1(vec4<i32>(2147483647i, 45156i, 1i, 0i), 1252f, true, 2370f), Struct_1(vec4<i32>(-9492i, 49984i, -41521i, 0i), -1265f, false, -1373f));

var<private> global1: array<f32, 11>;

var<private> global2: array<vec4<u32>, 17>;

var<private> global3: u32 = 100652u;

var<private> global4: array<i32, 20> = array<i32, 20>(10583i, 49206i, -7324i, 9163i, 1i, 16881i, i32(-2147483648), 0i, 9468i, 9602i, -37750i, i32(-2147483648), -1i, 96661i, -48526i, 2147483647i, 1i, 0i, 28232i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> f32 {
    var var_0 = countOneBits(_wgslsmith_mod_u32(~u_input.b, u_input.c) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_sub_u32(u_input.a.x, 76683u)), vec2<u32>(u_input.b, 4294967295u) ^ vec2<u32>(u_input.b, 91045u)) % 32u));
    let var_1 = false;
    var_0 = u_input.a.x;
    global3 = firstLeadingBit(0u);
    global1 = array<f32, 11>();
    return -2691f;
}

fn func_2() -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(32525u, _wgslsmith_add_u32(select(u_input.b, u_input.b, true), ~15567u))), 20u)];
    var var_1 = true;
    var var_2 = select(!vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 20u)] == -48611i), vec2<bool>(true, 1576f > _wgslsmith_div_f32(global1[_wgslsmith_index_u32(min(u_input.c, u_input.c), 11u)], _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 11u)], 1036f)))), false);
    global2 = array<vec4<u32>, 17>();
    global0 = array<Struct_1, 24>();
    return Struct_1(-(vec4<i32>(i32(-1i) * -11945i, global4[_wgslsmith_index_u32(32607u ^ u_input.b, 20u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 1u, 4294967295u), global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), 20u)], _wgslsmith_mult_i32(6617i, global4[_wgslsmith_index_u32(u_input.a.x, 20u)])) | -max(vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(33960u, 20u)], -2147483647i, 29058i), vec4<i32>(global4[_wgslsmith_index_u32(8984u, 20u)], -7053i, global4[_wgslsmith_index_u32(11339u, 20u)], global4[_wgslsmith_index_u32(0u, 20u)]))), 442f, select(true, var_2.x, var_2.x) || select(true, var_2.x, !var_2.x || false), _wgslsmith_f_op_f32(func_1()));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_i32(~min(2147483647i, ~global4[_wgslsmith_index_u32(4294967295u, 20u)]) >> (0u % 32u), 0i);
    global4 = array<i32, 20>();
    let var_1 = arg_2.a.wwx;
    global1 = array<f32, 11>();
    global4 = array<i32, 20>();
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 11u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = !all(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), all(vec2<bool>(false, false))));
    let var_2 = Struct_2(Struct_1(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-14832i, 25401i, 1i, 2147483647i), min(vec4<i32>(global4[_wgslsmith_index_u32(62017u, 20u)], 3197i, -25664i, 6892i), vec4<i32>(var_0, var_0, 0i, var_0)))), _wgslsmith_f_op_f32(-768f + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(abs(24756u), 11u)]))), (~u_input.a.x << ((u_input.a.x << (0u % 32u)) % 32u)) != 1u, _wgslsmith_f_op_f32(func_1())), Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(6456u, 20u)], -26636i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 16332i, global4[_wgslsmith_index_u32(u_input.b, 20u)], var_0), vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 20u)], -10765i, -16305i, global4[_wgslsmith_index_u32(11032u, 20u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(460f, 305f)) * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), 11u)])), any(vec3<bool>(!var_1, var_1, var_1)), global1[_wgslsmith_index_u32(u_input.c & firstLeadingBit(~u_input.a.x), 11u)]));
    global1 = array<f32, 11>();
    var var_3 = !var_1;
    global3 = ~u_input.b;
    let x = u_input.a;
    s_output = func_3(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(~1u, 11u)], _wgslsmith_f_op_f32(sign(var_2.b.b))), global1[_wgslsmith_index_u32(u_input.a.x, 11u)], func_2());
}

