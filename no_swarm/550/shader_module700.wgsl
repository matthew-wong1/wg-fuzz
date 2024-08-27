struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f + 1075f)), 763f, 2485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f - -328f) * -587f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1547f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(sign(var_0.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 395f), var_0.x))), var_0.x, -119f);
    let var_1 = Struct_2((1u > max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 4649u, 0u, u_input.c)), 33610u)) || true, Struct_1(_wgslsmith_sub_u32(15022u, u_input.a.x) > (48706u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(56027u, 7759u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.c, u_input.c))), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), u_input.b.x >= 0u)), abs(0u), vec2<bool>(all(vec2<bool>(false, true)), true), vec3<f32>(_wgslsmith_f_op_f32(1398f + _wgslsmith_f_op_f32(454f - -1444f)), 531f, _wgslsmith_f_op_f32(var_0.x - 1199f))), 1i, -518f);
    var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x))))), -1303f, -1000f, 146f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -992f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + 1186f))), -539f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 1000f, 1000f, var_1.d), vec4<f32>(var_0.x, var_0.x, var_1.b.e.x, var_1.d))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_1.b.e.x, -1651f, -591f), vec4<f32>(var_0.x, var_0.x, -2280f, var_1.b.e.x))))))));
    let var_2 = ~min(~(-2147483647i), ~(var_1.c & 1i) << (max(u_input.b.x, ~u_input.b.x) % 32u));
    return select(vec4<bool>(!((26690i >> (var_1.b.c % 32u)) == 5097i), var_1.b.d.x, select(!var_1.b.a, true, !(!var_1.a)), false), !vec4<bool>(var_1.a, any(!var_1.b.b.zyy), var_1.b.a, true), all(select(select(!vec3<bool>(var_1.a, var_1.b.a, true), !vec3<bool>(var_1.a, true, var_1.a), var_1.b.b.x || false), !var_1.b.b.zxy, all(select(var_1.b.b.zw, vec2<bool>(false, true), var_1.b.d.x)))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(all(vec2<bool>(false, false)), func_3(), 55820u, select(!select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec2<bool>(true, false))), vec2<bool>(false, true), func_3().xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(812f, -945f, -1289f), vec3<f32>(674f, -853f, 151f), true)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-216f, -1357f, -488f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, _wgslsmith_f_op_f32(f32(-1f) * -840f), -407f))));
    var_0 = Struct_1(false, vec4<bool>(func_3().x, false, false, !(!var_0.b.x)), max(u_input.b.x, 23733u), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1635f, var_0.e.x)), _wgslsmith_f_op_f32(-540f * var_0.e.x), _wgslsmith_f_op_f32(-649f * var_0.e.x)) * var_0.e) * vec3<f32>(_wgslsmith_f_op_f32(sign(1072f)), var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)))));
    var var_1 = select(~u_input.b.x, 15198u, any(!func_3().wy) && all(vec3<bool>(u_input.b.x > 4294967295u, true, true)));
    var var_2 = -select(vec2<i32>(_wgslsmith_mod_i32(0i, 1i), -1i), (countOneBits(vec2<i32>(-23296i, 0i)) << (_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.b.x)) % vec2<u32>(32u))) << (~(vec2<u32>(var_0.c, 0u) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), false);
    var var_3 = Struct_4(all(func_3().yw));
    return Struct_3(firstTrailingBit(var_2.x) & var_2.x);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - arg_1.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) * 172f))));
    return func_2();
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_2.zy;
    var var_1 = _wgslsmith_mod_vec2_i32(arg_2.zy, -arg_0.yx);
    var var_2 = ~(-var_0.x | _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(arg_2.x, -2147483647i, arg_0.x)), _wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(arg_1.a))));
    var_1 = select(reverseBits(arg_2.zw), vec2<i32>(arg_2.x, ~(arg_2.x << (u_input.b.x % 32u))), false) & vec2<i32>(_wgslsmith_add_i32(arg_1.a, -var_0.x), arg_2.x);
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-1i) * -arg_2.xw), _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 50050i), vec2<i32>(12280i, _wgslsmith_dot_vec3_i32(vec3<i32>(98i, arg_0.x, -42605i), arg_2.wxz)))), vec2<i32>(firstTrailingBit(31982i) << (~u_input.a.x % 32u), var_0.x));
    return firstTrailingBit(2147483647i);
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = any(vec4<bool>(true & arg_0, !select(arg_0, arg_0, true), false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))) | false;
    var var_1 = Struct_4(false);
    let var_2 = -abs(abs(max(vec3<i32>(1i, 56270i, -38575i), vec3<i32>(3230i, -2147483647i, arg_2) << (vec3<u32>(u_input.b.x, 43183u, 49171u) % vec3<u32>(32u)))));
    let var_3 = Struct_4(!all(vec2<bool>(false, false)) && (abs(u_input.c | 0u) < ~1u));
    var_0 = false || var_3.a;
    return 1718f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(540f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2113f))) + _wgslsmith_f_op_f32(func_5(true, max(u_input.b, _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(22386i, 38421i, 1i, -1i), vec4<i32>(12597i, -33809i, 0i, 1i), vec4<i32>(-63883i, -2147483647i, -13494i, 0i)), func_1(false, vec3<f32>(1168f, 551f, -476f)), vec4<i32>(-1i, 1903i, 2147483647i, 15749i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1618f, -669f) * -1238f)))));
    var var_1 = Struct_3(1i);
    var_1 = func_2();
    var_1 = Struct_3(var_1.a);
    let var_2 = Struct_3(~(-func_2().a));
    let var_3 = 1u;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - 3438f), _wgslsmith_f_op_f32(ceil(-1329f)))))), vec3<u32>(0u, u_input.c, ~countOneBits(~var_3)), var_0.xxz, (_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1.a, var_1.a, -6156i), vec4<i32>(var_1.a, -1i, -64413i, -20989i)) | _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_1.a, 1i, var_2.a, var_2.a)), abs(vec4<i32>(var_1.a, -2411i, var_2.a, 2147483647i)))) ^ ~(-select(vec4<i32>(-667i, 0i, var_1.a, 36251i), vec4<i32>(var_1.a, -39752i, 42145i, 2147483647i), true)), reverseBits(reverseBits(var_2.a)));
}

