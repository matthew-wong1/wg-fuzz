struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(534f, false), Struct_1(-1074f, false), Struct_1(363f, true), Struct_1(-552f, false), Struct_1(1985f, false), Struct_1(628f, false), Struct_1(-204f, true), Struct_1(-260f, false), Struct_1(-1000f, true), Struct_1(-1017f, true), Struct_1(741f, false), Struct_1(1031f, true), Struct_1(571f, true), Struct_1(2714f, true), Struct_1(-1000f, false), Struct_1(917f, false), Struct_1(262f, true), Struct_1(400f, true), Struct_1(-1605f, false), Struct_1(1203f, true), Struct_1(-2264f, false), Struct_1(1567f, true), Struct_1(837f, false), Struct_1(479f, false), Struct_1(-476f, false), Struct_1(763f, true));

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(67119i, i32(-2147483648)), vec2<i32>(54127i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-18788i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(5550i, 9384i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 24829i), vec2<i32>(16932i, 2147483647i), vec2<i32>(42387i, 0i), vec2<i32>(0i, 14222i), vec2<i32>(-32943i, 1i), vec2<i32>(-51341i, -44394i), vec2<i32>(-28707i, 0i), vec2<i32>(1i, -13791i), vec2<i32>(5417i, i32(-2147483648)), vec2<i32>(-13681i, 1i), vec2<i32>(5592i, 1i), vec2<i32>(i32(-2147483648), -8446i), vec2<i32>(24932i, -61554i), vec2<i32>(2147483647i, 18121i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(30820i, 2147483647i), vec2<i32>(14231i, -17649i), vec2<i32>(-39682i, 2147483647i), vec2<i32>(52506i, -4450i), vec2<i32>(3583i, -11250i));

var<private> global3: f32;

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b, 26u)];
    let var_1 = 69776u;
    global4 = array<Struct_1, 28>();
    global4 = array<Struct_1, 28>();
    global1 = -u_input.a.wwx;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-global1.x, _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)), u_input.a.yz) ^ ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(global1.x, ~(-48693i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(12821i, 170i), ~global2[_wgslsmith_index_u32(var_1, 27u)]));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global1 = reverseBits(vec3<i32>(~u_input.a.x, _wgslsmith_div_i32(global1.x, -2147483647i) | u_input.a.x, firstTrailingBit(abs(arg_0.x))) & vec3<i32>(1i, ~0i, -1i | _wgslsmith_dot_vec3_i32(u_input.a.zyw, vec3<i32>(-65i, global1.x, 2147483647i))));
    let var_0 = Struct_1(-798f, 3914i < ~((-68813i & u_input.a.x) | global1.x));
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~8405u, 65094u), ~(arg_1 >> (4294967295u % 32u)));
    let var_1 = select(~abs(2147483647i), u_input.a.x, !(_wgslsmith_div_i32(global1.x, i32(-1i) * -2147483647i) <= global1.x));
    global2 = array<vec2<i32>, 27>();
    let var_2 = ~(~40958u ^ u_input.b) >> (u_input.b % 32u);
    global1 = _wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, _wgslsmith_div_i32(~(-8372i), u_input.a.x), global1.x), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, u_input.a.x), ~(-28830i)), -_wgslsmith_sub_i32(-38698i, -41775i)), u_input.a.x, -13940i));
    return global0[_wgslsmith_index_u32(var_0, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = ~reverseBits(reverseBits(func_1()));
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 26u)];
    var var_3 = global0[_wgslsmith_index_u32(~u_input.b, 26u)];
    let var_4 = func_3(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 56364u, 25638u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 68121u), _wgslsmith_div_u32(abs(u_input.b), firstLeadingBit(u_input.b)) ^ countOneBits(_wgslsmith_add_u32(22165u, 0u)), u_input.b), 28u)], min(func_2(vec4<i32>(-51392i, u_input.a.x, ~2147483647i, -2147483647i)), u_input.b));
    global1 = -u_input.a.ywx;
    var var_5 = countOneBits(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 49249u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), abs(vec3<u32>(u_input.b, u_input.b, u_input.b)))), ~(select(34383u, 56808u, true) | 4294967295u)));
    global2 = array<vec2<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(countOneBits(~vec4<u32>(1u, var_5.x, var_5.x, 43407u)), vec4<u32>(_wgslsmith_div_u32(0u, 47013u), var_5.x, 0u, 4294967295u), var_4.b), ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_5.x, 27072u, u_input.b, u_input.b), vec4<u32>(u_input.b, var_5.x, var_5.x, 0u)) | firstLeadingBit(vec4<u32>(4294967295u, 1u, var_5.x, 1u)))), _wgslsmith_dot_vec2_i32(~u_input.a.yy, reverseBits(global2[_wgslsmith_index_u32(reverseBits(abs(0u)), 27u)])), ~min(-_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 0i, global1.x), vec3<i32>(-32294i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.xzy)), ~vec2<i32>(global1.x, (i32(-1i) * -2147483647i) | ~global1.x), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(min(var_5.x, 0u), abs(4294967295u), u_input.b << (var_5.x % 32u), var_5.x)), vec4<u32>(var_5.x, _wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(4294967295u, 20156u, 1u)), var_5.x, 1u)));
}

