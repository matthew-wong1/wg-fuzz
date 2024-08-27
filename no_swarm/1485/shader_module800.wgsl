struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 22>;

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    return arg_2;
}

fn func_2() -> Struct_1 {
    global2 = array<vec3<f32>, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, u_input.b, 17524i), Struct_1(u_input.a, 7384i, true), -1000f, global0.yz)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)), 611f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2029f)))));
    let var_1 = countOneBits(~vec4<u32>(reverseBits(0u), 4981u, _wgslsmith_div_u32(~u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, 13959u))), _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.a.x, u_input.d.x, u_input.c, u_input.c))));
    global1 = array<i32, 22>();
    global1 = array<i32, 22>();
    return Struct_1(vec3<u32>(var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_1, u_input.d), countOneBits(vec4<u32>(4294967295u, var_1.x, 6430u, var_1.x))) ^ ~reverseBits(0u), var_1.x), i32(-1i) * -_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, u_input.b, 24702i), ~vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 22u)], u_input.b, global0.x)), !(!(true && select(false, true, false))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = ~(arg_0.b & -2147483647i);
    let var_1 = global3[_wgslsmith_index_u32(~(~(~u_input.e.x)), 3u)];
    var var_2 = func_2();
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.a.x, 38683u), ~(~var_1.a.zz)), ~vec2<u32>(var_1.a.x, ~u_input.c)), 49917u, var_1.a.x, ~arg_0.a.x << (~(~_wgslsmith_mod_u32(30952u, u_input.e.x)) % 32u));
    let var_4 = min(vec4<i32>(-23932i, abs(1i) | var_2.b, -64991i, arg_1.b), ~((vec4<i32>(-1i) * -vec4<i32>(var_2.b, var_0, 0i, -1256i)) >> (min(min(vec4<u32>(34186u, var_2.a.x, arg_1.a.x, arg_0.a.x), vec4<u32>(1u, 1u, arg_1.a.x, var_1.a.x)), u_input.e) % vec4<u32>(32u))));
    return Struct_1(~(~var_2.a ^ ~var_3.yyz) >> ((~vec3<u32>(0u, 23991u, u_input.a.x) & reverseBits(select(vec3<u32>(u_input.c, 3192u, 85643u), u_input.a, vec3<bool>(var_1.c, true, false)))) % vec3<u32>(32u)), 13680i, !(!all(!vec2<bool>(arg_0.c, arg_1.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-110f)) * 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1015f) + _wgslsmith_f_op_f32(f32(-1f) * -1619f))))) + _wgslsmith_f_op_f32(floor(1445f)));
    var var_1 = Struct_1(~countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.a.x, 16738u, arg_1.a.x), ~vec3<u32>(2650u, arg_1.a.x, arg_1.a.x))), max(_wgslsmith_mod_i32(min(-12279i, global0.x), 15825i), 0i) >> (arg_1.a.x % 32u), !all(select(vec2<bool>(arg_3, arg_1.c), select(vec2<bool>(arg_0.c, arg_2), vec2<bool>(false, arg_3), vec2<bool>(arg_1.c, true)), any(vec3<bool>(arg_3, true, true)))));
    var var_2 = func_1(func_2(), arg_0, !vec3<bool>(true, var_1.c, arg_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(func_3(vec3<i32>(var_1.b, arg_1.b, 1i), Struct_1(vec3<u32>(arg_0.a.x, arg_0.a.x, 0u), 0i, true), var_0, global0.zy)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0)))));
    let var_3 = Struct_1(arg_1.a ^ (vec3<u32>(arg_0.a.x, firstTrailingBit(0u), firstTrailingBit(22923u)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_1.a.x, arg_0.a.x), vec3<u32>(var_1.a.x, u_input.e.x, u_input.c)) % vec3<u32>(32u))), -2147483647i, func_1(func_1(arg_1, func_2(), vec3<bool>(true, all(vec3<bool>(arg_2, true, arg_0.c)), any(vec2<bool>(var_2.c, arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -500f))), arg_0, select(select(vec3<bool>(arg_1.c, arg_1.c, arg_2), vec3<bool>(true, arg_2, true), !vec3<bool>(false, var_2.c, false)), !select(vec3<bool>(true, var_2.c, var_1.c), vec3<bool>(arg_1.c, var_1.c, arg_3), vec3<bool>(var_2.c, arg_2, true)), true), vec4<f32>(var_0, _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_div_f32(1023f, _wgslsmith_f_op_f32(-1000f - var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(983f + -658f), var_0)))).c);
    var var_4 = ~abs(_wgslsmith_div_vec4_u32(~u_input.d, vec4<u32>(var_1.a.x, var_1.a.x, arg_0.a.x, arg_1.a.x)) ^ select(~vec4<u32>(arg_0.a.x, var_1.a.x, 45233u, 25900u), u_input.d, select(vec4<bool>(var_3.c, arg_3, true, var_2.c), vec4<bool>(true, true, true, arg_3), true)));
    return Struct_1(~reverseBits(vec3<u32>(abs(110765u), 39663u, max(4294967295u, u_input.d.x))), 14432i, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d.xyz, -59724i, false);
    var var_1 = global0.x;
    global0 = vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 22u)], firstTrailingBit(-2147483647i), global0.x);
    var var_2 = vec2<u32>(var_0.a.x, 1u);
    global2 = array<vec3<f32>, 25>();
    let var_3 = func_4(func_1(global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(~1u, 3u)], select(select(vec3<bool>(var_0.c, var_0.c, var_0.c), !vec3<bool>(true, true, var_0.c), select(vec3<bool>(false, true, false), vec3<bool>(true, true, var_0.c), var_0.c)), !vec3<bool>(var_0.c, var_0.c, true), select(!vec3<bool>(var_0.c, false, var_0.c), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, false, var_0.c), vec3<bool>(false, var_0.c, true)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(392f, -1547f, 856f, 797f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(175f, -554f, 709f, 288f), vec4<f32>(1000f, 540f, -455f, -670f), false))))), global3[_wgslsmith_index_u32(0u, 3u)], all(select(vec4<bool>(true, true, !var_0.c, all(vec4<bool>(var_0.c, var_0.c, true, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_0.c, var_0.c, false), vec4<bool>(var_0.c, true, false, true)), !vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), select(vec4<bool>(true, false, false, var_0.c), vec4<bool>(var_0.c, false, false, true), vec4<bool>(true, false, var_0.c, false))), !(!vec4<bool>(false, false, var_0.c, var_0.c)))), any(vec2<bool>(all(!vec3<bool>(var_0.c, var_0.c, var_0.c)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, -20583i, u_input.b), vec3<i32>(1i, -global0.x, firstTrailingBit(u_input.b))), ~(~vec2<u32>(var_2.x, ~u_input.d.x)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, max(vec4<u32>(var_0.a.x, 1u, var_2.x, 1u), u_input.e)), abs(var_3.a.x >> (0u % 32u)), func_2().a.x, var_2.x), ~(~u_input.a), max(max(countOneBits(vec4<u32>(4294967295u, 1u, 98932u, 0u)), u_input.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(64053u, 13575u, var_3.a.x, 1u), ~u_input.d | vec4<u32>(u_input.c, var_0.a.x, 4294967295u, 4294967295u))));
}

