struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(29893u, 1u, 46609u), vec3<u32>(34178u, 65723u, 4294967295u), vec3<u32>(47235u, 30985u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 10704u), vec3<u32>(1u, 35580u, 98795u), vec3<u32>(10394u, 26163u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 38933u, 0u), vec3<u32>(4294967295u, 16448u, 4294967295u), vec3<u32>(4294967295u, 0u, 14905u), vec3<u32>(4172u, 12359u, 15195u), vec3<u32>(3200u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 48018u), vec3<u32>(10773u, 0u, 18594u), vec3<u32>(4294967295u, 70691u, 1u), vec3<u32>(18381u, 26572u, 54062u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 39605u, 0u), vec3<u32>(26126u, 4294967295u, 4294967295u), vec3<u32>(15387u, 6442u, 51903u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(43715u, 1u, 46919u));

var<private> global3: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global4: i32 = 12431i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = vec3<u32>(arg_0.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(42205u, arg_0.x, 1u) >> (vec3<u32>(0u, global0.a.x, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(global0.b.yyx, global2[_wgslsmith_index_u32(14274u, 27u)])), global0.a.x), arg_0.x), ~0u);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(global0.c + -891f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(-535f)), 1508f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(select(global0.c, global0.c, true))), global0.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, global0.c)))))));
    let var_2 = Struct_2(-21326i, Struct_1(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_0.x, global0.a.x)), global0.b.yw ^ _wgslsmith_sub_vec2_u32(global0.a, vec2<u32>(var_0.x, var_0.x))), select(min(vec4<u32>(global0.b.x, 0u, 4294967295u, var_0.x), _wgslsmith_add_vec4_u32(global0.b, global0.b)), reverseBits(countOneBits(vec4<u32>(1u, global0.b.x, 698u, 4294967295u))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), global0.c), ~(-vec4<i32>(~u_input.a, u_input.a, 32198i, -64114i)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(round(454f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-296f - global0.c), _wgslsmith_f_op_f32(sign(-671f))), all(vec2<bool>(true, true))))), _wgslsmith_div_f32(-209f, 483f), 311f);
    global1 = u_input.a;
    return true;
}

fn func_2() -> vec4<u32> {
    global4 = -_wgslsmith_clamp_i32(abs(~(~u_input.a)), u_input.a, u_input.a);
    var var_0 = global0.c;
    let var_1 = select(!vec2<bool>(false, !func_3(global0.b.wx)), vec2<bool>(false, false), any(select(select(select(vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(0u, 12u)], true), global3[_wgslsmith_index_u32(19578u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(true, true, false), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c + 536f), global0.c));
    global3 = array<vec3<bool>, 12>();
    return global0.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global0.b.x > global0.b.x;
    var_0 = arg_0;
    global1 = u_input.a;
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global0.b.x, 27u)], global2[_wgslsmith_index_u32(137u, 27u)])), firstTrailingBit(reverseBits(global0.a.x))) << (4294967295u % 32u), ~(~1u));
    global3 = array<vec3<bool>, 12>();
    return Struct_1(abs(global0.b.ww), func_2(), _wgslsmith_f_op_f32(-125f - 780f));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global3 = array<vec3<bool>, 12>();
    let var_0 = vec3<bool>(!(!arg_0.a.x), any(vec2<bool>(true, !(!arg_0.a.x))), arg_0.a.x && (!arg_0.a.x || arg_0.a.x));
    let var_1 = Struct_2(-arg_1.x, arg_2, abs(-(~(~vec4<i32>(2147483647i, 1i, arg_1.x, 12661i)))));
    global3 = array<vec3<bool>, 12>();
    global1 = _wgslsmith_clamp_i32(var_1.a, firstLeadingBit(-abs(abs(u_input.a))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_1.c.x, 16393i, arg_1.x, u_input.a) & vec4<i32>(-1i, 65820i, u_input.a, u_input.a)), -var_1.c) << (select(~arg_2.a.x, (global0.b.x | 16210u) ^ ~4294967295u, false) % 32u));
    return func_1(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!vec2<bool>(all(global3[_wgslsmith_index_u32(45145u, 12u)]) & true, true), global0.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1924f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f)), global0.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, -966f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c, global0.c, global0.c)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -772f, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c)) - 1f))) + vec4<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-603f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -270f))), 753f));
    let var_2 = Struct_1(~vec2<u32>(1u, min(1u, 0u) | ~var_0.b.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, min(6363u, global0.a.x), global0.a.x, var_0.b.x), min(global0.b, vec4<u32>(37310u, global0.b.x, global0.b.x, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, -1399f)));
    global2 = array<vec3<u32>, 27>();
    global1 = 30695i;
    var var_3 = func_4(var_0, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, -6318i), ~u_input.a), max(2147483647i, u_input.a)), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 23392i), vec2<i32>(1i, 1550i)))), func_1(select(true, true, var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1337f)))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, var_2.b.x, var_3.b.x)), ~vec3<u32>(1u, 87636u, 1u)), ~4294967295u, var_0.b.x, 55619u), var_3.b), vec3<i32>(_wgslsmith_sub_i32(abs(reverseBits(0i)), -(~u_input.a)), u_input.a >> (~min(64778u, var_0.b.x) % 32u), u_input.a));
}

