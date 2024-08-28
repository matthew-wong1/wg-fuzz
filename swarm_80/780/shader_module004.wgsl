struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<vec2<u32>, 6>;

var<private> global3: array<vec3<u32>, 3>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> u32 {
    global2 = array<vec2<u32>, 6>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 8u)];
    var var_1 = Struct_2(var_0.a, var_0.b);
    let var_2 = Struct_1(-vec2<i32>(0i, global4.a.x));
    let var_3 = u_input.d.x;
    return global0.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: bool) -> vec4<u32> {
    let var_0 = Struct_1(global4.a);
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a, 1u), 3u)];
    global3 = array<vec3<u32>, 3>();
    let var_1 = 12210u;
    var var_2 = Struct_1(vec2<i32>(~_wgslsmith_mult_i32(~2147483647i, ~arg_2), 8864i));
    return ~vec4<u32>(4294967295u & ~max(global0.x, 1u), 114608u, func_3(select(vec4<bool>(false, true, arg_3, true), vec4<bool>(false, arg_1.x, arg_0.b, arg_1.x), arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, -724f, 2161f, -1779f))) >> (_wgslsmith_div_u32(4294967295u & u_input.a, 1832u) % 32u), 0u);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    global1 = array<Struct_2, 8>();
    var var_0 = arg_0;
    var var_1 = !all(select(vec3<bool>(!var_0.b, true, var_0.b), select(select(vec3<bool>(var_0.b, arg_0.b, true), vec3<bool>(var_0.b, arg_0.b, true), vec3<bool>(arg_0.b, var_0.b, arg_0.b)), vec3<bool>(false, true, arg_0.b), any(vec3<bool>(false, false, false))), false || !var_0.b));
    global0 = select(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(13237u, global0.x, 0u), 3u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, _wgslsmith_sub_u32(arg_1, 0u), _wgslsmith_mult_u32(arg_1, 16765u))), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_1, _wgslsmith_add_u32(var_0.a, 69001u)), 3u)]), 3u)], !(!select(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), arg_0.b), select(vec3<bool>(true, arg_0.b, true), vec3<bool>(arg_0.b, var_0.b, var_0.b), vec3<bool>(arg_0.b, var_0.b, var_0.b)), true)));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(firstTrailingBit(vec4<u32>(global0.x, u_input.c, 58999u, var_0.a))), ~vec4<u32>(var_0.a, 0u, 0u, var_0.a)), vec4<u32>(~(~81212u), _wgslsmith_mult_u32(arg_1 >> (arg_1 % 32u), abs(0u)), 0u, firstLeadingBit(79615u))) ^ min(firstTrailingBit(abs(firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)))), vec4<u32>(~global0.x, u_input.c, u_input.a, 4294967295u));
    return Struct_2(firstTrailingBit(4294967295u), all(!vec2<bool>(true, all(vec4<bool>(var_0.b, true, arg_0.b, arg_0.b)))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = u_input.a;
    var var_1 = 23603i ^ ~reverseBits(u_input.d.x);
    let var_2 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global0.x, var_0, ~(u_input.a << (var_0 % 32u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 4294967295u, 6945u, 3830u), func_2(global1[_wgslsmith_index_u32(25560u, 8u)], vec2<bool>(false, arg_0), 52702i, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(6297u, 42944u, var_0, 27454u), vec4<u32>(u_input.a, 25419u, 45659u, var_0)), vec4<u32>(0u, u_input.a, 59839u, global0.x)))), 8u)], _wgslsmith_add_u32(var_0, 4294967295u) & countOneBits(34778u), vec4<i32>(firstTrailingBit(-1i), -global4.a.x, global4.a.x, _wgslsmith_clamp_i32(57197i, ~(-71490i), _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.x, global4.a.x, u_input.b.x, global4.a.x), u_input.b)))));
    global2 = array<vec2<u32>, 6>();
    var var_3 = select(!select(select(vec4<bool>(false, false, var_2.b, var_2.b), select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_2.b, var_2.b, arg_0), vec4<bool>(arg_0, arg_0, var_2.b, true)), !vec4<bool>(false, false, var_2.b, var_2.b)), vec4<bool>(false, select(arg_0, arg_0, arg_0), all(vec2<bool>(true, var_2.b)), 1i >= global4.a.x), vec4<bool>(arg_0, !var_2.b, false, true)), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, false, var_2.b, arg_0), !vec4<bool>(var_2.b, true, arg_0, arg_0)), !vec4<bool>(true, arg_0, var_2.b, false), vec4<bool>(true, false, true, global4.a.x == -101866i)), vec4<bool>(arg_0, any(vec3<bool>(!arg_0, true, any(vec4<bool>(true, false, arg_0, arg_0)))), !(4691u != _wgslsmith_add_u32(global0.x, 53999u)), all(!(!vec4<bool>(arg_0, true, arg_0, false)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    let var_0 = select(14460u, global0.x, (_wgslsmith_f_op_f32(floor(-1424f)) <= _wgslsmith_f_op_f32(sign(-944f))) && func_1(global0.x > 0u)) | u_input.c;
    global3 = array<vec3<u32>, 3>();
    let var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.x, u_input.d.x), _wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(global4.a, vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(-2147483647i, u_input.d.x) ^ global4.a));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(select(global4.a, ~(~u_input.b.ww), func_1(false)), _wgslsmith_add_vec2_i32(u_input.d.xy, abs(select(vec2<i32>(global4.a.x, 2147483647i), vec2<i32>(var_1, -2147483647i), false))), vec2<i32>(abs(-1i), ~11328i | u_input.d.x)));
    let var_3 = 1u;
    var var_4 = func_4(func_4(global1[_wgslsmith_index_u32(global0.x, 8u)], 0u, -u_input.b), ~0u, u_input.b);
    let var_5 = !(!vec3<bool>(false, true, var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(-12695i, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, ~u_input.a, _wgslsmith_div_u32(var_4.a, global0.x), _wgslsmith_add_u32(1u, 11439u)), countOneBits(firstLeadingBit(vec4<u32>(u_input.c, global0.x, var_3, 18240u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1596f + _wgslsmith_f_op_f32(-1046f + 114f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(f32(-1f) * -713f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1771f), 841f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1933f, 1407f, 1358f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -254f, -1324f) + vec3<f32>(-799f, -1769f, -432f)) + vec3<f32>(1844f, -1325f, 1000f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-968f, 1097f, -170f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1903f, -345f, 547f))), !vec3<bool>(false, false, var_4.b))))));
}

