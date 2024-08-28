struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 66020u, 55606u, 90842u, 1u, 4294967295u, 46739u, 0u, 51430u, 0u, 3688u, 56458u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    let var_0 = vec4<bool>(arg_1.x, all(!select(select(vec4<bool>(true, arg_2, arg_2, arg_1.x), vec4<bool>(true, arg_2, true, arg_0.x), arg_0.x), select(vec4<bool>(arg_2, false, true, false), vec4<bool>(true, false, arg_2, false), vec4<bool>(arg_1.x, arg_1.x, arg_0.x, arg_1.x)), arg_0.x)), true, !(!(!(u_input.a.x <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)]))));
    let var_1 = Struct_2(Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, -27430i, -12093i), ~vec4<i32>(1i, -2147483647i, 22463i, -2147483647i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(623f + _wgslsmith_f_op_f32(-128f + -1275f)))), true));
    let var_2 = Struct_2(var_1.a);
    var var_3 = Struct_2(var_1.a);
    var var_4 = -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_2.a.a.x, 0i), var_1.a.a.x), vec2<i32>(-2147483647i | var_1.a.a.x, -var_3.a.a.x)));
    return global0[_wgslsmith_index_u32(max(~(~0u), 21550u), 12u)];
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(i32(-1i) * -1i, (_wgslsmith_dot_vec2_i32(vec2<i32>(-3658i, 0i), vec2<i32>(2147483647i, -6844i)) >> (~9461u % 32u)) << (func_3(vec3<bool>(true, true, true), vec2<bool>(true, true), true) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(323f + 809f))))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)] > u_input.a.x);
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_1 = firstLeadingBit(vec4<i32>(-1i, ~var_0.a.x, -_wgslsmith_add_i32(1i, var_0.a.x), -2147483647i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(19449u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.yy), u_input.a.zy), global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, true), 12u)], 36763u), ~vec4<u32>(select(u_input.a.x, 30401u, true), u_input.a.x | 18201u, u_input.a.x, min(u_input.a.x, 82381u))) % vec4<u32>(32u));
    return Struct_2(Struct_1(~vec2<i32>(firstLeadingBit(var_0.a.x), ~2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(149f)) * 275f), all(vec3<bool>(any(vec3<bool>(false, var_0.c, false)), var_0.c, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = -18598i >> ((u_input.a.x >> (max(arg_3, ~(~global0[_wgslsmith_index_u32(36897u, 12u)])) % 32u)) % 32u);
    let var_1 = max(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -12602i, 1i, -45102i) << (vec4<u32>(global0[_wgslsmith_index_u32(arg_3, 12u)], 4294967295u, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, arg_2.a.a.x, arg_0.a.x, arg_2.a.a.x)), arg_0.a.x) << (select(~abs(~29014u), u_input.a.x, arg_2.a.c) % 32u);
    var var_2 = select(_wgslsmith_dot_vec3_u32(u_input.a, firstLeadingBit(abs(firstTrailingBit(u_input.a)))), ~global0[_wgslsmith_index_u32(select(1u, u_input.a.x, arg_0.c) >> (firstLeadingBit(1u) % 32u), 12u)], true);
    global0 = array<u32, 12>();
    var_2 = ~(~(u_input.a.x >> (~abs(32104u) % 32u)));
    return func_2().a;
}

fn func_1() -> vec4<i32> {
    global0 = array<u32, 12>();
    var var_0 = vec2<bool>(false, true);
    global0 = array<u32, 12>();
    var var_1 = func_4(Struct_1(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1174f)), -748f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1882f))), var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1995f + -364f) - -1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(730f - -538f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -493f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, 557f, 1000f))))), func_2(), 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-271f - _wgslsmith_f_op_f32(var_1.b + var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))));
    return (vec4<i32>(var_1.a.x, -2147483647i, var_1.a.x, ~firstLeadingBit(2147483647i)) >> (~select(vec4<u32>(global0[_wgslsmith_index_u32(45709u, 12u)], u_input.a.x, 0u, global0[_wgslsmith_index_u32(21345u, 12u)]), ~vec4<u32>(16025u, 0u, 9853u, u_input.a.x), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, var_1.c, false, var_0.x), var_0.x)) % vec4<u32>(32u))) ^ vec4<i32>(~var_1.a.x, 13633i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-24179i, -1i), -(~(-16459i))), _wgslsmith_add_i32(min(var_1.a.x, 1i), _wgslsmith_sub_i32(max(-7394i, var_1.a.x), ~var_1.a.x)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, 27906i, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(func_1(), vec4<i32>(-1i, 0i, 0i, 0i)), ~vec4<i32>(-1i, -41392i, -19471i, 24344i)), -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-38727i, 2147483647i, -9159i, 1i), vec4<i32>(-2147483647i, 0i, 9511i, 17502i), vec4<bool>(false, false, true, true)), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_1 = var_0.a.a.x;
    var_0 = func_5(true, 1i, ~(-vec4<i32>(var_0.a.a.x, abs(var_0.a.a.x), select(var_0.a.a.x, var_0.a.a.x, var_0.a.c), 11738i)));
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var_0 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_1().x, abs(func_2().a.a.x), i32(-1i) * -13844i, _wgslsmith_sub_i32(1i, -2147483647i >> (u_input.a.x % 32u))), -select(-vec3<i32>(2147483647i, var_0.a.a.x, var_0.a.a.x), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(24224i, var_0.a.a.x, var_0.a.a.x), vec3<i32>(var_0.a.a.x, var_0.a.a.x, 22482i), vec3<i32>(14598i, -1i, -2147483647i))), true));
}

