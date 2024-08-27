struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~arg_0.a;
    global2 = array<vec4<f32>, 19>();
    var var_1 = vec4<i32>(-1i) * -(~abs(vec4<i32>(-1i, 4202i, -11461i, 1i)) >> (((vec4<u32>(4294967295u, arg_0.a, 0u, 0u) << (arg_0.b % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(16600u, arg_0.b.x, 38917u, 29876u), arg_0.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = global2[_wgslsmith_index_u32(~(~1u), 19u)];
    return Struct_2(arg_0.b.x, ~arg_0.b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<u32>) -> f32 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.b.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), arg_1.a.b.b.x)), arg_1.a.a.b.x, 1506f);
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.x, 4294967295u, arg_1.a.b.d), ~vec3<u32>(arg_0.x, arg_0.x, arg_1.a.b.c.x)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 35017u, 1u), vec3<u32>(88336u, 0u, arg_2.x)), vec3<u32>(71941u, arg_1.a.a.c.x, arg_2.x) & vec3<u32>(1u, arg_0.x, arg_2.x), global0[_wgslsmith_index_u32(~40548u, 15u)]) >> (firstTrailingBit(vec3<u32>(arg_0.x, arg_0.x, 0u)) % vec3<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.x, 19341u, arg_2.x, 0u), ~vec4<u32>(arg_1.a.b.c.x, 38937u, arg_2.x, arg_1.a.b.d)), vec4<u32>(~(~arg_0.x), 29411u, func_1(Struct_2(arg_0.x, vec4<u32>(0u, arg_1.a.b.d, 4294967295u, arg_1.a.b.d))).b.x, 15511u)));
    let var_1 = !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 15u)], true);
    let var_2 = true;
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a.b.b.x)) * -957f);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_4 {
    let var_0 = 1460f;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(399f - -893f))))), var_0, _wgslsmith_f_op_f32(func_3(firstTrailingBit(abs(vec2<u32>(1u, 1u))), Struct_4(Struct_3(Struct_1(vec4<i32>(-51356i, u_input.c, -34184i, 33845i), global1.yy, vec2<u32>(40501u, 0u), 4294967295u), Struct_1(vec4<i32>(0i, arg_0, u_input.a.x, -1i), global1.zy, vec2<u32>(0u, 38460u), 0u), true)), ~vec2<u32>(~4294967295u, 29230u))));
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(7803u), _wgslsmith_clamp_u32(reverseBits(~1u), select(_wgslsmith_dot_vec2_u32(vec2<u32>(23326u, 4294967295u), vec2<u32>(54252u, 90841u)), 40796u, !(!global0[_wgslsmith_index_u32(0u, 15u)])), 25968u)), 15u)];
    global0 = array<bool, 15>();
    return Struct_4(Struct_3(Struct_1(vec4<i32>(~33176i, -2472i, arg_1, u_input.a.x), _wgslsmith_f_op_vec2_f32(sign(global1.xx)), ~vec2<u32>(1u, 1u), max(4294967295u, ~30997u)), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(round(global1.yx)), vec2<u32>(1u, 1u), 9172u), any(vec3<bool>(false, true, any(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(129943u, 15u)]))))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = true;
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(arg_0.a.b.c.x, 19u)], global2[_wgslsmith_index_u32(abs(29532u), 19u)], func_2(1i, 0i).a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.a.b.x, 197f, arg_0.a.a.b.x, 732f), global2[_wgslsmith_index_u32(8204u, 19u)], var_0)) + vec4<f32>(arg_0.a.b.b.x, 1052f, -151f, arg_0.a.b.b.x)), any(vec2<bool>(false, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1000f, 1361f, -1148f) + global2[_wgslsmith_index_u32(arg_0.a.b.c.x, 19u)]) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(750f, 908f, 736f, -866f)))))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-185f, -1702f))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-929f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-277f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-713f, arg_0.a.b.b.x)) - _wgslsmith_f_op_vec2_f32(global1.wx + vec2<f32>(202f, arg_0.a.b.b.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(1815f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -1418f))), _wgslsmith_f_op_vec2_f32(round(arg_0.a.b.b)))));
    var var_2 = select(select(!vec2<bool>(global1.x <= arg_0.a.a.b.x, var_0), !vec2<bool>(!arg_0.a.c, true), any(vec2<bool>(true, all(vec2<bool>(var_0, false))))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(13052u, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.a.d, 15u)])), vec2<bool>(false, true), any(vec4<bool>(var_0, var_0, arg_0.a.c, global0[_wgslsmith_index_u32(27379u, 15u)]))), select(select(vec2<bool>(true, true), vec2<bool>(arg_0.a.c, false), vec2<bool>(false, arg_0.a.c)), vec2<bool>(arg_0.a.c, arg_0.a.c), global0[_wgslsmith_index_u32(1u, 15u)]), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), select(true, arg_0.a.c, false))), !select(!vec2<bool>(false, arg_0.a.c), !vec2<bool>(true, arg_0.a.c), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.b.d, 15u)], global0[_wgslsmith_index_u32(arg_0.a.b.d, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_0), global0[_wgslsmith_index_u32(0u, 15u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.d, 15u)], arg_0.a.c), vec2<bool>(var_0, global0[_wgslsmith_index_u32(arg_0.a.b.d, 15u)]), false), vec2<bool>(all(vec2<bool>(false, var_0)), arg_0.a.c || true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.c.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]))), true);
    var_2 = vec2<bool>(var_2.x, arg_0.a.c);
    return -433f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(0u, ~firstLeadingBit(vec4<u32>(4294967295u, 22624u, 3078u, 57340u))));
    var var_1 = Struct_1(-u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.yy)) + vec2<f32>(_wgslsmith_f_op_f32(-399f + _wgslsmith_f_op_f32(f32(-1f) * -624f)), global1.x)), var_0.b.wx, 0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1334f)) - _wgslsmith_f_op_f32(f32(-1f) * -804f)) + global1.x), _wgslsmith_f_op_f32(func_4(func_2(u_input.b.x, countOneBits(var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-663f)))))));
    var var_3 = func_2(1i, 1i);
    let var_4 = func_2(var_1.a.x, ~(-_wgslsmith_sub_i32(u_input.a.x, 2147483647i)));
    var var_5 = !(!vec4<bool>(true, true, any(vec4<bool>(global0[_wgslsmith_index_u32(var_3.a.a.c.x, 15u)], var_4.a.c, false, true)) && true, any(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 15u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(~var_1.a.xx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2))) + _wgslsmith_f_op_vec4_f32(var_2 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, -866f, 990f, 217f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.a.b.x) * _wgslsmith_f_op_f32(248f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))))), min(_wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, func_1(var_0).b), var_0.b) | _wgslsmith_div_vec4_u32(var_0.b, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27731u, var_3.a.a.c.x, 4294967295u, var_1.d), vec4<u32>(var_3.a.b.d, 4294967295u, var_0.b.x, var_3.a.a.d)), vec4<u32>(5054u, var_0.b.x, var_3.a.b.d, var_3.a.a.c.x))));
}

