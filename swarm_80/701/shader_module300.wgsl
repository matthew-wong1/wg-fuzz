struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = 1i < -_wgslsmith_div_i32(~1i, firstLeadingBit(u_input.c) ^ (i32(-1i) * -2147483647i));
    return select(select(arg_3.a.zx, select(vec2<bool>(true && arg_3.b.x, true), arg_2.zy, arg_3.b.x), true), vec2<bool>(!arg_0.a.x, !any(arg_3.a)), false);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = ~(~vec3<i32>((-38423i << (1u % 32u)) >> (1u % 32u), ~_wgslsmith_add_i32(1i, u_input.d.x), u_input.c));
    let var_1 = countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(min(firstLeadingBit(vec2<u32>(94249u, 4294967295u)), vec2<u32>(1u, 1u)), min(vec2<u32>(4294967295u, 0u), vec2<u32>(2303u, 26469u))), 1u, firstTrailingBit(~(~40449u))));
    var var_2 = Struct_2(!vec3<bool>(all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, true, false, true)), false), func_1(Struct_2(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1206f) + _wgslsmith_f_op_vec2_f32(-arg_0.yx))), vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))), Struct_2(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false), true), vec2<bool>(true, true))));
    var var_3 = global1[_wgslsmith_index_u32(~var_1.x, 18u)];
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> f32 {
    var var_0 = ~firstLeadingBit(_wgslsmith_mult_u32(select(max(arg_0.x, arg_0.x), func_3(vec3<f32>(258f, -621f, 1097f)), arg_1.x), arg_0.x));
    global0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-933f, -145f, -200f) - vec3<f32>(115f, 1627f, 566f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1286f, 1207f, -138f) - vec3<f32>(722f, -939f, 330f))) - vec3<f32>(_wgslsmith_f_op_f32(step(145f, -752f)), _wgslsmith_f_op_f32(step(1359f, -740f)), _wgslsmith_f_op_f32(step(190f, 1217f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(232f, 1449f, 463f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, -568f, 1084f)))))));
    global1 = array<Struct_1, 18>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -675f) - _wgslsmith_div_f32(-537f, -1000f)) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 573f) + _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(min(var_1.x, 602f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(544f, 1691f, -1265f) + vec3<f32>(875f, 917f, 860f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1674f, -1000f)))))), !select(select(select(vec3<bool>(arg_1.x, arg_1.x, false), arg_1.zxw, true), vec3<bool>(false, arg_1.x, arg_1.x), any(vec2<bool>(false, arg_1.x))), vec3<bool>(true || arg_1.x, any(arg_1.zxy), arg_1.x), false)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), select(func_1(Struct_2(vec3<bool>(true, false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1383f, -200f) + vec2<f32>(-223f, -1042f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 526f), vec2<f32>(-260f, -556f)))), vec4<bool>(true, true, true, true), Struct_2(vec3<bool>(false, false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false));
    global0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_2(select(vec3<u32>(78369u, 1u, 661u), vec3<u32>(8047u, 88279u, 52823u), var_0.b.x) ^ vec3<u32>(1u, 1u, 1u), !vec4<bool>(true, var_0.b.x, true, var_0.a.x), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1533f) - -1013f))));
    let var_2 = false;
    var var_3 = i32(-1i) * -9698i;
    var_0 = Struct_2(vec3<bool>(var_2, true, !var_2), !vec2<bool>(any(select(vec3<bool>(var_0.a.x, true, var_2), vec3<bool>(var_2, false, false), var_0.a)), true));
    var var_4 = Struct_2(!var_0.a, vec2<bool>(false, 1i > u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-1110f);
}

