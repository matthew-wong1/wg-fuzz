struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-753f, 1564f, -2116f);

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: array<u32, 20>;

var<private> global4: array<vec4<u32>, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<f32> {
    let var_0 = !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(false, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(global0.zz)));
    let var_2 = _wgslsmith_sub_u32(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 1u), vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 49325u)), 49965u), u_input.b.x);
    var var_3 = _wgslsmith_dot_vec2_u32(min(~(min(vec2<u32>(79148u, var_2), u_input.b) & ~u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(abs(u_input.b.x), 63052u), u_input.b)), firstLeadingBit(u_input.b));
    var_3 = var_2;
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-651f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f - global0.x)), 456f, !var_0.x)), -909f), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)), _wgslsmith_f_op_f32(-var_1.a.x), global3[_wgslsmith_index_u32(~31746u, 20u)] != 102545u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) * -386f)), var_1.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(func_3()))));
    global4 = array<vec4<u32>, 8>();
    global2 = array<vec3<u32>, 7>();
    global3 = array<u32, 20>();
    global2 = array<vec3<u32>, 7>();
    return -218f;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), true, arg_1)) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-620f * -374f), -151f))))), _wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.a.x)), -301f)));
    let var_1 = arg_0.x;
    var var_2 = select(vec3<bool>(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true)), (abs(arg_0.x) >= -12237i) || (false || select(false, true, false)), false), vec3<bool>(true, select(4294967295u <= countOneBits(u_input.b.x), global3[_wgslsmith_index_u32(~54198u, 20u)] <= ~global3[_wgslsmith_index_u32(u_input.b.x, 20u)], true), false), firstLeadingBit(1i) < u_input.c.x);
    global3 = array<u32, 20>();
    global3 = array<u32, 20>();
    return Struct_1(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3()).x, arg_1.a.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global4 = array<vec4<u32>, 8>();
    let var_1 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 66487u, 4294967295u)), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 14040u, global3[_wgslsmith_index_u32(u_input.b.x, 20u)]), select(vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 20u)], 20u)], u_input.b.x, u_input.b.x), vec4<u32>(40697u, global3[_wgslsmith_index_u32(8404u, 20u)], global3[_wgslsmith_index_u32(37698u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)]), vec4<bool>(true, false, true, true)))), 109971u), 20u)], 20u)], 20u)], 20u)] == firstLeadingBit(4294967295u);
    var var_2 = !(!(!var_1));
    var var_3 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 20u)], 8u)];
    return func_1(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -max(7472i, -16316i)), -_wgslsmith_div_i32(2147483647i, ~(-69820i))), Struct_1(vec2<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-953f)), -1360f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 7>();
    var var_0 = func_4(func_1(vec2<i32>(firstLeadingBit(u_input.d), -1i), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.zx, vec2<f32>(134f, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    let var_1 = -2261f;
    var_0 = func_4(Struct_1(global0.zz));
    let var_2 = select(!all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)) & !all(vec2<bool>(true, true)), select(true, true, true));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(abs(~global4[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(4294967295u), u_input.b.x, _wgslsmith_add_u32(53611u, global3[_wgslsmith_index_u32(4294967295u, 20u)]), u_input.b.x), _wgslsmith_div_vec4_u32(~vec4<u32>(13664u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 20u)], u_input.b.x), vec4<u32>(122309u, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.b.x, u_input.b.x)))), 7u)], 4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(~74067u, 20u)] >> (0u % 32u), _wgslsmith_sub_u32(~3467u, 21270u)), 20u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(272f, var_1, var_1, var_0.a.x) + vec4<f32>(var_1, 1000f, 1000f, var_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1169f, var_0.a.x, -202f, global0.x))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(778f)), -391f, var_0.a.x, _wgslsmith_f_op_f32(global0.x + 182f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-687f))) + -715f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -1221f)), func_4(func_4(Struct_1(vec2<f32>(var_1, 1651f)))).a.x)), _wgslsmith_f_op_f32(func_1(~vec2<i32>(u_input.d, u_input.c.x), func_4(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x)))).a.x + var_0.a.x)));
}

