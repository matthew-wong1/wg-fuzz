struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: f32 = 1274f;

var<private> global3: array<vec4<i32>, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    return ~(~reverseBits(vec2<u32>(22406u, u_input.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    global2 = arg_0.b;
    let var_0 = _wgslsmith_sub_u32(max(u_input.a.x, ~countOneBits(u_input.a.x)), 16201u);
    global1 = select(select(!(!(!vec4<bool>(true, arg_2, true, global1.x))), select(!vec4<bool>(global1.x, true, false, arg_2), vec4<bool>(true, global1.x, true, 40361i > arg_1.x), !(!vec4<bool>(false, false, false, arg_2))), arg_2), select(!vec4<bool>(false | global1.x, true, all(vec4<bool>(false, true, false, arg_2)), true), vec4<bool>(-1i != select(-16014i, arg_1.x, true), true, !global1.x, arg_2 | false), any(select(!vec4<bool>(global1.x, false, arg_2, true), select(vec4<bool>(true, global1.x, true, arg_2), vec4<bool>(true, global1.x, false, false), vec4<bool>(arg_2, arg_2, false, global1.x)), !arg_2))), select(!(!(!vec4<bool>(true, arg_2, true, false))), select(!vec4<bool>(global1.x, global1.x, global1.x, arg_2), vec4<bool>(true == arg_2, any(global1.wxy), false, 1u <= u_input.a.x), select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, arg_2, global1.x, global1.x), arg_2), !vec4<bool>(true, global1.x, false, global1.x), !vec4<bool>(true, true, global1.x, true))), select(select(select(vec4<bool>(global1.x, false, true, arg_2), vec4<bool>(true, global1.x, arg_2, true), arg_2), !vec4<bool>(global1.x, global1.x, true, true), !vec4<bool>(arg_2, global1.x, false, arg_2)), !select(vec4<bool>(arg_2, true, global1.x, global1.x), vec4<bool>(true, false, true, arg_2), false), vec4<bool>(false, arg_2, !global1.x, true))));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, arg_0.b, arg_0.c))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-534f)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_0.b))))));
    return arg_0.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = arg_2;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(func_3(-vec3<i32>(0i, -1i, -380i)), var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.c)))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(9732u, 8u)] | global0[_wgslsmith_index_u32(var_0.a.x, 8u)], vec2<i32>(1969i, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), global0[_wgslsmith_index_u32(u_input.a.x, 8u)] ^ global0[_wgslsmith_index_u32(var_0.a.x, 8u)], firstLeadingBit(vec2<i32>(29940i, 1i)))), all(!(!global1.zw)))));
    global1 = vec4<bool>(arg_1.a, arg_1.a, any(global1.xy), true);
    let var_1 = var_0.c;
    var var_2 = arg_0;
    return false;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = ~15083i;
    global1 = vec4<bool>(any(select(global1.xx, vec2<bool>(func_2(Struct_1(global1.x, -1949f), Struct_1(true, -664f), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), arg_0.x, arg_0.x)), true), false)), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 0u), ~u_input.a.x) <= 6342u, true, any(vec2<bool>(all(vec2<bool>(true, global1.x)), any(select(global1.wx, vec2<bool>(false, global1.x), vec2<bool>(true, global1.x))))));
    var var_1 = Struct_1(all(vec3<bool>(global1.x, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(0u, 8u)], vec2<i32>(-2147483647i, var_0)) != ~var_0, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-898f - _wgslsmith_f_op_f32(arg_0.x - -1103f)), arg_0.x)));
    global0 = array<vec2<i32>, 8>();
    var var_2 = _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a) << (abs(countOneBits(u_input.a.x)) % 32u)) << (u_input.a.x % 32u), 8u)], vec2<i32>(var_0, -26684i));
    return Struct_2(~abs(u_input.a.zy), _wgslsmith_f_op_f32(-331f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-250f * arg_0.x), true)))), _wgslsmith_f_op_f32(-137f - _wgslsmith_f_op_f32(f32(-1f) * -262f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1450f * 1182f), 205f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1137f))))) - vec3<f32>(-738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(454f))), _wgslsmith_f_op_f32(f32(-1f) * -1275f))));
    global2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(0i, 505f);
}

