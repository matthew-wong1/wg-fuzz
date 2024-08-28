struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 1u), vec4<u32>(56212u, 20275u, 546u, 18436u));

var<private> global2: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(1i, 0i, -1i, 27666i), vec4<i32>(1i, 31025i, -23080i, 1i), vec4<i32>(16320i, 40990i, 14314i, 29001i));

var<private> global3: array<Struct_1, 28>;

var<private> global4: f32 = -853f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = arg_3;
    var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1314f * _wgslsmith_f_op_f32(arg_0 + -572f))) >= _wgslsmith_f_op_f32(-arg_0)) | !all(select(!vec3<bool>(true, true, arg_2), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_2, true), vec3<bool>(true, arg_2, arg_2)), vec3<bool>(false, false, arg_2)));
    let var_2 = -431f;
    let var_3 = firstTrailingBit(min(~firstLeadingBit(arg_1.x), max(u_input.d.x | _wgslsmith_mult_u32(var_0.a.x, global1.b.x), _wgslsmith_dot_vec3_u32(var_0.b.zyz >> (arg_1 % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, global1.a.x), vec3<u32>(global1.a.x, arg_3.b.x, 33957u))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, arg_0) * vec2<f32>(arg_0, arg_0)))) + vec2<f32>(var_2, _wgslsmith_f_op_f32(max(-770f, var_2)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + -543f)))), !select(!vec2<bool>(arg_2, var_1), !vec2<bool>(arg_2, true), any(vec2<bool>(false, arg_2))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(144f - 322f))), vec3<u32>(_wgslsmith_div_u32(arg_0.b.x, 89298u), global1.b.x, ~47653u), false, arg_0)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, _wgslsmith_f_op_f32(1f - -927f)) * vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(1295f, vec3<u32>(arg_1.b.x, global1.a.x, 59789u), true, Struct_1(arg_1.a, vec4<u32>(arg_0.a.x, 38671u, 65458u, global1.a.x)))).x, 997f))));
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_vec2_u32(~arg_1.a, min(~u_input.d.yz, global1.b.yy))), _wgslsmith_mult_vec4_u32(~(~firstLeadingBit(arg_0.b)), global1.b));
    global0 = array<Struct_1, 23>();
    var var_2 = Struct_1(~(~(vec2<u32>(arg_1.a.x, global1.b.x) ^ ~var_1.a)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(62985u, 7893u, 30723u, var_1.a.x), arg_0.b), vec4<u32>(arg_1.b.x, _wgslsmith_clamp_u32(var_1.a.x, 3666u, arg_1.b.x), ~4294967295u, _wgslsmith_dot_vec4_u32(arg_0.b, arg_1.b))), ~abs(vec4<u32>(u_input.a, arg_0.a.x, var_1.a.x, global1.a.x))));
    let var_3 = true;
    return _wgslsmith_f_op_f32(trunc(-1801f));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec4<u32> {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(638f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f + 969f) * _wgslsmith_f_op_f32(floor(107f)))))));
    var var_0 = _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(max(global1.b.x, _wgslsmith_div_u32(global1.a.x, u_input.a)), 23u)], global0[_wgslsmith_index_u32(global1.a.x, 23u)]));
    let var_1 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_2 = vec2<bool>(all(vec2<bool>(arg_0, arg_0)), !(!arg_0));
    var var_3 = Struct_1(~vec2<u32>(abs(~u_input.d.x), 0u), countOneBits(min(var_1.b, global1.b)));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, 40780u, var_3.a.x), vec4<u32>(1u, var_3.b.x, global1.b.x, 4294967295u), var_1.b), ~vec4<u32>(u_input.d.x, u_input.a, 4294967295u, u_input.a)), var_3.b), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<u32>((u_input.a << (global1.a.x % 32u)) | (13243u >> (u_input.d.x % 32u)), firstTrailingBit(4294967295u)) | (firstLeadingBit(min(vec2<u32>(u_input.a, 61057u), vec2<u32>(global1.b.x, 4294967295u))) << (_wgslsmith_sub_vec2_u32(u_input.d.yy, vec2<u32>(0u, global1.b.x)) % vec2<u32>(32u))), _wgslsmith_mod_vec4_u32(func_1(any(vec2<bool>(false, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 31638i, -24208i), u_input.c), u_input.c)), vec4<u32>(_wgslsmith_mod_u32(28186u, ~u_input.a), global1.b.x, ~(global1.b.x << (39456u % 32u)), 76603u | firstLeadingBit(global1.b.x))));
    global3 = array<Struct_1, 28>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u & u_input.a) | _wgslsmith_add_u32(38256u, 1u), 23u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    var var_2 = global1.b.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1099f * -848f), ~(~_wgslsmith_mod_vec2_i32(u_input.c.xy, reverseBits(u_input.c.yy))), vec4<u32>(_wgslsmith_mult_u32(var_0.b.x, 57916u), 12230u, _wgslsmith_add_u32(~reverseBits(19397u), _wgslsmith_sub_u32(~var_1.a.x, var_0.b.x)), ~firstTrailingBit(func_1(true, vec3<i32>(u_input.b, -31224i, 1i)).x)), reverseBits(~var_0.b.wy));
}

