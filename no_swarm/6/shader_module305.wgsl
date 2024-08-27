struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(767f, 337f, -889f, 194f, -356f, 1612f, -166f, -326f, -102f, 1000f);

var<private> global1: Struct_1;

var<private> global2: u32 = 54371u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = ~25932u;
    var var_1 = !global1.b.zz;
    var var_2 = Struct_1(1836f, arg_1.b);
    var var_3 = Struct_1(var_2.a, !select(!arg_0.yxy, vec3<bool>(global1.b.x | var_2.b.x, true, all(vec2<bool>(global1.b.x, arg_0.x))), all(vec4<bool>(global1.b.x, arg_0.x, arg_0.x, false))));
    return !(_wgslsmith_clamp_u32(53564u, ~u_input.c, ~var_0) <= 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = !global1.b.xz;
    global1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(45113u, ~(~u_input.c)), u_input.b), 10u)], vec3<bool>(var_0.x, true, !(firstTrailingBit(36688u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 22684u, 35369u), vec4<u32>(u_input.c, u_input.b, 0u, u_input.c)))));
    global0 = array<f32, 10>();
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(810u, reverseBits(4294967295u), u_input.c ^ 4294967295u, _wgslsmith_mult_u32(u_input.b | u_input.b, ~34684u) << ((_wgslsmith_mod_u32(4859u, u_input.b) | _wgslsmith_mod_u32(u_input.c, 37676u)) % 32u)), ~select(reverseBits(~vec4<u32>(0u, u_input.c, u_input.b, 0u)), ~select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b), vec4<bool>(var_0.x, false, true, false)), vec4<bool>(true && var_0.x, !global1.b.x, func_3(vec4<bool>(false, global1.b.x, false, global1.b.x), Struct_1(global1.a, vec3<bool>(false, false, var_0.x))), true)));
    var var_2 = 64451u;
    return Struct_1(global0[_wgslsmith_index_u32(~(~var_1.x << (abs(var_1.x) % 32u)), 10u)], global1.b);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = !vec3<bool>(global1.b.x, u_input.a >= u_input.a, false);
    let var_1 = vec4<bool>((firstTrailingBit(_wgslsmith_add_u32(u_input.c, u_input.b)) >= firstTrailingBit(firstLeadingBit(27788u))) && true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, ~abs(u_input.c)), 10u)] < -2180f, !(~u_input.c <= (~4294967295u << (u_input.c % 32u))), false);
    var var_2 = !(!select(var_1, !var_1, !var_0.x));
    let var_3 = func_2();
    var var_4 = _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(2480i, u_input.a, 0i, 1i))), vec2<i32>(_wgslsmith_mult_i32(u_input.a, -u_input.a), -1i)) ^ min(countOneBits(abs(u_input.a)), 12105i);
    return Struct_1(-360f, vec3<bool>(true, !(global1.b.x || (u_input.a >= u_input.a)), true || any(!var_1)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<u32> {
    global2 = u_input.c << (u_input.b % 32u);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4294967295u >> (u_input.b % 32u)), u_input.c), 10u)] + 346f), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * 950f) * _wgslsmith_f_op_f32(select(func_1(!arg_2.b.yx).a, _wgslsmith_f_op_f32(-func_2().a), true))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 10u)] + 2076f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(558f)))), global1.b);
    global1 = func_1(!func_2().b.zz);
    global2 = u_input.c;
    return vec2<u32>(reverseBits(reverseBits(63403u)), (~abs(37316u) << (_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u) % 32u)) | 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_clamp_vec2_u32(func_4(func_1(!vec2<bool>(global1.b.x, false)), vec4<i32>(u_input.a, i32(-1i) * -23855i, u_input.a, u_input.a ^ u_input.a), func_1(vec2<bool>(true, global1.b.x))), abs(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 51056u), firstLeadingBit(vec2<u32>(48392u, u_input.b)))), _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, 38308u)), countOneBits(vec2<u32>(23329u, u_input.b)) ^ (vec2<u32>(u_input.b, u_input.c) << (vec2<u32>(5575u, 4294967295u) % vec2<u32>(32u))))), ~func_4(Struct_1(global1.a, !global1.b), vec4<i32>(abs(0i), 1i, -1i, u_input.a), Struct_1(_wgslsmith_f_op_f32(1412f + -1000f), !vec3<bool>(global1.b.x, global1.b.x, true))), global1.b.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(-289f - global0[_wgslsmith_index_u32(1u, 10u)]), !(!global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -1i) & 56865i, ~(~abs(vec2<i32>(2147483647i, 10425i)) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), reverseBits(~vec2<u32>(u_input.c ^ var_0.x, var_0.x | 0u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-403f, _wgslsmith_f_op_f32(-2084f + global1.a), -695f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global0[_wgslsmith_index_u32(var_0.x, 10u)]) + vec3<f32>(global1.a, -721f, 945f))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)))), 693f, global1.a));
}

