struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(arg_0);
    let var_2 = !vec4<bool>(any(vec2<bool>(false, true)), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), ~(~global0.a) >= global0.a, _wgslsmith_dot_vec4_u32(u_input.c & vec4<u32>(49772u, arg_0, 6491u, global0.a), ~vec4<u32>(0u, global0.a, global0.a, 0u)) < _wgslsmith_mult_u32(~1u, global0.a));
    let var_3 = Struct_2(~global0.a, vec2<i32>(reverseBits(var_0), global1[_wgslsmith_index_u32(57025u, 9u)]));
    var var_4 = vec4<bool>(~54303u <= arg_0, var_2.x, any(vec3<bool>(false, true, !(!var_2.x))), false);
    return vec4<bool>(true, var_4.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-496f))) >= _wgslsmith_f_op_f32(step(-550f, _wgslsmith_f_op_f32(f32(-1f) * -1547f)))), var_4.x);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_add_u32(1u, firstLeadingBit(40110u)), ~reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), reverseBits(vec2<i32>(global0.b.x, global0.b.x)))));
    global0 = Struct_2(~global0.a >> (~1u % 32u), -global0.b);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-133f, -1334f, true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(415f)), -1864f))), -1022f);
    let var_1 = false;
    let var_2 = func_3(~(~7724u));
    return Struct_2(~(countOneBits(0u >> (u_input.c.x % 32u)) ^ _wgslsmith_div_u32(70069u, 17079u)), global0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    global0 = arg_0;
    var var_0 = ~_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mult_vec3_u32(u_input.c.xwx, u_input.c.zxx)), ~u_input.c.wyx >> (vec3<u32>(arg_0.a | 27714u, ~15881u, global0.a) % vec3<u32>(32u)), countOneBits(vec3<u32>(max(global0.a, 4294967295u), arg_2.a, _wgslsmith_sub_u32(arg_0.a, arg_2.a))));
    global1 = array<i32, 9>();
    var_0 = u_input.c.zzy;
    let var_1 = Struct_1(28070u);
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<i32>(global0.b.x, ~(-12208i), u_input.a);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c));
    let var_2 = Struct_1(~firstLeadingBit(global0.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1057f)), _wgslsmith_f_op_f32(sign(-395f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-140f, 1913f)))), vec2<f32>(1f, 1f))), vec2<f32>(-1253f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-648f, 708f))))));
    let var_4 = func_4(Struct_2(1u, select(~global0.b | global0.b, firstLeadingBit(global0.b), true)), vec2<u32>(~(~(~0u)), 1u), func_2());
    return Struct_1(64128u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~global0.a, select(_wgslsmith_div_vec2_i32(vec2<i32>(-3175i, u_input.a) & vec2<i32>(11408i, -93712i), max(-global0.b, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)))), ~abs(vec2<i32>(-14877i, 1i)), true));
    let var_1 = func_1();
    var var_2 = -vec4<i32>(-(~firstLeadingBit(2147483647i)), _wgslsmith_dot_vec2_i32(select(func_4(Struct_2(u_input.c.x, global0.b), u_input.c.zz, Struct_2(var_1.a, global0.b)).b, -vec2<i32>(54185i, -46669i), true), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), var_0.b)), ~global1[_wgslsmith_index_u32(global0.a, 9u)], var_0.b.x);
    global1 = array<i32, 9>();
    let var_3 = firstTrailingBit(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_3 | (var_3 >> (firstLeadingBit(u_input.c) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(~u_input.b, 4488u, ~1u), 48724u, _wgslsmith_add_u32(min(7074u, 0u), ~61833u), func_2().a | var_0.a)), 1163f, -1i, var_2.zzw, _wgslsmith_f_op_f32(max(-970f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(320f)) + _wgslsmith_div_f32(275f, 699f))))));
}

