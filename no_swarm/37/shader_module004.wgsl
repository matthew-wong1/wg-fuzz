struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4445i;

var<private> global1: array<vec4<bool>, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    let var_0 = vec2<bool>(arg_2.b.a, true);
    global1 = array<vec4<bool>, 2>();
    var var_1 = arg_1;
    let var_2 = arg_1.b;
    global0 = -(~_wgslsmith_div_i32(firstLeadingBit(var_1.c), abs(0i)) >> (arg_1.e % 32u));
    return !var_1.b.a != any(global1[_wgslsmith_index_u32(arg_3.x, 2u)]);
}

fn func_2() -> bool {
    global1 = array<vec4<bool>, 2>();
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, abs(53893u)));
    let var_1 = Struct_4(Struct_1(-1000f, _wgslsmith_mult_i32(abs(u_input.a.x), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -789f)), Struct_2(!all(vec3<bool>(false, false, false)) | func_3(~vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), Struct_4(Struct_1(-1187f, -14332i, -388f), Struct_2(true, 1u), 39901i, var_0.x, var_0.x), Struct_4(Struct_1(446f, u_input.b, 284f), Struct_2(true, 15985u), 0i, 65582u, var_0.x), vec2<u32>(18248u, var_0.x)), abs(37616u)), max(63306i, 2147483647i), ~1u, abs(var_0.x));
    var var_2 = firstTrailingBit(~vec4<i32>(var_1.a.b, countOneBits(-6784i), u_input.b, 35295i >> ((var_1.e ^ 13158u) % 32u)));
    var var_3 = Struct_2(_wgslsmith_clamp_i32(var_2.x << (firstTrailingBit(14597u) % 32u), 30617i, -10163i) == var_1.c, var_0.x);
    return all(vec2<bool>(false, var_0.x == ~_wgslsmith_mult_u32(var_3.b, var_0.x)));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec2<bool>(true, false))), select(vec2<bool>(true, func_2()), vec2<bool>(false, true), vec2<bool>(true, true))));
    global1 = array<vec4<bool>, 2>();
    global0 = select(u_input.a.x, 10953i, false);
    var var_1 = select(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(38088u, 14436u, 25582u, 1u))), ~(~vec4<u32>(4294967295u, 27394u, 11028u, 4294967295u))), 2u)], global1[_wgslsmith_index_u32(reverseBits(min(_wgslsmith_mult_u32(50220u, 53820u), min(4294967295u, 26754u))), 2u)], true), !vec4<bool>(!func_3(vec4<u32>(1u, 1u, 4294967295u, 1u), Struct_4(Struct_1(-1289f, arg_0, 664f), Struct_2(var_0, 4294967295u), 34883i, 3829u, 4294967295u), Struct_4(Struct_1(487f, arg_0, 297f), Struct_2(var_0, 0u), u_input.b, 0u, 1u), vec2<u32>(4044u, 9546u)), true, !all(vec4<bool>(false, true, true, var_0)), true), false);
    global1 = array<vec4<bool>, 2>();
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(abs(arg_2)), i32(-1i) * -2147483647i, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i >> (_wgslsmith_add_u32(0u, 1u) % 32u);
    global0 = -50287i;
    var var_0 = func_4(select(select(false, func_1(u_input.b), true), true, true) || false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1391f - _wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(-1439f - -1014f))))), _wgslsmith_f_op_f32(step(349f, -653f)));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -1441f).b), var_0.b);
    global0 = var_0.b;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(step(var_0.a, var_0.a)))), 33542i, 1000f);
    var_0 = func_4(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), 645f, true)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(412f + 1736f), -471f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(min(var_0.c, -573f))), 1302f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-firstLeadingBit(vec3<i32>(u_input.b, 2147483647i, u_input.a.x)) >> (vec3<u32>(_wgslsmith_clamp_u32(21760u, 0u, 31280u), max(82312u, 0u), firstLeadingBit(48958u)) % vec3<u32>(32u))));
}

