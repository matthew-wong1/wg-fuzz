struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(-1359f), vec3<f32>(-951f, 158f, 1081f), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(-2311f), vec3<f32>(-508f, -1000f, -3024f), vec2<u32>(1u, 78904u)), Struct_2(Struct_1(644f), vec3<f32>(1185f, -2112f, -1131f), vec2<u32>(78584u, 48348u)), Struct_2(Struct_1(570f), vec3<f32>(-876f, -1134f, -1055f), vec2<u32>(1u, 1u)), Struct_2(Struct_1(-2125f), vec3<f32>(459f, 1000f, -888f), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(1484f), vec3<f32>(-1595f, 1000f, 573f), vec2<u32>(4385u, 20499u)));

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    global1 = array<Struct_2, 6>();
    var var_0 = vec3<bool>(!all(vec3<bool>(all(vec2<bool>(false, false)), 2460f >= global0.b.x, true)), all(vec3<bool>(true, true, true)), false);
    return ~0i;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_u32(~0u, u_input.a.x & ~_wgslsmith_add_u32(21242u >> (u_input.a.x % 32u), firstLeadingBit(653u)));
    global1 = array<Struct_2, 6>();
    global2 = array<Struct_1, 25>();
    let var_1 = arg_0;
    let var_2 = max(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -47313i, u_input.b, u_input.b), ~(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b) | vec4<i32>(1i, 0i, u_input.b, u_input.b)), min(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(-1i, u_input.b, u_input.b, 27234i))), select(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.b, u_input.b, -5669i, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2953i, -2147483647i, -1i, 1i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))), select(~vec4<i32>(-2147483647i, u_input.b, u_input.b, -42148i), vec4<i32>(-26406i, u_input.b, u_input.b, u_input.b), arg_2), ~firstTrailingBit(vec4<i32>(-14790i, u_input.b, u_input.b, u_input.b))), _wgslsmith_mult_vec4_i32(select(firstTrailingBit(vec4<i32>(-57324i, 2147483647i, u_input.b, -1i)), vec4<i32>(75313i, u_input.b, 15089i, u_input.b), false), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), ~vec4<i32>(u_input.b, 2147483647i, u_input.b, -2147483647i))), !((false || arg_1) | arg_1)));
    return ~(~select(~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(global0.c.x, 30949u)), ~vec2<u32>(115915u, 1u), vec2<bool>(-1461f == arg_3.x, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(-arg_2.a.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(arg_1.b.x - 1576f)))), max(vec2<u32>(~(~arg_1.c.x), 0u), firstTrailingBit(~u_input.a)));
    var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(arg_2.b - vec3<f32>(_wgslsmith_f_op_f32(465f - -590f), _wgslsmith_f_op_f32(step(-1247f, _wgslsmith_f_op_f32(ceil(-366f)))), _wgslsmith_f_op_f32(select(955f, -381f, true)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_2.c.x, 4294967295u)), abs(arg_2.c)), _wgslsmith_mod_vec2_u32(firstLeadingBit(arg_2.c) | vec2<u32>(u_input.a.x, 31951u), arg_2.c), ~arg_2.c));
    var var_1 = -768f;
    global1 = array<Struct_2, 6>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.c.x, _wgslsmith_div_u32(23659u, 70177u) ^ min(1u, var_0.c.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c.x, 1u) >> (vec3<u32>(47842u, 0u, arg_1.c.x) % vec3<u32>(32u)), vec3<u32>(global0.c.x, var_0.c.x, 4294967295u) ^ vec3<u32>(3209u, 38581u, 4294967295u))) & countOneBits(_wgslsmith_div_u32(var_0.c.x, ~31858u & _wgslsmith_dot_vec2_u32(arg_1.c, vec2<u32>(0u, 4294967295u)))), 6u)];
    return arg_1.a;
}

fn func_1() -> vec4<i32> {
    global0 = Struct_2(func_4(_wgslsmith_add_i32(func_2(vec4<u32>(81332u, 4294967295u, u_input.a.x, u_input.a.x)), 1i) != 0i, Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), func_3(Struct_1(global0.b.x), true, true, global0.b)), Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global0.b, global0.b))), global0.c)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(max(global0.b.x, global0.a.a)))))), global0.a.a, 402f), func_3(global0.a, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec3_f32(abs(global0.b))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.b.zx);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(157f, var_0.x)))) * 950f), -1438f);
    let var_2 = true;
    var_0 = var_1;
    return -vec4<i32>(~34429i, -30399i, 1i, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~118u;
    let var_1 = vec3<i32>(-1i) * -select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.b, 0i)), vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 16085i, -28169i), vec3<i32>(-2147483647i, 1i, 0i)), ~vec3<i32>(u_input.b, -2147483647i, u_input.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-max(func_1(), ~vec4<i32>(-2147483647i, var_1.x, u_input.b, u_input.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(26445u, global0.c.x, 0u, 13404u), vec4<u32>(4294967295u, var_0, 4294967295u, 0u)) % vec4<u32>(32u))), ~(_wgslsmith_mod_vec2_u32(u_input.a, ~vec2<u32>(var_0, 1u)) << (global0.c % vec2<u32>(32u))));
}

