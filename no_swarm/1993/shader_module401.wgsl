struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: bool;

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1203f);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(max((~vec4<i32>(2147483647i, u_input.e, 26416i, -9972i) & vec4<i32>(-6931i, u_input.e, u_input.b.x, u_input.e)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, u_input.b.x, u_input.e, u_input.e), vec4<i32>(656i, 0i, -25321i, u_input.b.x)) | -vec4<i32>(u_input.b.x, -1i, u_input.b.x, -1i)), ~countOneBits(vec4<i32>(u_input.e, 1i, 1i, u_input.e)) & -(~vec4<i32>(u_input.e, -2147483647i, u_input.e, u_input.b.x))), ~vec4<i32>(u_input.e, 1i, abs(u_input.b.x), 12274i));
    return ~(select(firstLeadingBit(global2.x), global2.x, true) >> (~(~4593u) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = true;
    global1 = arg_0.a.x >= func_3(any(vec3<bool>(true, var_0, var_0 && var_0)));
    var var_1 = Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, _wgslsmith_add_i32(14367i, -58593i)), _wgslsmith_div_vec2_i32(~u_input.b.zz, _wgslsmith_mult_vec2_i32(u_input.b.zx, vec2<i32>(-2147483647i, -1i)))), (u_input.b ^ vec3<i32>(u_input.e, u_input.e, 80375i)) | max(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-42778i, u_input.e, u_input.b.x)), ~vec3<i32>(u_input.e, 1i, u_input.b.x)), u_input.b));
    global2 = ~abs(_wgslsmith_mult_vec2_u32(countOneBits(arg_0.a.xx), ~u_input.a.xx)) << (reverseBits(arg_0.a.yz & (~vec2<u32>(1u, 16039u) & reverseBits(arg_2.a.xx))) % vec2<u32>(32u));
    global2 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~42973u, _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(0u, arg_0.a.x, 71280u))), 4294967295u) ^ 4294967295u, 30378u);
    return Struct_2(_wgslsmith_div_i32(-var_1.b.x >> (_wgslsmith_dot_vec2_u32(arg_0.a.xy << (vec2<u32>(4294967295u, 37273u) % vec2<u32>(32u)), ~vec2<u32>(37564u, 19616u)) % 32u), var_1.b.x), var_1.b << (~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.a.x, 16041u, arg_2.a.x), ~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    global1 = any(select(vec3<bool>(true, false, true != select(false, false, true)), vec3<bool>(true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1230f), _wgslsmith_f_op_f32(sign(755f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(arg_0.a.x, 59228u, u_input.d, 23228u))) + _wgslsmith_f_op_f32(f32(-1f) * -1715f))));
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(9725i, ~60269i) | ~arg_1.b.zy, abs(arg_2.b.yz));
    var var_1 = vec3<f32>(-902f, 885f, _wgslsmith_f_op_f32(-513f + 1617f));
    var var_2 = var_1.x;
    return !select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), ~global2.x <= arg_0.a.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2506f * 1047f))) - _wgslsmith_div_f32(-758f, 1000f)));
    var var_1 = i32(-1i) * -1i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1273f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) + _wgslsmith_f_op_f32(step(-1044f, -438f))))) * _wgslsmith_f_op_f32(func_1(vec4<u32>((0u >> (u_input.a.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 39535u, 20183u, 0u), vec4<u32>(global2.x, 0u, global2.x, u_input.d)) % 32u), u_input.c, 1u, u_input.a.x))));
    var var_2 = func_4(Struct_1(max(firstTrailingBit(~vec3<u32>(global2.x, 35036u, global2.x)), ~max(u_input.a, vec3<u32>(u_input.c, 14198u, 1u)))), func_2(global0[_wgslsmith_index_u32(~(~(30740u & global2.x)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-492f, -2004f)))) * -338f), Struct_1(u_input.a)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_div_u32(1u, global2.x) << (5825u % 32u), 19538u), 4u)], _wgslsmith_f_op_f32(step(637f, _wgslsmith_f_op_f32(1020f - _wgslsmith_f_op_f32(floor(-1110f))))), global0[_wgslsmith_index_u32(4294967295u, 4u)]));
    var var_3 = !(!vec4<bool>(var_2.x, true, var_2.x, false));
    var var_4 = global0[_wgslsmith_index_u32(u_input.d, 4u)];
    let var_5 = Struct_2(1i, -func_2(global0[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(abs(370f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, ~u_input.c), 4u)]).b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a, select(var_4.a ^ vec3<u32>(57845u, var_4.a.x, var_4.a.x), vec3<u32>(13305u, 1u, 1u), var_3.yzy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 879f, -1548f))), vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1499f, _wgslsmith_f_op_f32(377f + 1733f), -1557f), vec3<f32>(-563f, _wgslsmith_f_op_f32(min(-1000f, 1008f)), -1000f), vec3<bool>(var_3.x, true, var_2.x)))), abs(42733u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1f, -854f)))), max(var_5.b.yy, vec2<i32>(-firstLeadingBit(-33381i), func_2(Struct_1(vec3<u32>(global2.x, u_input.c, 1u)), _wgslsmith_f_op_f32(-1348f - 445f), Struct_1(vec3<u32>(0u, 1u, 48689u))).a)));
}

