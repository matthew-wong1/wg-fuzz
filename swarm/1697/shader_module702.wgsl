struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(1000f, 1000f, 713f), vec3<f32>(1679f, 1000f, -811f), vec3<f32>(685f, -615f, 1000f), vec3<f32>(-273f, -859f, -434f), vec3<f32>(751f, -468f, -1477f), vec3<f32>(-234f, 264f, -287f), vec3<f32>(-1155f, 1000f, 362f), vec3<f32>(1809f, -1000f, -221f), vec3<f32>(1000f, -859f, 320f), vec3<f32>(1000f, -1232f, 900f), vec3<f32>(370f, 2754f, -1731f), vec3<f32>(1948f, -1287f, 581f), vec3<f32>(-1899f, -412f, 1048f), vec3<f32>(172f, -854f, 402f), vec3<f32>(606f, 327f, -874f), vec3<f32>(2235f, -1377f, 992f), vec3<f32>(-543f, -781f, -638f), vec3<f32>(1000f, 509f, -194f), vec3<f32>(-398f, -1518f, -800f), vec3<f32>(-495f, -1256f, 375f), vec3<f32>(733f, -932f, -131f), vec3<f32>(-1362f, 276f, -1073f), vec3<f32>(-935f, 2934f, -1000f), vec3<f32>(740f, -255f, 1000f), vec3<f32>(-1475f, 610f, -1052f), vec3<f32>(-1000f, -1835f, -1143f), vec3<f32>(546f, 1014f, 428f), vec3<f32>(-1096f, -194f, 626f), vec3<f32>(446f, 1326f, 1410f), vec3<f32>(481f, 911f, -1977f), vec3<f32>(174f, -1463f, -1515f), vec3<f32>(1021f, 1000f, -1541f));

var<private> global1: array<u32, 28> = array<u32, 28>(17350u, 1u, 0u, 10841u, 1u, 1u, 14685u, 1u, 0u, 70578u, 0u, 4294967295u, 1u, 4294967295u, 59900u, 62038u, 91605u, 25831u, 4294967295u, 1u, 26382u, 1u, 1416u, 4294967295u, 60414u, 16058u, 0u, 0u);

var<private> global2: array<u32, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec3_u32(~(~select(u_input.a.zyz, select(vec3<u32>(u_input.a.x, 79671u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 28u)]), u_input.a.xxx, vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), u_input.a.wzy);
    let var_1 = _wgslsmith_f_op_f32(abs(arg_1.b.b));
    let var_2 = firstTrailingBit(~arg_0.a);
    var_0 = ~vec3<u32>(min(20854u, 957u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 47864u, var_0.x), 28u)] << (~1u % 32u), u_input.a.x);
    global1 = array<u32, 28>();
    return vec2<u32>(~_wgslsmith_mult_u32(u_input.a.x, 1u), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, ~abs(0u)), 28u)]);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_3, arg_3);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -46606i, -15261i), vec3<i32>(var_0.b.a, arg_3.a, var_0.a.a)) | vec3<i32>(-1i, arg_3.a, -2147483647i), countOneBits(vec3<i32>(var_0.a.a, 0i, 2147483647i))) >> (0u % 32u), _wgslsmith_f_op_f32(-var_0.a.b));
    let var_2 = global1[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(~u_input.a.x, 4294967295u), _wgslsmith_dot_vec2_u32(~(abs(u_input.a.xy) << (u_input.a.ww % vec2<u32>(32u))), min(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4049u), vec2<u32>(90680u, 1721u)), 4u)], global1[_wgslsmith_index_u32(~1u, 28u)]), ~func_3(Struct_1(var_1.a, arg_3.b), var_0)))), 28u)];
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.a, 1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_3.a, 43786i, var_1.a), vec3<i32>(var_0.a.a, var_1.a, 5704i), arg_0), vec3<i32>(arg_3.a, var_1.a, -40917i) >> (vec3<u32>(7983u, u_input.a.x, 0u) % vec3<u32>(32u))) >> (global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 28u)] % 32u)), ~vec3<i32>(-var_0.a.a, -var_1.a ^ abs(2147483647i), var_1.a));
    var var_4 = -21160i;
    return arg_3;
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<f32>, 32>();
    global2 = array<u32, 4>();
    let var_0 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1247f)));
    let var_1 = Struct_2(func_2(vec3<bool>(true, true, true), u_input.a, -381f, var_0), Struct_1(_wgslsmith_mod_i32(-2147483647i, max(var_0.a, var_0.a)), var_0.b));
    var var_2 = -1000f;
    return func_2(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 25510u, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), u_input.a) << (select(vec4<u32>(~0u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), global2[_wgslsmith_index_u32(u_input.a.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)] % 32u), 4u)], 1u), vec4<u32>(48478u, global2[_wgslsmith_index_u32(~u_input.a.x, 4u)], ~52773u, 0u), false) % vec4<u32>(32u)), var_0.b, var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(floor(arg_1.b.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.b, 690f), vec2<f32>(1222f, -640f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(469f, arg_2.b) * vec2<f32>(arg_2.b, arg_2.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b, 1893f))))))));
    global1 = array<u32, 28>();
    global2 = array<u32, 4>();
    var var_1 = abs(~_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(u_input.a.wzz, u_input.a.zzw)), _wgslsmith_div_vec3_u32(vec3<u32>(62444u, 1u, global2[_wgslsmith_index_u32(27338u, 4u)]), firstLeadingBit(u_input.a.wyx))));
    let var_2 = 1586f;
    return StorageBuffer(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(any(vec2<bool>(true, true)), Struct_2(func_1(), func_1()), func_2(vec3<bool>(all(vec3<bool>(false, true, false)), true, true), vec4<u32>(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 4u)], ~4294967295u, u_input.a.x), ~firstTrailingBit(1u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), 4294967295u), _wgslsmith_sub_u32(~96619u, 36799u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1664f)), Struct_1(abs(1i), _wgslsmith_f_op_f32(-519f + 1046f))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true), !any(vec2<bool>(false, false)))));
}

