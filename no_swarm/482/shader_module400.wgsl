struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(4294967295u, 1i);

var<private> global2: u32 = 4294967295u;

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(global4.a, 15969i);
    var_0 = arg_1;
    global1 = Struct_1(u_input.c, 1i);
    var var_1 = 1u;
    let var_2 = select(select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), (arg_2.a != arg_1.a) == true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, all(vec2<bool>(false, true)) && false), vec4<bool>(all(vec2<bool>(63954u <= arg_1.a, true)), !(arg_0.x != arg_0.x), select(true, _wgslsmith_f_op_f32(abs(arg_0.x)) == _wgslsmith_f_op_f32(min(arg_0.x, -204f)), any(vec2<bool>(true, true))), !all(vec3<bool>(true, false, true)) | any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    return global4.b;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: bool) -> vec4<i32> {
    global2 = 1u;
    let var_0 = _wgslsmith_add_i32((-global1.b & ~u_input.e) & _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, global0.x, arg_0), vec3<i32>(-2201i, global1.b, 2147483647i)), -61857i | ~global0.x) | _wgslsmith_sub_i32(u_input.e, _wgslsmith_mod_i32(i32(-1i) * -global4.b, 2147483647i));
    var var_1 = _wgslsmith_clamp_i32(54214i, -2147483647i, min(firstTrailingBit(~global4.b), func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, -1124f)))), Struct_1(countOneBits(0u), global0.x), Struct_1(_wgslsmith_mult_u32(0u, 1u), 0i))));
    let var_2 = Struct_1(global1.a, u_input.e);
    global0 = firstTrailingBit(~_wgslsmith_add_vec3_i32(select(~vec3<i32>(-2147483647i, -2147483647i, var_0), vec3<i32>(arg_0, 0i, global4.b), arg_3 == arg_3), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b, var_2.b, global4.b), vec3<i32>(global1.b, 61836i, 1i), vec3<i32>(global4.b, -3285i, 26026i))));
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, _wgslsmith_mult_i32(1i, global1.b), _wgslsmith_mod_i32(-42413i, -54646i), reverseBits(arg_2)), -countOneBits(vec4<i32>(-6643i, 14401i, arg_0, 0i)), -(vec4<i32>(-1i) * -vec4<i32>(0i, arg_0, global4.b, 38044i))), -(~vec4<i32>(36954i, max(global0.x, -20944i), func_3(vec2<f32>(arg_1, -141f), Struct_1(u_input.c, 1i), var_2), -arg_2)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = ~(~(~(~vec4<i32>(14317i, 1i, global0.x, global4.b)))) ^ vec4<i32>(0i, 2147483647i, global0.x, _wgslsmith_dot_vec4_i32(func_2(u_input.e, -747f, 1i, true), ~(vec4<i32>(1i, global4.b, global0.x, global4.b) ^ vec4<i32>(-39537i, -1i, u_input.e, u_input.e))));
    var var_1 = select(1u > min(57779u, global1.a), _wgslsmith_f_op_f32(-arg_0.x) <= -490f, any(select(vec2<bool>(true, false), vec2<bool>(true, true), !(1i <= u_input.e))));
    global3 = all(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), global4.b > global0.x), vec3<bool>(true, true, true), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    global4 = Struct_1(abs(reverseBits(global4.a | 66718u)), global0.x);
    global3 = true;
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.a, global1.a, global4.a) & select(vec3<u32>(1u, global4.a, 0u), vec3<u32>(u_input.c, 4294967295u, global1.a), vec3<bool>(false, false, true)), max(firstLeadingBit(vec3<u32>(1u, u_input.b, global1.a)), countOneBits(vec3<u32>(u_input.a, 0u, 31067u)))), abs(~vec3<u32>(1u, 0u, global4.a))), -var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(254f, 503f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-332f * -1009f), -710f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(2022f, -1000f), vec2<f32>(-1001f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1242f, 1492f) + vec2<f32>(1000f, -593f)))))));
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(min(~global4.a, 39092u), max(global4.a, ~global4.a)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1521f, -747f)), _wgslsmith_div_f32(1867f, 719f)) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(1334f))))).a, _wgslsmith_mult_u32(23581u, _wgslsmith_mod_u32(4294967295u, 47240u)));
    let var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(2544u, ~(~0u)), var_0.x), 5918i);
    var var_2 = abs(59373u);
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(~countOneBits(u_input.e), max(-4031i, -2633i)), _wgslsmith_add_vec2_i32(func_2(global4.b, _wgslsmith_f_op_f32(step(-1000f, 771f)), 1i, true).xz, vec2<i32>(-19026i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), -1546f), max(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), var_0.zy), 10386u, var_1.a), var_0), vec4<i32>(-global1.b, ~1i, global1.b, _wgslsmith_add_i32(global0.x, firstTrailingBit(1i))));
}

