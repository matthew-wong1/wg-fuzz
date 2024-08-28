struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-368f, -1000f), vec2<f32>(-1153f, 470f), vec2<f32>(-798f, 1000f), vec2<f32>(-1122f, -318f), vec2<f32>(1167f, 260f), vec2<f32>(1800f, -709f), vec2<f32>(496f, 1000f), vec2<f32>(-870f, -1019f), vec2<f32>(-260f, 1575f), vec2<f32>(1049f, -511f), vec2<f32>(-1611f, 305f));

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = -449f;
    let var_1 = vec4<u32>(63858u, 0u, 25885u, 1u);
    var var_2 = select(!(!select(arg_1.zx, vec2<bool>(false, false), vec2<bool>(true, true))), !arg_1.xy, !(!(!select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yx, vec2<bool>(true, true)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(824f, 2164f, -844f, _wgslsmith_f_op_f32(max(-1243f, arg_2.d.x))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + arg_2.d.x), -1000f, _wgslsmith_f_op_f32(-arg_2.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-951f, -1126f, global1.x, -1006f), vec4<f32>(arg_2.d.x, 1163f, global1.x, global1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(770f, arg_2.d.x, arg_2.d.x, global1.x), vec4<f32>(-2041f, 328f, 113f, 259f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, global1.x, global1.x, arg_2.d.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1313f, _wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global1.x, 1000f)), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -584f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(2603f, -1000f, arg_2.d.x, arg_2.d.x) + vec4<f32>(arg_2.d.x, global1.x, global1.x, arg_2.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x, -1617f) * vec4<f32>(-366f, arg_2.d.x, 316f, 1998f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1643f, -1000f, 103f, arg_2.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, -435f, 1143f, -1000f))), select(vec4<bool>(true, false, true, arg_1.x), select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(arg_1.x, var_2.x, var_2.x, arg_1.x), vec4<bool>(var_2.x, arg_1.x, arg_1.x, var_2.x)), !vec4<bool>(arg_1.x, true, arg_1.x, true))))));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(1655i);
    var var_1 = vec2<bool>(func_3(1i, vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, arg_0), true)), (false | arg_0) | true), Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(40981i, arg_1.b.x, arg_1.b.x), vec3<i32>(u_input.b, -83743i, -34044i)), arg_2.a.xx, arg_1.a.yz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, 1784f)), _wgslsmith_f_op_vec2_f32(select(arg_2.d, vec2<f32>(global1.x, -1562f), vec2<bool>(false, arg_0))), true)), ~(~vec3<u32>(arg_1.e.x, 27675u, arg_1.e.x))), max(-arg_1.b.x, ~arg_2.c.x)), true);
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_2.b.x, ~firstLeadingBit(~(-28759i))), -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a & arg_2.a.x), arg_1.b));
    let var_2 = -10538i;
    var_0 = u_input.b;
    return -279f;
}

fn func_2() -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 101f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), 284f, 1203f, global1.x));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(func_4(func_3(i32(-1i) * -1i, vec3<bool>(var_0, var_0, true), Struct_1(vec3<i32>(u_input.b, u_input.b, 11136i), vec2<i32>(-1i, 2572i), vec2<i32>(27823i, u_input.a), var_1.yw, vec3<u32>(4294967295u, 76489u, 20229u)), ~u_input.b), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(9956i, u_input.b, 33523i)), ~vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(u_input.b, -35529i), vec2<f32>(921f, var_1.x), vec3<u32>(1u, 1u, 1u)), Struct_1(select(vec3<i32>(2147483647i, u_input.a, -11359i), vec3<i32>(-40588i, 7416i, u_input.b), vec3<bool>(var_0, true, var_0)), abs(vec2<i32>(4939i, -1i)), firstTrailingBit(vec2<i32>(14402i, 7329i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + var_1.yx), max(vec3<u32>(1u, 35955u, 46482u), vec3<u32>(24447u, 13944u, 1u)))))))));
    let var_3 = vec2<bool>(!(!(true || (var_0 && true))), true);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~22185u), 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 9618u, 13543u), 53648u), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(12895u, 4294967295u, 22768u), vec3<u32>(4294967295u, 18574u, 1u), vec3<u32>(0u, 37u, 49572u)), reverseBits(vec3<u32>(16998u, 0u, 0u))))) | (_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(58224u), 93567u), vec2<u32>(1u, 1u)) << (1432u % 32u));
}

fn func_1() -> vec4<f32> {
    global0 = array<vec2<f32>, 11>();
    let var_0 = 1u;
    let var_1 = ~1i;
    global0 = array<vec2<f32>, 11>();
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(1u >> (func_2() % 32u), var_0), select(34893u, 4294967295u, any(vec2<bool>(false, true))) >> (reverseBits(~_wgslsmith_mod_u32(var_0, 38212u)) % 32u));
    return vec4<f32>(133f, _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(419f, _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(635f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f + -1351f)));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_1(vec3<i32>(~u_input.b, u_input.a, i32(-1i) * -abs(u_input.a)), (vec2<i32>(u_input.a | -45534i, 0i) >> (min(countOneBits(vec2<u32>(74462u, 1u)), ~vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))) | ~(vec2<i32>(-2147483647i, -2147483647i) | -vec2<i32>(2147483647i, u_input.a)), vec2<i32>(firstTrailingBit(u_input.a), ~u_input.b), arg_1.zx, _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, 96490u, arg_0)), ~max(firstLeadingBit(vec3<u32>(arg_0, 1u, 1u)), ~vec3<u32>(7226u, 0u, arg_0))));
    let var_1 = vec3<f32>(-1831f, _wgslsmith_f_op_f32(-848f + arg_1.x), global1.x);
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.x, -395f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1071f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -143f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(max(arg_1.x, 1191f)))), var_1.x)));
    let var_2 = Struct_1(~vec3<i32>(-6402i, -4933i, min(-var_0.b.x, _wgslsmith_mod_i32(25771i, -42969i))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32((var_0.b | vec2<i32>(var_0.b.x, 1i)) ^ vec2<i32>(-73799i, u_input.b), vec2<i32>(var_0.a.x, -10045i) ^ (var_0.a.yz >> (vec2<u32>(13633u, 1u) % vec2<u32>(32u)))), vec2<i32>(-33589i, ~var_0.a.x & -16992i)), ~(_wgslsmith_clamp_vec2_i32(firstTrailingBit(var_0.c), min(var_0.b, var_0.a.xx), vec2<i32>(-2147483647i, u_input.b)) ^ (~var_0.c ^ countOneBits(vec2<i32>(var_0.b.x, 1i)))), var_1.yx, var_0.e);
    global0 = array<vec2<f32>, 11>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-586f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(var_0.d.x))), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 11>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f + _wgslsmith_f_op_f32(round(global1.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(select(global1.x, -275f, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -170f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1453f + _wgslsmith_f_op_f32(func_5(1u, _wgslsmith_f_op_vec4_f32(func_1())))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(254f)) * global1.x));
    let var_1 = true;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, 4294967295u, 1u), 11u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1821f))))), var_0.yz, select(!any(vec4<bool>(true, var_1, true, var_1)), any(vec2<bool>(false, true)), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.zw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])), vec2<bool>(false, any(vec3<bool>(var_1, false, var_1)))))));
    let var_2 = u_input.a;
    global1 = vec2<f32>(global1.x, var_0.x);
    let var_3 = Struct_1(max(reverseBits(-vec3<i32>(u_input.b, var_2, -12477i) & vec3<i32>(-38200i, u_input.a, 0i)), firstLeadingBit(vec3<i32>(-2147483647i, u_input.b, var_2) << (~vec3<u32>(55743u, 4294967295u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b), u_input.b | 41893i), vec2<i32>(_wgslsmith_mult_i32(-16968i, -57888i), u_input.a), ~(-vec2<i32>(-1630i, -2147483647i))), abs(_wgslsmith_add_vec2_i32(abs(vec2<i32>(29814i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, var_2), vec2<i32>(u_input.b, var_2))))), -select(~vec2<i32>(u_input.a, -2147483647i) & ~vec2<i32>(-26352i, var_2), vec2<i32>(u_input.b, u_input.b) | vec2<i32>(22600i, 1i), select(!vec2<bool>(var_1, true), !vec2<bool>(var_1, true), vec2<bool>(var_1, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 11u)] + vec2<f32>(179f, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, var_0.x) * vec2<f32>(-249f, var_0.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 730f), _wgslsmith_f_op_vec4_f32(func_1()).xz, true)))), vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, 28248u)) & 1u, 1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 41741u, 35085u), vec3<u32>(4294967295u, 1u, 4294967295u), var_1), vec3<u32>(1u, 1u, 1u)), min(~0u, _wgslsmith_div_u32(4294967295u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(reverseBits(19533u), ~var_3.e.x), _wgslsmith_sub_i32(3227i, 38538i), vec2<f32>(_wgslsmith_f_op_f32(467f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(630f, 1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.d.x)))));
}

