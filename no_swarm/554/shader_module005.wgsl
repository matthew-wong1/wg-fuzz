struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> u32 {
    return ~reverseBits(arg_0);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = abs(1i) & select(u_input.c, abs(-8331i), true);
    var var_1 = _wgslsmith_sub_vec3_u32(max(select(_wgslsmith_sub_vec3_u32(vec3<u32>(19399u, u_input.a.x, u_input.b.x), u_input.a & u_input.a), (u_input.a >> (vec3<u32>(1u, 61052u, 0u) % vec3<u32>(32u))) << (u_input.a % vec3<u32>(32u)), true), min(~vec3<u32>(0u, 48540u, 4294967295u) & u_input.a, vec3<u32>(countOneBits(1u), 5177u, ~61150u))), vec3<u32>(u_input.a.x, u_input.a.x, ~func_3(~19874u, Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(arg_0.x, -1043f, -1924f), vec2<f32>(172f, arg_0.x), false)), _wgslsmith_f_op_f32(step(arg_0.x, -869f)), min(-4107i, arg_1))));
    let var_2 = Struct_4(!vec4<bool>(all(vec3<bool>(false, true, false)), true, !(arg_1 < 48901i), u_input.c == max(-33896i, u_input.c)), Struct_3(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 450f, arg_0.x)), vec2<f32>(_wgslsmith_div_f32(-836f, arg_0.x), 412f), true), 401f, vec4<i32>(_wgslsmith_div_i32(-35772i, u_input.c) ^ ~u_input.c, u_input.c, select(-2147483647i, ~21687i, true), abs(-2147483647i)), vec3<u32>(_wgslsmith_add_u32(var_1.x, _wgslsmith_add_u32(1u, 0u)), var_1.x, 1u)), 88675u, arg_0.zyw);
    global0 = false;
    var var_3 = Struct_4(select(select(select(vec4<bool>(var_2.a.x, true, true, true), vec4<bool>(var_2.a.x, true, var_2.a.x, true), !var_2.a.x), vec4<bool>(-33332i <= u_input.c, true, var_2.a.x || true, true), vec4<bool>(true, true, any(vec2<bool>(true, var_2.b.a.d)), var_2.b.a.a.x)), !(!vec4<bool>(var_2.b.a.a.x, var_2.a.x, false, true)), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.x) > 1052f, true, true, false)), var_2.b, _wgslsmith_add_u32(reverseBits(0u), abs(0u)), _wgslsmith_f_op_vec3_f32(-arg_0.yxz));
    return _wgslsmith_f_op_f32(var_3.b.a.b.x - _wgslsmith_f_op_f32(step(var_3.b.b, _wgslsmith_f_op_f32(min(700f, var_2.d.x)))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> vec2<i32> {
    global0 = arg_1;
    var var_0 = Struct_4(vec4<bool>(_wgslsmith_div_i32(arg_3.b.c.x & arg_3.b.c.x, 14371i << (u_input.b.x % 32u)) <= arg_3.b.c.x, false, arg_3.a.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, -496f, 882f, arg_3.d.x)), 2147483647i)) < _wgslsmith_f_op_f32(max(arg_3.d.x, _wgslsmith_f_op_f32(-arg_3.d.x)))), Struct_3(Struct_1(select(arg_3.b.a.a, vec3<bool>(false, true, arg_0), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, 1000f, -365f) + vec3<f32>(-436f, 978f, -384f))), _wgslsmith_f_op_vec2_f32(ceil(arg_3.d.xz)), true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, arg_2, u_input.c, min(arg_2, -2147483647i)), -vec4<i32>(u_input.c, 46207i, arg_2, u_input.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(8502u, u_input.a.x, arg_3.b.d.x, arg_3.b.d.x), vec4<u32>(0u, u_input.a.x, 0u, arg_3.c)) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(arg_3.b.d.x, 59042u, 24605u)), _wgslsmith_sub_vec3_u32(vec3<u32>(28537u, u_input.b.x, u_input.b.x), vec3<u32>(15961u, arg_3.c, 5596u)), u_input.a)), _wgslsmith_mod_u32(1u, arg_3.c), arg_3.b.a.b);
    var_0 = Struct_4(!(!var_0.a), Struct_3(Struct_1(!select(arg_3.b.a.a, var_0.b.a.a, true), var_0.d, vec2<f32>(-1000f, -1000f), _wgslsmith_f_op_f32(-1000f - -123f) == _wgslsmith_f_op_f32(var_0.d.x * arg_3.b.b)), arg_3.b.b, ~_wgslsmith_add_vec4_i32(var_0.b.c, var_0.b.c), vec3<u32>(~87413u, max(arg_3.b.d.x, ~0u), 46500u)), 8134u, vec3<f32>(_wgslsmith_div_f32(-457f, 1000f), var_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, -952f) * 401f)));
    global0 = all(vec3<bool>(true, all(select(var_0.a, vec4<bool>(arg_3.b.a.a.x, false, false, true), var_0.a.x)), !(any(vec2<bool>(arg_0, var_0.b.a.d)) & all(vec2<bool>(arg_1, arg_1)))));
    let var_1 = ~min(vec4<u32>(1u, u_input.a.x, 22580u, ~max(40794u, var_0.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.c, 68546u, arg_3.b.d.x, 45613u) | ~vec4<u32>(u_input.b.x, var_0.b.d.x, u_input.b.x, arg_3.b.d.x), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(38028u, u_input.b.x, arg_3.c, 4294967295u)), ~vec4<u32>(50962u, arg_3.c, 44870u, arg_3.c))));
    return min(vec2<i32>(69100i, _wgslsmith_sub_i32(-37447i, max(arg_3.b.c.x, u_input.c) >> (~1u % 32u))), ((var_0.b.c.yx >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 1u), arg_3.b.d.xx) % vec2<u32>(32u))) & vec2<i32>(countOneBits(arg_2), abs(u_input.c))) & vec2<i32>(_wgslsmith_mod_i32(arg_2, arg_2), arg_2));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = select(vec2<bool>(true, true), !(!vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), vec2<bool>(false, all(vec4<bool>(true, true, true, true))));
    var var_1 = vec4<i32>(arg_0.x, -50142i, -(~u_input.c), -select(select(arg_0.x, -u_input.c, 21530i <= arg_0.x), firstLeadingBit(u_input.c & 0i), true));
    var var_2 = all(select(select(vec2<bool>(true, false), vec2<bool>(all(vec3<bool>(var_0.x, true, var_0.x)), all(vec2<bool>(true, var_0.x))), true), select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.x), vec2<bool>(false, false)), vec2<bool>(var_0.x, !var_0.x), any(!vec4<bool>(var_0.x, true, var_0.x, true))), select(vec2<bool>(var_0.x | var_0.x, any(vec3<bool>(true, var_0.x, var_0.x))), vec2<bool>(true, true), vec2<bool>(false, true | var_0.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -631f, arg_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, arg_1.x, arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1000f, arg_1.x)), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1284f) * _wgslsmith_f_op_f32(-493f * arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -376f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1572f, arg_1.x, 1347f)))))));
    var_1 = firstLeadingBit(vec4<i32>(-1i) * -reverseBits(~vec4<i32>(29798i, u_input.c, u_input.c, 29454i)));
    return StorageBuffer(~arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2474f, _wgslsmith_f_op_f32(-var_3.x)))), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -375f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(~u_input.c, -47648i);
    let var_1 = Struct_5(Struct_1(vec3<bool>(!select(true, true, true), true, true), vec3<f32>(_wgslsmith_f_op_f32(select(-156f, _wgslsmith_f_op_f32(ceil(290f)), 44998u < u_input.a.x)), -513f, 2779f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(663f, -389f) - vec2<f32>(500f, 1142f)))), countOneBits(-31384i) != u_input.c), _wgslsmith_div_f32(-1503f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1255f))))), _wgslsmith_div_u32(~(~64077u), ~(4294967295u | ~u_input.b.x)));
    var var_2 = ~(~(~(vec4<u32>(93869u, var_1.c, u_input.a.x, 4294967295u) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c, u_input.a.x, u_input.b.x, var_1.c), vec4<u32>(82603u, 46447u, 4294967295u, 22740u)))));
    var_2 = ~countOneBits(~(~(~vec4<u32>(var_2.x, 4294967295u, 0u, 20188u))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_add_vec2_i32(func_1((u_input.c << (u_input.b.x % 32u)) == 28073i, var_1.a.a.x, var_0.x, Struct_4(vec4<bool>(true, true, true, true), Struct_3(Struct_1(vec3<bool>(var_1.a.d, true, var_1.a.a.x), vec3<f32>(var_1.a.c.x, -2001f, var_1.b), vec2<f32>(var_1.b, var_1.b), var_1.a.a.x), 413f, vec4<i32>(u_input.c, -44858i, u_input.c, u_input.c), var_2.ywy), 56217u, vec3<f32>(var_1.b, var_1.a.c.x, -335f))), -vec2<i32>(_wgslsmith_mod_i32(var_0.x, var_0.x), -u_input.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.a.b)), vec3<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(211f - -1386f), _wgslsmith_f_op_f32(129f - -1064f))), select(!select(vec3<bool>(false, false, var_1.a.a.x), var_1.a.a, vec3<bool>(true, var_1.a.d, true)), !(!var_1.a.a), select(var_1.a.a, vec3<bool>(true, true, var_1.a.d), vec3<bool>(var_1.a.d, var_1.a.a.x, var_1.a.d))))));
}

