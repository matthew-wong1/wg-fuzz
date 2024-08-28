struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(1i, 17763i, 4861i), vec3<i32>(-82922i, 0i, 5628i), vec3<i32>(-14711i, 2147483647i, -30258i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(0i, 2147483647i, 6378i), vec3<i32>(-54762i, i32(-2147483648), -2670i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(1i, 17772i, 1i), vec3<i32>(i32(-2147483648), 18138i, -1i), vec3<i32>(4503i, -14909i, i32(-2147483648)), vec3<i32>(-14637i, -19132i, -16551i), vec3<i32>(-41919i, i32(-2147483648), 2147483647i), vec3<i32>(-26355i, -8132i, 0i), vec3<i32>(83742i, -37131i, 0i), vec3<i32>(29721i, -52985i, -30117i), vec3<i32>(0i, 1i, -62306i), vec3<i32>(-19211i, -1i, -1i), vec3<i32>(29555i, -1i, -55268i), vec3<i32>(11087i, 4001i, 1i), vec3<i32>(-486i, i32(-2147483648), -1i), vec3<i32>(0i, i32(-2147483648), 2799i), vec3<i32>(-1i, 0i, -56033i), vec3<i32>(-3390i, 0i, -42815i), vec3<i32>(-24338i, 2147483647i, -32017i), vec3<i32>(0i, 2147483647i, -48193i));

var<private> global3: array<vec2<u32>, 22>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = countOneBits(_wgslsmith_add_i32(arg_1 & arg_2.x, _wgslsmith_mult_i32(-2827i, -arg_2.x) >> ((arg_3.a.x & 0u) % 32u)));
    return firstLeadingBit((~arg_0 << (~vec2<u32>(arg_3.a.x, 4294967295u) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_3.a.x) ^ vec2<u32>(u_input.b, arg_3.a.x), ~u_input.a) % vec2<u32>(32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = max(func_3(vec2<i32>(-global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 11u)], firstTrailingBit(-2147483647i)), -(~global0[_wgslsmith_index_u32(countOneBits(90185u), 11u)]), -vec2<i32>(global0[_wgslsmith_index_u32(~u_input.b, 11u)], global0[_wgslsmith_index_u32(firstLeadingBit(60235u), 11u)]), Struct_1(~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 0u) | abs(vec4<u32>(u_input.b, 20188u, 4294967295u, 4294967295u)), vec3<bool>(true, true, false), ~0i, ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], -1i) >> (~vec3<u32>(u_input.a.x, 18469u, 4294967295u) % vec3<u32>(32u)), vec4<bool>(true, false, true, true))), select(_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], 8248i)), abs(vec2<i32>(-28584i, global0[_wgslsmith_index_u32(4294967295u, 11u)]) | vec2<i32>(global0[_wgslsmith_index_u32(51824u, 11u)], -50030i))), -(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 11u)], -9673i) & func_3(vec2<i32>(global0[_wgslsmith_index_u32(1u, 11u)], 2147483647i), global0[_wgslsmith_index_u32(u_input.b, 11u)], vec2<i32>(9639i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), Struct_1(vec4<u32>(4294967295u, u_input.a.x, 1448u, u_input.a.x), vec3<bool>(false, true, false), -27363i, vec3<i32>(global0[_wgslsmith_index_u32(57817u, 11u)], -1i, global0[_wgslsmith_index_u32(37719u, 11u)]), vec4<bool>(false, true, true, false)))), all(vec2<bool>(false, true))));
    var var_1 = false;
    let var_2 = ~(~vec2<u32>(4294967295u, min(reverseBits(11021u), u_input.a.x)));
    let var_3 = !any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true));
    return Struct_1(~vec4<u32>(max(38503u, 1u) & u_input.b, var_2.x, _wgslsmith_mod_u32(~48988u, 8467u), 1u), select(select(!select(vec3<bool>(true, var_3, var_3), vec3<bool>(var_3, false, false), vec3<bool>(true, true, var_3)), select(vec3<bool>(var_3, true, false), !vec3<bool>(var_3, var_3, var_3), !vec3<bool>(var_3, false, false)), true), select(vec3<bool>(false, true, all(vec4<bool>(var_3, var_3, true, var_3))), select(select(vec3<bool>(var_3, false, true), vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, var_3, false)), select(vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, true, var_3), false), true), var_3), !select(vec3<bool>(true, var_3, false), select(vec3<bool>(true, var_3, false), vec3<bool>(var_3, false, var_3), vec3<bool>(true, var_3, true)), !vec3<bool>(true, var_3, var_3))), _wgslsmith_add_i32(1524i, -(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 11u)])), global2[_wgslsmith_index_u32(26405u, 25u)], !select(!vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(759f > global4[_wgslsmith_index_u32(0u, 6u)], var_3, true, false), true));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -346f))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(~u_input.b, 4294967295u ^ u_input.b), ~0u, _wgslsmith_add_u32(reverseBits(34525u), ~u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 6025u, 0u, 4294967295u), vec4<u32>(u_input.b, u_input.a.x, 0u, 4263u)) | u_input.a.x, 12231u, 0u)), 6u)]);
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(-2934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1347f, var_0))))));
    var var_3 = func_2();
    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(abs(var_1.a.x), 71914u), u_input.b, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.a.x) >> (var_1.a.yw % vec2<u32>(32u)), u_input.a)), ~func_2().a, vec4<u32>(var_1.a.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 75391u), abs(vec2<u32>(37592u, 1u))), 29611u, false), _wgslsmith_div_u32(~var_1.a.x, 12901u), 34398u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 22>();
    let var_0 = func_1();
    global1 = array<vec2<bool>, 16>();
    let var_1 = true;
    var var_2 = Struct_1(func_2().a, func_1().e.zzx, max(-(~(~2147483647i)), global0[_wgslsmith_index_u32(0u, 11u)]), vec3<i32>(var_0.d.x | 1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(46352i, var_0.d.x), ~global0[_wgslsmith_index_u32(1u, 11u)]), min(func_2().c, i32(-1i) * -1i)) ^ var_0.d, var_0.e);
    let var_3 = _wgslsmith_div_vec3_i32(var_0.d, _wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(10004i, func_3(vec2<i32>(global0[_wgslsmith_index_u32(1u, 11u)], -1i), -1i, vec2<i32>(global0[_wgslsmith_index_u32(1u, 11u)], var_0.c), var_0).x, var_0.c ^ _wgslsmith_sub_i32(-1i, 21750i))));
    global1 = array<vec2<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(988f, -1195f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(498f, 1000f) * vec2<f32>(global4[_wgslsmith_index_u32(var_2.a.x, 6u)], global4[_wgslsmith_index_u32(1u, 6u)])))))), var_2.d.x, _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(1u >> (~(var_0.a.x | 9380u) % 32u), 6u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], global4[_wgslsmith_index_u32(17413u, 6u)], global4[_wgslsmith_index_u32(61787u, 6u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 6u)], -952f, global4[_wgslsmith_index_u32(1u, 6u)]), vec3<f32>(1362f, -401f, -1112f)))))))), global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(68405u, var_2.a.x)), 22u)]);
}

