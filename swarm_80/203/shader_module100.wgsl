struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-672f, vec2<f32>(-1589f, 1983f), 60839u);

var<private> global1: u32 = 74195u;

var<private> global2: array<vec3<u32>, 5>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global1 = ~(~1u) ^ select(u_input.c, 0u, any(vec2<bool>(true, true)));
    global0 = Struct_3(863f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.b)))), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.a.x, arg_0.x, u_input.d.x & _wgslsmith_add_u32(0u, arg_0.x))));
    global2 = array<vec3<u32>, 5>();
    global1 = firstLeadingBit(global0.c);
    let var_0 = vec3<u32>(global0.c, u_input.c, ~0u);
    return !(!any(vec4<bool>(false, true, any(vec3<bool>(true, true, true)), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>((reverseBits(countOneBits(u_input.e.x)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(104477u, global0.c, global0.c), u_input.d)) % 32u)) << ((global0.c << (31111u % 32u)) % 32u), -_wgslsmith_dot_vec2_i32(u_input.e.yz, vec2<i32>(abs(-7626i), u_input.e.x)), max(firstTrailingBit(u_input.e.x), u_input.e.x), u_input.e.x >> (1u % 32u));
    var var_1 = !vec2<bool>(select(any(vec4<bool>(false, false, false, false)) | func_3(global2[_wgslsmith_index_u32(3951u, 5u)]), !any(vec4<bool>(true, true, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), !(countOneBits(-45589i) == var_0.x));
    let var_2 = Struct_1(false);
    let var_3 = Struct_3(global0.b.x, _wgslsmith_f_op_vec2_f32(-global0.b), ~_wgslsmith_clamp_u32(10248u, _wgslsmith_div_u32(global0.c, global0.c) ^ min(4017u, 1u), _wgslsmith_sub_u32(1u, 1u)));
    var var_4 = var_3;
    return var_2;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(select(!vec4<bool>(arg_0.a, true, global0.c >= global0.c, !arg_0.a), !select(vec4<bool>(arg_0.a, arg_0.a, true, false), !vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), true != !(arg_0.a || arg_0.a)), vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(global0.c, 0u)), _wgslsmith_mult_u32(4294967295u, u_input.d.x)), 16540u), arg_0, false, true);
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.e, u_input.e);
    var var_3 = vec3<f32>(934f, -2748f, 617f);
    global2 = array<vec3<u32>, 5>();
    return true;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> i32 {
    global2 = array<vec3<u32>, 5>();
    var var_0 = select(-(i32(-1i) * -u_input.e.x), 1i, func_4(func_2()));
    var var_1 = _wgslsmith_mod_i32(abs(0i), _wgslsmith_clamp_i32(-u_input.e.x, ~(-30371i), _wgslsmith_div_i32(-(u_input.e.x & u_input.e.x), 0i)));
    let var_2 = arg_2;
    let var_3 = !select(select(!(!vec2<bool>(arg_1, false)), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, arg_1), !arg_1), !all(vec2<bool>(false, arg_1))), vec2<bool>(true, arg_1), !arg_1 | arg_1);
    return ~(select(-(~(-10466i)), ~(u_input.e.x | u_input.e.x), func_3(max(global2[_wgslsmith_index_u32(39770u, 5u)], u_input.d))) << (~min(1u, firstTrailingBit(u_input.d.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(4346i, -1i, u_input.e.x, 1i) | -vec4<i32>(u_input.e.x, 4177i, -13622i, -14237i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(1i, -2142i, u_input.e.x, -2147483647i))), select(vec4<i32>(func_1(690f, true, Struct_3(-740f, global0.b, 0u), 29879u), max(-8821i, u_input.e.x), max(-16825i, 2147483647i), ~(-41985i)), vec4<i32>(14252i, 1i, u_input.e.x, u_input.e.x) << (~vec4<u32>(1u, 0u, u_input.a.x, global0.c) % vec4<u32>(32u)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true))));
    global2 = array<vec3<u32>, 5>();
    var var_1 = Struct_2(!vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), true, true, true), ~u_input.a.zy, func_2(), !(global0.c <= (1u >> (global0.c % 32u))), all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-509f, global0.b.x, 1f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-763f, global0.a), 516f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_div_f32(global0.b.x, global0.b.x), _wgslsmith_f_op_f32(100f + -245f), _wgslsmith_f_op_f32(select(global0.b.x, 417f, var_1.d)))))))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_2.x))))), vec2<f32>(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) * var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), var_2.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(605f)))))), 950u);
    let var_3 = reverseBits(select(u_input.b, _wgslsmith_clamp_vec4_u32(min(u_input.b, u_input.b | u_input.b), ~abs(vec4<u32>(17543u, var_1.b.x, u_input.d.x, u_input.c)), _wgslsmith_clamp_vec4_u32(~u_input.b, max(vec4<u32>(88790u, global0.c, 53125u, global0.c), vec4<u32>(global0.c, var_1.b.x, 10785u, var_1.b.x)), ~vec4<u32>(32615u, 2028u, u_input.c, 52820u))), select(select(!vec4<bool>(var_1.c.a, var_1.a.x, var_1.e, var_1.d), !vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), true), var_1.a, vec4<bool>(true, select(false, var_1.c.a, var_1.e), var_1.e | var_1.c.a, !var_1.e))));
    let var_4 = _wgslsmith_div_i32(-20571i, u_input.e.x);
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 1000f, true))))), global0.b, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_div_f32(-421f, _wgslsmith_f_op_f32(abs(var_2.x))))), u_input.e.x, var_3.xwx, _wgslsmith_add_i32(var_4, var_4));
}

