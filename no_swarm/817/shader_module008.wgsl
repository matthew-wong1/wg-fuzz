struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 2>;

var<private> global4: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32) -> bool {
    global0 = array<vec4<i32>, 12>();
    var var_0 = Struct_2(~firstLeadingBit(32618u));
    var_0 = Struct_2(2238u);
    let var_1 = Struct_3(-2147483647i < min(~(~25668i), ~global4.x), arg_0.x);
    var_0 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(35816u, var_0.a, 74606u)), ~vec3<u32>(var_0.a, var_0.a, global2.a) >> (~vec3<u32>(global2.a, global2.a, 14372u) % vec3<u32>(32u))), 0u));
    return true;
}

fn func_2() -> f32 {
    let var_0 = false | (func_3(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(global1[_wgslsmith_index_u32(global2.a, 29u)])), vec3<f32>(-741f, -940f, _wgslsmith_f_op_f32(min(438f, -1811f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(746f)))) | !(firstLeadingBit(0i) == firstTrailingBit(u_input.a)));
    let var_1 = Struct_3(select(var_0, true, all(select(select(vec3<bool>(true, true, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, var_0)), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, false, var_0), false), !vec3<bool>(var_0, true, var_0)))), all(select(select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), var_0), !vec2<bool>(var_0, false), !var_0)));
    let var_2 = select(global2.a, firstLeadingBit(_wgslsmith_clamp_u32(~4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 47292u, global2.a, global2.a), ~vec4<u32>(global2.a, 0u, 77189u, global2.a)))), !any(!vec2<bool>(var_1.b, false)));
    var var_3 = ~vec2<u32>(countOneBits(1u), 6591u);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(307f))) * -612f) - 1093f);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1025f * _wgslsmith_div_f32(652f, 1689f))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = 0i;
    var var_1 = Struct_3(!arg_0.x, any(vec4<bool>(!(!arg_0.x), !(!arg_0.x), u_input.a > global4.x, !arg_0.x)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(-852f))) + vec3<f32>(1275f, 266f, _wgslsmith_f_op_f32(arg_2 * arg_2))) + vec3<f32>(692f, arg_2, 224f)), Struct_2(global2.a), global2.a, select(!select(!vec3<bool>(var_1.b, var_1.b, var_1.a), vec3<bool>(false, false, arg_0.x), all(vec3<bool>(var_1.b, false, arg_0.x))), arg_0, any(!(!arg_0))));
    return firstTrailingBit(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstLeadingBit(~vec2<i32>(3804i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global4.x, 32609i), vec3<i32>(-26313i, u_input.a, global4.x)), global4.x));
    var var_0 = any(vec3<bool>(true, true, true)) & false;
    global3 = array<Struct_1, 2>();
    global0 = array<vec4<i32>, 12>();
    let var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), false)), any(!vec2<bool>(u_input.a >= u_input.a, all(vec3<bool>(false, false, true)))));
    var var_2 = vec2<u32>(~(reverseBits(0u) << (_wgslsmith_add_u32(max(27136u, global2.a), func_1(vec3<bool>(true, false, true), global4.x, 802f)) % 32u)), 63652u);
    let var_3 = min(vec3<u32>(~_wgslsmith_clamp_u32(27537u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.a, var_2.x, 13460u), vec4<u32>(global2.a, 1u, 4294967295u, var_2.x)), var_2.x), global2.a, reverseBits(~3250u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(~25931u, 95485u, var_2.x >> (var_2.x % 32u)), firstLeadingBit(~vec3<u32>(global2.a, global2.a, global2.a)) >> (vec3<u32>(4294967295u, 4294967295u, global2.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u & global2.a, var_2.x, _wgslsmith_div_u32(6550u, global2.a)), firstLeadingBit(vec3<u32>(global2.a, var_2.x, var_2.x)) & abs(vec3<u32>(global2.a, var_2.x, 60717u)))));
    var var_4 = ~vec4<u32>(~(~min(var_3.x, var_2.x)), max(~1u | _wgslsmith_add_u32(var_3.x, global2.a), ~76421u << (global2.a % 32u)), 0u, 4294967295u);
    global3 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~u_input.a), -29564i, 0i));
}

