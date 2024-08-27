struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -1i, 9668i, 0i);

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec3<f32>;

var<private> global3: vec2<bool>;

var<private> global4: array<vec4<i32>, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(arg_0.b.x * 298f)), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1260f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 1225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(select(1357f, 1f, !global3.x)), false))));
    global4 = array<vec4<i32>, 20>();
    let var_1 = vec2<bool>(true, false);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(255f, _wgslsmith_f_op_f32(var_0.x + 520f), var_0.x) - _wgslsmith_div_vec3_f32(var_0.zwz, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-677f, 1632f, -417f))))));
    var var_2 = reverseBits(global0.x);
    return global1[_wgslsmith_index_u32(arg_1.x, 2u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = func_1(Struct_1(arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, _wgslsmith_div_f32(1132f, -218f)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(~1u)));
    global4 = array<vec4<i32>, 20>();
    global0 = _wgslsmith_div_vec4_i32(-(global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 36874u), 20u)] >> (countOneBits(firstTrailingBit(vec4<u32>(0u, 24628u, 4294967295u, 0u))) % vec4<u32>(32u))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 79259u, 0u, 4294967295u)), 20u)] & abs(countOneBits(vec4<i32>(1i, u_input.a, -2147483647i, global0.x))));
    let var_1 = false;
    global0 = global4[_wgslsmith_index_u32(~2434u, 20u)];
    return ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1u, 19879u)), vec3<u32>(1u, ~7432u, 1u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_1(arg_0.a, global2.zz);
    var var_1 = arg_1.x;
    let var_2 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(countOneBits(func_3(vec3<f32>(arg_0.b.x, global2.x, global2.x), arg_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(61618u, 4294967295u), vec2<u32>(0u, 81973u))), _wgslsmith_mod_u32(min(_wgslsmith_mult_u32(0u, 23808u), _wgslsmith_add_u32(0u, 8040u)), firstLeadingBit(select(2900u, 40995u, arg_2)))), 2u)], _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 958u), max(~vec2<u32>(0u, 23449u), ~vec2<u32>(42924u, 51561u))) & vec2<u32>(_wgslsmith_clamp_u32(~51100u, max(4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(22876u, 4294967295u, 0u), vec3<u32>(4294967295u, 42498u, 1u))), 1u));
    var_1 = u_input.b;
    let var_3 = global1[_wgslsmith_index_u32(~1u, 2u)];
    return !(!(!vec3<bool>(global3.x, !global3.x, global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<i32>(-15304i, u_input.b, abs(-2147483647i), global0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(global2.xz)))) - global2.xx);
    let var_2 = 48282u << (~(~_wgslsmith_div_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 17140u, 0u), vec3<u32>(0u, 34775u, 55234u)))) % 32u);
    let var_3 = select(vec4<bool>(all(func_2(func_1(global1[_wgslsmith_index_u32(1u, 2u)], vec2<u32>(var_2, var_2)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -47261i), var_0.zz, vec2<i32>(1i, var_0.x)), false)), true, true, any(vec2<bool>(global3.x != true, true))), !vec4<bool>(true, any(select(vec3<bool>(global3.x, true, false), vec3<bool>(global3.x, true, global3.x), global3.x)), true, true), !select(!select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(false, global3.x, false, true), global3.x), !select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, true, true, global3.x)), select(vec4<bool>(global3.x, global3.x, true, false), vec4<bool>(true, true, global3.x, true), false), select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, false, global3.x, global3.x), true))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1, var_1) * vec2<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_mult_i32(0i, 54346i), _wgslsmith_mod_i32(8447i, var_0.x), ~(-3199i), -14586i << (var_2 % 32u)) | abs(abs(_wgslsmith_mult_vec4_i32(var_0, vec4<i32>(global0.x, u_input.a, 25900i, global0.x)))), min(~(~select(vec3<u32>(var_2, 0u, var_2), vec3<u32>(var_2, var_2, var_2), var_3.x)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_2, var_2, var_2), ~vec3<u32>(4294967295u, 6024u, var_2), func_2(Struct_1(var_1, var_1), global0.wz, global3.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(79468u, var_2, 8221u), vec3<u32>(var_2, 16272u, 38766u) << (vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(8885u, 1u, 4294967295u), select(vec3<u32>(var_2, var_2, var_2), vec3<u32>(var_2, 43603u, var_2), var_3.zzz)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f - var_1.x) - _wgslsmith_f_op_f32(floor(var_4.x))), 2033f, var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -1586f, var_4.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, global2.x, global2.x)))))))), global2.x);
}

