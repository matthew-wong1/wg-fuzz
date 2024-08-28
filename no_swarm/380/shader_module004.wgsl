struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(-460f, -150f));
    var var_1 = true;
    let var_2 = Struct_2(select(global0[_wgslsmith_index_u32(reverseBits(u_input.e), 18u)], !global0[_wgslsmith_index_u32(0u, 18u)], !arg_0.x), 30317u);
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(~(~1u), 18u)]);
    global0 = array<vec4<bool>, 18>();
    return -31134i;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = arg_1;
    var var_1 = -(i32(-1i) * -func_3(!vec3<bool>(arg_2, true, false), vec3<bool>(var_0.a.x, false, true)));
    var_1 = 1i;
    var var_2 = -_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(abs(26152i), ~(-27875i)), abs(23617i), -max(~1i, 0i));
    let var_3 = vec2<u32>(4294967295u, ~arg_0 >> (~(~(arg_0 ^ 4294967295u)) % 32u));
    return -2147483647i;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_2.a, u_input.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, -1669f, -973f, -1507f) - vec4<f32>(-1545f, 1448f, 1105f, -1614f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1597f, -446f, 1220f, -1028f))))));
    let var_2 = 6457u;
    let var_3 = var_1.wxx;
    var var_4 = Struct_2(vec4<bool>(2147483647i >= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), firstLeadingBit(vec2<i32>(20297i, arg_1))), all(vec2<bool>(arg_2.a.x, arg_3.a.x)) & all(select(arg_2.a, vec4<bool>(false, true, true, var_0.a.x), arg_3.a)), arg_3.a.x, any(select(arg_2.a.ww, vec2<bool>(false, arg_2.a.x), arg_3.a.xy))), var_2);
    return Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(-var_1.x) >= var_3.x, all(!(!vec3<bool>(var_4.a.x, false, true))), arg_3.a.x));
}

fn func_1() -> u32 {
    let var_0 = Struct_2(vec4<bool>(true, true, true, true), u_input.d);
    let var_1 = func_4(abs(22875u), ~firstLeadingBit(func_2(23006u, Struct_1(global0[_wgslsmith_index_u32(var_0.b, 18u)]), var_0.a.x)) ^ ~abs(func_2(67773u, Struct_1(vec4<bool>(true, true, true, var_0.a.x)), false)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(!(!(!vec4<bool>(var_0.a.x, true, false, false)))));
    var var_2 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(0u, u_input.d))), _wgslsmith_add_u32(0u, 1u), 10433u) << (u_input.b.zwz % vec3<u32>(32u));
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    return _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(58780u, var_0.b, 4294967295u, 0u), firstTrailingBit(u_input.b))), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(func_1() & 0u);
    var_0 = u_input.d << (_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, ~89308u) ^ u_input.d, _wgslsmith_clamp_u32(~(16367u ^ u_input.a), u_input.b.x, ~u_input.b.x)) % 32u);
    var_0 = 31544u;
    var_0 = abs(func_1());
    let var_1 = abs(u_input.b);
    let var_2 = vec4<i32>(~_wgslsmith_mod_i32(func_3(vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -8874i, 52730i), vec4<i32>(27546i, -29088i, 1i, -1i)))), 17757i, _wgslsmith_sub_i32(1i, 1801i << (_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(1u, 12929u)) % 32u)), -1i);
    global0 = array<vec4<bool>, 18>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1190f, -294f, 1125f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(2527f)), _wgslsmith_f_op_f32(898f - -554f), _wgslsmith_f_op_f32(f32(-1f) * -1250f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1339f))))));
}

