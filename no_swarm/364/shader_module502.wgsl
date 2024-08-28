struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<f32>(-1285f, 1181f), Struct_1(-210f, true)), Struct_2(vec2<f32>(582f, -1292f), Struct_1(775f, false)), Struct_2(vec2<f32>(2052f, -1255f), Struct_1(388f, false)), Struct_2(vec2<f32>(1186f, 363f), Struct_1(-281f, true)), Struct_2(vec2<f32>(1153f, 1630f), Struct_1(-1655f, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = vec2<u32>(35152u, _wgslsmith_dot_vec2_u32(vec2<u32>(69314u, ~48165u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(445u, 27698u))), vec2<u32>(1u, 1u))));
    let var_1 = vec4<bool>(var_0.x >= (~(~4294967295u) & select(136193u, _wgslsmith_dot_vec3_u32(vec3<u32>(9537u, 103u, var_0.x), vec3<u32>(17890u, 1u, 1u)), arg_0.b.b | false)), arg_0.b.b, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - arg_0.a.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a), Struct_1(-868f, _wgslsmith_f_op_f32(round(arg_0.a.x)) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x * 602f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.b.a), !select(true, all(select(var_1.xx, vec2<bool>(false, arg_0.b.b), vec2<bool>(arg_0.b.b, var_1.x))), all(vec2<bool>(false, var_1.x)) | true));
    var var_4 = var_0.x;
    return !(true & (var_0.x < 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec3<bool> {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    let var_0 = !all(vec4<bool>(func_3(global0[_wgslsmith_index_u32(21478u, 5u)], vec2<bool>(true, true)), true, true, all(vec4<bool>(true, false, true, false)))) | true;
    var var_1 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(51263u, 24973u, arg_0.x), vec3<u32>(arg_1, arg_1, arg_1)))), 5u)];
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * -201f) + _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))) * var_1.a), var_1.b);
    return vec3<bool>((arg_0.x ^ ~(arg_1 ^ arg_0.x)) > arg_0.x, true, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(-303f, 667f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f * -1138f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(374f, -136f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1309f))))), _wgslsmith_f_op_f32(525f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1100f + _wgslsmith_div_f32(1193f, 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - -487f))));
    var var_1 = 629f;
    var var_2 = global0[_wgslsmith_index_u32(1u, 5u)];
    return var_2.b;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~4294967295u;
    var var_1 = arg_1;
    let var_2 = true == select(true, false, !select(func_2(vec3<u32>(arg_0.x, 21001u, 4294967295u), arg_0.x).x, 69311u == arg_0.x, arg_1.b));
    var var_3 = func_4(!select(!(!vec3<bool>(false, true, arg_1.b)), select(func_2(vec3<u32>(arg_0.x, 0u, arg_0.x), arg_0.x), !vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(false, var_2, var_2)), !vec3<bool>(var_2, false, false)), _wgslsmith_clamp_i32(-min(firstLeadingBit(u_input.a), u_input.c), max(-(u_input.b.x << (0u % 32u)), u_input.a), -(_wgslsmith_sub_i32(9928i, u_input.a) & u_input.a)));
    let var_4 = countOneBits(-2147483647i);
    return func_4(!vec3<bool>(true | !var_3.b, (var_1.b || true) && false, arg_1.b), 1i);
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1075f, 1000f) - vec2<f32>(-1000f, 225f)))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_1)), -1975f)), func_5(~(~(~vec2<u32>(21779u, 23792u))), func_4(func_2(~vec3<u32>(4294967295u, 6134u, 42370u), 1u), arg_0)));
    var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = vec4<i32>(2147483647i, _wgslsmith_sub_i32(i32(-1i) * -abs(u_input.b.x), _wgslsmith_mod_i32(select(-12037i, max(14185i, -56413i), var_0.b.b && false), max(-9837i, -1i & u_input.b.x))), i32(-1i) * -_wgslsmith_dot_vec2_i32(~u_input.b, vec2<i32>(-1i, arg_0) | u_input.b), u_input.a << (firstLeadingBit(_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 8141u, 31292u), vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<u32>(1u, 1u, 1u))) % 32u));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, -967f) * vec2<f32>(arg_1, var_0.a.x)) + vec2<f32>(202f, -1252f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(689f, -242f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-539f, 849f))))))))), var_0.b);
    let var_2 = select(func_2(~vec3<u32>(1u, 1u, ~4294967295u), ~countOneBits(_wgslsmith_div_u32(0u, 4294967295u))), select(vec3<bool>(!(arg_1 >= 729f), var_0.b.b, var_0.b.b), !select(vec3<bool>(true, var_0.b.b, var_0.b.b), select(vec3<bool>(var_0.b.b, false, var_0.b.b), vec3<bool>(true, var_0.b.b, false), var_0.b.b), func_2(vec3<u32>(10902u, 64838u, 12323u), 4294967295u)), !(any(vec3<bool>(false, var_0.b.b, true)) && false)), func_2(reverseBits(vec3<u32>(31938u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23858u, 24480u, 0u), vec4<u32>(100524u, 1u, 4294967295u, 0u)), 1u)), 4294967295u));
    return firstLeadingBit(vec3<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-27475i, var_1.x, u_input.b.x), var_1.wzz), -1i, var_0.b.b), ~var_1.x, _wgslsmith_sub_i32(abs(1i), -var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-max(~func_1(u_input.c, 248f), -max(vec3<i32>(-1i, 1990i, u_input.c), vec3<i32>(u_input.c, 7692i, u_input.c))));
    global0 = array<Struct_2, 5>();
    var var_1 = -select(vec4<i32>(~(-2147483647i), abs(var_0.x), _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(u_input.b.x, var_0.x, u_input.c)), max(0i, 25996i)) >> (firstLeadingBit(vec4<u32>(31359u, 0u, 1u, 4294967295u)) % vec4<u32>(32u)), -vec4<i32>(u_input.b.x ^ var_0.x, var_0.x, var_0.x | -1i, -2147483647i | var_0.x), any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), func_2(vec3<u32>(25092u, 16296u, 0u), 8315u), vec3<bool>(true, true, true))));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, ~(~_wgslsmith_add_u32(8102u, 38493u))), 5u)];
    var var_3 = Struct_1(var_2.a.x, select(false, !var_2.b.b, true));
    var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, -1i, 2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.x, var_1.x, -30759i), -var_1.zzx)), abs(reverseBits(vec4<i32>(var_1.x, 2147483647i, -1i, -2147483647i) ^ vec4<i32>(42526i, 44626i, -25066i, 2147483647i)))), vec4<i32>(func_1(u_input.c ^ -3968i, var_3.a).x << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(1u, 21845u), vec2<u32>(1u, 1u), vec2<bool>(var_3.b, var_2.b.b))) % 32u), max(u_input.a, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-13468i, var_1.x, var_1.x))), 1i, (~u_input.b.x | (var_1.x & 25613i)) & reverseBits(i32(-1i) * -13888i)));
    global0 = array<Struct_2, 5>();
    var var_4 = ~(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

