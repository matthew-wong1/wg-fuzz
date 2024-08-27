struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(17437u), Struct_1(1u), 1u, vec3<bool>(false, true, false));

var<private> global2: array<vec4<f32>, 7>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0u), Struct_1(1u), Struct_1(91452u), Struct_1(67041u));

var<private> global4: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_2(arg_0.a, global3[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_div_u32(global1.a.a, var_0.a.a), select(!select(var_0.d, vec3<bool>(false, true, var_0.d.x), select(true, true, false)), !var_0.d, var_0.d));
    global2 = array<vec4<f32>, 7>();
    return -1247f;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<i32>(1139i, 1i) & vec2<i32>(-1i | u_input.b, 11227i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(func_3(Struct_2(global3[_wgslsmith_index_u32(0u, 4u)], global1.a, global1.b.a, global1.d)))) * -849f)));
    global3 = array<Struct_1, 4>();
    var var_2 = vec2<f32>(-835f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f - -784f) - _wgslsmith_f_op_f32(step(-545f, 1188f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-629f))) + _wgslsmith_f_op_f32(floor(320f)))));
    var var_3 = vec2<f32>(-458f, var_2.x);
    return Struct_2(global3[_wgslsmith_index_u32(global1.b.a, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], 0u >> (global1.b.a % 32u), vec3<bool>(true, true, global1.d.x));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = true;
    let var_1 = select(select(!arg_2.d.yy, select(!arg_2.d.zz, select(!arg_1.xy, !arg_2.d.xz, !global1.d.xz), func_2().d.yx), true), func_2().d.xy, vec2<bool>(true, arg_1.x && !select(false, true, global1.d.x)));
    var var_2 = func_2();
    let var_3 = arg_0;
    var var_4 = func_2();
    return func_2();
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), func_2(), Struct_1(~4294967295u));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(~u_input.b, 0i ^ u_input.a.x)), _wgslsmith_dot_vec4_i32(select(select(u_input.a, u_input.a, vec4<bool>(var_0.d.x, global1.d.x, false, true)), u_input.a, !var_0.d.x), ~vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -60559i))), vec2<i32>(-43538i, ~(-2147483647i)));
    var var_2 = func_2();
    var var_3 = Struct_1(countOneBits(~var_0.b.a));
    global0 = _wgslsmith_div_i32(15575i, firstTrailingBit(countOneBits(u_input.a.x)));
    return vec4<u32>(_wgslsmith_clamp_u32(1u, global1.a.a, ~(~_wgslsmith_add_u32(var_0.c, 4294967295u))), ~40892u, var_3.a << (abs(var_2.c) % 32u), var_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u);
    global4 = -450f;
    var var_1 = -30839i;
    let var_2 = _wgslsmith_dot_vec4_u32(min(~(~func_1(u_input.a.zyz, global2[_wgslsmith_index_u32(global1.b.a, 7u)], global1.d, vec3<f32>(-994f, 994f, 701f))), vec4<u32>(_wgslsmith_add_u32(global1.a.a, var_0.a), _wgslsmith_sub_u32(global1.a.a, 24333u), 37397u, 52252u)), ~vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(global1.c), _wgslsmith_sub_u32(0u, global1.b.a)), abs(1u), ~_wgslsmith_add_u32(var_0.a, 1u), ~func_2().a.a));
    var var_3 = !vec4<bool>(true, global1.d.x, true, true);
    var_0 = Struct_1(~var_0.a);
    global3 = array<Struct_1, 4>();
    let var_4 = Struct_2(global3[_wgslsmith_index_u32(countOneBits(~32954u), 4u)], global1.a, 16631u, select(vec3<bool>(true, true, true), func_4(-136f, select(!vec3<bool>(true, var_3.x, var_3.x), select(var_3.zxw, vec3<bool>(true, false, false), var_3.xzy), vec3<bool>(false, true, true)), Struct_2(Struct_1(79281u), global1.b, 1u, !global1.d), Struct_1(var_2)).d, vec3<bool>(!all(var_3.xzx), false, any(vec2<bool>(global1.d.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 18955i, -14758i), _wgslsmith_sub_vec3_i32(u_input.a.zww, u_input.a.yxx)), _wgslsmith_mod_i32(min(u_input.a.x, 1i), u_input.b), 4135i, -_wgslsmith_sub_i32(-5827i, -7181i))));
}

