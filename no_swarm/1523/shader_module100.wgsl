struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-2108f, 558f, -2023f, -2269f), vec4<bool>(false, false, false, false), false), Struct_1(vec4<f32>(-724f, -402f, -1000f, -664f), vec4<bool>(true, false, false, false), false), Struct_1(vec4<f32>(-1035f, -2842f, 999f, 224f), vec4<bool>(false, true, true, false), true), Struct_1(vec4<f32>(-1043f, 1497f, 1927f, 131f), vec4<bool>(false, true, false, true), false), Struct_1(vec4<f32>(-853f, -450f, -677f, 1000f), vec4<bool>(false, true, false, false), true), Struct_1(vec4<f32>(1798f, 233f, -446f, -569f), vec4<bool>(true, false, false, true), true), Struct_1(vec4<f32>(-562f, -1170f, 544f, 152f), vec4<bool>(false, false, false, false), true), Struct_1(vec4<f32>(-1561f, 612f, 2243f, -832f), vec4<bool>(false, true, true, true), false), Struct_1(vec4<f32>(714f, -1884f, -1801f, 344f), vec4<bool>(true, false, false, true), false), Struct_1(vec4<f32>(508f, -1000f, 1000f, 1520f), vec4<bool>(true, true, false, true), false), Struct_1(vec4<f32>(-164f, -1000f, -874f, -129f), vec4<bool>(false, true, false, true), true), Struct_1(vec4<f32>(-1219f, -918f, -512f, 911f), vec4<bool>(true, false, true, true), false), Struct_1(vec4<f32>(1273f, 1551f, 2512f, 1719f), vec4<bool>(true, false, true, false), true), Struct_1(vec4<f32>(1550f, 1309f, -1521f, 1027f), vec4<bool>(false, true, false, false), true), Struct_1(vec4<f32>(-249f, -2070f, -570f, 1699f), vec4<bool>(false, true, true, false), false), Struct_1(vec4<f32>(-341f, 1238f, 1170f, 612f), vec4<bool>(true, false, false, true), false), Struct_1(vec4<f32>(404f, 1620f, 1052f, 1159f), vec4<bool>(false, true, true, false), true), Struct_1(vec4<f32>(657f, -1000f, -804f, -168f), vec4<bool>(true, false, true, true), false), Struct_1(vec4<f32>(1424f, 192f, -1256f, 1563f), vec4<bool>(false, false, true, false), false), Struct_1(vec4<f32>(-2064f, -1740f, 188f, 2164f), vec4<bool>(false, true, false, false), true), Struct_1(vec4<f32>(-327f, -273f, -1219f, -918f), vec4<bool>(false, true, true, false), false), Struct_1(vec4<f32>(-469f, 137f, 583f, 544f), vec4<bool>(false, false, false, false), false), Struct_1(vec4<f32>(622f, -1295f, 150f, -1275f), vec4<bool>(false, true, true, true), true), Struct_1(vec4<f32>(-1000f, -1000f, -637f, 220f), vec4<bool>(true, false, false, false), true), Struct_1(vec4<f32>(-1000f, -1311f, 355f, 1140f), vec4<bool>(false, false, true, false), false), Struct_1(vec4<f32>(-863f, 709f, 581f, 579f), vec4<bool>(false, false, false, true), false), Struct_1(vec4<f32>(1000f, 1000f, -1696f, -1209f), vec4<bool>(true, false, true, false), true), Struct_1(vec4<f32>(1000f, 217f, 312f, -812f), vec4<bool>(false, true, true, true), false), Struct_1(vec4<f32>(-1987f, 803f, 862f, -611f), vec4<bool>(false, true, false, true), true));

var<private> global1: vec3<bool>;

var<private> global2: bool;

var<private> global3: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(0u, 10673u, 8250u, 0u), vec4<u32>(4294967295u, 1u, 8457u, 4294967295u), vec4<u32>(1u, 27527u, 70123u, 39082u), vec4<u32>(1u, 0u, 42593u, 0u), vec4<u32>(0u, 0u, 6845u, 4294967295u), vec4<u32>(45875u, 40226u, 66330u, 4294967295u), vec4<u32>(269u, 5729u, 0u, 53610u), vec4<u32>(1u, 4294967295u, 46346u, 22781u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 40876u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 71514u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(8072u, 1u, 55751u, 3308u), vec4<u32>(0u, 1u, 1u, 9083u), vec4<u32>(85809u, 1u, 1u, 4294967295u), vec4<u32>(16023u, 0u, 55048u, 0u), vec4<u32>(13034u, 90751u, 70311u, 59648u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(4294967295u, 21644u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 21699u, 34855u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec2<bool> {
    global1 = select(select(vec3<bool>(select(0u, 37775u, false) >= arg_1, all(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), true)), ~arg_1 >= _wgslsmith_dot_vec4_u32(vec4<u32>(21560u, 31838u, arg_1, arg_1), vec4<u32>(arg_1, 4294967295u, u_input.b, u_input.b))), vec3<bool>(global1.x, true, global1.x), !select(vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, true, true)), false)), !vec3<bool>(true, true, !global1.x), !(!vec3<bool>(0u < u_input.b, any(vec3<bool>(global1.x, false, global1.x)), global1.x)));
    global3 = array<vec4<u32>, 20>();
    global1 = !(!(!(!select(vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, global1.x), false))));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(4294967295u, u_input.b, 12666u, arg_1), vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b), vec4<bool>(false, false, true, true)) & _wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(u_input.b, 20u)]), ~firstLeadingBit(vec4<u32>(38019u, 15584u, 4294967295u, 1u)), true), global3[_wgslsmith_index_u32(arg_1, 20u)]) | _wgslsmith_div_u32(arg_1 ^ ~35334u, 23534u), 29u)];
    var var_1 = ~(~vec4<u32>(1u, countOneBits(u_input.b), arg_1, ~u_input.b) & (global3[_wgslsmith_index_u32(~0u, 20u)] ^ min(firstLeadingBit(vec4<u32>(arg_1, 101477u, 126845u, 63287u)), global3[_wgslsmith_index_u32(1u, 20u)])));
    return !global1.xx;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> vec4<bool> {
    global1 = !(!(!(!vec3<bool>(global1.x, true, true))));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = u_input.b < u_input.b;
    return vec4<bool>(global1.x, all(select(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1222f, -1388f, 103f), vec3<f32>(-425f, -689f, 2672f), vec3<bool>(global1.x, true, var_0))), 0u), select(!global1.yy, vec2<bool>(global1.x, global1.x), all(vec3<bool>(true, var_0, arg_2))), global1.x)), !var_0, false);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1133f, -1213f), _wgslsmith_div_f32(-379f, -363f), _wgslsmith_f_op_f32(-692f * 1000f), _wgslsmith_f_op_f32(-1405f - -154f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1054f, 816f, 224f, -450f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, 1000f, 699f, 1339f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, -1841f, -755f, 249f) + vec4<f32>(890f, -368f, 298f, -558f)))))), select(select(vec4<bool>(any(vec2<bool>(global1.x, global1.x)), true, !global1.x, global1.x | global1.x), func_2(~arg_0, _wgslsmith_add_vec4_i32(u_input.a, u_input.a), true), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.c), vec3<i32>(1i, arg_0, u_input.a.x)), select(vec4<i32>(45171i, 2147483647i, u_input.c, u_input.a.x), u_input.a, global1.x), !global1.x)), func_2(firstLeadingBit(~arg_0), firstTrailingBit(vec4<i32>(u_input.c, -17238i, u_input.a.x, u_input.c)) ^ u_input.a, all(!vec4<bool>(global1.x, global1.x, global1.x, false))), global1.x), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    let var_0 = func_1(u_input.a.x, countOneBits(min(vec4<u32>(u_input.b | 53284u, 0u, _wgslsmith_div_u32(u_input.b, u_input.b), 26268u), global3[_wgslsmith_index_u32(1u, 20u)])));
    let var_1 = ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(5720u, 20u)], vec4<u32>(u_input.b, 21217u, 0u, u_input.b)), _wgslsmith_mod_u32(u_input.b, u_input.b)), 4117u);
    global3 = array<vec4<u32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(-1965f - var_0.a.x);
    var var_3 = Struct_3(var_0, vec3<bool>(false, !all(!vec4<bool>(true, global1.x, true, true)), any(!global1.yy) | var_0.b.x));
    var_3 = Struct_3(Struct_1(var_0.a, var_0.b, select((var_1 < var_1) & false, var_3.a.b.x, func_1(u_input.a.x << (var_1 % 32u), abs(vec4<u32>(u_input.b, u_input.b, var_1, var_1))).c)), var_0.b.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-(vec2<i32>(u_input.a.x, -793i) ^ vec2<i32>(u_input.c, -1i)), firstLeadingBit(-vec2<i32>(u_input.a.x, u_input.c))) | vec2<i32>(1i, u_input.c), vec3<u32>(0u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(62663u, 36478u), var_1)), select(1u, u_input.b, func_2(2147483647i << (var_1 % 32u), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(1i, u_input.c, u_input.a.x, u_input.a.x)), func_1(u_input.c, vec4<u32>(var_1, 4294967295u, var_1, var_1)).b.x).x)));
}

