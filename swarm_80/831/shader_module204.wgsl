struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(2147483647i, 3874i, 2147483647i, -77940i), vec4<i32>(-9483i, -16333i, -3839i, 25767i), vec4<i32>(-20636i, -25407i, -1i, 0i));

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = any(select(!(!vec3<bool>(arg_0, true, arg_0)), vec3<bool>(all(vec3<bool>(arg_0, true, true)), true, arg_0 && false), arg_0));
    var var_1 = ~(~arg_2.b);
    let var_2 = _wgslsmith_mult_vec2_u32(abs(~select(vec2<u32>(global2.b, arg_2.b) | vec2<u32>(arg_2.b, global2.b), vec2<u32>(global2.b, 4294967295u), true)), _wgslsmith_clamp_vec2_u32(max(~(~vec2<u32>(4294967295u, global2.b)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global2.b, global2.b), vec2<u32>(1u, 21327u))), reverseBits(max(vec2<u32>(global2.b, arg_2.b) ^ vec2<u32>(global2.b, 43208u), min(vec2<u32>(4294967295u, arg_2.b), vec2<u32>(1u, 43096u)))), _wgslsmith_mult_vec2_u32(vec2<u32>(global2.b, 47386u), vec2<u32>(global2.b, 1u))));
    let var_3 = _wgslsmith_f_op_f32(min(arg_2.a, global2.a));
    var var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(3572u, firstTrailingBit(_wgslsmith_mult_u32(8917u, 1u << (arg_2.b % 32u))), arg_2.b, 5160u), ~(~(~vec4<u32>(arg_2.b, arg_2.b, var_2.x, var_2.x))) & select(~vec4<u32>(85979u, 47691u, global2.b, global2.b) << (min(vec4<u32>(var_2.x, var_2.x, arg_2.b, 11239u), vec4<u32>(arg_2.b, 121890u, 0u, arg_2.b)) % vec4<u32>(32u)), ~(~vec4<u32>(27738u, global2.b, 38583u, arg_2.b)), arg_0));
    return u_input.a;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a, -262f, true)) - _wgslsmith_f_op_f32(735f - _wgslsmith_f_op_f32(-global2.a))), 576f)));
    let var_1 = ((select(reverseBits(u_input.a), u_input.a ^ u_input.a, global2.b > global2.b) | (-u_input.a ^ 1i)) ^ _wgslsmith_add_i32(40159i, 44880i)) ^ (u_input.a << (69024u % 32u));
    var var_2 = -155f;
    global2 = global0[_wgslsmith_index_u32(~global2.b, 24u)];
    let var_3 = _wgslsmith_mult_vec2_i32(~(-firstTrailingBit(-vec2<i32>(u_input.a, -1i))), countOneBits(vec2<i32>(func_3(true, u_input.a, Struct_1(815f, 36328u)), -u_input.a | _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, -1i, 24540i), vec3<i32>(var_1, 25227i, u_input.a)))));
    return 62328u;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = arg_0;
    global0 = array<Struct_1, 24>();
    var var_2 = var_0;
    var var_3 = !(!all(vec2<bool>(true, true)));
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_1(-1329f, ~4294967295u);
    let var_1 = vec2<f32>(-609f, _wgslsmith_f_op_f32(sign(var_0.a)));
    var var_2 = func_4(var_0, u_input.a, global0[_wgslsmith_index_u32(~(~func_2()), 24u)], _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(0i, -2147483647i)), _wgslsmith_add_i32(8662i, -(u_input.a >> (var_0.b % 32u)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(-392f)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global2.b >> (_wgslsmith_div_u32(4294967295u, global2.b) % 32u), var_0.b, 1u), func_2()));
    let var_4 = reverseBits(firstTrailingBit(-35367i));
    return select(vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(false, false, true, false)) | (-u_input.a == _wgslsmith_dot_vec3_i32(vec3<i32>(var_4, 1i, 18967i), vec3<i32>(u_input.a, 2147483647i, var_4))), !(global2.b <= global2.b), any(vec4<bool>(arg_0.x != -904f, select(false, false, true), true, false))), (~7132u > max(_wgslsmith_mult_u32(var_2.b, var_0.b), ~global2.b)) & true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, 1i), ~select(vec2<i32>(u_input.a, -1i), vec2<i32>(1626i, 62708i), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a, -14993i, -2147483647i), vec4<i32>(u_input.a, var_1.x, var_1.x, 19582i)), 17690i) << (16840u % 32u), 1i);
    var var_3 = select(~(~(~(~vec2<u32>(0u, 37637u)))), vec2<u32>(global2.b ^ ~0u, global2.b), vec2<bool>(any(vec4<bool>(true, true, true, false)), all(!func_1(vec3<f32>(-913f, -298f, -2452f)))));
    var var_4 = func_3(true, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-(~var_2), var_1.x), reverseBits(min(var_1.x, var_2)), var_1.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) + func_4(global0[_wgslsmith_index_u32(var_3.x, 24u)], -1i, Struct_1(global2.a, global2.b), 2147483647i).a) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.a))))), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(34390u, 0u), _wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(sign(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1744f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_div_f32(826f, -485f))))));
}

