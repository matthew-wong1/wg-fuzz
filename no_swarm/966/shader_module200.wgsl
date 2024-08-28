struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 9> = array<f32, 9>(-485f, 587f, 821f, 2248f, -1000f, 1677f, -791f, 463f, 518f);

var<private> global2: array<Struct_1, 32>;

var<private> global3: i32 = -1i;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = 17020u & arg_1.a;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-595f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -424f))))), _wgslsmith_f_op_f32(exp2(global0.d.x)));
    var_0 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a, arg_0.a, arg_1.a), vec3<u32>(global0.a, 0u, 24176u)), vec3<u32>(14960u, 0u, var_1.a)) >> (vec3<u32>(~var_1.a, _wgslsmith_mult_u32(64514u, 18853u), global0.a << (61250u % 32u)) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(_wgslsmith_mod_u32(var_1.a, arg_0.a), max(arg_0.a, 81648u), 1u)));
    let var_3 = _wgslsmith_div_u32(u_input.a, global0.a);
    return global0.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<f32> {
    global2 = array<Struct_1, 32>();
    global1 = array<f32, 9>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 32u)];
    var var_1 = all(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), var_0.b)), arg_2.b, false, var_0.b)) && all(select(vec4<bool>(global0.e, any(vec3<bool>(global0.e, true, false)), true, -1i < var_0.c.x), vec4<bool>(all(vec2<bool>(false, true)), true, func_3(arg_2, Struct_1(arg_2.a, global0.e, arg_2.c, arg_2.d, global0.e)), func_3(Struct_1(0u, var_0.b, vec2<i32>(var_0.c.x, -2147483647i), vec4<f32>(global1[_wgslsmith_index_u32(arg_2.a, 9u)], arg_2.d.x, var_0.d.x, global1[_wgslsmith_index_u32(42868u, 9u)]), false), global2[_wgslsmith_index_u32(0u, 32u)])), -920f != _wgslsmith_f_op_f32(exp2(global0.d.x))));
    var var_2 = select(!select(select(!vec2<bool>(var_0.b, false), vec2<bool>(true, true), vec2<bool>(true, true)), !(!vec2<bool>(arg_2.b, true)), !select(vec2<bool>(true, true), vec2<bool>(arg_2.e, global0.e), true)), vec2<bool>(var_0.e, global0.b), select(!select(vec2<bool>(true, false), select(vec2<bool>(arg_2.e, false), vec2<bool>(arg_2.b, false), global0.b), false), vec2<bool>(false, arg_2.e), !global0.b));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1693f, arg_2.d.x, 1000f, -795f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global0.d, _wgslsmith_f_op_vec4_f32(abs(var_0.d)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 32u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, var_0.a), 32u)];
    global3 = -15813i;
    var var_2 = ~_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_1.a), vec2<u32>(global0.a, 74834u)), ~(1u << (var_1.a % 32u))) >> (~u_input.a % 32u);
    var_1 = Struct_1(93448u, var_0.e, abs(vec2<i32>(-_wgslsmith_mod_i32(global0.c.x, var_1.c.x), -arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.d.x)), arg_0.x, true)), _wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 9u)] + -770f))) * global0.d), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-596f - arg_0.x)))) == true);
    return Struct_1(4294967295u, all(!vec3<bool>(true, var_1.e, var_1.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-26438i, -(arg_1 ^ var_0.c.x)), var_0.c << (vec2<u32>(15791u, 43580u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-var_1.d), var_1.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> bool {
    global3 = ~arg_1.c.x;
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1.d - _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(u_input.a, 38366u, arg_1.a), ~vec2<u32>(arg_1.a, 33871u), Struct_1(0u, arg_1.b, arg_1.c, vec4<f32>(-464f, global0.d.x, arg_0.x, 670f), true), -vec2<i32>(-51662i, global0.c.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + arg_1.d))))), 41013i);
    global1 = array<f32, 9>();
    let var_1 = ~(vec2<i32>((i32(-1i) * -33693i) | ~arg_1.c.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2, global0.c.x, global0.c.x)), vec3<i32>(arg_1.c.x, 10080i, 42669i) & vec3<i32>(arg_2, arg_1.c.x, 1i))) << (_wgslsmith_add_vec2_u32((vec2<u32>(40012u, 39436u) & vec2<u32>(1497u, var_0.a)) | countOneBits(vec2<u32>(arg_1.a, 0u)), ~firstTrailingBit(vec2<u32>(arg_1.a, 0u))) % vec2<u32>(32u)));
    let var_2 = ~(~vec4<u32>(arg_1.a >> (14101u % 32u), 17967u, 23646u, _wgslsmith_div_u32(34925u, u_input.a)) ^ vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(25750u, 4294967295u), func_4(arg_1.d, -1i).a), abs(u_input.a), var_0.a | var_0.a, var_0.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(90665u, global0.b, -(~vec2<i32>(global0.c.x, global0.c.x)), vec4<f32>(-639f, -957f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-225f * 1064f), _wgslsmith_f_op_f32(min(694f, global0.d.x)), select(global0.e, global0.b, false)))), _wgslsmith_f_op_f32(-global0.d.x)), global0.b);
    var var_0 = global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u | u_input.a, max(9201u, 35078u)), 62332u), _wgslsmith_clamp_u32(u_input.a, ~0u, u_input.a)), 32u)];
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(global0.c.x, global0.c.x, global0.c.x))), ~firstLeadingBit(vec3<i32>(11024i, 7822i, 14191i))), global0.c.x, var_0.c.x, ~_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.c.x >> (var_0.a % 32u), firstTrailingBit(var_0.c.x)), global0.c.x));
    global0 = global2[_wgslsmith_index_u32(49846u, 32u)];
    var var_2 = global2[_wgslsmith_index_u32(~1u, 32u)];
    global3 = var_0.c.x >> (var_0.a % 32u);
    var var_3 = vec3<bool>(true, false, any(vec2<bool>(false, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, global0.d.x, 320f)), global2[_wgslsmith_index_u32(reverseBits(4294967295u), 32u)], min(var_0.c.x, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec3_f32(max(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1783f, global1[_wgslsmith_index_u32(1u, 9u)], var_0.d.x, 1220f))), firstTrailingBit(var_0.c.x)).d.wxy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.d.x, 1996f, false)), -299f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.wyz) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global0.d.xyx, vec3<f32>(691f, global0.d.x, var_0.d.x))))), ~vec3<i32>(-5485i ^ ~var_2.c.x, min(_wgslsmith_div_i32(-2147483647i, global0.c.x), select(var_0.c.x, 11607i, global0.b)), -1i));
}

