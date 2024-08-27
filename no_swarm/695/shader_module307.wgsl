struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<i32> = vec2<i32>(26806i, 0i);

var<private> global2: array<Struct_1, 5>;

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<f32> {
    global3 = true;
    global1 = vec2<i32>(global1.x, -16158i);
    global1 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i | arg_0), _wgslsmith_mod_vec2_i32(vec2<i32>(max(u_input.b.x, global1.x), global1.x) & firstTrailingBit(vec2<i32>(u_input.b.x, global1.x)), u_input.b));
    var var_0 = firstLeadingBit(vec4<u32>(~(~86628u), 4294967295u, firstTrailingBit(_wgslsmith_mod_u32(1u, arg_2.x)), ~select(arg_2.x, u_input.a, true)) << (select(~(~vec4<u32>(68761u, 4294967295u, 4294967295u, arg_2.x)), ~(~vec4<u32>(0u, 61016u, u_input.a, arg_2.x)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)))) % vec4<u32>(32u)));
    var var_1 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1.a != 982f), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, all(vec2<bool>(true, true)))), vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-616f, 1163f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, arg_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.b))))), var_1.x)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-962f)), _wgslsmith_f_op_f32(step(652f, -108f))) + arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(arg_1.b, arg_1.b)) - arg_1.b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: u32) -> i32 {
    global3 = arg_1;
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-769f, _wgslsmith_f_op_f32(-1905f + -1153f)))) - vec2<f32>(1f, 277f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-154f, _wgslsmith_f_op_f32(f32(-1f) * -1322f)))), _wgslsmith_f_op_vec2_f32(func_3(arg_0.x, Struct_1(-950f, 495f), vec2<u32>(u_input.a, ~0u)))))));
    global1 = vec2<i32>(arg_0.x, _wgslsmith_mult_i32(~(~2147483647i | global1.x), u_input.b.x));
    var var_1 = u_input.b.x;
    global2 = array<Struct_1, 5>();
    return 2147483647i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> f32 {
    let var_0 = ~abs(-vec4<i32>(global1.x, -u_input.b.x, -1i >> (arg_1.x % 32u), _wgslsmith_mult_i32(global1.x, -12667i)));
    let var_1 = arg_1.x;
    let var_2 = vec4<i32>(-6329i, -76458i, func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-44606i, u_input.b.x, var_0.x, -1i), vec4<i32>(-1i, var_0.x, -22545i, global1.x) << (vec4<u32>(0u, u_input.c.x, 4294967295u, arg_1.x) % vec4<u32>(32u)), var_0), !(true || arg_0.x), arg_1.x, ~9469u) | global1.x, ~global1.x);
    let var_3 = arg_0.x;
    let var_4 = Struct_2(vec2<i32>(~(-6782i), -8019i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, 263f, _wgslsmith_f_op_f32(1345f + -587f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1012f, 223f, 1508f), vec3<f32>(705f, -461f, -1000f), var_3))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1473f, 1715f, -1000f) * vec3<f32>(1000f, -519f, 164f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-862f, -1580f, 758f), vec3<f32>(-536f, 1515f, 227f))), arg_0.yzz))))), global2[_wgslsmith_index_u32(1u, 5u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1329f)) - var_4.b.x) + _wgslsmith_f_op_f32(var_4.b.x + var_4.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(any(vec2<bool>(false, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), ~vec4<u32>(0u, 37297u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1777f))), 1088f, 479f));
}

