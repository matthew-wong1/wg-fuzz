struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(4294967295u, 1u), vec2<u32>(16564u, 0u));

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<vec3<bool>, 4>;

var<private> global3: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = reverseBits(27566i);
    let var_1 = Struct_1(u_input.b < ~(~abs(0u)), arg_0.b);
    global0 = array<vec2<u32>, 2>();
    var var_2 = u_input.c;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(u_input.b, u_input.b, var_1.a), min(u_input.d, u_input.b)), 2u)], min(countOneBits(global0[_wgslsmith_index_u32(1u, 2u)]), ~vec2<u32>(u_input.d, u_input.b)))), 0u), 30u)];
    return var_1.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(min(-988f, 1563f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(all(vec4<bool>(arg_0.a, false, true, arg_2.a)), _wgslsmith_f_op_vec2_f32(abs(arg_0.b))), 0i)), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global3.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))))), _wgslsmith_f_op_f32(-2258f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1349f - 517f), 618f))), arg_0.b.x);
    let var_2 = u_input.b & 11503u;
    let var_3 = !arg_2.a;
    return Struct_1(arg_0.a, vec2<f32>(1407f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = vec2<bool>(all(select(!(!vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true)), select(vec4<bool>(false, arg_2.a, false, true), !vec4<bool>(arg_0.a, false, arg_2.a, true), !vec4<bool>(false, true, false, arg_2.a)), !(arg_2.a | arg_1.a))), _wgslsmith_div_i32(~(-u_input.c.x), u_input.a) < firstTrailingBit(u_input.a));
    var var_1 = -u_input.c.xww;
    global1 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(481f * func_2(arg_2, vec3<bool>(arg_2.a, arg_2.a, false), Struct_1(var_0.x, arg_2.b)).b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(select(global3.x, 401f, false)), true)) - 313f)), -435f);
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(-var_1.x, max(14467i, u_input.c.x))), countOneBits(-u_input.e.zw)) & u_input.e.xw;
    return abs(reverseBits(arg_3 | arg_3));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = (~((vec4<u32>(u_input.b, u_input.d, 0u, 0u) >> (vec4<u32>(u_input.d, u_input.b, 34356u, u_input.d) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 25094u, 0u, u_input.d), vec4<u32>(u_input.d, 0u, 0u, u_input.b)) % vec4<u32>(32u))) | ~(~vec4<u32>(u_input.b, u_input.b, 10496u, 23054u))) & (func_4(arg_1, func_2(Struct_1(arg_0.x, vec2<f32>(global3.x, global3.x)), !global2[_wgslsmith_index_u32(67477u, 4u)], Struct_1(true, vec2<f32>(-2026f, global3.x))), func_2(Struct_1(arg_0.x, arg_1.b), select(global2[_wgslsmith_index_u32(1u, 4u)], vec3<bool>(arg_1.a, false, true), true), global1[_wgslsmith_index_u32(~u_input.d, 30u)]), vec4<u32>(1u, ~1u, _wgslsmith_mod_u32(9235u, 4294967295u), select(u_input.d, u_input.b, arg_1.a))) ^ ~(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.d) & max(vec4<u32>(u_input.b, 71504u, 19632u, u_input.b), vec4<u32>(0u, u_input.d, u_input.b, u_input.b))));
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, 29527u, var_0.x, 1u), abs(vec4<u32>(43757u, var_0.x, var_0.x, 101965u) ^ vec4<u32>(4294967295u, u_input.b, 32362u, 67629u))), vec4<u32>(u_input.b, 21072u, var_0.x, u_input.d)) & func_4(global1[_wgslsmith_index_u32(u_input.b | countOneBits(u_input.b), 30u)], func_2(func_2(Struct_1(arg_0.x, global3.wx), select(global2[_wgslsmith_index_u32(59945u, 4u)], global2[_wgslsmith_index_u32(u_input.d, 4u)], global2[_wgslsmith_index_u32(u_input.d, 4u)]), Struct_1(true, global3.xw)), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 332f) + arg_1.b))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x, ~4294967295u), 30u)], !(!global2[_wgslsmith_index_u32(u_input.d, 4u)]), func_2(func_2(Struct_1(false, global3.yz), global2[_wgslsmith_index_u32(4016u, 4u)], arg_1), global2[_wgslsmith_index_u32(countOneBits(var_0.x), 4u)], Struct_1(arg_0.x, arg_1.b))), ~func_4(Struct_1(true, vec2<f32>(arg_1.b.x, global3.x)), arg_1, global1[_wgslsmith_index_u32(min(1u, u_input.d), 30u)], vec4<u32>(var_0.x, var_0.x, u_input.d, 4294967295u)));
    global0 = array<vec2<u32>, 2>();
    global1 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(global3.x, global3.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.zw), _wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(-1258f, 910f)))), func_2(arg_1, vec3<bool>(true, arg_1.a, true), func_2(Struct_1(true, arg_1.b), !global2[_wgslsmith_index_u32(u_input.b, 4u)], func_2(arg_1, vec3<bool>(false, arg_1.a, false), Struct_1(true, vec2<f32>(global3.x, global3.x))))).b) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1021f, _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-896f, 361f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-277f)), _wgslsmith_f_op_f32(arg_1.b.x * 913f))))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 4>();
    var var_0 = !global2[_wgslsmith_index_u32(~abs(~26890u) << (_wgslsmith_mod_u32(~(~u_input.b), 0u) % 32u), 4u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) - _wgslsmith_f_op_f32(f32(-1f) * -804f));
    let var_2 = global1[_wgslsmith_index_u32(u_input.d ^ _wgslsmith_clamp_u32(~abs(u_input.d) << (_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(9882u, 23582u, u_input.b))) % 32u), 1u, ~u_input.b), 30u)];
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(968f * _wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, false), var_0.xz, true), !var_0.zy), global1[_wgslsmith_index_u32(13393u, 30u)])))));
    var var_4 = ((min(vec3<i32>(u_input.a, u_input.a, u_input.e.x), ~u_input.e.wyw) | -vec3<i32>(-3822i, 0i, -2147483647i)) & u_input.e.xxx) | abs(vec3<i32>(u_input.e.x, ~u_input.e.x << (u_input.b % 32u), ~_wgslsmith_mod_i32(u_input.e.x, 3722i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, u_input.b), countOneBits(vec2<u32>(u_input.b, u_input.b))), select(~abs(vec2<u32>(u_input.b, u_input.d)), ~select(vec2<u32>(17280u, u_input.b), vec2<u32>(u_input.d, u_input.b), var_0.x), select(select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), true), var_0.yx, select(var_0.xy, vec2<bool>(false, var_0.x), var_2.a)))), countOneBits(abs(u_input.c) >> (vec4<u32>(36896u, u_input.b, u_input.b, u_input.d) % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.d), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, 0u))) % vec4<u32>(32u)), select(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.d, u_input.b))), vec3<u32>(u_input.b, min(~0u, ~43721u), ~u_input.d ^ 4294967295u), any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(6244u, u_input.d), 4u)])));
}

