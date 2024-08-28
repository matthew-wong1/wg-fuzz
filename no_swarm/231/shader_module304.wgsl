struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(311f, 1000f, -1913f, -633f), vec4<f32>(-750f, 254f, 1000f, -468f), vec4<f32>(199f, 1000f, -419f, -594f), vec4<f32>(843f, -997f, 178f, 1000f), vec4<f32>(-575f, -296f, 1168f, 503f), vec4<f32>(152f, -526f, 582f, 121f), vec4<f32>(741f, 147f, 377f, -522f), vec4<f32>(608f, -1763f, 1032f, -423f), vec4<f32>(977f, -451f, 150f, -2512f), vec4<f32>(-1883f, -416f, 911f, 747f), vec4<f32>(-582f, 563f, 1000f, 260f));

var<private> global2: vec3<i32>;

var<private> global3: Struct_3;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<i32> {
    global3 = Struct_3(Struct_1(~(~(~arg_1.yxy)), 79629u), vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-107f - global3.b.x), _wgslsmith_f_op_f32(ceil(global3.b.x))));
    let var_0 = -global0.x;
    var var_1 = arg_0.b;
    let var_2 = true;
    var var_3 = var_2;
    return vec3<i32>(-(~select(-33170i, _wgslsmith_dot_vec2_i32(global0.xx, global0.xz), var_2)), firstLeadingBit(2147483647i), ~global0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_5 {
    let var_0 = global3.a;
    let var_1 = _wgslsmith_clamp_u32(~(0u >> (_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u)) | 0u, arg_1, _wgslsmith_div_u32(_wgslsmith_add_u32(~28734u ^ arg_0.x, ~arg_1), 30791u));
    var var_2 = 37094u;
    global0 = reverseBits(func_3(Struct_2(arg_0, global3.a), arg_0));
    let var_3 = -1i;
    return Struct_5(!global4.yzz);
}

fn func_1() -> Struct_3 {
    global0 = -(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-25372i, global2.x, 1i), vec3<i32>(1i, global2.x, -2147483647i))) | (select(vec3<i32>(global2.x, 17902i, -60629i) | vec3<i32>(global2.x, 44025i, -1i), ~vec3<i32>(global0.x, -5531i, global0.x), true) << (~global3.a.a % vec3<u32>(32u))));
    var var_0 = select(vec4<i32>(0i, global0.x, ~(2147483647i | -global2.x), _wgslsmith_mult_i32(global2.x, 16427i)), -reverseBits(~(vec4<i32>(0i, 0i, 14130i, 2147483647i) | vec4<i32>(global0.x, global0.x, -2147483647i, 13526i))), true);
    global2 = vec3<i32>(_wgslsmith_add_i32(-32103i, reverseBits(-28342i)), min(global2.x, ~0i), ~(~_wgslsmith_div_i32(~36003i, 59931i)));
    var var_1 = Struct_5(!(!vec3<bool>(any(global4.xzx), global4.x, any(vec2<bool>(false, global4.x)))));
    var_1 = func_2(vec4<u32>(reverseBits(firstTrailingBit(6916u)), reverseBits(1u), global3.a.b, global3.a.b), global3.a.b);
    return Struct_3(Struct_1(global3.a.a, 11969u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(713f, global3.b.x, -1078f, global3.b.x) - vec4<f32>(global3.b.x, 1559f, global3.b.x, -1414f))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.b.x)), -846f, _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(1147f - 395f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    var var_1 = global3.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1022f * -1000f), 566f, any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.x))), global3.b.x))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, -669f))))), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1071f + 2630f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 336f) + var_2.x))));
    let var_4 = Struct_5(global4.wwz);
    let var_5 = func_1();
    let var_6 = vec4<u32>(reverseBits(0u), ~var_0.b, _wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(var_0.a.x, global3.a.a.x, 1u), vec3<bool>(var_4.a.x, false, false)) >> (_wgslsmith_div_vec3_u32(var_5.a.a, vec3<u32>(var_0.b, 48563u, 1u)) % vec3<u32>(32u))), global3.a.a), var_5.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1326f, 809f), _wgslsmith_f_op_vec3_f32(max(global3.b.zyx, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(var_5.b.x, var_3.x, true)), _wgslsmith_f_op_f32(-1534f + var_5.b.x), _wgslsmith_f_op_f32(ceil(var_3.x))))))));
}

