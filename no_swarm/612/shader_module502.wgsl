struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<f32> = vec4<f32>(580f, 1726f, 379f, 485f);

var<private> global2: array<Struct_4, 11>;

var<private> global3: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(330f, 297f, -249f, -1558f), vec4<f32>(150f, 521f, 1294f, 673f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), 864f));
    let var_2 = Struct_1(min(~vec4<i32>(global0.b.x, firstTrailingBit(-1i), 0i, _wgslsmith_mod_i32(-11440i, -56678i)), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(19136i), global0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -10789i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 52572i, global0.b.x)), u_input.b), select(firstLeadingBit(vec4<i32>(global0.b.x, 1i, global0.b.x, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-7160i, -23757i, u_input.b, -50122i), vec4<i32>(1444i, global0.b.x, u_input.b, 20279i)), true))), (u_input.a.xy & vec2<u32>(1u, countOneBits(u_input.a.x))) | u_input.a.zy, abs(global0.b), vec3<bool>(global0.a, all(select(!vec2<bool>(global0.a, true), select(vec2<bool>(true, false), vec2<bool>(global0.a, true), global0.a), vec2<bool>(true, true))), select(all(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true), vec2<bool>(global0.a, false))), !(arg_0.x >= 32692u), global0.a)), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, global0.a), global0.a))));
    global1 = vec4<f32>(arg_2, arg_2, _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, -2671f), _wgslsmith_f_op_f32(floor(1270f)))) + -1000f) * arg_1));
    global2 = array<Struct_4, 11>();
    return global0.b.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(440f + arg_0.x)));
    global0 = Struct_3(abs(-u_input.b) >= func_3(_wgslsmith_div_vec2_u32(u_input.a.yx, vec2<u32>(0u, 4294967295u)), var_0, _wgslsmith_div_f32(arg_0.x, -172f)), -(~_wgslsmith_mult_vec2_i32(global0.b >> (u_input.a.yz % vec2<u32>(32u)), -vec2<i32>(-1i, global0.b.x))), ~8774u);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + vec4<f32>(var_0, arg_0.x, arg_0.x, 393f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(509f + -863f), 454f, _wgslsmith_f_op_f32(arg_0.x - -1000f)), vec4<bool>(!global0.a, arg_1.x, global0.a, true)))), global3[_wgslsmith_index_u32(~(~(~(u_input.a.x >> (58072u % 32u)))), 2u)], false));
    var var_2 = ~global0.c;
    var var_3 = vec4<u32>(~_wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, global0.c, 3373u) | vec4<u32>(firstTrailingBit(u_input.a.x), firstLeadingBit(u_input.a.x), u_input.a.x, u_input.a.x), ~(~vec4<u32>(u_input.a.x, u_input.a.x, global0.c, 48232u))), global0.c, global0.c);
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(24050u, 0u, _wgslsmith_div_u32(var_3.x, global0.c), abs(var_3.x)), vec4<u32>(~var_3.x, 1u, var_3.x & u_input.a.x, _wgslsmith_add_u32(99326u, global0.c)) >> ((countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4898u, u_input.a.x)) << (~vec4<u32>(global0.c, u_input.a.x, 4294967295u, 3810u) % vec4<u32>(32u))) % vec4<u32>(32u))), 53479u & _wgslsmith_dot_vec2_u32(u_input.a.xy, var_3.wy));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    var var_0 = Struct_3(true, global0.b, 59704u);
    global1 = _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(1u, 2u)]);
    var_0 = Struct_3(select(any(select(!vec3<bool>(true, var_0.a, false), select(vec3<bool>(global0.a, var_0.a, true), vec3<bool>(false, false, global0.a), vec3<bool>(global0.a, false, var_0.a)), all(vec3<bool>(global0.a, false, global0.a)))), !(u_input.b > u_input.b) | false, u_input.a.x < ~_wgslsmith_add_u32(1u, 2661u)), var_0.b, _wgslsmith_div_u32(_wgslsmith_div_u32(global0.c, 12809u), ~func_2(global3[_wgslsmith_index_u32(1u, 2u)], vec2<bool>(var_0.a, global0.a))) >> (_wgslsmith_mod_u32(~4294967295u, ~(~u_input.a.x)) % 32u));
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 48432u, var_0.c), vec3<u32>(arg_0.x, 1u, 13511u))), firstTrailingBit(vec3<u32>(7250u, 4294967295u, 1u) & u_input.a))), 2u)];
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy - vec2<f32>(1450f, _wgslsmith_f_op_f32(-global1.x)))), vec3<bool>(var_1.x == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(-global1.x), any(vec3<bool>(true, global0.a, true)))), true, false), any(!(!(!vec3<bool>(true, var_0.a, global0.a)))), var_0.b.x, u_input.a.x);
    return arg_0.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-823f)), _wgslsmith_f_op_f32(round(-221f)), _wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(max(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1310f)), global1.x, false)));
    var var_1 = global0.a;
    var_1 = global0.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - var_0.x);
    let var_3 = select(24048i, 1i, global0.a);
    return global1.yx;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    return vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-arg_2.a.zwx, ~reverseBits(vec3<i32>(u_input.b, 21535i, 0i))), vec3<i32>(-27376i, min(~arg_2.a.x, ~13810i), ~min(arg_2.c.x, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(-27126i, -2147483647i, -33864i), reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, -1i, u_input.b), (vec3<i32>(global0.b.x, -2147483647i, u_input.b) >> (u_input.a % vec3<u32>(32u))) << (~vec3<u32>(global0.c, u_input.a.x, 27160u) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(global0.b.x, global0.b.x, -55318i))));
    let var_1 = abs(_wgslsmith_mult_vec2_u32(u_input.a.xx, ~u_input.a.xx));
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(func_4(u_input.a, func_1(~vec3<u32>(1u, u_input.a.x, 1u), -1148f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1139f, global1.x) + vec3<f32>(global1.x, -105f, global1.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.xx, vec2<i32>(var_0.x, 25705i)), min(vec2<i32>(u_input.b, global0.b.x), global0.b)), Struct_3(any(vec2<bool>(global0.a, false)), vec2<i32>(var_0.x, u_input.b) | global0.b, global0.c))), global0.a, Struct_1(-max(vec4<i32>(u_input.b, var_0.x, 2147483647i, -1i), vec4<i32>(global0.b.x, 37941i, -32124i, -46401i)), u_input.a.zy, ~global0.b, select(select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, false, false), true), vec3<bool>(global0.a, global0.a, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), global0.a)), vec2<bool>(true, all(vec2<bool>(global0.a, global0.a)))), (_wgslsmith_add_i32(global0.b.x, 1i) & _wgslsmith_mult_i32(var_0.x, global0.b.x)) != _wgslsmith_mod_i32(var_0.x, max(u_input.b, 0i))) | (~firstLeadingBit(global0.b) & var_0.xz);
    let var_3 = Struct_3(false != all(vec2<bool>(false, true)), vec2<i32>(-36032i, 1i), u_input.a.x);
    global0 = var_3;
    var var_4 = Struct_1(_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b, var_2.x, var_0.x, var_3.b.x)), ~vec4<i32>(-2147483647i, global0.b.x, 23304i, var_0.x)), -countOneBits(vec4<i32>(1i, var_3.b.x, var_3.b.x, var_2.x))), u_input.a.yz & vec2<u32>(13461u, firstTrailingBit(~global0.c)), global0.b, !vec3<bool>(select(all(vec3<bool>(false, false, global0.a)), var_3.a, var_3.a | false), !(var_3.a | false), select(false, global0.a, false) && global0.a), vec2<bool>(false, (~global0.b.x | -2147483647i) != reverseBits(abs(global0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, vec2<u32>(~(_wgslsmith_clamp_u32(10449u, var_3.c, u_input.a.x) & ~0u), 81439u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(518f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_div_f32(559f, global1.x), false))))));
}

