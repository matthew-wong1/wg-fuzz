struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = -15169i;
    let var_2 = max(arg_1.a, global1.a.a);
    var_0 = global1.a;
    var var_3 = Struct_2(arg_1);
    return countOneBits(~var_0.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(min(firstLeadingBit(global1.a.a), ~1i), ~1u));
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(global1.a.a, -34602i), -_wgslsmith_add_i32(abs(-54161i), 1i)), _wgslsmith_dot_vec4_u32(vec4<u32>(52460u, 20845u, firstLeadingBit(reverseBits(74845u)), 15582u), vec4<u32>(~1255u, 2393u, func_3(-113f, var_0.a) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.wz), ~(u_input.c.x << (36310u % 32u)))));
    let var_3 = vec4<bool>(any(vec3<bool>(false, true, true)), _wgslsmith_mod_u32(12293u, 16218u) > arg_0.x, !(firstTrailingBit(arg_1.x) > ~arg_1.x), false);
    var var_4 = min(vec2<i32>(abs(arg_1.x), reverseBits(global1.a.a)), _wgslsmith_sub_vec2_i32(arg_1.xx, _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(arg_1.yy, vec2<i32>(2147483647i, global1.a.a)), vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_1.x, var_2.a, var_2.a), vec4<i32>(15692i, -48714i, -1i, arg_1.x))))));
    return var_3;
}

fn func_1(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(-659f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - 411f), global2.x)))));
    global2 = vec4<f32>(var_0, 993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), var_0);
    var var_1 = vec3<bool>(any(vec2<bool>(true, true)), any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), !(-2087f > global0.x))), all(vec3<bool>(true, false, !select(true, false, true))));
    let var_2 = select(all(!select(!vec4<bool>(false, true, var_1.x, true), func_2(vec4<u32>(4294967295u, u_input.c.x, arg_0.x, 0u), vec3<i32>(21667i, -2147483647i, 2147483647i)), true)), func_2(~arg_0, -(~vec3<i32>(-2147483647i, -32450i, u_input.b))).x, var_1.x | (!(1827u != global1.a.b) | (global1.a.a <= u_input.a)));
    var_1 = vec3<bool>(any(!vec4<bool>(false, u_input.c.x != u_input.c.x, all(vec4<bool>(var_2, false, true, false)), var_2 && var_2)), var_2, any(select(!vec3<bool>(false, true, var_1.x), !select(vec3<bool>(true, false, var_1.x), vec3<bool>(false, true, var_2), var_2), true)));
    return vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_0.x, 1u, arg_0.x, 0u)), ~arg_0), vec4<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global1.a.b, u_input.c.x, arg_0.x), arg_0), 12612u, 10049u)), u_input.c.x, _wgslsmith_mult_u32(firstTrailingBit(14127u) >> (global1.a.b % 32u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(select(select(vec3<i32>(global1.a.a, 1i, 13208i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-23101i, 0i, global1.a.a)), reverseBits(vec3<i32>(u_input.a, global1.a.a, -16258i))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true))), ~(vec3<i32>(-32904i, u_input.b, 2908i) | vec3<i32>(1i, u_input.a, -40538i)) << ((func_1(vec4<u32>(79335u, global1.a.b, u_input.c.x, u_input.c.x)) >> (max(vec3<u32>(1u, 20791u, global1.a.b), vec3<u32>(global1.a.b, 19676u, 77297u)) % vec3<u32>(32u))) % vec3<u32>(32u)), true));
    global1 = Struct_2(Struct_1(9416i, ~global1.a.b));
    let var_1 = Struct_1(-9467i, 1u);
    var_0 = _wgslsmith_mult_vec3_i32(~(-(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1.a, global1.a.a), vec3<i32>(-301i, -39346i, -1i)) >> (~vec3<u32>(1u, global1.a.b, var_1.b) % vec3<u32>(32u)))), countOneBits(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(27336i, -30496i, var_1.a), vec3<i32>(36722i, 12957i, var_0.x)), -(vec3<i32>(-3701i, 2147483647i, -2147483647i) | vec3<i32>(u_input.a, 6589i, u_input.a)))));
    global1 = Struct_2(Struct_1(var_1.a, 1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2.x, -377f, global2.x)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(587f, global2.x, global0.x, -983f) * vec4<f32>(375f, 377f, global0.x, -400f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(867f, -354f, global2.x, -838f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 471f, global2.x, 1274f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, global2.x, -729f, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(452f, global2.x, global0.x, -2148f) + vec4<f32>(-283f, 1864f, 876f, global0.x))))), true)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global2.x, 644f, var_2.x) - _wgslsmith_div_vec4_f32(vec4<f32>(-166f, 645f, 999f, -106f), vec4<f32>(2267f, 866f, global2.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 674f, global2.x, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, _wgslsmith_f_op_f32(step(-654f, global2.x)))), select(_wgslsmith_add_vec3_i32(vec3<i32>(59096i >> (var_1.b % 32u), global1.a.a, 1i), select(select(vec3<i32>(2147483647i, global1.a.a, -43850i), vec3<i32>(u_input.b, -25274i, u_input.a), false), abs(vec3<i32>(-15314i, u_input.b, 16065i)), vec3<bool>(true, true, true))), vec3<i32>(firstLeadingBit(var_1.a) ^ -8220i, -49240i, -1i), true));
}

