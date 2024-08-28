struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(4294967295u, 35937u, 1u)), Struct_1(vec3<u32>(20402u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 55847u, 1u)), Struct_1(vec3<u32>(44861u, 4456u, 4294967295u)), Struct_1(vec3<u32>(1u, 44692u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(0u, 84202u, 0u)), Struct_1(vec3<u32>(18230u, 17023u, 109522u)), Struct_1(vec3<u32>(18309u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(61238u, 0u, 14750u)), Struct_1(vec3<u32>(1u, 5009u, 59433u)), Struct_1(vec3<u32>(4294967295u, 33417u, 4294967295u)), Struct_1(vec3<u32>(29309u, 0u, 9700u)), Struct_1(vec3<u32>(84862u, 4294967295u, 1u)), Struct_1(vec3<u32>(5489u, 12912u, 23618u)), Struct_1(vec3<u32>(40302u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec3<u32>(5859u, 1u, 1u)), Struct_1(vec3<u32>(39354u, 1u, 1u)), Struct_1(vec3<u32>(0u, 49484u, 17625u)), Struct_1(vec3<u32>(76019u, 1u, 1u)), Struct_1(vec3<u32>(1u, 23575u, 1u)), Struct_1(vec3<u32>(45572u, 4294967295u, 50949u)), Struct_1(vec3<u32>(6545u, 0u, 0u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<bool>) -> vec3<i32> {
    let var_0 = ~(~arg_1.d.xzy);
    global1 = array<Struct_1, 27>();
    let var_1 = ~var_0.yx;
    var var_2 = vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.d, arg_1.d), _wgslsmith_div_vec4_u32(vec4<u32>(36841u, 0u, 39194u, u_input.e), arg_1.d)), ~vec4<u32>(var_0.x, 0u, 53170u, var_0.x)), ~_wgslsmith_dot_vec2_u32(~max(arg_1.e, vec2<u32>(37075u, u_input.a)), countOneBits(var_1)));
    global1 = array<Struct_1, 27>();
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-arg_1.b, min(u_input.d, arg_1.b), 2147483647i), vec3<i32>(-30321i, arg_1.b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(-2147483647i, u_input.d, arg_1.b), vec3<i32>(47336i, u_input.d, -33339i)), select(vec3<i32>(u_input.d, 39478i, -2147483647i), vec3<i32>(u_input.d, arg_1.b, 25334i), vec3<bool>(arg_2.x, arg_2.x, true))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 1i, u_input.c), vec3<i32>(43099i, 36837i, -4356i)), vec3<i32>(0i, 2147483647i, arg_1.b)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: u32) -> vec2<bool> {
    let var_0 = ~abs(83051u);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.wzx, min(max(arg_1.wzw, vec3<u32>(u_input.a, arg_2, 4294967295u) >> (arg_1.xxz % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(var_0, arg_1.x), 0u, 37772u))), 27u)]);
    let var_2 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(107030i, u_input.c), vec2<i32>(u_input.d, u_input.c)) << (vec2<u32>(var_0, 40879u) % vec2<u32>(32u)), vec2<i32>(u_input.d, u_input.c));
    let var_3 = _wgslsmith_clamp_vec2_i32(select(-(~vec2<i32>(u_input.d, -12367i)), vec2<i32>(-(var_2 << (4294967295u % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(15390i, u_input.c), u_input.c)), _wgslsmith_mod_i32(var_2, var_2) < _wgslsmith_add_i32(-2824i, reverseBits(2147483647i))), vec2<i32>(~(-u_input.d), firstTrailingBit(var_2)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.d, var_2) >> (vec2<u32>(0u, u_input.e) % vec2<u32>(32u))), -_wgslsmith_div_vec2_i32(vec2<i32>(var_2, -4335i), vec2<i32>(u_input.d, var_2)), vec2<i32>(min(u_input.c, i32(-1i) * -2147483647i), -1i)));
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(42861i, _wgslsmith_div_i32(var_2, var_2)), u_input.c, ~1730i << (1u % 32u)) ^ ~abs(vec3<i32>(1i, 2147483647i, 0i)), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(342f, 682f)))))), Struct_4(Struct_2(var_1.a), -23428i, vec4<f32>(-1113f, -295f, _wgslsmith_f_op_f32(-121f * arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, 760f))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, var_0, 1u, arg_1.x), arg_1) >> (vec4<u32>(1u, 568u, 1u, 4294967295u) % vec4<u32>(32u)), ~_wgslsmith_mod_vec2_u32(var_1.a.a.zx, vec2<u32>(arg_2, arg_1.x))), vec4<bool>(true, true, true, true)));
    return vec2<bool>(!all(vec2<bool>(true, 1u != arg_1.x)), select(false, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), false))), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    let var_0 = vec4<i32>(~1i, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(~(-1i)), u_input.c), firstTrailingBit(firstLeadingBit(min(vec2<i32>(-1i, 0i), vec2<i32>(u_input.d, -2147483647i))))), -22019i);
    var var_1 = arg_1;
    global1 = array<Struct_1, 27>();
    var var_2 = Struct_4(arg_1, -29954i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2063f, 525f, _wgslsmith_f_op_f32(-1017f - 1927f), -869f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-982f, -121f, 969f, -603f), vec4<f32>(1941f, -678f, 1492f, -904f)))))), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(16145u, 3249u), u_input.b, ~(~var_1.a.a.x), ~4294967295u), countOneBits(~vec4<u32>(4294967295u, u_input.b, 4294967295u, var_1.a.a.x))), vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.b, 4294967295u), var_1.a.a.x), _wgslsmith_mod_u32(1u, u_input.e)));
    let var_3 = Struct_3(-30239i, _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(60752u, 78987u, var_2.d.x), var_1.a.a), u_input.a, select(_wgslsmith_dot_vec3_u32(vec3<u32>(35158u, 40952u, 8428u), arg_1.a.a), var_2.d.x, true)), arg_1.a.a << (vec3<u32>(arg_1.a.a.x, _wgslsmith_mult_u32(u_input.a, 1u), var_2.a.a.a.x >> (4294967295u % 32u)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.c.x))))), _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c.x + 451f)))), _wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(floor(-589f)))))));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    var var_0 = Struct_1(arg_0.a.a.a);
    let var_1 = vec2<f32>(arg_0.c.x, 1311f);
    let var_2 = vec4<u32>(~4294967295u << ((_wgslsmith_div_u32(46768u, 21234u) | _wgslsmith_sub_u32(var_0.a.x, 0u)) % 32u), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.e.x, 43738u), max(vec3<u32>(1u, var_0.a.x, 1u), var_0.a), max(vec3<u32>(9566u, 23811u, u_input.b), var_0.a)), vec3<u32>(~41667u, min(_wgslsmith_div_u32(arg_0.e.x, 4294967295u), 4294967295u), abs(38538u))), 4294967295u, var_0.a.x);
    let var_3 = Struct_4(arg_0.a, _wgslsmith_mult_i32(arg_0.b, _wgslsmith_div_i32(u_input.c, i32(-1i) * -u_input.c)), _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(-arg_0.c), abs(var_2), 4294967295u), arg_0.a, true))), vec4<u32>(1u ^ _wgslsmith_sub_u32(arg_0.d.x, 0u), ~_wgslsmith_sub_u32(u_input.a, u_input.e), ~(~u_input.e), countOneBits(1u)), ~var_2.yw);
    global1 = array<Struct_1, 27>();
    return Struct_3(arg_0.b, var_2.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true && all(vec3<bool>(any(vec2<bool>(false, false)), false, all(vec2<bool>(false, false))));
    let var_0 = func_1(Struct_4(Struct_2(global1[_wgslsmith_index_u32(~1u, 27u)]), _wgslsmith_mod_i32(abs(-35315i), 1i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), ~(~(~vec4<u32>(u_input.a, u_input.e, 1u, 94073u))), vec2<u32>(u_input.b, ~firstLeadingBit(4294967295u))));
    global0 = true;
    var var_1 = abs(50967u);
    var var_2 = var_0;
    global0 = (!(true || all(vec4<bool>(false, false, true, false))) || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(1311f * 725f), _wgslsmith_f_op_f32(f32(-1f) * -1945f)) < _wgslsmith_f_op_f32(step(-547f, _wgslsmith_f_op_f32(-1133f * 1044f))))) || (!any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)) | true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-332f, -245f), _wgslsmith_f_op_f32(max(332f, -635f)), _wgslsmith_div_f32(-1446f, 1464f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -1576f, -232f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, 1000f, 1450f)))))), -18835i);
}

