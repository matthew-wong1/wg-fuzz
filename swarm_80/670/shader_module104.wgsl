struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(-1i, 0i, -415f), Struct_2(i32(-2147483648), -45493i, -985f), Struct_2(-1i, 0i, 491f), Struct_2(41748i, -44030i, -185f), Struct_2(i32(-2147483648), 46150i, -1155f), Struct_2(4150i, 1i, 844f), Struct_2(-52101i, -52673i, -1548f), Struct_2(2147483647i, 11531i, 195f), Struct_2(11137i, -56238i, 645f), Struct_2(31619i, 2147483647i, 222f), Struct_2(0i, -20794i, 840f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(u_input.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(~(-vec2<i32>(u_input.a, u_input.a))), abs(~vec2<i32>(-22341i, u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1441f) * 1f), -1000f));
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = false;
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b, u_input.b) >> (u_input.d % vec2<u32>(32u)), vec2<i32>(-1i, -23457i)) ^ vec2<i32>(var_0.b & 1i, select(4281i, -2147483647i, var_1)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.b, 0i)), -1i) << (u_input.d % vec2<u32>(32u))), -(~select(var_0.b, reverseBits(u_input.a), false)));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2224f))) + -1893f)));
    return _wgslsmith_f_op_f32(abs(var_0.c));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(1000f == _wgslsmith_f_op_f32(func_3()), any(vec3<bool>(true, false, false)), !all(vec4<bool>(true, true, true, false)), true), true);
    global0 = array<Struct_2, 11>();
    let var_1 = !var_0.wy;
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    return global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 519u), vec2<u32>(u_input.d.x, u_input.d.x)), ~u_input.c.x) ^ countOneBits(~4294967295u)) | u_input.d.x, 11u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = false;
    var var_1 = u_input.b;
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    return u_input.c.yy;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1780f, -127f) - _wgslsmith_f_op_f32(f32(-1f) * -1425f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(681f - -420f))))));
    return firstTrailingBit(_wgslsmith_clamp_vec2_u32(min(u_input.d, u_input.c.ww), func_4(func_2(-1000f, vec2<i32>(u_input.a, u_input.a)), Struct_1(712f, vec3<f32>(917f, 296f, -349f), u_input.a, -2554f, vec2<u32>(4294967295u, 61294u)), Struct_1(872f, vec3<f32>(-311f, 385f, -615f), 1i, -1507f, u_input.c.xx)), ~(~vec2<u32>(u_input.c.x, 42314u))) << (~(~u_input.c.xx) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_0 = !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = vec2<u32>(abs(89340u), 1u);
    var_0 = true;
    global0 = array<Struct_2, 11>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(func_1(), _wgslsmith_add_vec2_u32(var_1, max(var_1, u_input.d))), ~vec2<u32>(15641u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 26294u), vec2<u32>(u_input.d.x, var_1.x)))), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~u_input.a));
}

