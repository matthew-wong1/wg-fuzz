struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)));

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(~select(abs(~vec2<u32>(global1.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, global1.a.x >> (u_input.a.x % 32u)), vec2<bool>(true, !global1.b.a.x)), Struct_1(global1.b.a));
    let var_1 = global1.b;
    var_0 = Struct_2(firstLeadingBit(var_0.a), var_0.b);
    let var_2 = true;
    let var_3 = -745f;
    return Struct_2(vec2<u32>(~(global1.a.x | ~8862u), 0u), global1.b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    global1 = func_2(-10792i <= _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(2147483647i), abs(19215i)), -(vec2<i32>(-6950i, -2147483647i) >> (arg_2 % vec2<u32>(32u)))));
    global0 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    global0 = array<Struct_1, 16>();
    let var_1 = vec4<i32>(max(-44167i, 1i), -1i, ~reverseBits(_wgslsmith_mult_i32(37169i, 0i)), min(_wgslsmith_mod_i32(1i, 2147483647i) << ((arg_1 << (arg_0.a.x % 32u)) % 32u), 0i));
    return 22132u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(vec3<u32>(~arg_0.a.x, (u_input.a.x & countOneBits(arg_1.a.x)) & u_input.a.x, ~func_3(func_2(false), global1.a.x | 4294967295u, ~arg_2.a)), Struct_2(select(~global1.a, vec2<u32>(1u, _wgslsmith_add_u32(arg_1.a.x, 26048u)), vec2<bool>(true, true)), global1.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(504f, -1441f)), _wgslsmith_f_op_f32(round(2341f)), _wgslsmith_f_op_f32(f32(-1f) * -148f))))), _wgslsmith_mod_u32(1u, 87247u) ^ (func_2(false).a.x & arg_0.a.x), 2147483647i);
    global1 = var_0.b;
    var var_1 = func_3(func_2(arg_2.b.a.x), 25370u, _wgslsmith_div_vec2_u32(func_2(false).a, u_input.a));
    var var_2 = Struct_3(~var_0.a, arg_1, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x * -167f), 533f))), -754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) * var_0.c.x)), arg_0.a.x, _wgslsmith_sub_i32(var_0.e, 1i));
    var_1 = var_2.b.a.x;
    return -25382i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(1i & _wgslsmith_sub_i32(-1i, func_1(Struct_2(vec2<u32>(0u, u_input.a.x), Struct_1(global1.b.a)), Struct_2(global1.a, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), Struct_2(global1.a, Struct_1(vec4<bool>(false, true, global1.b.a.x, global1.b.a.x))))), -27893i), -vec2<i32>(-(-30886i << (global1.a.x % 32u)), 0i));
    let var_1 = firstTrailingBit(5989u) < reverseBits(max(~(~31206u), firstLeadingBit(~u_input.a.x)));
    global1 = func_2(var_1);
    let var_2 = any(vec4<bool>(func_2(true).b.a.x, all(vec4<bool>(global1.b.a.x, select(true, var_1, true), global1.b.a.x, var_1)), true, true));
    var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -50373i), vec2<i32>(var_0.x, var_0.x))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(34760i, var_0.x), vec2<i32>(-1i, 17720i))), vec2<i32>(var_0.x, ~firstLeadingBit(var_0.x)), ~vec2<i32>(-60201i, var_0.x)), vec2<i32>(~(-var_0.x & (i32(-1i) * -1i)), 9626i), vec2<i32>(abs(_wgslsmith_sub_i32(1i, ~4661i)), var_0.x));
    global1 = func_2(true);
    var var_3 = ~(~u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(341f))), 1193f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1218f, 1056f)), _wgslsmith_div_f32(-452f, -1464f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 684f)))), _wgslsmith_f_op_f32(sign(1f))), vec4<f32>(-2924f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-120f, -547f))), _wgslsmith_f_op_f32(-566f - _wgslsmith_f_op_f32(abs(1587f))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-158f - _wgslsmith_div_f32(-1509f, _wgslsmith_f_op_f32(f32(-1f) * -543f))))));
    var var_5 = Struct_2(global1.a, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.x * var_4.x)))))), ~(~max(~46505u, ~4294967295u)), min(~(~7971i) & var_0.x, -44366i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.x, -1000f)) + _wgslsmith_f_op_f32(min(1081f, var_4.x))), -1283f))));
}

