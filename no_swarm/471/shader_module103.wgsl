struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(60615u, -218f, 0u), Struct_1(12160u, 1078f, 78310u), Struct_1(8972u, -812f, 0u), Struct_1(21162u, 660f, 1u), Struct_1(23171u, -140f, 20536u), Struct_1(98916u, -415f, 4294967295u), Struct_1(75852u, 317f, 1u), Struct_1(1u, -844f, 0u), Struct_1(2477u, 235f, 1u), Struct_1(56411u, 134f, 1u), Struct_1(29064u, 444f, 1u), Struct_1(48059u, -756f, 4547u), Struct_1(58913u, -478f, 38027u), Struct_1(46863u, -1000f, 11054u), Struct_1(98117u, 634f, 15569u), Struct_1(30656u, 310f, 42649u), Struct_1(63940u, 182f, 1u), Struct_1(4234u, -1157f, 4294967295u), Struct_1(4384u, 289f, 0u), Struct_1(11870u, 369f, 46536u), Struct_1(1967u, 715f, 92005u), Struct_1(0u, -598f, 38466u), Struct_1(67249u, -515f, 1u), Struct_1(6157u, -1043f, 0u), Struct_1(0u, -556f, 4294967295u), Struct_1(23380u, 407f, 2417u), Struct_1(34302u, -1000f, 89408u), Struct_1(42437u, -603f, 4294967295u), Struct_1(97612u, -584f, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstLeadingBit(u_input.a | (u_input.a | u_input.a)), ~(arg_0.a | u_input.a)), 29u)];
    var var_1 = Struct_1(arg_0.a, 508f, _wgslsmith_dot_vec2_u32(min(~(~vec2<u32>(68455u, var_0.c)), ~(~vec2<u32>(36856u, 4294967295u))), ~vec2<u32>(max(var_0.c, 4294967295u), countOneBits(arg_0.c))));
    global1 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b)));
    var_0 = arg_0;
    return -19104i;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    return ~565u;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = 5751i;
    var var_1 = true & (global0.x | global0.x);
    let var_2 = select(global0.xxx, vec3<bool>(true, !all(!vec2<bool>(global0.x, false)), false), !(!vec3<bool>(global0.x, true, global0.x)));
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_3(arg_0, -func_2(arg_0, u_input.c.yx), !(!vec4<bool>(var_2.x, global0.x, var_2.x, true))), u_input.a, ~(~(~0u)), u_input.a >> (u_input.a % 32u)), abs(~(~vec4<u32>(u_input.a, 64508u, arg_0.c, u_input.a))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1890f, -1000f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(271f, 421f, 940f, -147f))) - vec4<f32>(164f, 1180f, arg_0.b, -871f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b) - vec4<f32>(arg_0.b, -2066f, -355f, -810f)))), !select(vec4<bool>(global0.x, false, true, true), vec4<bool>(var_2.x, false, var_2.x, global0.x), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!((!global0.x == true) & (true & !global0.x)), true, true, !(true & !(global0.x & true)));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(1u, 29u)])) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, 1892f, -1090f, -2432f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(779f, 1308f, 401f, -1120f) - vec4<f32>(-927f, -1594f, 1719f, -1000f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(248f, 1233f, 594f, -519f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-643f, -207f, -332f, -1030f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1000f, 944f, 278f))), vec4<f32>(_wgslsmith_f_op_f32(floor(426f)), _wgslsmith_div_f32(-248f, -1130f), _wgslsmith_f_op_f32(1856f - -526f), 1f))));
    let var_1 = var_0.x;
    var var_2 = ~u_input.a;
    let var_3 = Struct_1(firstLeadingBit(~(~u_input.a) << (1u % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * 1000f))), 21273u);
    let var_4 = var_3;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.b, -871f, var_3.b, -2328f), vec4<f32>(var_4.b, -559f, -387f, -1078f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_4.b, -314f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.b, 914f))), _wgslsmith_f_op_f32(var_3.b + -488f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_4.c, 451f, 65758u))).x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, var_0.x, 372f, var_4.b) * vec4<f32>(var_0.x, var_3.b, var_4.b, -1283f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(342f, var_3.b, -1433f, var_3.b), vec4<f32>(var_3.b, var_0.x, 873f, var_4.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, var_0.x, var_0.x, var_3.b) * vec4<f32>(-762f, 1622f, -695f, -314f))))));
    let var_5 = ~(~vec4<u32>(12564u, u_input.a, 4294967295u, countOneBits(var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.b), 447f))) + var_4.b), reverseBits(vec3<u32>(u_input.a >> (1u % 32u), var_5.x, var_5.x) >> (~_wgslsmith_mult_vec3_u32(var_5.wzw, vec3<u32>(var_3.a, var_3.c, 9336u)) % vec3<u32>(32u))));
}

