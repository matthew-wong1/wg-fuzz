struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<u32, 1>;

var<private> global2: array<f32, 28> = array<f32, 28>(1027f, 397f, -341f, 530f, -166f, 856f, -1723f, 1138f, -564f, -166f, 1576f, 1315f, 983f, 1075f, -600f, 1430f, -652f, 248f, 764f, -1217f, -2155f, 363f, 831f, 1543f, 1164f, 710f, -883f, 527f);

var<private> global3: array<u32, 8>;

var<private> global4: array<u32, 26> = array<u32, 26>(62523u, 1u, 1u, 0u, 4294967295u, 16895u, 4294967295u, 58055u, 0u, 1u, 4294967295u, 4294967295u, 1309u, 0u, 0u, 34457u, 1u, 52583u, 1u, 0u, 4294967295u, 38527u, 4294967295u, 0u, 1u, 4294967295u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    return Struct_2(Struct_1(arg_0.x, 100f), Struct_1(4294967295u, global2[_wgslsmith_index_u32(~u_input.b.x, 28u)]), arg_0.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    global3 = array<u32, 8>();
    global0 = array<vec4<bool>, 29>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, 1486f, 570f, -240f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, -323f, 655f, -1888f)), true)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(func_2(vec4<u32>(22022u, 0u, 4294967295u, u_input.d)), func_2(vec4<u32>(18689u, 51061u, u_input.d, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 26u)], 1u)])).a)), vec4<f32>(-1740f, global2[_wgslsmith_index_u32(~u_input.b.x, 28u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 28u)] - global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(168u, 8u)], 28u)]), -1041f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 26u)], 1u)], 8u)], 1u)], 26u)], 28u)], global2[_wgslsmith_index_u32(11832u, 28u)], 1000f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20033u, 8u)], 28u)]))))))) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(func_2(vec4<u32>(global4[_wgslsmith_index_u32(105700u, 26u)], 6375u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60364u, 1u)], 26u)], 8u)], u_input.b.x)), func_2(max(vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(87909u, 1u)], 6463u, 29455u), vec4<u32>(u_input.d, 49738u, global3[_wgslsmith_index_u32(7119u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 8u)], 8u)], 8u)]))).a)).x, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, reverseBits(u_input.b)), 28u)], -1303f), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 1u)], 28u)], global2[_wgslsmith_index_u32(0u, 28u)]));
    let var_1 = countOneBits(1u);
    let var_2 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) != 973f);
    var var_3 = func_2(vec4<u32>(abs(var_1 | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 26u)], 26u)]), ~(global3[_wgslsmith_index_u32(~16614u, 8u)] << (0u % 32u)), 23436u, u_input.b.x));
    var var_4 = -240f;
    return Struct_1(~(func_2(reverseBits(vec4<u32>(var_1, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 26u)], 8u)], var_1, global4[_wgslsmith_index_u32(var_1, 26u)]))).c & ~var_1), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(28938u, global1[_wgslsmith_index_u32(var_3.c, 1u)], var_1, u_input.b.x), vec4<u32>(var_1, var_1, 73411u, 46987u)) ^ 0u), 28u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 29>();
    global1 = array<u32, 1>();
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 26u)], 1u)], 28u)] - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(45878u, 17130u), 28u)]) < -1057f), func_2(~(~vec4<u32>(global3[_wgslsmith_index_u32(66430u, 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)], 96656u, 1u))).a, ~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 8u)] ^ global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(1387u, u_input.b.x), u_input.b.x >> (global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4046u, 1u)], 8u)], 8u)] << (global3[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u), 26u)], 1u)] % 32u)), 8u)]);
    var var_1 = firstTrailingBit(-34964i);
    let var_2 = func_2(vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(var_0.b.a, var_0.c, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 1u)], global1[_wgslsmith_index_u32(59162u, 1u)]))), _wgslsmith_clamp_vec4_u32(vec4<u32>(24926u, 1u, 56337u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)]), vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9381u, 8u)], 1u)], global4[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.d, global4[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 26u)], 8u)], 19039u, 4294967295u, 41908u), vec4<u32>(8588u, 17701u, u_input.b.x, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 26u)], 8u)])))), _wgslsmith_dot_vec2_u32(abs(abs(u_input.b)), vec2<u32>(0u >> (global1[_wgslsmith_index_u32(4294967295u, 1u)] % 32u), 4294967295u)), 61881u, 68509u)).b;
    var_0 = func_2(~(~vec4<u32>(u_input.b.x, global4[_wgslsmith_index_u32(1u, 26u)], 6714u, 2347u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a, var_2.a, global1[_wgslsmith_index_u32(var_0.b.a, 1u)], global4[_wgslsmith_index_u32(66363u, 26u)]), vec4<u32>(var_2.a, global1[_wgslsmith_index_u32(var_2.a, 1u)], 11432u, 47445u)) % vec4<u32>(32u))) & (vec4<u32>(~global3[_wgslsmith_index_u32(68473u, 8u)], min(1u, 43770u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3646u, 26u)], 26u)], 1u)], var_0.a.a, global1[_wgslsmith_index_u32(var_2.a, 1u)]), 4294967295u) & (reverseBits(vec4<u32>(global4[_wgslsmith_index_u32(42404u, 26u)], 1u, 0u, 55037u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(76173u, global1[_wgslsmith_index_u32(var_2.a, 1u)], var_2.a, global1[_wgslsmith_index_u32(1u, 1u)]), vec4<u32>(4294967295u, 34684u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.c, 26u)], 26u)], 57651u)))));
    global2 = array<f32, 28>();
    let var_3 = global3[_wgslsmith_index_u32(~(~1u), 8u)];
    var_1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, u_input.c.x), u_input.c.yy) & vec2<i32>(-38815i, -2147483647i), vec2<i32>(u_input.c.x, u_input.e))), 1739u, _wgslsmith_div_vec2_i32(select(u_input.c.zx, countOneBits(vec2<i32>(1i, u_input.e) >> (u_input.b % vec2<u32>(32u))), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(abs(countOneBits(vec2<i32>(1i, 22382i))), -vec2<i32>(u_input.a, u_input.c.x), ~select(vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(u_input.e, u_input.e), vec2<bool>(false, false)))));
}

