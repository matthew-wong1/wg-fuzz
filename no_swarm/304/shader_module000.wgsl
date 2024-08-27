struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(Struct_1(reverseBits(reverseBits(arg_0.www))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(0u, 22053u, 1u, 76673u)), firstTrailingBit(u_input.a.x)) | arg_0.x, ~(countOneBits(arg_2.a.x) << (min(arg_3.b.x, arg_0.x) % 32u)), ~(arg_1.c.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(25096u, 4294967295u, arg_1.a.a.x, arg_3.b.x), vec4<u32>(1u, 11892u, arg_3.d, arg_3.a.a.x)) % 32u))), arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, reverseBits(arg_0.x) | 4294967295u, ~35320u, ~(4294967295u << (u_input.a.x % 32u))), abs(~min(vec4<u32>(u_input.a.x, arg_2.a.x, arg_3.a.a.x, u_input.a.x), vec4<u32>(arg_3.a.a.x, arg_2.a.x, 1u, 12961u)))));
    let var_2 = Struct_2(arg_1.c, _wgslsmith_div_vec3_i32(vec3<i32>(~reverseBits(-1i), -2147483647i >> (_wgslsmith_mult_u32(var_1.a.a.x, arg_0.x) % 32u), -max(-1i, 19155i)), firstLeadingBit(select(-vec3<i32>(2147483647i, 14128i, -87479i), vec3<i32>(2147483647i, -2158i, 8794i), vec3<bool>(true, false, var_0.x)))), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, 0u)), ~(~u_input.a)) << (1u % 32u), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-29439i, -2147483647i), vec2<i32>(49875i, 1i)), -vec2<i32>(54039i, 2147483647i)), countOneBits(-48592i), 1i), arg_2);
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f + 408f)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1548f))), -1449f, var_0.x)));
    var_3 = true;
    return _wgslsmith_clamp_i32(2147483647i, 9072i, -53920i);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(28744u, firstLeadingBit(u_input.a.x), ~73997u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 7210u, 0u), vec3<u32>(5016u, 1u, u_input.a.x)) | vec3<u32>(28076u, u_input.a.x, 1u))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(26488i, func_3(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 51113u), Struct_3(Struct_1(vec3<u32>(1563u, 4294967295u, 16331u)), vec3<u32>(1u, u_input.a.x, 1u), Struct_1(vec3<u32>(36708u, u_input.a.x, 15324u)), u_input.a.x), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(18884u, 1u, 29943u), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x)), -2147483647i)), _wgslsmith_clamp_vec3_i32(select(firstTrailingBit(vec3<i32>(35167i, -1i, 1i)), -vec3<i32>(10809i, -8129i, -24728i), true), _wgslsmith_mult_vec3_i32(vec3<i32>(-6228i, -9043i, -1i), vec3<i32>(44080i, -945i, -45435i) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(~2147483647i, -27587i, _wgslsmith_add_i32(-1i, 2147483647i)))), 4294967295u, _wgslsmith_dot_vec2_i32(-vec2<i32>(11213i, -60994i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(72702i, 20353i), _wgslsmith_mod_vec2_i32(vec2<i32>(-44450i, 2147483647i), vec2<i32>(-1i, 12264i))), select(_wgslsmith_div_i32(-1i, -3588i), 1i, true))), Struct_1(~firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 60728u))));
    var var_1 = ~(~reverseBits(max(vec4<u32>(10859u, var_0.a.a.x, 0u, u_input.a.x), vec4<u32>(var_0.c, 46741u, 47613u, 0u))) >> (select(firstTrailingBit(firstTrailingBit(vec4<u32>(var_0.a.a.x, u_input.a.x, 0u, 32020u))), vec4<u32>(var_0.c << (17557u % 32u), var_0.c >> (45501u % 32u), u_input.a.x, u_input.a.x), any(vec3<bool>(true, true, true))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_sub_i32(var_0.b.x, var_0.d ^ 12442i);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(568f, 394f))), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1460f))) - _wgslsmith_f_op_f32(step(-1000f, -2047f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(168f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1450f)) - _wgslsmith_f_op_f32(-474f - 1288f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-542f - -263f), _wgslsmith_f_op_f32(-251f * 738f))))))), _wgslsmith_f_op_f32(f32(-1f) * -373f));
    var_1 = min(~(~(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, u_input.a.x, var_1.x, var_0.a.a.x), vec4<u32>(var_0.a.a.x, u_input.a.x, 0u, 27008u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.a.x, 1u, u_input.a.x, 49059u), vec4<u32>(79287u, 48030u, 59655u, 42104u)) % vec4<u32>(32u)))), ~vec4<u32>(var_0.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.a.x), var_1.xx), ~var_1.x), u_input.a.x, ~(u_input.a.x & 4294967295u)));
    return select(select(vec4<bool>(true, true, true, true), vec4<bool>(false | any(vec2<bool>(false, false)), false, true, true), select(vec4<bool>(true, all(vec2<bool>(true, true)), true, u_input.a.x == 4294967295u), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(all(vec2<bool>(false, true)), true, var_1.x != var_1.x, true), vec4<bool>(true, true, true, true), false), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), any(vec4<bool>(false, true, false, false)), true, true)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), true), vec4<bool>(1i >= var_0.d, true, var_1.x != 58530u, true)));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = ~reverseBits(select(~(vec4<u32>(47082u, arg_0, u_input.a.x, 4294967295u) >> (vec4<u32>(38109u, 19734u, arg_0, arg_0) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 5328u, 11381u, arg_0), vec4<u32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x)), _wgslsmith_add_u32(1u, u_input.a.x), 0u, 0u & arg_0), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), func_2(), true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(343f, -1856f, -377f), vec3<f32>(1879f, -529f, -1724f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1068f + -1000f), _wgslsmith_f_op_f32(1000f + 630f), -1929f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1350f - 339f))) + _wgslsmith_f_op_f32(-257f * _wgslsmith_f_op_f32(abs(-409f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-537f)), _wgslsmith_f_op_f32(abs(-827f)))), 304f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1658f, var_0.x, -680f), vec3<f32>(var_0.x, -125f, var_0.x), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, var_0.x, 624f) * vec3<f32>(var_0.x, -2353f, var_0.x)))))));
    var var_1 = vec3<bool>(true, !(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)))), func_1(u_input.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), var_0.x, _wgslsmith_div_f32(var_0.x, 301f)))));
    let var_2 = Struct_1(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(43959u, 40385u, 78794u), _wgslsmith_add_vec3_u32(vec3<u32>(81576u, 10426u, u_input.a.x), vec3<u32>(0u, 0u, 44101u))), vec3<u32>(28457u, u_input.a.x, u_input.a.x) & ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_3 = any(!(!select(vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), true), true || var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.x, 1u, var_2.a.x, var_2.a.x), vec4<u32>(4294967295u, var_2.a.x, var_2.a.x, 17476u)))), ~vec2<u32>(_wgslsmith_add_u32(~0u, ~var_2.a.x), ~0u), vec2<u32>(_wgslsmith_div_u32(~u_input.a.x >> (4294967295u % 32u), _wgslsmith_mod_u32(~var_2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 40414u, var_2.a.x), var_2.a))), reverseBits(0u)), ~countOneBits(firstTrailingBit(abs(vec4<u32>(u_input.a.x, 39119u, u_input.a.x, u_input.a.x)))), -(1i & ~(2147483647i << (var_2.a.x % 32u))));
}

