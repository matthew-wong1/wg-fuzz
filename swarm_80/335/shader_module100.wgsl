struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(508f, -1974f, 1367f, -454f), vec4<f32>(1403f, -112f, 430f, 454f), vec4<f32>(-121f, -110f, 846f, 1158f), vec4<f32>(366f, 1874f, -1928f, -1678f), vec4<f32>(-236f, -134f, -1140f, 749f), vec4<f32>(-1280f, 386f, 1030f, -1000f), vec4<f32>(-1221f, 411f, 183f, 657f), vec4<f32>(-935f, -644f, -1505f, 796f), vec4<f32>(-1579f, -973f, -446f, 1308f), vec4<f32>(123f, -1000f, 573f, 1436f), vec4<f32>(-488f, -1383f, -380f, 204f), vec4<f32>(1587f, 1069f, -151f, -2112f), vec4<f32>(1591f, -1402f, -605f, -477f), vec4<f32>(788f, 433f, 352f, -1540f), vec4<f32>(110f, 963f, 692f, 559f), vec4<f32>(-1634f, 178f, 1000f, -1088f), vec4<f32>(886f, -208f, 169f, -494f), vec4<f32>(472f, 214f, -246f, 436f), vec4<f32>(-1244f, -774f, -120f, 1901f), vec4<f32>(751f, 593f, -1854f, -1000f), vec4<f32>(-1059f, 2607f, -412f, -847f), vec4<f32>(-1042f, -544f, 281f, -1046f), vec4<f32>(-688f, 2268f, 398f, 622f), vec4<f32>(-920f, 569f, -263f, -485f), vec4<f32>(-1964f, 1043f, 1082f, 1516f), vec4<f32>(-1088f, -1542f, -159f, 745f));

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<f32, 13> = array<f32, 13>(-1153f, -195f, 1970f, -204f, 111f, -1108f, -1191f, -1383f, -192f, 1000f, 1000f, -938f, 1237f);

var<private> global3: array<Struct_4, 2>;

var<private> global4: array<u32, 12>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec2<u32> {
    var var_0 = 0u;
    let var_1 = Struct_2(max(_wgslsmith_mult_u32(select(4294967295u, ~arg_3, u_input.b.x <= arg_2), ~_wgslsmith_mod_u32(arg_3, u_input.a)), abs(0u)), vec2<bool>(true, true), arg_1, arg_1);
    var_0 = u_input.a;
    global3 = array<Struct_4, 2>();
    var var_2 = -1000f;
    return vec2<u32>(~arg_3, 20126u) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 9205u), vec2<u32>(4294967295u, 82279u)), (vec2<u32>(arg_3, arg_3) | vec2<u32>(arg_3, global4[_wgslsmith_index_u32(1u, 12u)])) << (~vec2<u32>(25258u, var_1.a) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, arg_3) ^ min(vec2<u32>(4294967295u, 0u), vec2<u32>(var_1.a, arg_3)), vec2<u32>(var_1.a & arg_3, 1u)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~func_3(_wgslsmith_f_op_vec2_f32(-arg_1.xx), Struct_1(arg_0), ~u_input.b.x, abs(_wgslsmith_sub_u32(u_input.a, 4294967295u))), ~reverseBits(vec2<u32>(1u, u_input.a)));
    let var_1 = _wgslsmith_mod_vec3_i32(~select(countOneBits(u_input.b.wzz), -u_input.b.xww, vec3<bool>(true, true, true)), vec3<i32>(abs(u_input.b.x), countOneBits(u_input.b.x & u_input.b.x), max(-u_input.b.x, -21503i)) >> (vec3<u32>(23190u, ~_wgslsmith_div_u32(2699u, u_input.a), (global4[_wgslsmith_index_u32(33570u, 12u)] ^ u_input.a) ^ firstTrailingBit(1u)) % vec3<u32>(32u)));
    var_0 = abs(0u);
    let var_2 = Struct_1(arg_0);
    global3 = array<Struct_4, 2>();
    return max(~u_input.a, abs(u_input.a));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(77212u, 12u)], ~0u), vec2<bool>((_wgslsmith_div_u32(27411u, 64213u) & global4[_wgslsmith_index_u32(countOneBits(arg_0), 12u)]) <= 1u, true), Struct_1(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 54763u, global4[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<u32>(arg_1.x, 0u, arg_0, arg_0))), 13u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(arg_1.x, 13u)])), global2[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(arg_1.x, 13u)], vec3<f32>(-269f, 741f, -1000f)), 13u)])))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f))));
    global3 = array<Struct_4, 2>();
    var var_1 = -535f;
    return Struct_3(firstTrailingBit(arg_1), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a ^ 25368u, 13u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 13u)])), var_0.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(floor(-267f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1249f, 498f)), var_0.c.a, var_0.d.a)))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 2>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 5u)];
    let var_1 = func_1(~_wgslsmith_div_u32(u_input.a & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, 77531u), select(vec3<u32>(1u, global4[_wgslsmith_index_u32(18147u, 12u)], u_input.a), vec3<u32>(u_input.a, u_input.a, global4[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(true, false, false)))), ~(vec4<u32>(48895u, u_input.a, var_0.a, 4294967295u) & vec4<u32>(64604u, 1u, 60759u, 10674u)) << (abs(firstTrailingBit(~vec4<u32>(var_0.a, 1u, global4[_wgslsmith_index_u32(u_input.a, 12u)], 1u))) % vec4<u32>(32u)));
    var var_2 = !select(vec3<bool>(false && var_0.b.x, false, var_0.b.x), !(!vec3<bool>(var_0.b.x, var_0.b.x, true)), !select(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(false, false, false), vec3<bool>(false, true, var_0.b.x)), select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(false, false, true), var_0.b.x), vec3<bool>(true, true, true)));
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(1u, ~(112553u >> (var_0.a % 32u))), 4294967295u, ~(~var_0.a));
    var var_4 = -2880i;
    var var_5 = Struct_1(global2[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(global4[_wgslsmith_index_u32(~11942u, 12u)])), 13u)]);
    global2 = array<f32, 13>();
    var var_6 = vec2<f32>(-169f, func_1(abs(~var_1.a.x & ~26805u), vec4<u32>(0u, _wgslsmith_clamp_u32(var_1.a.x, reverseBits(var_3.x), ~46123u), ~abs(1u), ~(~var_1.a.x))).c.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(45074u, 26u)], ~func_1(~(~var_0.a), vec4<u32>(53406u, ~global4[_wgslsmith_index_u32(1u, 12u)], 79270u, ~var_0.a)).a.yx, _wgslsmith_f_op_f32(-var_5.a));
}

