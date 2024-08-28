struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 24939u, 4294967295u), vec3<u32>(13529u, 4294967295u, 1u), vec3<u32>(16043u, 11042u, 4294967295u), vec3<u32>(1u, 1u, 10049u), vec3<u32>(0u, 34297u, 4294967295u), vec3<u32>(4294967295u, 0u, 3634u), vec3<u32>(44687u, 0u, 82916u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(8393u, 39624u, 30625u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 1u, 29581u), vec3<u32>(60175u, 1u, 52200u), vec3<u32>(40u, 32408u, 23567u), vec3<u32>(4294967295u, 64489u, 4294967295u), vec3<u32>(57313u, 15791u, 53072u), vec3<u32>(4294967295u, 0u, 86231u), vec3<u32>(11499u, 55541u, 14437u), vec3<u32>(0u, 1u, 1u), vec3<u32>(20034u, 24611u, 0u), vec3<u32>(22123u, 50880u, 48696u), vec3<u32>(4294967295u, 0u, 11342u), vec3<u32>(21590u, 1u, 0u), vec3<u32>(93977u, 1u, 10547u), vec3<u32>(3587u, 6752u, 10955u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(16879u, 79173u, 71167u), vec3<u32>(0u, 4294967295u, 2153u));

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(3478i, 1i), vec2<i32>(24376i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(44622i, 8125i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-28958i, 35283i), vec2<i32>(18418i, -40820i), vec2<i32>(29288i, -13534i), vec2<i32>(-36589i, 1i), vec2<i32>(0i, -4701i), vec2<i32>(-26820i, 2147483647i), vec2<i32>(i32(-2147483648), 15247i), vec2<i32>(30904i, 47559i), vec2<i32>(0i, 27686i), vec2<i32>(18634i, -17192i), vec2<i32>(-33330i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)));

var<private> global2: vec3<i32>;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(162f)), 144f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(max(1036f, -241f))))))) + -1017f);
}

fn func_2() -> u32 {
    let var_0 = ~0i;
    global0 = array<vec3<u32>, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2372f)) * -287f))));
    global0 = array<vec3<u32>, 27>();
    var var_2 = select(true, all(select(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, true))), vec4<bool>(var_0 > u_input.c.x, true, true, false), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))))), any(vec2<bool>(!(var_1 > var_1), true)));
    return firstLeadingBit(27094u);
}

fn func_1(arg_0: bool) -> bool {
    global3 = global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(func_2(), 28848u >> (func_2() % 32u))), 27u)];
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-(~(-u_input.c.yx)), select(global2.xy << (u_input.a.zz % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(global2.xz, global1[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(true, true)) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), global3.xx) ^ (u_input.a.zy >> (u_input.a.yx % vec2<u32>(32u)))) % vec2<u32>(32u))), ~(-(~abs(global1[_wgslsmith_index_u32(4215u, 18u)]))));
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(firstTrailingBit(global3.x), abs(u_input.a.x), 49854u))), 27u)];
    global1 = array<vec2<i32>, 18>();
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, 601f, -287f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, -190f, -995f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, -188f, 464f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, -1290f, -2153f))), true & all(vec2<bool>(false, arg_0))))), ~select(vec4<i32>(2147483647i << (0u % 32u), ~u_input.b, max(-13466i, u_input.c.x), ~u_input.c.x), -select(vec4<i32>(var_0.x, 1i, global2.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, -1i, var_0.x), arg_0), vec4<bool>(true, arg_0, arg_0 | arg_0, true)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(9694u, 18u)];
    global3 = global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(~_wgslsmith_mod_u32(global3.x, 1u), 0u) | 73276u), 27u)];
    var var_1 = !select(select(vec4<bool>(false, false, all(vec3<bool>(true, true, true)), func_1(false)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, true, true)), false, _wgslsmith_f_op_f32(step(-1000f, -598f)) < _wgslsmith_f_op_f32(-1000f * -320f), !all(vec3<bool>(true, false, true))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)));
    let var_2 = u_input.d.zwx;
    var var_3 = 1u;
    let var_4 = vec4<bool>(var_1.x, select(false, all(vec3<bool>(true, var_1.x, false)), !(!all(var_1.xy))), var_1.x, false);
    var_1 = select(var_4, var_4, select(var_4, var_4, false));
    var var_5 = (global3.x << (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global3.x), global3.yx)) % 32u)) < 12212u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(global3.x, _wgslsmith_dot_vec2_u32(~global3.xz, vec2<u32>(64319u, 51297u))), _wgslsmith_clamp_u32(min(abs(5843u), u_input.a.x | global3.x), countOneBits(1u), u_input.a.x), 1u, 102434u), _wgslsmith_div_u32(~global3.x, ~(u_input.a.x | u_input.a.x)), 1f, _wgslsmith_f_op_f32(587f * -1000f), 44707u);
}

