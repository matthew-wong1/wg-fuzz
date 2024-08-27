struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 49445u, 0u, 1u);

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global2 = vec4<u32>(32530u, abs(13870u), 57299u, firstLeadingBit(_wgslsmith_mult_u32(0u, firstLeadingBit(1u))));
    let var_0 = u_input.a;
    let var_1 = Struct_5(_wgslsmith_mult_i32(reverseBits(firstTrailingBit(4394i)), firstTrailingBit(_wgslsmith_add_i32(~(-54538i), arg_0.a.x))), _wgslsmith_add_u32(reverseBits(40045u), u_input.a.x) & arg_1);
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(firstLeadingBit(7734u)), 6u)];
    var var_3 = var_2.b;
    return arg_0.b.x;
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> vec3<bool> {
    global0 = array<Struct_3, 7>();
    let var_0 = Struct_2(reverseBits(abs(vec2<i32>(0i, arg_0.a) | max(vec2<i32>(arg_0.a, 0i), vec2<i32>(1i, -37572i)))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec2<bool>(false, false)))), vec2<bool>(func_3(Struct_2(vec2<i32>(arg_0.a, arg_0.a), vec2<bool>(false, true)), select(u_input.a.x, 36277u, false)), any(vec2<bool>(true, true))), select(vec2<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), arg_0.b != 0u), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true))));
    let var_1 = Struct_5(countOneBits(arg_0.a), ~global2.x >> (max(1u, ~(~global2.x)) % 32u));
    global1 = _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(4294967295u, ~global1.x)), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 16266u), select(u_input.a.x, max(68025u, _wgslsmith_sub_u32(1u, global1.x)), -var_1.a > _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a, var_0.a.x), vec3<i32>(var_0.a.x, var_1.a, arg_0.a)))));
    global1 = vec2<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(max(global2.x, ~49955u), 0u)), _wgslsmith_mod_u32((~u_input.a.x >> (select(0u, 1u, false) % 32u)) >> (77610u % 32u), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global2.x, arg_1, 4294967295u), ~var_1.b, _wgslsmith_mult_u32(global2.x, 1u))));
    return vec3<bool>(true, var_0.b.x, ~var_1.a <= -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 28527i, 11806i, var_0.a.x), vec4<i32>(-23695i, var_1.a, arg_0.a, var_0.a.x)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(vec3<u32>(4294967295u, 72923u, _wgslsmith_clamp_u32(u_input.a.x, ~firstLeadingBit(0u), 13048u)));
    let var_1 = Struct_3(vec2<u32>(_wgslsmith_clamp_u32(global1.x, 1u, global2.x), u_input.a.x), var_0, reverseBits(select(1i, 30948i, (50101u == global1.x) == true)));
    var var_2 = func_2(Struct_5(31796i, firstLeadingBit(u_input.a.x)), 17971u);
    global0 = array<Struct_3, 7>();
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1589f, _wgslsmith_f_op_f32(sign(-431f)), _wgslsmith_f_op_f32(round(1f)))));
    return -(~(~(~_wgslsmith_mod_i32(var_1.c, 14887i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(-abs(~0i), func_1()), -_wgslsmith_clamp_i32(1i, abs(_wgslsmith_clamp_i32(0i, 0i, -9241i)), 0i));
    let var_1 = -174f;
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(0u, 7u)], Struct_1(~min(global2.xxy, vec3<u32>(u_input.a.x, 1u, u_input.a.x))), firstLeadingBit(0i), false);
    global0 = array<Struct_3, 7>();
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -650f, _wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(floor(1350f))), _wgslsmith_f_op_f32(floor(var_1)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, countOneBits(var_2.a.b.a));
}

