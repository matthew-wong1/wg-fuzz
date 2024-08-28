struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 8>;

var<private> global2: array<i32, 6>;

var<private> global3: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(14539u, vec3<u32>(0u, 4294967295u, 4294967295u), -1000f, -1184f, Struct_1(vec2<i32>(i32(-2147483648), 22841i), vec4<u32>(49789u, 0u, 0u, 17838u), 66802u, vec2<u32>(1u, 27856u))), Struct_4(36167u, vec3<u32>(44904u, 4294967295u, 0u), -271f, -803f, Struct_1(vec2<i32>(41857i, 80211i), vec4<u32>(0u, 0u, 1u, 1u), 14438u, vec2<u32>(0u, 4294967295u))), Struct_4(651u, vec3<u32>(45936u, 0u, 65510u), 193f, 2341f, Struct_1(vec2<i32>(i32(-2147483648), 38782i), vec4<u32>(4294967295u, 0u, 0u, 1u), 9020u, vec2<u32>(48998u, 1u))), Struct_4(4294967295u, vec3<u32>(4294967295u, 1u, 11031u), -1060f, 1147f, Struct_1(vec2<i32>(-39725i, 1i), vec4<u32>(26679u, 37432u, 1u, 74940u), 4294967295u, vec2<u32>(62528u, 49485u))), Struct_4(0u, vec3<u32>(4294967295u, 28909u, 4294967295u), -1000f, 429f, Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<u32>(0u, 44054u, 28586u, 51979u), 0u, vec2<u32>(1u, 59341u))), Struct_4(1u, vec3<u32>(0u, 50796u, 103283u), -968f, 1478f, Struct_1(vec2<i32>(-24286i, -60141i), vec4<u32>(8658u, 4294967295u, 17666u, 4294967295u), 4294967295u, vec2<u32>(4294967295u, 13907u))));

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(-1i, -40496i), vec4<u32>(0u, 28802u, 0u, 9023u), 107865u, vec2<u32>(41619u, 4294967295u)), Struct_1(vec2<i32>(-7215i, 0i), vec4<u32>(1u, 6672u, 76265u, 4294967295u), 0u, vec2<u32>(88398u, 31239u)), Struct_1(vec2<i32>(-1i, 21363i), vec4<u32>(27031u, 0u, 0u, 4294967295u), 10783u, vec2<u32>(4294967295u, 36398u)), Struct_1(vec2<i32>(-14169i, -3532i), vec4<u32>(11507u, 0u, 0u, 4294967295u), 4294967295u, vec2<u32>(42485u, 12531u)), Struct_1(vec2<i32>(-79484i, -11563i), vec4<u32>(7047u, 14329u, 61931u, 9910u), 58289u, vec2<u32>(33763u, 4159u)), Struct_1(vec2<i32>(-43905i, 40963i), vec4<u32>(1u, 11517u, 37233u, 8475u), 4294967295u, vec2<u32>(717u, 4294967295u)), Struct_1(vec2<i32>(6981i, i32(-2147483648)), vec4<u32>(2161u, 12864u, 0u, 27953u), 89818u, vec2<u32>(4294967295u, 44415u)), Struct_1(vec2<i32>(-3986i, 21168i), vec4<u32>(4732u, 1u, 14559u, 42998u), 1u, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(1u, 0u, 102993u, 0u), 3921u, vec2<u32>(1u, 1u)), Struct_1(vec2<i32>(0i, 2803i), vec4<u32>(0u, 34425u, 4294967295u, 4294967295u), 8871u, vec2<u32>(13207u, 50985u)), Struct_1(vec2<i32>(-1i, 53004i), vec4<u32>(4294967295u, 32766u, 1u, 4294967295u), 40107u, vec2<u32>(1u, 31293u)), Struct_1(vec2<i32>(-2533i, 1i), vec4<u32>(4294967295u, 41907u, 9907u, 1u), 1u, vec2<u32>(1u, 3415u)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(0u, 4497u, 4294967295u, 4294967295u), 0u, vec2<u32>(9803u, 118713u)), Struct_1(vec2<i32>(7307i, 1i), vec4<u32>(4294967295u, 31511u, 44432u, 4294967295u), 0u, vec2<u32>(13717u, 1u)), Struct_1(vec2<i32>(18015i, -12026i), vec4<u32>(0u, 3195u, 30007u, 33947u), 1u, vec2<u32>(34290u, 59558u)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<u32>(1516u, 4294967295u, 74679u, 2902u), 34259u, vec2<u32>(1u, 53238u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3) -> vec2<i32> {
    global0 = !(_wgslsmith_add_u32(4294967295u, reverseBits(0u ^ arg_1)) != (u_input.c.x << (u_input.c.x % 32u)));
    let var_0 = abs(0u);
    let var_1 = 16937u & _wgslsmith_mod_u32(~var_0 >> (abs(_wgslsmith_sub_u32(74670u, 50401u)) % 32u), ~u_input.d.x);
    let var_2 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(~var_1) << (~5228u % 32u), var_1, 4139u << (arg_1 % 32u)), 16u)], Struct_1(~(arg_0.xx ^ u_input.e.zz) & vec2<i32>(firstLeadingBit(-43987i), global2[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<u32>(reverseBits(_wgslsmith_add_u32(17947u, 1730u)), 42796u, ~var_0, 1u << (abs(arg_1) % 32u)), u_input.a.x, vec2<u32>(var_1, firstLeadingBit(~4294967295u))), global4[_wgslsmith_index_u32(var_0, 16u)]);
    global2 = array<i32, 6>();
    return min(vec2<i32>(_wgslsmith_div_i32(abs(arg_0.x) >> (~0u % 32u), arg_2.a), ~(~arg_0.x << (67531u % 32u))), select(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b.a.x, 1i) >> (u_input.c.wz % vec2<u32>(32u)), arg_0.yz, firstLeadingBit(vec2<i32>(-61245i, 40043i))), arg_0.xy, true));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = array<f32, 8>();
    let var_0 = 661f;
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(abs(abs(func_3(_wgslsmith_clamp_vec3_i32(u_input.e.wyy, vec3<i32>(global2[_wgslsmith_index_u32(arg_0.b.x, 6u)], global2[_wgslsmith_index_u32(13993u, 6u)], -2147483647i), vec3<i32>(-33086i, -1i, 0i)), ~34469u, Struct_3(u_input.b.x, vec2<f32>(global1[_wgslsmith_index_u32(0u, 8u)], 291f))))), ~max(vec4<u32>(arg_0.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, 0u, 115441u), u_input.c), _wgslsmith_div_u32(var_1, 27994u), reverseBits(u_input.a.x)), ~(~u_input.c)), u_input.a.x, select(arg_0.b.wx, ~vec2<u32>(56283u, _wgslsmith_dot_vec4_u32(u_input.c, arg_0.b)), vec2<bool>(true, false)));
    global1 = array<f32, 8>();
    return -46908i;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_i32(func_2(global4[_wgslsmith_index_u32(arg_0.a.b.x ^ ~arg_0.c.c, 16u)]), global2[_wgslsmith_index_u32(abs(4294967295u), 6u)]);
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(~597u << (arg_0.b.c % 32u), 6u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(arg_0.a.b.x, 8u)])))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.b.c, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)]) - global1[_wgslsmith_index_u32(max(u_input.d.x, arg_0.b.b.x), 8u)]))));
    let var_2 = Struct_3(abs(2147483647i), vec2<f32>(var_1.b.x, 439f));
    let var_3 = vec2<u32>(u_input.c.x, ~106741u);
    let var_4 = select(vec3<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), true, min(_wgslsmith_mult_u32(51471u, 0u), u_input.c.x) <= 29000u), vec3<bool>(true, true, true), false);
    return -1382f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 6>();
    var var_0 = ~(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), 30434u, ~_wgslsmith_mult_u32(9101u, u_input.a.x)) << (u_input.a.x % 32u));
    let var_1 = Struct_4(4294967295u, _wgslsmith_mult_vec3_u32(min(~vec3<u32>(u_input.a.x, u_input.a.x, 36054u) << (~vec3<u32>(1u, u_input.a.x, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.yww, vec3<u32>(60685u, u_input.c.x, u_input.a.x)), vec3<u32>(4294967295u, u_input.c.x, 3325u))), u_input.c.yzz), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.e.zz, u_input.c, u_input.a.x, vec2<u32>(u_input.c.x, u_input.a.x)), Struct_1(vec2<i32>(10575i, global2[_wgslsmith_index_u32(30032u, 6u)]), vec4<u32>(0u, 70471u, u_input.c.x, u_input.c.x), 84422u, vec2<u32>(u_input.d.x, 1u)), global4[_wgslsmith_index_u32(u_input.c.x, 16u)])))))), _wgslsmith_f_op_f32(round(1828f)), global4[_wgslsmith_index_u32(~u_input.d.x << (u_input.d.x % 32u), 16u)]);
    global2 = array<i32, 6>();
    var var_2 = -select(select(vec3<i32>(_wgslsmith_add_i32(u_input.b.x, -3711i), global2[_wgslsmith_index_u32(var_1.b.x, 6u)], global2[_wgslsmith_index_u32(abs(var_1.b.x), 6u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, -43292i), _wgslsmith_div_vec3_i32(u_input.e.wyz, u_input.e.zwx)), vec3<bool>(true, all(vec3<bool>(false, true, true)), true)), firstTrailingBit(select(u_input.e.zyy, ~u_input.b, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), !vec3<bool>(true, var_1.a <= 30451u, true));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_sub_i32(var_2.x, var_1.e.a.x)), _wgslsmith_f_op_f32(-987f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(13352u, 8u)]))))), vec2<i32>(-3933i, 2147483647i), _wgslsmith_clamp_vec4_u32(u_input.c, countOneBits(var_1.e.b) >> (vec4<u32>(4294967295u, min(var_1.a, 4294967295u), 1u, ~4294967295u) % vec4<u32>(32u)), var_1.e.b), _wgslsmith_div_vec2_i32(abs(u_input.b.yz), -(~var_2.yx)));
}

