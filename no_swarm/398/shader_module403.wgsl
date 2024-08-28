struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-11668i, 19589i), vec2<i32>(1i, 0i), vec2<i32>(46727i, -39412i), vec2<i32>(30663i, -19512i), vec2<i32>(-42787i, -3851i), vec2<i32>(0i, -16587i), vec2<i32>(2147483647i, -1i), vec2<i32>(66825i, 1i), vec2<i32>(0i, -938i), vec2<i32>(23539i, -1i), vec2<i32>(-64133i, 1740i), vec2<i32>(42722i, 1i), vec2<i32>(1i, -31682i), vec2<i32>(27867i, -9385i));

var<private> global2: array<bool, 6> = array<bool, 6>(true, true, true, true, true, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    global0 = ~firstLeadingBit(0i);
    let var_0 = u_input.c;
    global2 = array<bool, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(820f, 501f), vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 300f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(272f, -1016f), vec2<bool>(false, true))), all(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)])))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -348f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1160f), _wgslsmith_f_op_f32(622f + 1037f), _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, arg_2) + vec3<f32>(arg_2, -281f, -1780f))) * vec3<f32>(_wgslsmith_f_op_f32(-221f * 274f), var_1.x, -276f))))));
    return _wgslsmith_sub_u32(max(abs(~arg_0), ~_wgslsmith_dot_vec2_u32(vec2<u32>(48847u, 4294967295u), var_0.xz)), u_input.c.x >> (~firstTrailingBit(var_0.x) % 32u)) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(33124u, u_input.c.x, 1u), min(vec3<u32>(var_0.x, arg_0, arg_0), u_input.c)), vec3<u32>(u_input.a.x, 93565u, 4294967295u)), vec3<u32>(var_0.x & arg_0, ~arg_0, arg_0 << (593u % 32u)) & u_input.c);
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1233f), 1199f, 702f)), vec3<f32>(-474f, _wgslsmith_f_op_f32(min(-264f, -1572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, -226f, 1682f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 353f, -1670f), vec3<f32>(703f, 1357f, -349f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(218f, -891f, -359f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1241f, -821f, 774f), vec3<f32>(-200f, -875f, -319f)))) + vec3<f32>(_wgslsmith_f_op_f32(164f + 498f), _wgslsmith_f_op_f32(-479f * 634f), _wgslsmith_f_op_f32(floor(723f)))))));
    let var_1 = max(u_input.b, u_input.b ^ -2147483647i);
    var var_2 = vec3<bool>(!(~func_3(u_input.a.x, -33259i, var_0.x, vec4<i32>(var_1, -1i, 17897i, 1i)) == u_input.c.x), all(!(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(66158u, 6u)]), false))), global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 6u)]);
    global0 = _wgslsmith_mod_i32(-var_1, -53521i);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-514f, var_0.x) + var_0.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy))), var_2.zy))));
    return !(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(27615u, 6u)], global2[_wgslsmith_index_u32(87338u, 6u)], var_2.x, var_2.x), !vec4<bool>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], var_2.x), vec4<bool>(var_2.x, true, var_2.x, false)), !select(vec4<bool>(false, var_2.x, false, global2[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], false, false), var_2.x), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], var_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = array<vec2<i32>, 14>();
    global0 = _wgslsmith_mult_i32(23177i, -u_input.b);
    let var_0 = true;
    global1 = array<vec2<i32>, 14>();
    let var_1 = vec3<i32>(-64651i, min(min(~abs(arg_0.b), min(_wgslsmith_clamp_i32(arg_0.b, u_input.b, arg_0.b), u_input.b)), -2147483647i), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], ~max(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], vec2<i32>(33353i, u_input.b)) ^ abs(global1[_wgslsmith_index_u32(abs(0u), 14u)])));
    return arg_0;
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<i32>, 14>();
    let var_0 = false;
    global2 = array<bool, 6>();
    global2 = array<bool, 6>();
    global0 = -1i ^ (reverseBits(~(i32(-1i) * -1i)) | _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-5847i, u_input.b, -39270i, -2147483647i), vec4<i32>(u_input.b, u_input.b, 17691i, -28661i)), ~_wgslsmith_div_i32(u_input.b, u_input.b)));
    return func_4(Struct_1(select(select(func_2(), vec4<bool>(true, true, true, true), !vec4<bool>(true, global2[_wgslsmith_index_u32(21773u, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)], true)), !func_2(), true), i32(-1i) * -21954i), -1161f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~select(~((vec3<i32>(2147483647i, u_input.b, -2147483647i) & vec3<i32>(-1i, var_0.b, -8761i)) >> ((u_input.c & vec3<u32>(65369u, 4294967295u, u_input.c.x)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(var_0.b), _wgslsmith_mult_i32(var_0.b, 2147483647i)), _wgslsmith_sub_i32(-1i, u_input.b) >> (_wgslsmith_div_u32(1u, u_input.a.x) % 32u), countOneBits(-var_0.b)), vec3<bool>(true, true, !global2[_wgslsmith_index_u32(u_input.a.x, 6u)] | var_0.a.x));
    global1 = array<vec2<i32>, 14>();
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-298f, -671f), vec2<f32>(680f, 741f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, -1567f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1430f, 552f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(966f, -255f))), var_0.a.yy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(617f, 303f) + vec2<f32>(-441f, -270f))))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(-213f)))))));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

