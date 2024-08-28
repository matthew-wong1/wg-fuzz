struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(0u, vec4<i32>(1i, -1i, 7395i, -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool) -> bool {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, u_input.b.x), 66152u), 15u)];
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -898f, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 888f, arg_1))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1045f, 1710f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, global1.x, -104f) - vec3<f32>(-2266f, 1000f, global1.x)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -340f, -530f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, 552f, 615f))))))));
    var var_0 = reverseBits(select(_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(18246u, 13315u, 0u)), vec3<u32>(76456u, _wgslsmith_sub_u32(global2.a, 1u), arg_0.a >> (arg_0.a % 32u))), ~max(vec3<u32>(arg_0.a, arg_0.a, 0u), vec3<u32>(arg_0.a, 25358u, 27784u)) << (abs(abs(vec3<u32>(32857u, global2.a, u_input.b.x))) % vec3<u32>(32u)), vec3<bool>(true, true, true)));
    var var_1 = Struct_1(~4294967295u, firstLeadingBit(global2.b));
    let var_2 = firstTrailingBit(-2147483647i);
    var var_3 = _wgslsmith_dot_vec2_i32(var_1.b.zy, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_0.b.x, arg_0.b.x) >> ((var_0.yx ^ u_input.b) % vec2<u32>(32u)), min(arg_0.b.ww, ~vec2<i32>(var_2, -2147483647i))), -vec2<i32>(u_input.a.x, -9549i) >> (vec2<u32>(abs(4294967295u), reverseBits(arg_0.a)) % vec2<u32>(32u))));
    return !(!vec4<bool>(!all(vec4<bool>(false, false, true, false)), true, any(vec3<bool>(false, true, false)), true));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1390f, global1.x, 948f, -199f))) - vec4<f32>(global1.x, -1050f, 738f, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, global1.x, 1555f, 224f) - vec4<f32>(600f, 735f, 644f, -724f))), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1270f, 435f) + vec4<f32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, global1.x, global1.x, global1.x)))), func_3(Struct_1(0u, global2.b), _wgslsmith_f_op_f32(-1000f * global1.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f + -555f)) + global1.x)));
    var var_2 = Struct_1(global2.a, ~_wgslsmith_add_vec4_i32(abs(global2.b ^ vec4<i32>(-18764i, global2.b.x, global2.b.x, -2147483647i)), _wgslsmith_mod_vec4_i32(global2.b, firstTrailingBit(global2.b))));
    var_2 = Struct_1(1u, ~vec4<i32>(var_2.b.x, var_2.b.x, -2147483647i, -29387i));
    global0 = array<Struct_1, 15>();
    return all(select(select(arg_1, !select(arg_1, vec2<bool>(arg_1.x, arg_0), vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(all(vec2<bool>(true, false)), false)), !vec2<bool>(func_1(false), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f * 1400f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_1.x) - _wgslsmith_f_op_f32(trunc(var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(global2.a ^ 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(floor(-424f));
    global1 = vec3<f32>(-1025f, _wgslsmith_f_op_f32(abs(global1.x)), -240f);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2311f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, var_1, var_1) + vec3<f32>(322f, var_1, -902f)))))));
    let var_2 = global0[_wgslsmith_index_u32(global2.a, 15u)];
    let var_3 = func_2(func_1(any(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    global0 = array<Struct_1, 15>();
    let var_4 = var_1;
    let var_5 = global0[_wgslsmith_index_u32(var_0, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~global2.a), ~_wgslsmith_mod_u32(var_0, u_input.c) | ~_wgslsmith_sub_u32(global2.a, 75769u), ~firstLeadingBit(_wgslsmith_clamp_u32(0u, global2.a, var_0)), ~15845u), global2.b);
}

