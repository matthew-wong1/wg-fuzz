struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<i32>, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f * 1f));
    let var_1 = _wgslsmith_f_op_f32(min(-567f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(519f, -987f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -235f))))));
    let var_2 = !(!all(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, select(true, true, false))));
    var var_3 = min(firstLeadingBit(-9778i << (_wgslsmith_dot_vec2_u32(~global0.zy, _wgslsmith_div_vec2_u32(global0.xy, global0.yz)) % 32u)), abs(~69436i & u_input.a));
    var_3 = ~_wgslsmith_sub_i32(countOneBits(firstLeadingBit(u_input.a)), min(-1i ^ (u_input.a | -7620i), u_input.a));
    return !var_2;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = 1u;
    let var_1 = abs(select(global0.zz, global0.xz, !func_3(1u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f * _wgslsmith_f_op_f32(floor(125f))))));
    let var_3 = 230f;
    global0 = ~vec3<u32>(arg_0, ~(~(4294967295u | var_1.x)), 4294967295u);
    return _wgslsmith_f_op_f32(-735f - var_3);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec2<i32>(11402i, 1i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f))), ~global0.x, arg_0.a.c, ~(~4294967295u), select(vec4<bool>(!arg_0.a.e.x, true, true, all(vec2<bool>(arg_0.a.e.x, false))), arg_0.a.e, true)));
    var var_2 = -vec2<i32>(countOneBits(-arg_0.b.x), abs(_wgslsmith_dot_vec2_i32(arg_0.b.yx, arg_0.b.xx))) ^ (vec2<i32>(min(1i, u_input.a), arg_0.b.x) >> (vec2<u32>(17625u, abs(var_1.a.b | 38778u)) % vec2<u32>(32u)));
    let var_3 = var_1.a.e;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(1334f + var_1.a.a), 95810u, global0.x, var_1.a.c, select(select(select(vec4<bool>(false, false, var_1.a.e.x, false), vec4<bool>(arg_0.a.e.x, false, false, var_1.a.e.x), !arg_0.a.e), var_1.a.e, vec4<bool>(-1i > var_0.x, var_1.a.e.x, true, false)), vec4<bool>(true, var_3.x, false, true), select(!var_1.a.e, select(var_3, vec4<bool>(var_3.x, false, false, var_3.x), true), select(var_1.a.e.x | arg_0.a.e.x, var_1.a.e.x && false, var_3.x || var_1.a.e.x))));
    return Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.a + 709f), _wgslsmith_div_f32(1000f, 1429f))), _wgslsmith_f_op_f32(-395f * _wgslsmith_f_op_f32(exp2(var_4.a)))))), firstTrailingBit(~_wgslsmith_add_u32(arg_0.a.b, global0.x)), firstTrailingBit(firstTrailingBit(var_1.a.d)), var_4.d, !(!var_3));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(25677u)) + _wgslsmith_f_op_f32(floor(1099f))), global0.x, ~_wgslsmith_dot_vec2_u32(global0.zz, global0.zx), abs(1u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), select(vec3<i32>(i32(-1i) * -2147483647i, u_input.a, 10427i), _wgslsmith_clamp_vec3_i32(~global1[_wgslsmith_index_u32(global0.x, 20u)], ~vec3<i32>(-14646i, arg_0, 2147483647i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = Struct_3(Struct_1(1642f, min(1u, global0.x), global0.x, 4294967295u, vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(min(29371u, global0.x), 20u)]);
    var var_2 = func_1(var_1.b.x);
    let var_3 = false;
    let var_4 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-679f, var_2.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(464f, var_2.a))) + vec2<f32>(var_1.a.a, var_2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a, var_1.a.a, -305f, -118f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.a, var_1.a.a, 1957f, var_2.a), vec4<f32>(259f, -652f, var_1.a.a, -195f), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1908f, var_2.a, var_2.a, 109f))))), select(var_1.b.x, var_1.b.x, true));
}

