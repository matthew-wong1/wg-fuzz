struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(u_input.b, ~(abs(23485i) & _wgslsmith_sub_i32(u_input.d, -u_input.b)), abs(vec4<i32>(30235i, ~(-2147483647i) & u_input.d, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -15017i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, -1i)), u_input.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-500f, -1000f), vec2<f32>(252f, 1371f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(704f, 1190f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(355f, 892f), vec2<f32>(854f, 962f)))))))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(34358u, countOneBits(u_input.c.x)), 4294967295u));
    let var_1 = vec3<i32>(var_0.a, -2147483647i, countOneBits(reverseBits(u_input.a.x)));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a) ^ (vec3<i32>(u_input.d, -1i, -30724i) & u_input.a)), firstTrailingBit(abs(~var_1))), min(_wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(var_1.x, countOneBits(-6230i), var_0.b, -14323i)), 13993i | _wgslsmith_sub_i32(42443i, -35185i ^ var_0.a)), vec4<i32>(-_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, var_1.x), min(vec2<i32>(-18143i, -53402i), vec2<i32>(2147483647i, -45328i))), var_1.x << (~38043u % 32u), -2147483647i, -26407i), vec2<f32>(var_0.d.x, _wgslsmith_div_f32(-1749f, var_0.d.x)), u_input.c.x);
    var_0 = Struct_1(_wgslsmith_clamp_i32(u_input.b, 1i, ~(-_wgslsmith_mult_i32(-12783i, 27063i))), u_input.a.x << (_wgslsmith_add_u32(firstLeadingBit(~var_0.e), ~countOneBits(1u)) % 32u), abs(vec4<i32>(u_input.a.x, reverseBits(var_1.x) | -15300i, -min(1i, -13001i), abs(_wgslsmith_sub_i32(-28594i, 1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x), vec2<f32>(-164f, var_0.d.x)) * _wgslsmith_f_op_vec2_f32(select(var_0.d, _wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(599f, var_0.d.x)), true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) * vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x)))), u_input.c.x);
    var_0 = Struct_1(-1i, -2567i, var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -1530f) - var_0.d), var_0.d, vec2<bool>(true, true)))))), 1u);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = func_3(~(~4294967295u << (~arg_0.x % 32u)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(min(~(-vec4<i32>(10526i, 1i, 14152i, -1i)), max(vec4<i32>(u_input.a.x, -30324i, -2147483647i, -2147483647i), vec4<i32>(8710i, u_input.b, u_input.d, -1i)) << ((vec4<u32>(arg_0.x, u_input.c.x, 4294967295u, 21678u) >> (vec4<u32>(u_input.c.x, arg_0.x, 84479u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), -vec4<i32>(-1i, 5830i, ~(-1i), countOneBits(u_input.b))), u_input.b, abs(~countOneBits(~vec4<i32>(2147483647i, u_input.d, 32630i, 56966i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1359f, 831f))))), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, arg_0.x)));
    var_1 = Struct_1(_wgslsmith_mod_i32(u_input.a.x, u_input.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 14488i, -2147483647i, u_input.a.x), vec4<i32>(0i, var_1.a, u_input.b, u_input.d)), select(var_1.c, vec4<i32>(u_input.d, var_1.a, var_1.a, var_1.a), vec4<bool>(var_0.x, true, var_0.x, true))), _wgslsmith_clamp_i32(min(1i, u_input.a.x), _wgslsmith_mult_i32(u_input.d, 0i), ~(-11231i))) >> (~(_wgslsmith_mod_u32(arg_0.x, 1u) << (u_input.c.x % 32u)) % 32u), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(var_1.c, var_1.c) << ((vec4<u32>(var_1.e, u_input.c.x, u_input.c.x, arg_0.x) | vec4<u32>(4294967295u, u_input.c.x, 0u, arg_0.x)) % vec4<u32>(32u))), ~var_1.c), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), ~1u);
    var var_2 = _wgslsmith_add_i32(0i >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_sub_u32(u_input.c.x, 51693u), arg_0.x), 3602u) % 32u), _wgslsmith_add_i32(~u_input.a.x, -2147483647i));
    let var_3 = var_0.x;
    return var_1.c;
}

fn func_1() -> i32 {
    var var_0 = 63696i;
    var_0 = -1i;
    var var_1 = Struct_1(-23243i, -u_input.b, -(~func_2(min(u_input.c.xz, u_input.c.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-699f, -265f)))))), u_input.c.x);
    var var_2 = vec2<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), countOneBits(_wgslsmith_dot_vec3_i32(max(var_1.c.zxx, u_input.a), var_1.c.zww)) < -(~u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * 1943f) - _wgslsmith_f_op_f32(-var_1.d.x)) + _wgslsmith_f_op_f32(ceil(-515f))))) + -1000f);
    return ~_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) - _wgslsmith_div_f32(864f, -288f)))))), _wgslsmith_f_op_f32(-1180f * _wgslsmith_f_op_f32(-1111f + _wgslsmith_f_op_f32(f32(-1f) * -623f))), -783f);
    var var_1 = Struct_1(u_input.a.x, ~_wgslsmith_add_i32(0i, u_input.a.x), vec4<i32>(-func_1() << (0u % 32u), 1i, -(max(2147483647i, 5109i) & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, 0i, u_input.b), vec4<i32>(15310i, u_input.a.x, 21314i, u_input.d))), abs(52527i)), var_0.xx, ~firstLeadingBit(0u));
    let var_2 = false;
    let var_3 = select(select(select(select(!vec3<bool>(var_2, true, true), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, var_2)), vec3<bool>(true, var_2, false), !vec3<bool>(true, var_2, var_2)), vec3<bool>(!any(vec4<bool>(var_2, var_2, true, false)), _wgslsmith_f_op_f32(1842f - 644f) < var_1.d.x, true), true && all(vec4<bool>(false, var_2, var_2, var_2))), vec3<bool>(select((48070i << (u_input.c.x % 32u)) >= abs(20333i), false, var_2), (abs(2494u) < abs(u_input.c.x)) || var_2, any(select(vec4<bool>(false, var_2, false, var_2), !vec4<bool>(var_2, false, true, var_2), true))), var_2);
    var var_4 = vec4<f32>(530f, 737f, var_1.d.x, _wgslsmith_f_op_f32(abs(1000f)));
    let var_5 = Struct_1(u_input.d, _wgslsmith_sub_i32(0i, 1i), abs(min(var_1.c, vec4<i32>(var_1.c.x >> (var_1.e % 32u), -11098i, u_input.d, 17167i))), var_1.d, u_input.c.x);
    let var_6 = Struct_1(-29107i, 48094i, vec4<i32>(-1i) * -var_1.c, var_5.d, var_5.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c << (_wgslsmith_clamp_vec4_u32(vec4<u32>(min(var_1.e, 1u), ~u_input.c.x, var_5.e, reverseBits(16594u)), countOneBits(vec4<u32>(var_5.e, 0u, var_1.e, var_1.e)), vec4<u32>(var_1.e, var_5.e, var_6.e, 4294967295u) & max(vec4<u32>(4294967295u, var_6.e, var_6.e, 3759u), vec4<u32>(var_5.e, 4294967295u, 0u, 56148u))) % vec4<u32>(32u)));
}

