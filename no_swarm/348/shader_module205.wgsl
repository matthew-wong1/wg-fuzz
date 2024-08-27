struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1274f, 1800f, 311f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2183f, -717f) * vec3<f32>(344f, -497f, 593f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-676f, -993f, 632f), vec3<f32>(-1285f, -1032f, -363f)))))) - vec3<f32>(-983f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(535f))))))));
    var var_1 = Struct_2(vec2<i32>(-15956i, abs(_wgslsmith_div_i32(abs(-21462i), 32304i))), Struct_1(min(firstLeadingBit(2420u), u_input.a.x) < ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u)));
    var var_2 = vec2<u32>(u_input.a.x >> (countOneBits((u_input.a.x | 30807u) ^ _wgslsmith_mod_u32(43737u, u_input.a.x)) % 32u), 1u);
    let var_3 = ~u_input.a.x;
    var var_4 = var_1.b;
    return abs(-69362i);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(arg_1.xxy | arg_1.xxx, arg_1.zyy >> (vec3<u32>(2866u, arg_1.x, arg_1.x) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(arg_1.yyx, arg_1.xyz)), arg_1.yyz) & u_input.a;
    var var_1 = 0i;
    var_1 = _wgslsmith_add_i32(reverseBits(-2147483647i), select(1i & _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1142i, 0i), i32(-1i) * -24175i, _wgslsmith_dot_vec4_i32(vec4<i32>(-54355i, 22636i, 0i, -50789i), vec4<i32>(0i, -14913i, 2147483647i, -7787i))), _wgslsmith_div_i32(-20028i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, -2147483647i, 0i, 0i)), ~vec4<i32>(1i, 3872i, 6033i, 2147483647i))), arg_1.x < ~abs(u_input.a.x)));
    let var_2 = -(i32(-1i) * -1i);
    var_1 = _wgslsmith_sub_i32(~(~(-29727i | func_3())), ~1i);
    return Struct_1(select(false, true, any(select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, false), false), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, arg_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_add_vec2_i32(min(vec2<i32>(-1i, 44732i), -vec2<i32>(-2147483647i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), ~vec2<i32>(-36824i, 26491i))), func_2(!all(vec4<bool>(false, false, arg_0.a, false)) | true, ~(~vec4<u32>(4294967295u, 4677u, 4294967295u, 82155u))));
    var var_1 = -30138i;
    var_1 = abs(func_3() ^ (_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a, var_0.a), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(45041i, var_0.a.x))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a.xz) % 32u)));
    var_1 = var_0.a.x;
    let var_2 = vec3<i32>(~(i32(-1i) * -1i) | _wgslsmith_add_i32(select(-var_0.a.x, _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(2147483647i, var_0.a.x)), arg_2.a || true), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 13064i, 1i, var_0.a.x), vec4<i32>(50420i, var_0.a.x, var_0.a.x, 2147483647i)) ^ 4771i), _wgslsmith_mult_i32(_wgslsmith_add_i32(firstTrailingBit(-var_0.a.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.a.x, -21650i), -1i)), 1i), -2147483647i);
    return func_2(arg_0.a, abs(_wgslsmith_div_vec4_u32(min(vec4<u32>(84590u, 76274u, 2345u, 9975u), vec4<u32>(8596u, 0u, 1u, u_input.a.x)), vec4<u32>(4294967295u, _wgslsmith_div_u32(120410u, u_input.a.x), countOneBits(28960u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec4<bool>(!(!arg_1.x), true & arg_1.x, false, true);
    var var_1 = Struct_2(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i), -select(vec2<i32>(-14795i, -1i), vec2<i32>(1i, 0i), vec2<bool>(false, true))), func_4(func_2(arg_0.x != ~u_input.a.x, ~vec4<u32>(4294967295u, arg_0.x, 0u, 11653u) | vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, -1688f)), vec2<f32>(1356f, 1000f))), Struct_1(func_2(any(vec2<bool>(true, var_0.x)), vec4<u32>(4294967295u, 1u, 1u, 4294967295u)).a)));
    let var_2 = abs(var_1.a.x);
    var var_3 = Struct_2(reverseBits(var_1.a), Struct_1(func_4(func_4(Struct_1(true), _wgslsmith_f_op_vec2_f32(vec2<f32>(452f, 2043f) + vec2<f32>(443f, -1000f)), var_1.b), vec2<f32>(678f, _wgslsmith_f_op_f32(f32(-1f) * -1300f)), var_1.b).a));
    var var_4 = 4294967295u;
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(func_1(firstTrailingBit(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), vec3<bool>(true, true, true)), -2147483647i), _wgslsmith_mult_vec2_i32(abs(~vec2<i32>(-59899i, -14262i)) >> (select(u_input.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a.x, 38709u), vec2<u32>(u_input.a.x, 55722u)), true) % vec2<u32>(32u)), vec2<i32>(min(-41466i, 1i), -(~0i))));
    var_0 = abs(_wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, var_0.x)), max(vec2<i32>(2147483647i, 17153i), vec2<i32>(var_0.x, var_0.x)))), vec2<i32>(abs(var_0.x), i32(-1i) * -var_0.x)));
    let var_1 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x), vec4<i32>(0i, var_0.x, var_0.x, 1i), vec4<i32>(107434i, 1i, -2147483647i, -1i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 51906u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, -1i, -22704i))), abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, -59328i, var_0.x, var_0.x), vec4<i32>(19534i, var_0.x, var_0.x, -4663i))), countOneBits(vec4<i32>(-var_0.x, -2147483647i, -var_0.x, 2147483647i)));
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(8849i, select(var_0.x, _wgslsmith_mod_i32(var_0.x, 2147483647i), true), _wgslsmith_div_i32(i32(-1i) * -27831i, _wgslsmith_div_i32(var_0.x, 1369i))) | max(var_0.x, _wgslsmith_dot_vec3_i32(var_1.zyw & var_1.yyy, var_1.xxw)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(62893i, var_1.x, var_1.x, 11986i) << (vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), var_1), _wgslsmith_mod_i32(func_1(u_input.a, vec3<bool>(true, false, true)), var_0.x)) << (u_input.a.x % 32u));
    var_0 = vec2<i32>(firstLeadingBit(-var_1.x), -3066i);
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1870f);
}

