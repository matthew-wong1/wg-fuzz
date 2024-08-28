struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> u32 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = vec4<bool>(!((i32(-1i) * -u_input.a) < u_input.a), !any(vec3<bool>(true, true, true)), !(!(global0[_wgslsmith_index_u32(1u << (0u % 32u), 23u)] > _wgslsmith_f_op_f32(abs(1000f)))), true);
    let var_1 = var_0.x || true;
    return 34142u;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = arg_2.c;
    let var_1 = !select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f + global0[_wgslsmith_index_u32(arg_0.x, 23u)]) + _wgslsmith_f_op_f32(f32(-1f) * -439f)) != _wgslsmith_f_op_f32(min(920f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x, 23u)], 925f))), true, all(!select(vec3<bool>(var_0.b.x, var_0.c.x, false), vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, false, false))));
    let var_2 = !(0i >= -u_input.a);
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return ~(-_wgslsmith_div_vec2_i32(~max(vec2<i32>(u_input.a, 1i), vec2<i32>(-8821i, u_input.a)), vec2<i32>(1i, 1i)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> u32 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = _wgslsmith_clamp_i32(-2147483647i, 10426i, ~22589i);
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(14495u, 30129u), abs(vec2<u32>(0u, 0u))), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(61723u, 24192u), vec2<u32>(29933u, 4294967295u)), 0u >> (0u % 32u)), 13861u, ~(~24789u)) >> (~abs(select(vec4<u32>(1u, 51284u, 11717u, 74056u), vec4<u32>(6642u, 33854u, 54104u, 45969u), arg_3.c.b.x)) % vec4<u32>(32u)));
    var var_2 = Struct_2(arg_2, true, arg_3.c);
    return var_1.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = Struct_1(false, vec4<bool>(any(vec4<bool>(true, u_input.a <= u_input.a, false, true)), u_input.a >= 0i, true, any(vec4<bool>(true, arg_2.x > -1121f, all(vec4<bool>(true, true, true, true)), select(true, false, true)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), !vec3<bool>(4294967295u <= arg_1, any(vec2<bool>(false, true)), arg_1 != arg_1)), 1066f != _wgslsmith_f_op_f32(-arg_2.x));
    var var_2 = var_1.c.zy;
    let var_3 = Struct_2(var_2.x, func_2() <= 13632u, var_1);
    var var_4 = !any(!(!vec3<bool>(var_1.d, var_3.b, true))) | true;
    return vec2<bool>(false, true);
}

fn func_1(arg_0: f32, arg_1: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_div_i32(0i, -21545i >> (firstLeadingBit(abs(func_2())) % 32u));
    var var_1 = func_5(select(vec3<u32>(1u, 1u, 1u), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(48204u, 1u, 0u), vec3<u32>(23612u, 0u, 1u), vec3<u32>(1u, 40546u, 44169u))) << (vec3<u32>(~1u, min(0u, 1u), _wgslsmith_clamp_u32(5997u, 0u, 1u)) % vec3<u32>(32u)), select(!(!vec3<bool>(arg_1, true, true)), vec3<bool>(false, arg_1, true), vec3<bool>(!arg_1, false, !arg_1))), ~func_4(_wgslsmith_dot_vec2_i32(func_3(vec4<u32>(66145u, 25831u, 65458u, 4294967295u), true, Struct_2(false, false, Struct_1(false, vec4<bool>(false, arg_1, false, true), vec3<bool>(false, arg_1, arg_1), true))), countOneBits(vec2<i32>(var_0, 2147483647i))), u_input.a, true, Struct_2(arg_1 & false, arg_1, Struct_1(false, vec4<bool>(false, false, arg_1, false), vec3<bool>(arg_1, true, arg_1), true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 769f) - vec2<f32>(-146f, 583f)))), vec2<f32>(arg_0, -1545f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1249f) + vec2<f32>(553f, 896f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(19590u, 23u)]), vec2<f32>(-484f, -480f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1309f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)), arg_1)))))));
    let var_2 = Struct_2(var_1.x, select(arg_0 <= _wgslsmith_f_op_f32(f32(-1f) * -735f), arg_1 | true, !var_1.x), Struct_1(var_1.x, !select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, false, var_1.x, false), false), true), vec3<bool>(false, true, true), (any(vec2<bool>(var_1.x, arg_1)) & !arg_1) & true));
    let var_3 = abs(_wgslsmith_clamp_vec4_i32(reverseBits(~countOneBits(vec4<i32>(-22181i, var_0, u_input.a, u_input.a))), reverseBits(vec4<i32>(var_0, -u_input.a, 1i, abs(u_input.a))), vec4<i32>(-9113i, 3900i, _wgslsmith_dot_vec2_i32(vec2<i32>(37705i, var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), -reverseBits(1i))));
    let var_4 = !vec3<bool>(all(!var_2.c.c.zy) != false, true, false);
    return StorageBuffer(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~80161u, firstTrailingBit(4294967295u), 1u), reverseBits(1694u)), firstTrailingBit(vec3<u32>(~(~20973u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(51497u, 4294967295u, 17542u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(25173u, 44481u, 9385u, 4294967295u))))), 43721u, 279f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1364f, arg_0, arg_0), vec3<f32>(arg_0, 913f, 1000f)), vec3<f32>(-1000f, -453f, -657f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global0[_wgslsmith_index_u32(70413u, 23u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 23u)] > -828f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1403f)), 1104f, -855f, _wgslsmith_f_op_f32(f32(-1f) * -557f)));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(651f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(65137u, 23u)]) - -459f))), true);
}

