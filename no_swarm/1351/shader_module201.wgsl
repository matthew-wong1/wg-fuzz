struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(116005u), Struct_1(0u), Struct_1(29573u), Struct_1(34828u), Struct_1(1u), Struct_1(13829u), Struct_1(4294967295u), Struct_1(1u), Struct_1(97371u), Struct_1(11711u), Struct_1(0u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(9233u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(9355u), Struct_1(0u), Struct_1(66160u), Struct_1(4439u), Struct_1(1u), Struct_1(1u), Struct_1(46772u), Struct_1(4294967295u), Struct_1(0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global1 = array<Struct_1, 28>();
    var var_0 = global1[_wgslsmith_index_u32(~arg_2.a, 28u)];
    var var_1 = arg_1;
    var_0 = Struct_1(firstLeadingBit(var_1.a));
    var_1 = arg_2;
    return _wgslsmith_clamp_i32(~(-9149i), firstLeadingBit(i32(-1i) * -1i), 0i);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(~arg_0.x);
    var var_1 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), arg_2.zx), ~u_input.b.x, abs(-1i), -arg_2.x), -abs(vec4<i32>(arg_2.x, arg_2.x, -2147483647i, -9875i))), arg_2));
    global1 = array<Struct_1, 28>();
    return global1[_wgslsmith_index_u32(arg_0.x, 28u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.a, 28u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -143f);
    var var_2 = func_3(countOneBits(vec3<u32>(0u, _wgslsmith_div_u32(var_0.a ^ 56505u, _wgslsmith_add_u32(arg_1.a, arg_0.a)), u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1496f) + -439f), _wgslsmith_f_op_f32(var_1 - 179f)))), firstTrailingBit((vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i) << (vec4<u32>(var_0.a, 1u, arg_1.a, var_0.a) % vec4<u32>(32u))) & vec4<i32>(-2147483647i, u_input.b.x, -8831i, func_2(global0.x, Struct_1(109372u), Struct_1(4294967295u)))), global0.x);
    let var_3 = arg_1;
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a, 1u), 28u)];
    return _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -954f), -1163f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    global1 = array<Struct_1, 28>();
    var var_0 = u_input.b.x;
    var_0 = firstLeadingBit(1i & (~u_input.b.x | firstTrailingBit(u_input.b.x)));
    let var_1 = false;
    global0 = select(vec4<bool>(!global0.x, global0.x, !any(select(global0.xxx, vec3<bool>(false, true, true), global0.zyy)), all(select(vec2<bool>(true, true), vec2<bool>(var_1, true), all(global0.yww)))), vec4<bool>(true, all(!vec2<bool>(true, global0.x)) || true, var_1, true != (global0.x || var_1)), !(!vec4<bool>(true, global0.x, true, false)));
    return func_3(firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(u_input.c.x, 22138u, u_input.a)), vec3<u32>(4294967295u, u_input.a, 4294967295u)) | vec3<u32>(72996u, 16795u, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x)), select(u_input.b, vec4<i32>(0i, min(~u_input.b.x, u_input.b.x >> (4294967295u % 32u)), -6906i, -_wgslsmith_dot_vec3_i32(u_input.b.yyx, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), !vec4<bool>(global0.x, all(global0.wzy), all(global0.xzy), false)), global0.x);
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    global1 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -494f), 556f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2333f * -1706f), -200f)))) - _wgslsmith_f_op_f32(f32(-1f) * -780f));
    let var_1 = func_3(~select(vec3<u32>(43272u, _wgslsmith_add_u32(69146u, arg_0.a), 1u), abs(abs(vec3<u32>(72602u, arg_0.a, u_input.a))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, global0.x), global0.x), select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, true, global0.x), global0.yyy), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-212f, _wgslsmith_f_op_f32(floor(-823f)))) - 1f) + 1951f), ~countOneBits(~u_input.b), false);
    global0 = !(!select(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, global0.x, false)), select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), true), vec4<bool>(true, true, true, global0.x), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, true, false), vec4<bool>(true, global0.x, false, false))), false));
    return !(!vec4<bool>(global0.x, all(vec2<bool>(true, true)), any(global0.wwy), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_5(func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-380f, -235f, -408f) + vec3<f32>(-1198f, -530f, 1453f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 815f) - _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u), Struct_1(1u))))));
    var var_0 = ~vec4<i32>(-2147483647i, i32(-1i) * -46521i, u_input.b.x, _wgslsmith_add_i32(~abs(u_input.b.x), min(21320i, 1i)));
    var_0 = max(~(~(-u_input.b) << (vec4<u32>(51607u, ~1u, ~1u, 1u) % vec4<u32>(32u))), max(select(countOneBits(-vec4<i32>(1i, var_0.x, -35687i, 2147483647i)), u_input.b, _wgslsmith_mult_i32(u_input.b.x, 2147483647i) <= ~1i), -u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(644f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_1(1u), Struct_1(u_input.a))), _wgslsmith_f_op_f32(1526f * -1022f), true))), _wgslsmith_f_op_f32(floor(1141f))));
    let var_2 = global1[_wgslsmith_index_u32(func_4(vec3<f32>(_wgslsmith_f_op_f32(280f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, false)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, 2810f), _wgslsmith_f_op_f32(sign(1000f))))) + 862f)).a, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 754f);
}

