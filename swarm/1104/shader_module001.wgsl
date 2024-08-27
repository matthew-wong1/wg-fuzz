struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    global0 = array<Struct_1, 20>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_div_f32(arg_0, arg_0))))), arg_0, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-389f)) * 777f)), vec4<f32>(arg_0, arg_0, 950f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))));
    global0 = array<Struct_1, 20>();
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    let var_0 = Struct_1(vec2<u32>(~(~4294967295u), u_input.a), true, ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 10471u, u_input.a)), vec4<u32>(u_input.a, 44469u | u_input.a, 0u, ~1u), ~(vec4<u32>(66212u, u_input.a, u_input.a, 22247u) ^ vec4<u32>(9753u, u_input.b.x, 36220u, 1u))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(~(~u_input.b), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(40966u, 16109u), vec2<u32>(u_input.b.x, 4294967295u)))) >> (min(max(~var_0.c.wy, ~vec2<u32>(u_input.a, 6064u)), ~min(vec2<u32>(43653u, 0u), u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -982f)))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(-443f, var_0.b)))), _wgslsmith_mod_vec4_u32(~var_0.c, ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 0u), ~u_input.b.x, var_0.a.x, 0u)));
    var var_2 = var_0.c.x;
    var var_3 = ~(~var_1.c);
    let var_4 = Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, var_3.x) & max(var_3.x, 65990u), ~_wgslsmith_dot_vec3_u32(var_0.c.wyw, vec3<u32>(1u, 1u, u_input.a))), _wgslsmith_sub_u32(~(~var_3.x), var_3.x)), !(!all(!vec3<bool>(var_0.b, false, true))), var_0.c);
    return -firstLeadingBit(-countOneBits(_wgslsmith_mult_i32(arg_0, arg_1)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = false;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return func_2(~(-u_input.c.x), -1i);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = arg_2;
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 20u)];
    let var_2 = abs(max(abs(vec4<u32>(firstLeadingBit(arg_2.a.x), countOneBits(0u), 19236u, arg_2.a.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.c, vec4<u32>(u_input.a, 108587u, 4294967295u, u_input.a)) >> (~arg_2.c % vec4<u32>(32u)), ~var_1.c)));
    return abs(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.x;
    var var_1 = global0[_wgslsmith_index_u32(~(~1u), 20u)];
    var_0 = func_4(min(u_input.c.x, ~_wgslsmith_add_i32(u_input.c.x, func_1(u_input.b, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), global0[_wgslsmith_index_u32(var_1.a.x, 20u)]))), (~var_1.c.wzw << (~(~vec3<u32>(var_1.c.x, 3688u, 4294967295u)) % vec3<u32>(32u))) | ~vec3<u32>(_wgslsmith_mod_u32(48384u, 4294967295u), abs(66735u), ~93784u), Struct_1(u_input.b, false, var_1.c));
    let var_2 = global0[_wgslsmith_index_u32(~(~u_input.a), 20u)];
    global0 = array<Struct_1, 20>();
    var var_3 = Struct_1(var_1.c.zy, true, var_1.c);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-255f - -1132f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(-495f + 908f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, 614f, -2392f, var_4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, var_4.x, 431f, 954f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.x, 1824f, var_4.x, var_4.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 913f, var_4.x, var_4.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, var_4.x, 1059f, var_4.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1533f, 1346f, 554f, 856f) + vec4<f32>(585f, -1879f, var_4.x, var_4.x))))), any(select(!vec4<bool>(false, var_1.b, true, var_2.b), vec4<bool>(var_3.b, false, true, var_3.b), select(vec4<bool>(true, true, var_1.b, false), vec4<bool>(var_3.b, var_1.b, false, var_2.b), vec4<bool>(false, var_3.b, false, false)))))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, -24160i), abs(30621i)), min(~43593i, _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), -2147483647i), -(~(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), _wgslsmith_clamp_vec3_i32(~abs(max(vec3<i32>(525i, 66307i, 45626i), vec3<i32>(-2147483647i, 1i, u_input.c.x))), vec3<i32>(u_input.c.x, -5931i, abs(u_input.c.x << (var_2.a.x % 32u))), abs(~vec3<i32>(-16107i, u_input.c.x, u_input.c.x))));
}

