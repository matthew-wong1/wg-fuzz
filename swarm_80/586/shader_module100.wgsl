struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4>;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(214f, -526f, -506f, 495f), vec4<f32>(483f, 995f, 322f, 388f), vec4<f32>(179f, 170f, 198f, -920f), vec4<f32>(1609f, -242f, -656f, 236f), vec4<f32>(-961f, -1000f, -805f, 985f), vec4<f32>(570f, -1195f, -565f, -556f), vec4<f32>(1000f, 230f, -874f, 1492f), vec4<f32>(103f, 836f, -366f, -981f), vec4<f32>(-808f, -1147f, -485f, 1658f), vec4<f32>(1015f, -351f, -241f, -2061f), vec4<f32>(1000f, 1484f, -1000f, 595f), vec4<f32>(-369f, 204f, 1173f, -1884f), vec4<f32>(-271f, 1195f, -427f, 436f), vec4<f32>(-445f, 1170f, -2218f, -949f), vec4<f32>(-1000f, 870f, 518f, 1180f), vec4<f32>(-347f, 973f, -1063f, 690f), vec4<f32>(299f, 654f, 1000f, 982f), vec4<f32>(-333f, -775f, 770f, -1075f), vec4<f32>(-236f, -250f, 1065f, 1053f), vec4<f32>(-491f, 1368f, 299f, -969f), vec4<f32>(-1013f, -2361f, -1910f, 168f), vec4<f32>(-2256f, -176f, -1000f, -585f), vec4<f32>(-227f, 411f, 309f, -1337f), vec4<f32>(1297f, -307f, 2329f, 939f), vec4<f32>(-1372f, -292f, 425f, -835f));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(0u, 0u, 21725u, 5324u), false), Struct_1(vec4<u32>(4294967295u, 50658u, 4294967295u, 4294967295u), true), Struct_1(vec4<u32>(0u, 4294967295u, 61589u, 4294967295u), true), Struct_1(vec4<u32>(43496u, 0u, 4294967295u, 0u), true), Struct_1(vec4<u32>(88984u, 0u, 48404u, 49565u), true), Struct_1(vec4<u32>(4294967295u, 44590u, 4294967295u, 29830u), true), Struct_1(vec4<u32>(18121u, 4294967295u, 42901u, 1u), true), Struct_1(vec4<u32>(0u, 46761u, 0u, 4294967295u), false), Struct_1(vec4<u32>(0u, 4294967295u, 54321u, 1u), false), Struct_1(vec4<u32>(0u, 0u, 13538u, 1u), false), Struct_1(vec4<u32>(17511u, 85879u, 62695u, 0u), true), Struct_1(vec4<u32>(45470u, 37427u, 35657u, 0u), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = ~28848u;
    let var_1 = true & select(1f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-647f))), all(vec3<bool>(arg_1.b, !arg_1.b, true)), !(_wgslsmith_f_op_f32(trunc(-1000f)) > 1f));
    global2 = array<Struct_1, 12>();
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(11535u, ~_wgslsmith_add_u32(79841u, arg_1.a.x), _wgslsmith_dot_vec2_u32(arg_1.a.xx, select(arg_1.a.xz, arg_1.a.xy, vec2<bool>(true, var_1)))), 35389u, select(arg_1.a.x, arg_1.a.x, true));
    var_2 = firstLeadingBit(min(abs(arg_1.a.wzy) & (firstLeadingBit(arg_1.a.yyy) | countOneBits(vec3<u32>(var_2.x, arg_1.a.x, arg_1.a.x))), select(~_wgslsmith_add_vec3_u32(vec3<u32>(86362u, arg_1.a.x, 4294967295u), arg_1.a.yyz), ~select(arg_1.a.ywy, arg_1.a.zxx, vec3<bool>(true, false, true)), vec3<bool>(true, any(vec4<bool>(arg_1.b, arg_1.b, var_1, false)), false))));
    return -_wgslsmith_mod_i32(21780i, arg_0.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = -func_3(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -1i, 0i, 80545i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, arg_2)), vec4<i32>(7806i, arg_2, -36260i, 1i)), vec4<i32>(arg_2, 26171i, -1i, arg_2) | -vec4<i32>(arg_2, arg_2, -1i, u_input.a.x), any(!vec4<bool>(true, true, arg_0, arg_0))), Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 31859u, 1u, 56489u), vec4<u32>(9470u, 4294967295u, 42980u, 1u)), true));
    var var_1 = false || !(false == arg_0);
    var var_2 = 0u;
    var_1 = any(!select(vec3<bool>(all(vec3<bool>(arg_0, false, arg_0)), true, arg_0), !select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, true), true), !vec3<bool>(false, arg_0, true)));
    var var_3 = true;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_sub_vec2_u32(arg_0.a.xx, vec2<u32>(69360u >> (arg_0.a.x % 32u), arg_0.a.x | 0u) << (~(arg_0.a.xy | vec2<u32>(arg_0.a.x, arg_0.a.x)) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(arg_0.a.yz, ~arg_0.a.wy) % vec2<u32>(32u));
    global0 = array<vec2<f32>, 4>();
    var var_1 = !any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0.b, true), true)));
    let var_2 = select(vec3<bool>(_wgslsmith_f_op_f32(round(1257f)) == 1f, !(!arg_0.b), !func_2(u_input.a.x > u_input.a.x, -765f, arg_1)), vec3<bool>(select(true, true, arg_0.b), false, true), all(vec4<bool>(arg_0.b, true, arg_0.b, !(var_0.x < var_0.x))));
    var var_3 = Struct_2(~(~arg_0.a.xz));
    return var_2.x && any(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, any(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true), true)), !(!(func_1(global2[_wgslsmith_index_u32(0u, 12u)], -2147483647i) || any(vec3<bool>(true, true, true)))));
    global0 = array<vec2<f32>, 4>();
    global2 = array<Struct_1, 12>();
    global0 = array<vec2<f32>, 4>();
    let var_1 = global2[_wgslsmith_index_u32(36648u, 12u)];
    var var_2 = _wgslsmith_div_u32(var_1.a.x, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(~max(abs(vec3<i32>(u_input.a.x, 92277i, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, 4478i))), _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, -8079i), vec3<i32>(-1887i, -18330i, -2147483647i)), -firstLeadingBit(vec3<i32>(u_input.a.x, -1i, u_input.a.x)))), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(16570u, 0u, 39471u, var_1.a.x) ^ ~var_1.a), var_1.a), 1150f);
}

