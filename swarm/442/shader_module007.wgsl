struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1255f, vec3<bool>(false, false, false)), Struct_1(128f, vec3<bool>(true, true, false)), Struct_1(-201f, vec3<bool>(false, false, true)), Struct_1(-1292f, vec3<bool>(true, true, false)), Struct_1(968f, vec3<bool>(true, true, true)), Struct_1(-891f, vec3<bool>(false, false, true)), Struct_1(138f, vec3<bool>(false, false, false)), Struct_1(438f, vec3<bool>(true, false, false)), Struct_1(822f, vec3<bool>(true, false, false)), Struct_1(-763f, vec3<bool>(true, true, false)), Struct_1(-106f, vec3<bool>(true, true, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0.b.x, vec3<bool>(false, any(vec3<bool>(all(vec4<bool>(false, false, false, true)), !global3.b.x, false)), all(!(!vec4<bool>(true, arg_0.b.x, false, false)))), global3.c);
    return Struct_2(false, global3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2744f)), global3.c.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = !(_wgslsmith_mult_i32(select(-u_input.b, -2147483647i, 13497i < u_input.b), 15060i) < _wgslsmith_mod_i32(i32(-1i) * -40247i, 0i << (_wgslsmith_dot_vec3_u32(vec3<u32>(20380u, 0u, 2003u), vec3<u32>(55495u, 1u, 4354u)) % 32u)));
    return func_2(global4[_wgslsmith_index_u32(2573u, 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true && !global0.x, false, !((_wgslsmith_div_u32(u_input.a, 40125u) ^ 33154u) == u_input.a), false);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(471f, 792f)))), global1[_wgslsmith_index_u32(89281u, 11u)])) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global3.c.x, 702f))))), 119f));
    global2 = global3.c.xz;
    global4 = array<Struct_1, 11>();
    let var_1 = func_1(vec4<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.a), u_input.a, min(4294967295u, u_input.a)), ~30523u), firstTrailingBit(4294967295u), u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -263f), vec4<u32>(max(20021u, u_input.a), u_input.a, ~(~4294967295u), max(abs(u_input.a), firstLeadingBit(u_input.a)) | ~_wgslsmith_mod_u32(u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_add_u32(36370u, 28773u), _wgslsmith_sub_u32(u_input.a, u_input.a))), ~(~(~vec2<u32>(0u, u_input.a))), -704f >= _wgslsmith_f_op_f32(max(global3.c.x, -598f))), global3.c, min(_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.b, -11401i, u_input.b, u_input.b) & vec4<i32>(57102i, -2147483647i, u_input.b, 7064i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), ~vec4<i32>(31397i, u_input.b, u_input.b, 22314i))), -vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 37540i)), i32(-1i) * -1i, -1i)));
}

