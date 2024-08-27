struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(25289i, vec4<f32>(1000f, 1455f, 556f, 2377f), false, vec4<f32>(-1000f, 236f, -655f, 217f), vec3<i32>(0i, 1i, 1i)), Struct_1(10563i, vec4<f32>(-1261f, -1820f, 335f, 1592f), true, vec4<f32>(1108f, 1584f, 321f, 743f), vec3<i32>(-28322i, 24387i, 1i)), Struct_1(-58699i, vec4<f32>(-1688f, -124f, 1123f, -217f), false, vec4<f32>(-1000f, -1000f, 301f, 324f), vec3<i32>(1i, 7664i, i32(-2147483648))), Struct_1(2147483647i, vec4<f32>(561f, 399f, 779f, 1825f), false, vec4<f32>(-1590f, -342f, -812f, -462f), vec3<i32>(41385i, i32(-2147483648), 2147483647i)), Struct_1(2147483647i, vec4<f32>(-753f, -817f, -1181f, -2290f), true, vec4<f32>(1030f, 549f, -234f, -864f), vec3<i32>(-1i, -27793i, 0i)));

var<private> global1: f32;

var<private> global2: array<i32, 5> = array<i32, 5>(-1i, 40164i, -40376i, i32(-2147483648), 15439i);

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 29374u);

var<private> global4: array<f32, 20> = array<f32, 20>(450f, 806f, -364f, 350f, 727f, -1268f, -837f, -433f, 516f, 385f, -435f, 1000f, 3151f, -2332f, -990f, -1334f, -1472f, 176f, -422f, 174f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(arg_0), 5u)];
    global1 = -687f;
    var var_1 = Struct_1(~(-3405i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.x, 82458u, 4294967295u), 20u)], var_0.b.x, _wgslsmith_f_op_f32(select(-270f, -1091f, true))))))), arg_1, var_0.d, -vec3<i32>(-19181i, firstLeadingBit(var_0.a), max(-2147483647i, var_0.a)) | abs(abs(var_0.e)));
    var var_2 = Struct_1(11562i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1720f)), -274f, 567f, var_1.b.x) + _wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.d + var_0.d))))), var_1.c, var_0.b, reverseBits(-(-vec3<i32>(global2[_wgslsmith_index_u32(global3.x, 5u)], 0i, -10690i) >> ((vec3<u32>(10334u, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, 1u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_3 = vec4<i32>(~select(_wgslsmith_dot_vec2_i32(var_1.e.yx, vec2<i32>(1i, 7829i)), global2[_wgslsmith_index_u32(57861u, 5u)], true), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(84347u, 5u)], var_0.e.x, 2147483647i, var_0.a), vec4<i32>(9723i, -35871i, -38447i, global2[_wgslsmith_index_u32(57394u, 5u)])), var_1.a, var_1.a) | max(select(max(~vec4<i32>(1942i, -2147483647i, global2[_wgslsmith_index_u32(u_input.c, 5u)], -4548i), firstLeadingBit(vec4<i32>(6578i, -1i, -3400i, 2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_1.e.x, 1i, -20584i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 5u)], -25151i, var_0.e.x, var_0.e.x)), vec4<bool>(any(vec3<bool>(true, var_1.c, var_0.c)), true, false, true)), countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, var_1.e.x, 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 5u)], var_1.a, var_1.a, var_2.e.x))));
    return _wgslsmith_f_op_f32(-var_1.b.x);
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(func_3(global3.x, all(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 20u)] != global4[_wgslsmith_index_u32(1431u, 20u)], arg_0.c, false))));
    var var_0 = Struct_1(arg_0.e.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(1000f - global4[_wgslsmith_index_u32(global3.x, 20u)]), _wgslsmith_f_op_f32(-arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(arg_0.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, -1050f, global4[_wgslsmith_index_u32(global3.x, 20u)], arg_0.b.x)))), arg_0.d, !(!(!vec4<bool>(true, true, false, arg_0.c))))), -global2[_wgslsmith_index_u32(0u, 5u)] <= global2[_wgslsmith_index_u32(u_input.a.x, 5u)], _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.d)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d), arg_0.d)))), arg_0.e);
    let var_1 = !(arg_0.d.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, -285f)))));
    let var_2 = Struct_1(abs(firstTrailingBit(~35501i)) | min(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 2147483647i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(161f, _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(step(var_0.b.x, -504f)), -938f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(507f, global4[_wgslsmith_index_u32(u_input.b, 20u)]))), _wgslsmith_f_op_f32(func_3(firstTrailingBit(1u), arg_0.c)), 943f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-897f + -338f))), vec4<bool>(true, arg_0.c, 4294967295u >= global3.x, all(vec3<bool>(true, true, true))))), (false & any(!vec2<bool>(var_0.c, true))) || true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) - _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(var_0.b.x, global4[_wgslsmith_index_u32(1u, 20u)], -1000f, global4[_wgslsmith_index_u32(u_input.b, 20u)]))))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-4091i, countOneBits(-43267i), 42572i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, arg_0.a, 13040i), _wgslsmith_clamp_vec3_i32(var_0.e, arg_0.e, var_0.e))));
    var_0 = arg_0;
    return vec2<f32>(-1749f, 801f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = !vec2<bool>(false, 141583u >= global3.x);
    let var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~min(-vec3<i32>(global2[_wgslsmith_index_u32(3286u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], 2147483647i), firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(0u, 5u)], 7652i, global2[_wgslsmith_index_u32(4294967295u, 5u)])))), vec3<i32>(-1i) * -(~firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], -54669i, global2[_wgslsmith_index_u32(u_input.c, 5u)]))));
    global2 = array<i32, 5>();
    let var_2 = Struct_1(-14042i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), global4[_wgslsmith_index_u32(select(54335u, global3.x, arg_2), 20u)], 630f, _wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2037f, global4[_wgslsmith_index_u32(global3.x, 20u)], 728f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.a.x, 20u)], global4[_wgslsmith_index_u32(4935u, 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -260f), -226f, _wgslsmith_f_op_f32(f32(-1f) * -448f)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-964f, 245f, global4[_wgslsmith_index_u32(0u, 20u)], arg_0.x)) * vec4<f32>(876f, -603f, 821f, -1535f)))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-global2[_wgslsmith_index_u32(0u, 5u)], -1i & var_1), 4972i), -var_1, -countOneBits(global2[_wgslsmith_index_u32(~u_input.b, 5u)])));
    global0 = array<Struct_1, 5>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(~u_input.c, ~(~u_input.c)), global3.x, ~u_input.a.x), 5u)];
}

fn func_1() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(global3.x, 5u)];
    var var_1 = global2[_wgslsmith_index_u32(global3.x, 5u)];
    global1 = -1177f;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(22012u, 5u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.d.x, -570f)))) * var_0.b.wwy), ~_wgslsmith_clamp_u32(72116u, 43803u, abs(61993u)) < _wgslsmith_mod_u32(u_input.b, global3.x));
    let var_3 = var_2;
    return (_wgslsmith_dot_vec3_u32(u_input.a.xwx, abs(~vec3<u32>(4294967295u, 39915u, 29635u))) << (~(~(~u_input.a.x)) % 32u)) ^ u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-669f, _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 20u)])), 1f, _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(u_input.b, 20u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global3.x), 20u)]))))), global4[_wgslsmith_index_u32(func_1(), 20u)] <= _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 20u)] + 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 20u)], -1000f, global4[_wgslsmith_index_u32(u_input.b, 20u)], 2645f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(217f, -2436f, global4[_wgslsmith_index_u32(0u, 20u)], 810f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1133f, -807f, global4[_wgslsmith_index_u32(u_input.a.x, 20u)], -385f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(global3.x, 20u)], global4[_wgslsmith_index_u32(4294967295u, 20u)], global4[_wgslsmith_index_u32(24545u, 20u)], global4[_wgslsmith_index_u32(u_input.b, 20u)]))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-470f, 242f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.x, 20u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(1u, 20u)], 1064f, global4[_wgslsmith_index_u32(1u, 20u)], 2268f) + vec4<f32>(global4[_wgslsmith_index_u32(global3.x, 20u)], global4[_wgslsmith_index_u32(37762u, 20u)], -1000f, global4[_wgslsmith_index_u32(global3.x, 20u)]))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(false, true, true))))), ~(-_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global3.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)]), vec3<i32>(-1i, global2[_wgslsmith_index_u32(global3.x, 5u)], global2[_wgslsmith_index_u32(17095u, 5u)])), vec3<i32>(-10945i, -2147483647i, global2[_wgslsmith_index_u32(global3.x, 5u)]))));
    var var_1 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~u_input.b, 20u)] + 315f);
    var var_2 = Struct_1(-2147483647i | -(1i | var_0.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2873f, global4[_wgslsmith_index_u32(u_input.c, 20u)])), 1831f, global4[_wgslsmith_index_u32(31362u, 20u)], global4[_wgslsmith_index_u32(7448u, 20u)]))), var_0.c, var_0.b, var_0.e);
    global4 = array<f32, 20>();
    global2 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_i32(-select(var_0.e.zy, var_2.e.zz, false), vec2<i32>(~659i, firstLeadingBit(var_0.e.x))), global2[_wgslsmith_index_u32(u_input.b, 5u)]), u_input.a.zyz, abs(select(max(vec4<i32>(1i, 24792i, var_2.a, 69969i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, var_0.e.x, 0i, var_0.a) >> (u_input.a % vec4<u32>(32u))), -(vec4<i32>(var_0.e.x, 29592i, -14794i, global2[_wgslsmith_index_u32(1u, 5u)]) ^ vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(global3.x, 5u)], -1161i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)])), (global2[_wgslsmith_index_u32(3185u, 5u)] >= var_0.e.x) | all(vec2<bool>(var_2.c, false)))), var_0.e.zx);
}

