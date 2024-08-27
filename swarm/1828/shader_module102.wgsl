struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> vec2<bool> {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1195f))) * arg_2.x) >= arg_2.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1164f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), -429f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(237f, -461f, -1000f, arg_2.x) * vec4<f32>(-119f, arg_2.x, 817f, -575f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(484f, 186f, arg_2.x, arg_2.x) * vec4<f32>(-1043f, 1139f, -1644f, arg_2.x))))), vec4<u32>(0u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.a.x, u_input.a.x) ^ vec2<u32>(arg_0.x, arg_0.x)), ~u_input.b) >> (vec4<u32>(4294967295u, _wgslsmith_clamp_u32(43042u, min(49947u, 0u), 35916u), 4294967295u, arg_0.x) % vec4<u32>(32u)), select(vec2<bool>(38967u >= min(40731u, u_input.b), !(0i != u_input.c)), select(!select(vec2<bool>(arg_3, false), vec2<bool>(true, true), vec2<bool>(arg_1, false)), !vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3 || true)), !(false | arg_3) && true), 1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, arg_2.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1392f + -868f), var_1.a.x), _wgslsmith_f_op_f32(min(1000f, 1000f)), var_1.e.x);
    let var_3 = Struct_2(min(~vec2<i32>(1i, 1i), firstLeadingBit(firstLeadingBit(vec2<i32>(2147483647i, u_input.c)) << ((vec2<u32>(var_1.b.x, u_input.b) >> (vec2<u32>(var_1.b.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))), vec2<u32>(u_input.d.x, 39049u), var_1.b.xwy, vec3<i32>(_wgslsmith_add_i32(var_1.d, -58771i) & -100271i, -41301i, 40671i << (u_input.a.x % 32u)) << (abs(~(~vec3<u32>(63931u, var_1.b.x, 49292u))) % vec3<u32>(32u)));
    return select(var_1.c, !vec2<bool>(var_1.c.x, !(var_1.c.x && arg_1)), var_1.c);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, -179f, 424f, -2238f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(840f, 868f, -650f, -1477f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(753f, 2790f, -541f, -769f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1214f, -489f, 568f, -800f), vec4<f32>(-1258f, 572f, -480f, 375f))))))), Struct_2(vec2<i32>(arg_0, _wgslsmith_clamp_i32(1i, 1i, -2147483647i)) ^ -vec2<i32>(arg_0, 24197i), vec2<u32>(~(~u_input.d.x), ~1u), _wgslsmith_mult_vec3_u32(u_input.a, firstLeadingBit(~u_input.a)), abs(vec3<i32>(arg_0, arg_0, arg_0)) ^ vec3<i32>(_wgslsmith_mult_i32(u_input.c, 1i), arg_0, -2147483647i)), _wgslsmith_add_u32((u_input.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 32928u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, 0u))) << (_wgslsmith_add_u32(18064u << (1u % 32u), 0u) % 32u), u_input.d.x));
    var var_1 = any(vec3<bool>(!(false != arg_1.x), arg_1.x | false, !arg_1.x));
    let var_2 = vec3<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(43166u, 1u) >> (vec2<u32>(var_0.c, u_input.a.x) % vec2<u32>(32u)))), 3655u, 4294967295u);
    var_1 = all(!(!vec3<bool>(true, all(vec3<bool>(true, true, arg_1.x)), !arg_1.x)));
    let var_3 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -arg_0), vec2<i32>(u_input.c ^ u_input.c, abs(i32(-1i) * -1i))), vec2<u32>(u_input.a.x, u_input.d.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.x, var_0.c, var_2.x), max(~(~vec3<u32>(var_2.x, 4294967295u, var_2.x)), ~min(u_input.a, u_input.a))), var_0.b.d);
    return vec3<i32>(~53818i, u_input.c, min(~(~18594i), u_input.c)) ^ vec3<i32>(reverseBits(1i), _wgslsmith_div_i32(arg_0, firstLeadingBit(abs(u_input.c))), arg_0 & _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, var_0.b.d.x), 1i));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    return func_4(firstTrailingBit(_wgslsmith_add_i32(-u_input.c, -u_input.c) & arg_0.a.x), select(select(vec2<bool>(all(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, false))), select(vec2<bool>(true, true), func_3(vec3<u32>(arg_0.c.x, arg_0.b.x, u_input.d.x), true, vec3<f32>(464f, 1128f, -126f), false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-711f, -1397f);
    var var_1 = ~select(~(~vec4<u32>(arg_2.b.c.x, arg_2.b.c.x, 0u, arg_2.c)), vec4<u32>(countOneBits(4294967295u), 1u, 16368u, select(arg_2.c, u_input.a.x, false)), ~(-2147483647i) != arg_0.x) & vec4<u32>(~abs(~3256u), min(arg_2.c, ~29634u), ~reverseBits(u_input.d.x), 85163u);
    var var_2 = abs(reverseBits(func_2(Struct_2(vec2<i32>(69161i, 12890i), var_1.xz, vec3<u32>(var_1.x, arg_2.c, 11929u), arg_2.b.d)).x)) != 23624i;
    var_1 = vec4<u32>(0u, _wgslsmith_sub_u32(~60830u, ~_wgslsmith_div_u32(4294967295u, var_1.x)) | var_1.x, u_input.a.x, ~u_input.a.x);
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(max(vec4<u32>(1067u, 0u, 0u, 56491u), vec4<u32>(var_1.x, 36021u, 38161u, 4587u)) << (max(vec4<u32>(var_1.x, var_1.x, 0u, 0u), vec4<u32>(var_1.x, arg_2.c, 4294967295u, u_input.d.x)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 115035u, var_1.x, 1u) & vec4<u32>(4294967295u, arg_2.b.b.x, arg_2.b.c.x, arg_2.b.b.x), vec4<u32>(u_input.b, 37641u, u_input.d.x, u_input.b) | vec4<u32>(u_input.a.x, 1u, 4294967295u, 0u)), abs(reverseBits(vec4<u32>(4294967295u, arg_2.b.b.x, var_1.x, 15746u)))), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, arg_2.c, u_input.a.x, 0u), vec4<u32>(67835u, 23706u, var_1.x, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 72367u), vec4<u32>(arg_2.c, 32841u, 0u, arg_2.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(23975u, arg_2.c, var_1.x, var_1.x), vec4<u32>(4294967295u, 30744u, var_1.x, u_input.b))), ~vec4<u32>(arg_2.c, u_input.d.x, arg_2.b.b.x, 0u) & ~vec4<u32>(var_1.x, var_1.x, arg_2.b.c.x, var_1.x), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, false, true))))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 36809u, var_1.x), vec4<u32>(u_input.b, var_1.x, u_input.b, 16056u) ^ vec4<u32>(3301u, var_1.x, 0u, 4294967295u)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 54181u), vec2<u32>(u_input.d.x, u_input.a.x)), ~4294967295u, ~48221u)), vec4<u32>(28821u << (u_input.d.x % 32u), 30918u, ~reverseBits(arg_2.b.c.x), ~57013u)));
    return Struct_2(reverseBits(vec2<i32>(_wgslsmith_mult_i32(0i, 11070i), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.x), arg_2.b.d.zz))), reverseBits(vec2<u32>(var_3, _wgslsmith_mult_u32(select(arg_2.c, 0u, true), 0u))), vec3<u32>(~arg_2.c, 1u, max(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(var_1.x, 0u)) | abs(_wgslsmith_add_u32(6194u, 1u))), -(-_wgslsmith_sub_vec3_i32(arg_2.b.d, vec3<i32>(-37095i, -1i, 0i)) << (vec3<u32>(_wgslsmith_mult_u32(arg_2.b.c.x, u_input.d.x), 39392u, 38u) % vec3<u32>(32u))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = func_5(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(44943i, -2147483647i, u_input.c), vec3<i32>(8150i, -37485i, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -33289i, 2147483647i), vec3<i32>(-111336i, arg_0, 27722i))), func_2(Struct_2(vec2<i32>(arg_0, -2147483647i), vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, vec3<i32>(9417i, arg_0, 2147483647i))))), -(_wgslsmith_div_vec2_i32(select(vec2<i32>(-2147483647i, arg_0), vec2<i32>(2147483647i, u_input.c), vec2<bool>(false, arg_3.x)), vec2<i32>(arg_0, 0i)) << (~u_input.a.yy % vec2<u32>(32u))), Struct_3(vec4<f32>(-601f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)))), Struct_2(min(~vec2<i32>(u_input.c, 3449i), vec2<i32>(arg_0, 42320i) ^ vec2<i32>(arg_0, 34494i)), ~abs(vec2<u32>(u_input.d.x, 1u)), ~u_input.a, vec3<i32>(-1i) * -vec3<i32>(arg_0, 2147483647i, -132i)), reverseBits(4294967295u)));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f - arg_1)), -1490f)), vec4<u32>(~(~var_0.c.x), firstLeadingBit(_wgslsmith_add_u32(1394u, var_0.b.x)), var_0.c.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 9312u), ~36287u)) >> (~(~vec4<u32>(16870u, u_input.b, 11316u, u_input.b) | vec4<u32>(u_input.d.x, 6877u, var_0.b.x, 1u)) % vec4<u32>(32u)), arg_3.yw, var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -546f) - _wgslsmith_f_op_f32(step(-468f, 1461f))), 907f)));
    let var_3 = -11265i;
    var var_4 = arg_0;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = vec3<u32>(max(14361u, 1u), u_input.b, var_0 | var_0);
    var var_2 = Struct_2(vec2<i32>(2147483647i, -2147483647i), abs(vec2<u32>(u_input.b & 1u, ~4294967295u)) ^ vec2<u32>(4294967295u, func_1(1i, _wgslsmith_f_op_f32(f32(-1f) * -991f), true, vec4<bool>(false, false, false, true))), ~(~(~var_1) & _wgslsmith_sub_vec3_u32(~u_input.a, u_input.a << (var_1 % vec3<u32>(32u)))), vec3<i32>(u_input.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(55183i, 33933i, u_input.c), vec3<i32>(50903i, 9894i, 30115i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c)), -(u_input.c & u_input.c) & ~_wgslsmith_mult_i32(u_input.c, u_input.c)));
    var var_3 = func_3(vec3<u32>(firstTrailingBit(abs(~var_1.x)), 0u, _wgslsmith_mod_u32(var_0, countOneBits(60267u))), any(vec2<bool>(true, all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-1590f, 193f), -306f, _wgslsmith_f_op_f32(f32(-1f) * -424f)))))), any(vec2<bool>(false || (var_2.a.x > 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(var_2.a.x, u_input.c, var_2.d.x)) <= (17211i >> (0u % 32u)))));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~0i)), ~_wgslsmith_sub_i32(i32(-1i) * -19636i, firstTrailingBit(var_2.d.x) << (var_1.x % 32u)), ~var_2.d.xz, 13067i);
}

