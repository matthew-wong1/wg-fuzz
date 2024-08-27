struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(58471u, 62968u, 1u, 1u, 1u, 4294967295u, 21494u, 36560u, 4294967295u, 11952u, 0u, 1u, 34646u, 137179u, 0u, 44767u, 15457u, 47124u, 1u, 1u, 0u, 3240u, 1u, 36983u, 13552u, 34812u, 1u);

var<private> global1: vec3<u32> = vec3<u32>(0u, 19997u, 4294967295u);

var<private> global2: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), 60026i), vec2<i32>(27240i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(29624i, -1i), vec2<i32>(2147483647i, -5659i), vec2<i32>(44220i, i32(-2147483648)), vec2<i32>(2147483647i, -27269i), vec2<i32>(18180i, 56078i), vec2<i32>(i32(-2147483648), -44241i), vec2<i32>(-10864i, 2147483647i), vec2<i32>(-37095i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-8443i, 2147483647i), vec2<i32>(-17921i, 22552i), vec2<i32>(-58550i, 7923i), vec2<i32>(2147483647i, -10560i), vec2<i32>(-1i, 8287i), vec2<i32>(1617i, 10277i), vec2<i32>(-12178i, 2184i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(5007i, 1i), vec2<i32>(44816i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(75688i, -2025i), vec2<i32>(i32(-2147483648), 64653i), vec2<i32>(-24463i, 2785i), vec2<i32>(i32(-2147483648), -33298i), vec2<i32>(-26244i, 2147483647i));

var<private> global3: array<vec3<f32>, 27>;

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-400f, 1073f), vec2<f32>(136f, 1110f)))))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(842f - -287f), _wgslsmith_f_op_f32(f32(-1f) * -277f)), vec2<f32>(-623f, -1811f)))));
    global0 = array<u32, 27>();
    global3 = array<vec3<f32>, 27>();
    global1 = u_input.d;
    let var_1 = Struct_4(1380f, -(10024i & ~(~u_input.c.x)), -551f);
    return u_input.d >> (~u_input.b.xxz % vec3<u32>(32u));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global2 = array<vec2<i32>, 28>();
    global3 = array<vec3<f32>, 27>();
    var var_0 = 895f;
    global1 = u_input.d;
    let var_1 = Struct_2(-1i, 482u, global2[_wgslsmith_index_u32(firstLeadingBit(0u) & u_input.d.x, 28u)]);
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = vec3<bool>(true, !all(vec3<bool>(all(vec2<bool>(arg_1, arg_2.x)), arg_2.x, any(arg_2.zz))), true);
    var var_1 = Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global4.yy, vec2<i32>(-1i, -11145i)), _wgslsmith_clamp_i32(1290i, -45084i, -14137i)), select(vec2<i32>(global4.x, u_input.c.x), u_input.c.yw, arg_2.zx)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), ~_wgslsmith_dot_vec3_u32(countOneBits(u_input.b.wxx), countOneBits(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 27u)], u_input.a)))), 27u)], ~(~(~u_input.c.xy) | (vec2<i32>(-1i) * -vec2<i32>(global4.x, -2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)) == _wgslsmith_f_op_f32(min(976f, arg_0));
    let var_3 = ~(~(-1i));
    let var_4 = Struct_3(vec2<bool>(!all(arg_2.xz), all(select(select(vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(var_0.x, var_0.x, arg_1, arg_2.x), vec4<bool>(false, var_0.x, true, arg_2.x)), vec4<bool>(var_0.x, true, true, false), true))));
    return !(!var_0.xy);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_3(vec2<bool>(true, arg_0.x));
    let var_1 = vec4<u32>(global1.x, global1.x, 4294967295u, 48517u & global1.x);
    global1 = select(vec3<u32>(~(~1043u), ~(~4294967295u), var_1.x), func_2(), !(firstTrailingBit(arg_2.x & global0[_wgslsmith_index_u32(u_input.d.x, 27u)]) <= (firstTrailingBit(arg_2.x) ^ _wgslsmith_mod_u32(u_input.a, 1u))));
    var var_2 = global0[_wgslsmith_index_u32(global1.x, 27u)];
    var var_3 = Struct_3(!func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1498f, -1116f, -781f, -645f)))), true, vec3<bool>(all(arg_0), 1i <= arg_1, false)));
    return global4.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_5(abs((58538u >> (max(global1.x, 27283u) % 32u)) >> (4294967295u % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1427f, -337f) - -960f)), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, 1084f, -1512f, 309f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(149f, -137f, -1725f, 623f))) - vec4<f32>(921f, 219f, -232f, 1195f)))), !vec3<bool>(!all(vec3<bool>(true, arg_1.x, true)), all(vec2<bool>(true, true)), any(!vec4<bool>(arg_1.x, arg_1.x, true, false))), u_input.b.x, Struct_2(-10754i, u_input.b.x, vec2<i32>(_wgslsmith_mod_i32(2147483647i, global4.x) | arg_0.x, min(_wgslsmith_dot_vec2_i32(global4.yz, vec2<i32>(global4.x, arg_0.x)), 1i))));
    var var_1 = global0[_wgslsmith_index_u32(min(~min(~u_input.a, u_input.d.x), ~_wgslsmith_mult_u32(var_0.a, global1.x)), 27u)];
    global2 = array<vec2<i32>, 28>();
    var var_2 = 21120u;
    let var_3 = ~(~(~(vec2<u32>(30429u, global1.x) << (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), global1.xy) % vec2<u32>(32u)))));
    return any(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 28>();
    global4 = _wgslsmith_div_vec3_i32(~u_input.c.zzx, -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, 0i, 0i)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(51451i, 5956i, -25081i), u_input.c.yyz), u_input.c.wzz)));
    let var_0 = func_5(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(global2[_wgslsmith_index_u32(max(4294967295u, global1.x), 28u)]), vec2<i32>(u_input.c.x, 1i) << ((vec2<u32>(4294967295u, 8551u) | global1.yz) % vec2<u32>(32u))), -2147483647i, func_1(vec4<bool>(true, true, true, true), _wgslsmith_div_i32(25109i, firstTrailingBit(u_input.c.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.x, global0[_wgslsmith_index_u32(6389u, 27u)], 1u), u_input.b)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, 1i), -(~u_input.c.x))), func_4(-2878f, true, select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, false)), true, true))));
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -151f) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(138f, -633f), vec2<f32>(1138f, 422f))))))));
    global2 = array<vec2<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(u_input.c ^ -u_input.c)));
}

