struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(33977i, 1i);

var<private> global1: f32 = -341f;

var<private> global2: array<bool, 15> = array<bool, 15>(true, true, true, false, false, false, true, false, false, true, false, true, false, false, true);

var<private> global3: array<vec2<f32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-145f)))) + arg_0.x)));
    var var_0 = ~1u;
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 4294967295u, 45498u, 1u), vec4<u32>(97133u, u_input.b, u_input.b, u_input.b)), vec4<u32>(u_input.b, 0u, 4294967295u, 29568u) | vec4<u32>(95879u, u_input.b, 77883u, 4294967295u)), abs(u_input.b))), vec3<i32>(-1i) * -vec3<i32>(1i, -u_input.a, u_input.a), select(select(!select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], true, false, true), vec4<bool>(true, false, true, false)), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], true, true, false)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(119112u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 15u)], true, global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)])), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 15u)], true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 15u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], false, global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 15u)], true, global2[_wgslsmith_index_u32(0u, 15u)])))), vec4<bool>(true, true, false, 4294967295u != ~u_input.b), select(select(!vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.b, 15u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], true, global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)]), true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(43236u, 15u)], true, global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(22395u, 15u)], true), global2[_wgslsmith_index_u32(1u, 15u)])), select(select(vec4<bool>(global2[_wgslsmith_index_u32(62224u, 15u)], global2[_wgslsmith_index_u32(35858u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], false, global2[_wgslsmith_index_u32(0u, 15u)], false)), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], true, global2[_wgslsmith_index_u32(1u, 15u)], true), 924f != arg_0.x), !any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 15u)])))));
    var_0 = ~(0u & (reverseBits(~21026u) << ((_wgslsmith_div_u32(u_input.b, 2674u) & u_input.b) % 32u)));
    let var_2 = ~var_1.a;
    return -(42656i ^ _wgslsmith_clamp_i32(var_1.b.x, var_1.b.x, _wgslsmith_mod_i32(53722i, -2147483647i)));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = countOneBits(vec4<i32>(-2147483647i, abs(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, 386f, -264f) + vec3<f32>(1068f, 1045f, 319f)))), 0i, min(-44464i, ~1i)));
    global2 = array<bool, 15>();
    global1 = -1254f;
    global3 = array<vec2<f32>, 32>();
    global3 = array<vec2<f32>, 32>();
    return global2[_wgslsmith_index_u32(u_input.b, 15u)];
}

fn func_4(arg_0: bool) -> Struct_4 {
    var var_0 = Struct_1(select(u_input.b, 0u, !all(vec4<bool>(global2[_wgslsmith_index_u32(9600u, 15u)], false, false, arg_0))), vec3<i32>(global0.x | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), u_input.a, global0.x), vec4<bool>(all(!vec2<bool>(arg_0, true)) & !global2[_wgslsmith_index_u32(~20070u, 15u)], select(select(false, arg_0, true), arg_0, true) & arg_0, any(select(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 15u)], arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 15u)])), vec2<bool>(true, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8318u, u_input.b), vec2<u32>(u_input.b, 48030u)), 15u)])), true));
    var var_1 = Struct_1(_wgslsmith_div_u32(u_input.b, 15209u), min(var_0.b, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.b.x, global0.x), min(11561i, -4803i)), global0.x, max(0i, var_0.b.x))), vec4<bool>(true, var_0.c.x || arg_0, true, arg_0));
    var var_2 = Struct_1(max(~_wgslsmith_sub_u32(u_input.b, ~27347u), firstTrailingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, 29867u)), firstTrailingBit(vec3<u32>(0u, 7577u, u_input.b))))), vec3<i32>(~(-(~37808i)), 1i, firstLeadingBit(var_0.b.x)), select(!var_1.c, var_1.c, var_1.c));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-778f * _wgslsmith_div_f32(1130f, -932f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f - -862f)))) * _wgslsmith_f_op_f32(step(-1043f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mult_u32(firstTrailingBit(~var_1.a), ~var_2.a) ^ 4294967295u, countOneBits(var_0.a));
    return Struct_4(~abs(vec2<i32>(i32(-1i) * -6035i, global0.x & 2147483647i)));
}

fn func_1() -> i32 {
    var var_0 = func_4(!func_2(~(~vec2<u32>(0u, 19537u))));
    let var_1 = func_4(global2[_wgslsmith_index_u32(1u, 15u)]);
    var_0 = var_1;
    let var_2 = 0u;
    let var_3 = -508f;
    return 8897i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 32>();
    let var_0 = func_1();
    global0 = -countOneBits(-(countOneBits(vec2<i32>(var_0, var_0)) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))));
    var var_1 = vec4<i32>(2147483647i, _wgslsmith_mult_i32(abs(-u_input.a), _wgslsmith_div_i32(var_0, ~33034i)), (min(global0.x, max(-19926i, 25386i)) | -(~0i)) & abs(var_0), 59603i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f * -197f) - 1f)))) * 429f);
    global1 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(789f, _wgslsmith_f_op_f32(f32(-1f) * -333f), global2[_wgslsmith_index_u32(0u, 15u)] | false))))));
    let var_3 = firstLeadingBit(~(~var_1.yxy));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zwz, ~vec2<u32>(~u_input.b, abs(u_input.b)) >> (~vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.b)) % vec2<u32>(32u)), var_2);
}

