struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7010u;

var<private> global1: vec3<f32>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(select(arg_1.b.xxx, abs(arg_1.b.zww) | (vec3<u32>(4294967295u, arg_0.x, arg_1.a.b) ^ ~arg_1.b.yyx), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), false, true)));
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_u32(arg_0.x, var_0.x << (~4294967295u % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, arg_1.a.b), ~arg_1.b.x));
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(751f, global1.x, 267f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, 998f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -830f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -942f, -488f) * vec3<f32>(-1308f, global1.x, 415f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(583f, global1.x, -268f))))), vec3<f32>(_wgslsmith_f_op_f32(-880f * global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(-1305f))), vec3<bool>(!var_1, select(var_1, var_1, false), all(vec3<bool>(var_1, false, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1198f, global1.x, global1.x) - vec3<f32>(-200f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -472f, global1.x)), vec3<bool>(var_1, false, var_1)))))));
    global2 = select(vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(43236u, arg_1.b.x, 32424u), vec3<u32>(5369u, 119u, 4294967295u)), abs(var_0)), 48175u, reverseBits(~1968u)) << (vec3<u32>(arg_3.b, abs(_wgslsmith_mult_u32(arg_1.a.b, 24448u)), 24720u) % vec3<u32>(32u)), countOneBits(~firstLeadingBit(min(arg_1.b.xyy, var_0))), select(select(select(select(vec3<bool>(false, var_1, false), vec3<bool>(true, true, true), true), vec3<bool>(var_1, var_1, false), all(vec3<bool>(true, var_1, var_1))), select(vec3<bool>(true, var_1, false), !vec3<bool>(var_1, var_1, false), !vec3<bool>(var_1, false, var_1)), select(!vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, false, true), vec3<bool>(true, var_1, var_1))), !(!(!vec3<bool>(var_1, true, false))), select(vec3<bool>(any(vec3<bool>(false, true, var_1)), global1.x >= 1295f, true), vec3<bool>(true, var_1, true), _wgslsmith_div_f32(2246f, -1008f) > global1.x)));
    return ~(~118674u);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = global3.a.b | _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.yx, vec2<u32>(45825u, 13246u), vec2<u32>(global3.a.b, global2.x)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global2.x), global2.xx)), _wgslsmith_div_u32(max(1u, 17299u), firstLeadingBit(16634u))), 6420u);
    global0 = _wgslsmith_sub_u32(global2.x, ~(~((global3.a.b ^ 11521u) & func_3(global2.xx, Struct_4(global3.a, vec4<u32>(global2.x, global2.x, global2.x, 4294967295u)), global3.a, Struct_1(global3.a.a, 14972u)))));
    return Struct_2(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(global3.a.b, 7746u, global3.a.b))), _wgslsmith_div_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(53676u, 59169u, global2.x), vec3<u32>(global3.a.b, 4294967295u, global3.a.b)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4440u, 33705u), vec3<u32>(global3.a.b, global3.a.b, global3.a.b))), ~(~vec3<u32>(45519u, 4294967295u, 1u)))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(531f)) * _wgslsmith_f_op_f32(step(-134f, global1.x))))))));
    var_0 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -441f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x * global1.x))))), global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, var_0.b.x)) + 2523f)), global1.x));
    var var_1 = Struct_3(Struct_1(global3.a.a, countOneBits(~33443u)));
    let var_2 = var_0.b;
    return Struct_4(global3.a, vec4<u32>(global3.a.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2.xy, abs(vec2<u32>(var_1.a.b, 58754u))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9812u, 9611u), vec2<u32>(global3.a.b, global3.a.b)), vec2<u32>(global2.x, 49476u))), ~_wgslsmith_div_u32(~var_1.a.b, func_2(global1.x).a), ~countOneBits(firstLeadingBit(4294967295u))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec2<bool> {
    return vec2<bool>(arg_3.x, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = ~arg_2;
    let var_1 = i32(-1i) * -arg_2;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(-17805i, 1i, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_2, var_0), vec3<i32>(var_1, var_0, 0i)), 35603u >= arg_1.a), _wgslsmith_sub_vec3_i32(~vec3<i32>(global3.a.a.x, 2147483647i, global3.a.a.x), ~vec3<i32>(-12448i, -1i, var_0))), arg_0.a.x), 0u);
    global3 = Struct_3(func_1().a);
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1104f, _wgslsmith_f_op_f32(f32(-1f) * -1238f))));
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(102130u);
    var var_0 = func_5(Struct_1(~(-global3.a.a), global2.x), Struct_2(1u, func_4(_wgslsmith_f_op_f32(select(global1.x, global1.x, all(vec3<bool>(true, false, false)))), func_1(), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1934f, 241f, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, -1358f, global1.x)))), vec2<bool>(true, true))), firstLeadingBit(2147483647i | -_wgslsmith_div_i32(-2147483647i, u_input.a.x)));
    global3 = Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(-2147483647i, var_0.a.x)) >> (~vec2<u32>(var_0.b, 1u) % vec2<u32>(32u)), max(reverseBits(vec2<i32>(-46056i, var_0.a.x)), -vec2<i32>(-2716i, -11960i))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1364f)).a ^ ~(~0u)));
    global2 = vec3<u32>(_wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(4294967295u ^ global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37651u, 0u, 0u), vec4<u32>(0u, 4294967295u, var_0.b, 10558u)))), global3.a.b & 1u), reverseBits(abs(firstTrailingBit(global3.a.b)) & func_3(vec2<u32>(0u, 18284u), Struct_4(Struct_1(global3.a.a, 1u), vec4<u32>(4294967295u, 0u, global2.x, 0u)), Struct_1(var_0.a, 10079u), Struct_1(vec2<i32>(-2723i, global3.a.a.x), 0u))), firstTrailingBit(~1u | ~global2.x) ^ (_wgslsmith_sub_u32(global2.x, var_0.b) | _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.x, var_0.b), var_0.b)));
    let var_1 = all(vec3<bool>(!(true && (global2.x >= global3.a.b)), !(select(false, true, false) & true), true));
    global3 = Struct_3(func_1().a);
    var var_2 = global1.x;
    let var_3 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(1263f, firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x | -2147483647i, _wgslsmith_mult_i32(0i, global3.a.a.x), select(-1i, 7728i, var_1)))));
}

