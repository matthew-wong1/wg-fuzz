struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(18644u, 70865u, 25462u, 1u, 25831u, 65012u, 20438u, 0u, 11414u, 0u, 4591u, 35647u, 54982u, 4294967295u, 4294967295u, 1u, 31838u, 148665u, 19780u, 0u, 17770u, 55570u, 1864u, 43193u);

var<private> global1: vec4<i32> = vec4<i32>(0i, -33087i, 2147483647i, 2147483647i);

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(2147483647i, 18865i, i32(-2147483648), -1i), vec4<i32>(12125i, -59358i, -1i, 2147483647i), vec4<i32>(0i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-907i, -16493i, 1i, -8115i), vec4<i32>(58381i, i32(-2147483648), 1i, 1i), vec4<i32>(i32(-2147483648), 47390i, -1i, -1i), vec4<i32>(16274i, -1i, -51484i, -1i), vec4<i32>(12993i, 61869i, -25411i, 1i), vec4<i32>(1i, 489i, 24176i, 63704i), vec4<i32>(10374i, 1i, 2147483647i, 0i), vec4<i32>(2147483647i, -47936i, -1i, -32699i), vec4<i32>(-21762i, -300i, -1i, 1i), vec4<i32>(1i, i32(-2147483648), 28103i, 2147483647i), vec4<i32>(-1476i, -49326i, -54602i, -15173i), vec4<i32>(1948i, 0i, -43579i, -14638i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -8094i), vec4<i32>(1i, -70384i, 0i, 18645i), vec4<i32>(0i, -18800i, -1i, 2035i), vec4<i32>(2147483647i, -34285i, 19081i, 1i), vec4<i32>(5157i, i32(-2147483648), -14948i, 0i));

var<private> global3: Struct_1;

var<private> global4: array<f32, 28> = array<f32, 28>(-1000f, -782f, 1144f, -1096f, -883f, 857f, 190f, 109f, 1000f, 1890f, 501f, 405f, -704f, 187f, -929f, -1940f, -1682f, 1557f, 1000f, -559f, 626f, 1000f, 528f, -451f, -714f, 262f, 415f, 1074f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    let var_0 = Struct_1(vec4<u32>(global3.a.x, ~global3.a.x, _wgslsmith_mod_u32(global3.a.x, 97252u), reverseBits(37185u)) ^ vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global3.a, global3.a), 24u)], firstLeadingBit(u_input.a.x), ~(~global3.a.x), 8837u), global3.b, vec3<bool>(true, 1i < u_input.b, true), 1000f);
    global4 = array<f32, 28>();
    global4 = array<f32, 28>();
    let var_1 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec3_u32(u_input.a | global3.a.zyx, vec3<u32>(arg_0, arg_0, arg_0)))), 28u)] * global3.d);
    global1 = global2[_wgslsmith_index_u32(45529u, 20u)] ^ global2[_wgslsmith_index_u32(1u, 20u)];
    return 1f;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(~(~vec4<u32>(0u, 43541u, 10866u ^ u_input.a.x, 25711u)), global4[_wgslsmith_index_u32(13468u << ((_wgslsmith_add_u32(_wgslsmith_mod_u32(global3.a.x, global0[_wgslsmith_index_u32(0u, 24u)]), u_input.a.x) >> (u_input.a.x % 32u)) % 32u), 28u)], !vec3<bool>(any(vec2<bool>(true, true)), arg_0, false), _wgslsmith_f_op_f32(global3.d * global4[_wgslsmith_index_u32(countOneBits(u_input.a.x), 28u)]));
    global2 = array<vec4<i32>, 20>();
    global0 = array<u32, 24>();
    let var_1 = vec4<bool>(false, !var_0.c.x, all(!(!select(vec4<bool>(true, var_0.c.x, true, false), vec4<bool>(global3.c.x, true, global3.c.x, var_0.c.x), vec4<bool>(true, var_0.c.x, arg_0, arg_0)))), select(~0i > ~global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(585f)) + -1160f) >= _wgslsmith_f_op_f32(func_3(global3.a.x, !vec4<bool>(arg_0, true, arg_0, var_0.c.x), ~global1.x)), select(false, var_0.c.x, false) && arg_0));
    global3 = Struct_1(abs(vec4<u32>(~(~34436u), firstLeadingBit(~var_0.a.x), 19122u, ~abs(60838u))), global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(4294967295u, global3.a.x)), 28u)], !select(var_1.yyw, var_0.c, true), 587f);
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = global3.c.x;
    global2 = array<vec4<i32>, 20>();
    let var_1 = func_2(true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 45097u, 53495u, 4294967295u), vec4<u32>(1912u, u_input.a.x, u_input.a.x, u_input.a.x))), 24u)], reverseBits((15231u >> (global0[_wgslsmith_index_u32(global3.a.x, 24u)] % 32u)) | global0[_wgslsmith_index_u32(~0u, 24u)])), 20u)]);
    var var_2 = var_1;
    global0 = array<u32, 24>();
    return _wgslsmith_f_op_f32(-var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(6159u, 24u)], 23941u, 0u, u_input.a.x)), vec4<u32>(1u, _wgslsmith_add_u32(0u, global3.a.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global3.a.x, 24u)], 1u, 48531u), 24u)], _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(1u, 92724u)))), firstTrailingBit(vec4<u32>(global3.a.x, 20741u, 48921u, 4294967295u >> (0u % 32u)))), -936f, !(!vec3<bool>(any(global3.c), global0[_wgslsmith_index_u32(0u, 24u)] > global3.a.x, global3.c.x)), global3.d);
    var var_1 = var_0.a.x;
    var_1 = u_input.a.x;
    let var_2 = global1.xy;
    let var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var_1 = ~(~(~func_2(!var_0.c.x, countOneBits(vec4<i32>(-1i, u_input.c, u_input.c, 0i))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_mult_u32(abs(1u), firstLeadingBit(~4294967295u)));
}

