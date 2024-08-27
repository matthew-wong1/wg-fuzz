struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)) > arg_2.c.x;
    return vec3<u32>(0u, u_input.b.x, 29292u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.c.x);
    var_0 = ~(~(~(~u_input.c.x)));
    var_0 = countOneBits(2147483647i) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, 4294967295u), u_input.b.x), ~0u) % 32u);
    var_0 = u_input.a;
    let var_1 = u_input.c;
    return Struct_1(_wgslsmith_mult_i32(~var_1.x, select(_wgslsmith_div_i32(var_1.x, -var_1.x), var_1.x, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, 1f))), vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1101f, -884f, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-139f * -692f)))), 1f), arg_0, ~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 51183u), func_3(vec2<u32>(u_input.b.x, 18328u), arg_0, Struct_1(u_input.a, vec2<f32>(-1771f, 834f), vec4<f32>(311f, 1377f, 1051f, -720f), arg_0, vec3<u32>(22222u, 0u, 1u)))) & max(vec3<u32>(61753u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 60525u, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, 1u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = func_2(!(false | (true != !arg_0.d)));
    var var_1 = select(vec2<bool>(true, any(!vec2<bool>(arg_0.d, false))), vec2<bool>(select(_wgslsmith_mod_u32(arg_0.e.x, 1u) <= 71489u, all(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0.d)), -2147483647i >= -arg_1.a), !(!arg_1.d)), !select(select(!vec2<bool>(false, arg_1.d), vec2<bool>(var_0.d, true), var_0.a == 7199i), vec2<bool>(false, var_0.b.x < var_0.c.x), !(!vec2<bool>(arg_1.d, arg_1.d))));
    let var_2 = arg_1.a;
    let var_3 = ~(-(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, arg_1.a), max(vec3<i32>(0i, -25780i, u_input.a), vec3<i32>(var_2, -7805i, 22973i))) & (~vec3<i32>(2147483647i, arg_1.a, 0i) >> (vec3<u32>(arg_0.e.x, var_0.e.x, arg_0.e.x) % vec3<u32>(32u)))));
    let var_4 = select(vec4<bool>(countOneBits(_wgslsmith_clamp_u32(arg_0.e.x, u_input.b.x, 0u)) == firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 36236u)), u_input.b.x < ~(~16873u), -42319i > var_0.a, false), select(!select(select(vec4<bool>(arg_1.d, arg_1.d, false, false), vec4<bool>(arg_0.d, arg_1.d, false, arg_1.d), vec4<bool>(arg_1.d, var_1.x, arg_0.d, false)), !vec4<bool>(arg_0.d, arg_0.d, true, arg_1.d), any(vec4<bool>(var_1.x, true, var_1.x, true))), !select(select(vec4<bool>(var_0.d, var_1.x, arg_1.d, true), vec4<bool>(false, false, true, true), vec4<bool>(false, var_1.x, false, true)), select(vec4<bool>(false, var_0.d, true, true), vec4<bool>(arg_0.d, var_1.x, true, arg_1.d), vec4<bool>(false, arg_1.d, true, true)), !vec4<bool>(arg_1.d, var_1.x, false, false)), false), vec4<bool>(!(!arg_0.d | (var_0.a > 0i)), select(!(-1i <= var_2), true, !func_2(arg_1.d).d), abs(4294967295u) < _wgslsmith_add_u32(max(u_input.b.x, u_input.b.x), u_input.b.x), all(select(vec3<bool>(true, false, arg_0.d), select(vec3<bool>(true, false, var_1.x), vec3<bool>(false, false, var_0.d), vec3<bool>(var_1.x, true, arg_0.d)), vec3<bool>(var_0.d, true, false)))));
    return true;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_u32(firstLeadingBit(27027u), u_input.b.x) << (~1u % 32u);
    var_0 = 1u;
    let var_1 = func_4(func_2(false), Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1221f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2291f)), any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), vec3<u32>(~u_input.b.x, u_input.b.x, 1u >> (abs(u_input.b.x) % 32u))));
    var_0 = 1u ^ ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 34406u)));
    let var_2 = var_1;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(146f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-471f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888f + -1189f) - _wgslsmith_f_op_f32(1425f - 475f))))));
    let var_1 = Struct_1(-reverseBits(var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, -1220f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1648f, 453f))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1067f) - _wgslsmith_f_op_f32(f32(-1f) * -249f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(866f + -1492f) - _wgslsmith_f_op_f32(f32(-1f) * -161f)), 631f, 1000f)), true | !(!(u_input.a > 17757i)), vec3<u32>(~81056u << (firstLeadingBit(u_input.b.x & u_input.b.x) % 32u), abs(firstTrailingBit(~42430u)), _wgslsmith_sub_u32(~(u_input.b.x ^ u_input.b.x), u_input.b.x >> (u_input.b.x % 32u))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -1518f, var_1.c.x, 101f)), _wgslsmith_f_op_vec4_f32(-var_1.c));
    let var_3 = firstTrailingBit(~firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, 0u, 20592u), _wgslsmith_add_u32(4610u, var_1.e.x))));
    var var_4 = vec4<u32>(var_3, u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, ~u_input.b.x, countOneBits(0u)), vec4<u32>(0u, ~4294967295u, 4294967295u & var_1.e.x, u_input.b.x)), 78659u);
    var_4 = vec4<u32>(u_input.b.x, 1u, var_3, var_3);
    var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(0u, 4294967295u, var_1.e.x, 67854u))), ~max(~vec4<u32>(u_input.b.x, 9618u, var_1.e.x, var_3), ~vec4<u32>(4294967295u, u_input.b.x, var_4.x, var_4.x))), vec4<u32>(_wgslsmith_sub_u32(reverseBits(u_input.b.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(36631u, var_4.x, var_1.e.x, 0u), vec4<u32>(var_1.e.x, 13808u, 1u, var_4.x)), ~var_3 >> (~u_input.b.x % 32u)), var_1.e.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(~var_4.yw, vec2<u32>(u_input.b.x, 0u))), u_input.b.x));
    let var_5 = false;
    let var_6 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(trunc(var_2.xy)), var_2, func_2(func_2(var_5).d).d, var_4.zwy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-25320i, _wgslsmith_mod_i32(func_1(1837f, var_6.c.x).x, var_6.a << (16275u % 32u))) ^ var_0, _wgslsmith_f_op_vec3_f32(-func_2(any(select(vec2<bool>(true, var_5), vec2<bool>(var_1.d, true), vec2<bool>(var_6.d, var_1.d)))).c.xwx));
}

