struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1 = Struct_1(1u, vec3<i32>(1i, -9579i, 28673i), 12593u, vec2<f32>(858f, -580f));

var<private> global2: Struct_1 = Struct_1(4732u, vec3<i32>(2147483647i, i32(-2147483648), -1i), 4294967295u, vec2<f32>(377f, -524f));

var<private> global3: vec3<f32> = vec3<f32>(-173f, 1341f, 896f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> vec4<f32> {
    global0 = array<Struct_1, 32>();
    var var_0 = arg_0;
    let var_1 = abs(_wgslsmith_add_vec2_i32(select(vec2<i32>(-1i) * -var_0.b.zz, var_0.b.yz, !arg_2.yy), var_0.b.zy));
    var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(global1.c, (global1.a << (55469u % 32u)) >> (4079u % 32u)), global2.a)), 32u)];
    global1 = arg_0;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.d.x + global2.d.x), arg_0.d.x, _wgslsmith_f_op_f32(-1000f - -344f), global3.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.x, 116f, arg_1, global2.d.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d.x, global1.d.x, 1000f, -732f))), arg_2)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec3<u32> {
    global2 = global0[_wgslsmith_index_u32(59811u, 32u)];
    let var_0 = _wgslsmith_clamp_u32(17274u, max(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(global2.a, 1u)), ~countOneBits(u_input.d.xz))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global2.a, 0u, 4294967295u), u_input.d.wwz), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.c, 0u, u_input.b), vec3<u32>(4294967295u, global1.c, global1.c))));
    global1 = Struct_1(4294967295u, abs(global2.b), max(~global1.a >> ((global2.c << (_wgslsmith_mult_u32(u_input.d.x, global1.a) % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(select(5150u, 0u, true), _wgslsmith_sub_u32(u_input.d.x, global1.a), ~var_0), _wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.d.yxx), countOneBits(u_input.d.www)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_1.x) * _wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, global1.d.x), _wgslsmith_f_op_f32(-1444f - -2088f))), global1.d.x));
    let var_1 = -firstTrailingBit(vec2<i32>(48196i | u_input.e, ~(-16486i))) ^ vec2<i32>(~_wgslsmith_mod_i32(global2.b.x, _wgslsmith_dot_vec2_i32(global1.b.zy, global2.b.xy)), _wgslsmith_sub_i32(global2.b.x, _wgslsmith_div_i32(global2.b.x, firstLeadingBit(global2.b.x))));
    var var_2 = Struct_1(global2.c, -global1.b, ~global1.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, 340f))), 1392f));
    return vec3<u32>(u_input.a, global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(var_2.c, var_0), ~8191u, countOneBits(max(4294967295u, var_2.c))), u_input.d.wwz));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = 48311i;
    let var_1 = global1.d.x;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(global1.c, 83686u), reverseBits(1u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, ~u_input.b), 0u)), 32u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_2.a, global2.a), firstLeadingBit(var_2.c), _wgslsmith_mult_u32(1u, arg_1)), func_4(arg_2, _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(0u, 32u)], 2082f, vec4<bool>(true, arg_2.x, true, arg_2.x))))), ~u_input.d.x), 32u)];
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-345f))))), arg_0, _wgslsmith_f_op_f32(sign(-124f)));
    return Struct_1(select(min(arg_1, u_input.c.x), global1.c & _wgslsmith_mod_u32(var_2.a | 132403u, arg_1), !(4294967295u == var_2.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b.x, global2.b.x, global1.b.x), firstLeadingBit(select(_wgslsmith_mult_vec3_i32(vec3<i32>(94784i, 32067i, u_input.e), vec3<i32>(global1.b.x, -1i, u_input.e)), var_2.b, true))), ~(~_wgslsmith_mult_u32(u_input.c.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(-571f + arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.d.x)), _wgslsmith_f_op_f32(select(var_2.d.x, -547f, true))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    global2 = func_2(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(floor(global1.d.x))), _wgslsmith_dot_vec4_u32(~u_input.d, u_input.d), select(arg_1.zz, arg_1.xz, !vec2<bool>(!arg_1.x, !arg_1.x)));
    var var_0 = vec3<f32>(241f, arg_0.d.x, arg_0.d.x);
    let var_1 = vec4<bool>(true, !any(select(!vec3<bool>(arg_1.x, arg_1.x, true), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, arg_1.x, true), arg_1), all(arg_1.yx))), false, false);
    return Struct_1(global2.c, vec3<i32>(1i ^ global2.b.x, ~global1.b.x, ~global2.b.x), arg_0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d * vec2<f32>(global2.d.x, global3.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-530f, 537f)))), vec2<f32>(arg_0.d.x, arg_0.d.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(u_input.d, u_input.d & ~reverseBits(u_input.d));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -375f, 1104f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, global1.d.x, 1212f) + vec3<f32>(501f, 742f, -1481f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 666f, -979f))))))));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_1 = ~((abs(var_0.yx) ^ select(u_input.d.zx, vec2<u32>(0u, global1.c), vec2<bool>(true, false))) >> (~(u_input.c.zz >> (u_input.c.xw % vec2<u32>(32u))) % vec2<u32>(32u))) >> ((~(~(var_0.zx >> (vec2<u32>(2312u, 58415u) % vec2<u32>(32u)))) & var_0.xw) % vec2<u32>(32u));
    var var_2 = func_1(Struct_1(_wgslsmith_sub_u32(22883u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(70595u, var_1.x, 61711u), var_0.wzx)), global2.b, ~53372u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.d, global1.d) - vec2<f32>(_wgslsmith_f_op_f32(global3.x + global1.d.x), _wgslsmith_div_f32(global3.x, 177f)))), vec3<bool>(true, !(_wgslsmith_f_op_f32(floor(1327f)) < _wgslsmith_f_op_f32(-global2.d.x)), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)))));
    var var_3 = global0[_wgslsmith_index_u32(~var_0.x, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(i32(-1i) * -1i, global2.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_div_f32(func_1(Struct_1(1399u, var_2.b, 6890u, vec2<f32>(111f, 805f)), vec3<bool>(false, true, false)).d.x, _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(1812f + 361f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), 184f))))), ~(vec2<u32>(firstTrailingBit(var_1.x), var_3.c) ^ u_input.d.yz), global2.b.x, global3.x);
}

