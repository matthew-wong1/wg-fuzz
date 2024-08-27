struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-658f, 1335f, 405f, -660f);

var<private> global1: f32 = 1384f;

var<private> global2: Struct_2;

var<private> global3: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global4: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))));
    var var_1 = Struct_1(select(vec4<bool>(global2.a.x, true, false, true | global2.a.x), select(vec4<bool>(var_0.x > 1686f, true, true, 54087u > global2.b), vec4<bool>(808f <= arg_0.x, all(vec2<bool>(global2.a.x, global2.a.x)), true, !global2.a.x), true), select(!select(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true), vec4<bool>(true, global2.a.x, false, true), true), select(vec4<bool>(true, global2.a.x, false, true), !vec4<bool>(global2.a.x, true, global2.a.x, false), select(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x))), global2.a.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-651f, _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(min(117f, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, arg_0.x, -448f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.xwx), _wgslsmith_f_op_vec3_f32(global0.wyz + arg_0.yxx), var_0.x == arg_0.x))))));
    global2 = Struct_2(vec3<bool>(global2.a.x, all(!vec3<bool>(global2.a.x, global2.a.x, var_1.a.x)), !global2.a.x), min(countOneBits(0u), ~(~_wgslsmith_div_u32(arg_1, 61741u))));
    var var_2 = vec3<u32>(1u, u_input.b, global2.b | _wgslsmith_clamp_u32(countOneBits(114275u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 113833u, global2.b, u_input.b), vec4<u32>(4294967295u, arg_1, 1u, arg_1)) & _wgslsmith_mult_u32(0u, 4294967295u)));
    let var_3 = Struct_4(global0.x);
    return ~(~u_input.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    let var_0 = u_input.b;
    let var_1 = min(~(~(-u_input.a.xzw)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-5344i, 0i, -9005i), _wgslsmith_div_vec3_i32(u_input.a.zyy, vec3<i32>(u_input.a.x, 0i, -18015i)), reverseBits(vec3<i32>(0i, u_input.a.x, 60829i))) << (vec3<u32>(func_3(arg_1, 1u), _wgslsmith_div_u32(global2.b, 1u), u_input.b) % vec3<u32>(32u))) & abs(reverseBits(abs(u_input.a.wxx)));
    global4 = abs(countOneBits(-var_1.x));
    var var_2 = 281f;
    var var_3 = Struct_1(vec4<bool>(global2.a.x, !(var_1.x != u_input.a.x), !(!all(arg_2.a.yz)), _wgslsmith_f_op_f32(arg_2.b.x + 272f) <= arg_1.x), vec3<f32>(-576f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-167f + 315f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f * 221f))))));
    return any(vec3<bool>(all(vec2<bool>(true, arg_2.a.x != false)), true, global2.a.x));
}

fn func_1() -> bool {
    global2 = Struct_2(!vec3<bool>(true, !func_2(vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x), vec4<f32>(global0.x, global0.x, 576f, 747f), Struct_1(vec4<bool>(true, true, false, global2.a.x), vec3<f32>(global0.x, global0.x, 223f))), 257f < global0.x), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-699f, global0.x, global0.x, global0.x)), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_div_u32(global2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 75794u, 0u, u_input.b), vec4<u32>(global2.b, global2.b, 0u, 0u))) & firstTrailingBit(_wgslsmith_mod_u32(62933u, global2.b))));
    let var_0 = false;
    global3 = array<vec3<bool>, 15>();
    let var_1 = Struct_1(vec4<bool>(global2.a.x, global2.a.x, select(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(global2.a.x, global2.a.x, false, false), vec4<bool>(global2.a.x, true, false, global2.a.x))), var_0 && false), !all(vec4<bool>(global2.a.x, global2.a.x, true, true)) && !select(true, false, global2.a.x)), global0.yzx);
    global4 = firstTrailingBit(2147483647i);
    return all(!vec4<bool>(var_0, true, !var_0, false)) || true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<bool>(false, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * -2443f)) == 2187f, func_1()), ~16270u);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-296f, 550f, 629f, global0.x) - vec4<f32>(global0.x, global0.x, -683f, 811f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_f_op_f32(392f + global0.x), _wgslsmith_f_op_f32(-638f - global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))), global0.x, _wgslsmith_f_op_f32(130f - 122f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, 1000f)))));
    global3 = array<vec3<bool>, 15>();
    let var_1 = Struct_1(vec4<bool>(!select(global2.a.x && var_0.a.x, false, false), false || var_0.a.x, var_0.a.x, func_2(select(!vec4<bool>(var_0.a.x, var_0.a.x, true, global2.a.x), select(vec4<bool>(false, true, global2.a.x, true), vec4<bool>(global2.a.x, true, global2.a.x, var_0.a.x), var_0.a.x), false), vec4<f32>(global0.x, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(round(global0.x)), global0.x), Struct_1(!vec4<bool>(global2.a.x, false, true, global2.a.x), _wgslsmith_f_op_vec3_f32(-global0.xzx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -315f, _wgslsmith_div_f32(1012f, -1619f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.x, -1000f), global0.xxx))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-924f - global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, var_0.a.x))))))));
    global4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a.x, -1i), _wgslsmith_mult_vec3_u32(abs(firstLeadingBit(vec3<u32>(u_input.b, 7053u, 4294967295u))) | _wgslsmith_sub_vec3_u32(abs(vec3<u32>(global2.b, 4294967295u, 1u)), select(vec3<u32>(u_input.b, 69445u, u_input.b), vec3<u32>(47921u, 4294967295u, global2.b), var_0.a.x)), ~(min(vec3<u32>(66383u, 0u, 4294967295u), vec3<u32>(var_0.b, 37174u, 40278u)) | select(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(u_input.b, 4294967295u, 4294967295u), global2.a))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-var_1.b.x)))), u_input.a.x);
}

