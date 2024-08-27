struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(869f, 1007f, 1000f, 1532f), vec4<f32>(213f, -805f, 748f, -668f), vec4<f32>(1223f, -954f, 997f, 719f), vec4<f32>(2275f, -315f, -1419f, -1841f), vec4<f32>(1608f, 536f, 1404f, -685f), vec4<f32>(212f, 760f, -403f, -283f), vec4<f32>(-944f, -1549f, 161f, 1840f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    global2 = array<vec4<f32>, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(567f, -774f, 640f), vec3<f32>(-113f, -409f, -137f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-301f, -1028f, 1319f), vec3<f32>(-693f, -373f, -204f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(171f, -508f, 248f), vec3<f32>(-326f, 464f, 728f))) * vec3<f32>(933f, -311f, 1999f)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))))));
    var var_1 = global1[_wgslsmith_index_u32(48771u, 8u)];
    var var_2 = ~u_input.a;
    let var_3 = vec3<bool>(true, false, all(!select(var_1.c, !var_1.c, select(vec3<bool>(var_1.c.x, false, var_1.c.x), var_1.c, true))));
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(~16259i, -45287i), i32(-1i) * -(~_wgslsmith_div_i32(arg_0.x, arg_0.x)));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_mult_i32(-_wgslsmith_add_i32(~1i, -1i << (~4294967295u % 32u)), -1i);
    let var_1 = reverseBits(vec2<i32>(1i, 1i));
    var var_2 = reverseBits(vec3<u32>(1u, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)));
    var var_3 = min(vec4<i32>(var_1.x, ~(-1i), select(-(-1i | var_1.x), var_1.x, !all(vec4<bool>(true, false, false, false))), select(_wgslsmith_div_i32(var_1.x, func_3(vec4<i32>(16520i, var_1.x, -2147483647i, var_1.x))), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1, var_1)), false)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(max(2147483647i, var_1.x), var_1.x, var_1.x), vec3<i32>(~2147483647i, var_1.x, 38805i & var_1.x)), -(var_1.x ^ 28101i), -1i, 0i << (var_2.x % 32u)));
    let var_4 = global1[_wgslsmith_index_u32(~0u, 8u)];
    return ~vec3<u32>(~4294967295u, max(_wgslsmith_sub_u32(~u_input.a, abs(0u)), var_2.x), ~(~_wgslsmith_mod_u32(var_2.x, 19340u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 50049u) & vec3<u32>(1u, 1u, u_input.a), ~vec3<u32>(arg_0.b, 50514u, arg_0.b)) & ~vec3<u32>(u_input.a, 79303u, u_input.a)) ^ vec3<u32>(23513u, 0u, 9226u), ~func_2());
    global1 = array<Struct_1, 8>();
    global0 = true;
    let var_1 = vec2<i32>(-(~arg_0.d.x), arg_0.d.x);
    let var_2 = global1[_wgslsmith_index_u32(var_0.x, 8u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(2451u, 1u, var_2.b, 0u) ^ vec4<u32>(4294967295u, 0u, 1u, arg_0.b)), firstLeadingBit(vec4<u32>(u_input.a, 76920u, u_input.a, var_0.x) >> (vec4<u32>(var_2.b, 4294967295u, arg_0.b, 104424u) % vec4<u32>(32u)))) & (vec4<u32>(~var_2.b, _wgslsmith_sub_u32(0u, 0u), var_2.b, ~arg_0.b) << (_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 0u, 7507u, 88458u), abs(vec4<u32>(u_input.a, 14006u, 70551u, 63482u))) % vec4<u32>(32u))), ~vec4<u32>((10242u >> (arg_0.b % 32u)) >> (countOneBits(4294967295u) % 32u), 2892u, _wgslsmith_add_u32(1u, 0u), _wgslsmith_add_u32(reverseBits(u_input.a), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)))), 8u)];
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.b | ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 56029u), vec2<u32>(1u, 36775u)), abs(arg_0.b), 1u, arg_0.b), firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, arg_0.b, arg_0.b)));
    var var_1 = 314f;
    global0 = false;
    let var_2 = abs(-select(arg_0.d.yyz, select(vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.d.x), firstLeadingBit(arg_0.d.zyy), 12312i > arg_0.d.x), true));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-187f, _wgslsmith_div_f32(1248f, 795f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(673f)) - _wgslsmith_f_op_f32(step(-115f, 1022f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-103f + 634f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1655f)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(func_4(func_1(Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_u32(0u >> (u_input.a % 32u), u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec4<i32>(~(-1i), 0i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -30252i, 5787i), vec3<i32>(15308i, -1i, -1i))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1848f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 8u)];
    var var_1 = Struct_1(vec3<i32>(~_wgslsmith_mod_i32(var_0.d.x, 66540i), -var_0.d.x, abs(1i)), 13928u, var_0.c, select(vec4<i32>(var_0.d.x, -34561i, var_0.a.x, abs(var_0.d.x)) & (~vec4<i32>(0i, var_0.d.x, var_0.a.x, 0i) | -vec4<i32>(2147483647i, var_0.a.x, 57947i, 0i)), vec4<i32>(var_0.a.x, ~_wgslsmith_add_i32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec3_i32(var_0.a, var_0.d.zyy), firstTrailingBit(var_0.a.x) ^ (var_0.d.x ^ -19787i)), var_0.e), true);
    var var_2 = !select(select(!vec4<bool>(var_1.c.x, true, var_1.c.x, false), vec4<bool>(any(vec4<bool>(false, var_1.c.x, var_1.e, var_0.c.x)), any(vec3<bool>(true, true, var_1.e)), true, true), !select(vec4<bool>(var_0.e, false, var_1.e, false), vec4<bool>(false, var_1.c.x, true, false), false)), select(vec4<bool>(var_1.c.x, true, all(vec3<bool>(false, false, false)), var_1.a.x != 23014i), !select(vec4<bool>(false, var_0.c.x, var_1.e, true), vec4<bool>(true, var_1.e, true, true), vec4<bool>(true, true, true, true)), true), !var_0.c.x);
    var_2 = select(!select(!select(vec4<bool>(false, var_0.e, true, var_0.c.x), vec4<bool>(var_1.e, false, true, true), vec4<bool>(var_2.x, var_2.x, true, var_0.e)), vec4<bool>(true, var_0.c.x, true, true), var_2.x), !select(!select(vec4<bool>(true, true, var_0.e, var_0.c.x), vec4<bool>(false, var_0.e, true, true), var_0.e), select(select(vec4<bool>(true, false, var_1.c.x, true), vec4<bool>(false, false, var_1.c.x, true), false), !vec4<bool>(true, false, var_1.e, var_2.x), var_1.e | true), vec4<bool>(true, true, false, any(var_1.c))), (var_1.c.x & func_1(Struct_1(var_0.d.ywz, 0u, var_0.c, vec4<i32>(-1i, 21781i, var_0.a.x, -11867i), var_1.c.x), _wgslsmith_f_op_f32(select(224f, -337f, var_1.c.x))).c.x) != func_1(global1[_wgslsmith_index_u32(var_1.b, 8u)], _wgslsmith_f_op_f32(min(-1220f, -1212f))).e);
    let var_3 = vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.a, firstLeadingBit(4294967295u), 30799u, u_input.a), select(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 42703u, 29030u, 0u), vec4<u32>(var_1.b, 730u, u_input.a, u_input.a)), firstLeadingBit(vec4<u32>(48673u, u_input.a, 78985u, 22312u)) << (~vec4<u32>(u_input.a, 0u, var_1.b, 63247u) % vec4<u32>(32u)), select(vec4<bool>(var_2.x, var_1.c.x, true, var_1.c.x), vec4<bool>(true, true, var_0.e, false), select(vec4<bool>(var_0.c.x, var_0.c.x, var_1.c.x, var_2.x), vec4<bool>(true, var_1.c.x, var_1.c.x, false), true)))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1155f, 432f) * vec2<f32>(540f, -490f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1321f, -783f) - vec2<f32>(-104f, -640f)))))), -220f, u_input.a);
}

