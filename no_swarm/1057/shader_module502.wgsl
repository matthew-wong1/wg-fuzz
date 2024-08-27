struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), i32(-2147483648), 10220i), vec3<i32>(24327i, 1i, 8718i), vec3<i32>(31241i, 10282i, 0i), vec3<i32>(-54847i, -1i, 1i), vec3<i32>(26994i, 46067i, 19855i), vec3<i32>(1i, -14241i, 0i), vec3<i32>(87082i, 2147483647i, -1i), vec3<i32>(9681i, -5525i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(38551i, 1i, 0i), vec3<i32>(-46508i, i32(-2147483648), -5296i), vec3<i32>(1i, 0i, 1i), vec3<i32>(2147483647i, 52505i, 2147483647i), vec3<i32>(5247i, -15971i, -1321i), vec3<i32>(19318i, i32(-2147483648), 2147483647i), vec3<i32>(-3396i, -1461i, 2147483647i), vec3<i32>(i32(-2147483648), -34176i, 0i), vec3<i32>(1i, i32(-2147483648), 3684i), vec3<i32>(44754i, 2147483647i, 2147483647i), vec3<i32>(1i, 2147483647i, 15287i), vec3<i32>(13501i, 0i, 27213i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(-41744i, 0i, 0i), vec3<i32>(-2373i, -64131i, 2147483647i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(i32(-2147483648), 13381i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -3308i, 69892i), vec3<i32>(-31422i, -23950i, 2147483647i));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: u32;

var<private> global3: u32;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, 1973f, -281f, 1221f)))));
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    let var_1 = _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_add_i32(-_wgslsmith_sub_i32(arg_0.x, arg_0.x | -2147483647i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(70857u, 28u)], vec3<i32>(arg_0.x, 32133i, arg_0.x)), ~vec3<i32>(-2147483647i, arg_0.x, -1i))), -47259i);
    global1 = select(vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, global4.x), vec2<bool>(global4.x, global1.x), vec2<bool>(global4.x, true)), select(vec2<bool>(global4.x, global4.x), vec2<bool>(global1.x, true), vec2<bool>(true, false)))), false), select(!vec2<bool>(any(vec4<bool>(true, false, false, global1.x)), global4.x), select(vec2<bool>(false, -1208f > var_0.x), vec2<bool>(true, -2147483647i >= var_1), !global4.x), select(vec2<bool>(global1.x, global4.x), vec2<bool>(global1.x && global1.x, global1.x), select(select(vec2<bool>(global1.x, false), vec2<bool>(global4.x, true), vec2<bool>(global4.x, true)), select(vec2<bool>(true, false), vec2<bool>(global4.x, global4.x), global4.x), false))), global1.x);
    return ~(-18649i);
}

fn func_4(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = 27392i;
    global3 = abs(u_input.b.x);
    global2 = abs(118828u << (((107810u ^ (0u | u_input.b.x)) & ~(~u_input.a.x)) % 32u));
    let var_1 = select(select(select(!vec2<bool>(arg_1, true), vec2<bool>(true, true), select(select(vec2<bool>(global4.x, global4.x), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(global4.x, global1.x), vec2<bool>(arg_1, global4.x), true), !vec2<bool>(false, global1.x))), select(vec2<bool>(any(vec3<bool>(global4.x, false, global1.x)), global1.x != global1.x), vec2<bool>(global4.x, all(vec4<bool>(arg_1, arg_1, false, global1.x))), !vec2<bool>(false, global1.x)), select(select(!vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), vec2<bool>(true, global1.x)), vec2<bool>(global4.x, all(vec4<bool>(true, true, global1.x, true))), global1.x)), vec2<bool>(true, true), true || arg_1);
    global4 = select(vec2<bool>(-2147483647i <= reverseBits(arg_0), false), select(vec2<bool>(all(!vec4<bool>(var_1.x, var_1.x, global1.x, true)), all(!vec4<bool>(var_1.x, true, global4.x, arg_1))), !vec2<bool>(global1.x && true, !global4.x), vec2<bool>(true, true)), min(67613u, ~34844u) == firstLeadingBit(max(u_input.b.x << (u_input.b.x % 32u), u_input.b.x)));
    return true;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = u_input.b.yy << (~vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(u_input.b), vec4<u32>(1u, u_input.a.x, arg_0, 29261u)), 2672u) % vec2<u32>(32u));
    var var_1 = arg_1;
    var var_2 = func_4(0i, func_3(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.x, 1i, -14707i), vec3<i32>(2147483647i, 0i, arg_1)), countOneBits(55814u)) > ~arg_1);
    let var_3 = arg_2;
    let var_4 = arg_2;
    return global4.x;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    global1 = select(select(select(vec2<bool>(true, true), select(!vec2<bool>(false, global4.x), !vec2<bool>(global4.x, global1.x), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, global4.x), vec2<bool>(global4.x, global4.x), global4.x), any(vec4<bool>(global4.x, true, global4.x, true)))), select(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, true), vec2<bool>(true, false)), vec2<bool>(false, true), func_2(76926u, 20945i, Struct_1(vec4<i32>(0i, -1i, -13671i, 41306i), -5456i, u_input.b.wyw))), vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(arg_0, true)), vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0, arg_0, global1.x, false), vec4<bool>(global4.x, false, true, false))), arg_0)), select(vec2<bool>(global1.x, all(vec2<bool>(arg_0, true))), !select(vec2<bool>(true, global4.x), select(vec2<bool>(true, true), vec2<bool>(global4.x, true), vec2<bool>(global1.x, global1.x)), any(vec3<bool>(global1.x, true, true))), vec2<bool>(select(global1.x, all(vec4<bool>(true, true, global1.x, false)), global1.x || global1.x), true)), true);
    let var_0 = u_input.a.zx;
    let var_1 = u_input.b.x;
    var var_2 = select(vec4<bool>(!global4.x, all(vec3<bool>(select(global1.x, global4.x, false), var_1 < var_1, func_2(27264u, -4719i, Struct_1(vec4<i32>(14193i, 0i, 0i, -2147483647i), -2147483647i, u_input.a)))), global4.x, global1.x), vec4<bool>(false, all(!vec2<bool>(true, global4.x)), true, true), global4.x);
    var var_3 = _wgslsmith_mod_u32(10132u, ~(~(~var_1))) >> ((_wgslsmith_div_u32(arg_1, 1u) | ~(~min(67127u, 1u))) % 32u);
    return abs(abs(0u >> (0u % 32u)) >> (var_0.x % 32u)) >> (64492u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~4294967295u, u_input.b.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, 107786u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(40128u, 55112u, u_input.a.x), vec3<u32>(4294967295u, u_input.b.x, 2958u), vec3<u32>(0u, u_input.b.x, 0u)))) >> (vec3<u32>(firstLeadingBit(~func_1(true, u_input.a.x, vec2<f32>(-1000f, 105f))), 24935u, _wgslsmith_div_u32(~(~u_input.a.x), 37721u)) % vec3<u32>(32u));
    var var_1 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 13927i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -44702i, 2147483647i, -2147483647i), vec4<i32>(0i, 80582i, -1i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(17029i, 2147483647i))), ~abs(vec4<i32>(20596i, -13150i, 22354i, -1i))), ~vec4<i32>(1i, 1i, 1i, 1i), !select(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global4.x, global4.x, global4.x), false), select(vec4<bool>(global4.x, true, false, true), vec4<bool>(false, false, false, false), true), global4.x)) << (_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(select(func_1(false, var_0.x, vec2<f32>(917f, 741f)), u_input.a.x, !global1.x), 1u, func_1(global1.x || false, _wgslsmith_add_u32(1u, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1139f, 278f))), var_0.x)) % vec4<u32>(32u));
    let var_2 = vec4<i32>(1i, _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(var_1.x, 1i, -2147483647i), ~var_1.x)), ~(-1i), var_1.x);
    global4 = vec2<bool>(true, global4.x);
    var var_3 = abs(4294967295u);
    let var_4 = vec4<i32>(~(-_wgslsmith_mod_i32(-2147483647i | var_1.x, -66448i)), i32(-1i) * -22851i, var_1.x, 0i);
    global4 = select(!(!(!vec2<bool>(true, global1.x))), !select(!(!vec2<bool>(true, global4.x)), vec2<bool>(true, true), select(select(vec2<bool>(false, global4.x), vec2<bool>(true, false), vec2<bool>(global4.x, false)), vec2<bool>(global1.x, true), vec2<bool>(global4.x, global1.x))), select(!any(vec2<bool>(true, global4.x)) & !(!global4.x), any(!(!vec2<bool>(global4.x, global1.x))), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(39397i, -7102i, abs(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 40068u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.b.x, 9317u, 53865u)))), u_input.b);
}

