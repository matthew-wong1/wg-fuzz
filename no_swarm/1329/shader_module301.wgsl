struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(54594u, 4294967295u, 26597u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(15142u, 5000u, 54319u), vec3<u32>(0u, 0u, 32983u), vec3<u32>(15166u, 4294967295u, 1u));

var<private> global2: Struct_3 = Struct_3(false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global0 = array<f32, 27>();
    var var_0 = u_input.a;
    global1 = array<vec3<u32>, 5>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0))));
    global0 = array<f32, 27>();
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(!all(!vec3<bool>(global2.a, true, true))), Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1273f * -908f) + global0[_wgslsmith_index_u32(~u_input.a, 27u)]) * -144f)));
    var var_1 = ~(~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, ~1u), 4294967295u, u_input.a, 91805u));
    global0 = array<f32, 27>();
    var var_2 = 1i;
    let var_3 = Struct_4(Struct_3(!(global2.a == var_0.a.a) != (false & var_0.a.a)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 27u)] - 2005f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f))), 559f));
    return arg_1;
}

fn func_1() -> Struct_3 {
    global1 = array<vec3<u32>, 5>();
    var var_0 = Struct_4(func_3(Struct_2(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13998u, 124761u), 27u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~u_input.a), 27u)]), Struct_3((3255u != u_input.a) & func_2(vec2<f32>(1139f, global0[_wgslsmith_index_u32(69563u, 27u)]), Struct_1(vec3<bool>(global2.a, global2.a, false), vec3<i32>(-1i, 31964i, 57416i)))), ~vec2<i32>(~2147483647i, _wgslsmith_div_i32(-1i, 2147483647i))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(12076u, 27u)], 1062f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 27u)], 213f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19542u, 27u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 21714u, 35694u), vec4<u32>(40624u, 1u, u_input.a, u_input.a)), 27u)])))));
    let var_1 = select(min(-1i, 1i), abs(reverseBits(_wgslsmith_clamp_i32(0i, 7464i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -43283i, 2147483647i), vec3<i32>(-34925i, -35961i, 0i))))), var_0.a.a);
    global1 = array<vec3<u32>, 5>();
    var var_2 = Struct_4(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 27u)], -1536f)))), Struct_3(func_3(var_0.b, Struct_3(true), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -6067i), vec2<i32>(var_1, -2147483647i))).a), vec2<i32>(var_1, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1, 1i), vec2<i32>(var_1, var_1)), vec2<i32>(var_1, var_1) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))))), Struct_2(_wgslsmith_f_op_vec2_f32(var_0.b.a * var_0.b.a), -1101f));
    return Struct_3(var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = u_input.a;
    let var_1 = Struct_4(Struct_3(true), Struct_2(vec2<f32>(-1437f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(126f, global0[_wgslsmith_index_u32(2572u, 27u)], global2.a))))), _wgslsmith_div_f32(-1771f, _wgslsmith_f_op_f32(-504f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 27u)])))));
    global0 = array<f32, 27>();
    global2 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b, var_1.b.b) + var_1.b.a), vec2<f32>(global0[_wgslsmith_index_u32(1u, 27u)], -1107f))) * vec2<f32>(1222f, -102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 27u)], -1000f))))), Struct_3(all(!select(vec2<bool>(var_1.a.a, global2.a), vec2<bool>(false, false), vec2<bool>(global2.a, global2.a)))), (vec2<i32>(~4380i, _wgslsmith_sub_i32(-32442i, -1i)) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(0i, 0i), vec2<i32>(0i, -65452i))) << (vec2<u32>(~(~16172u), 10187u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, countOneBits(firstTrailingBit(u_input.a)), ~vec2<i32>(1i, ~2147483647i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 27u)], 238f)), _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(select(-1934f, global0[_wgslsmith_index_u32(u_input.a, 27u)], global2.a))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a, 27u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 27u)] * -724f), _wgslsmith_f_op_f32(-586f + var_1.b.a.x)), !all(vec3<bool>(global2.a, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -498f, global0[_wgslsmith_index_u32(u_input.a, 27u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1229f, var_1.b.b))))));
}

