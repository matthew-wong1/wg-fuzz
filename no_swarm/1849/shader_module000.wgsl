struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(21520u, arg_3.b.x, u_input.a.x, arg_1.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 17040u) << (vec4<u32>(1u, 52672u, arg_1.b.x, arg_1.b.x) % vec4<u32>(32u))), countOneBits(vec4<u32>(0u, 1u, arg_1.b.x, 5035u) << (vec4<u32>(arg_3.b.x, arg_3.b.x, 0u, 1u) % vec4<u32>(32u)))));
    var var_1 = ~var_0.x | _wgslsmith_sub_u32(arg_1.b.x, _wgslsmith_div_u32(arg_1.b.x, var_0.x));
    var var_2 = arg_1.c.a.x;
    return _wgslsmith_clamp_u32(var_0.x, ~_wgslsmith_clamp_u32(1u, ~38760u, countOneBits(~26744u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.zzz, var_0.yyw), ~(select(var_0.yxy, var_0.wxw, false) << (firstLeadingBit(vec3<u32>(16726u, 0u, 7150u)) % vec3<u32>(32u)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = ~abs(_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(23985i, 0i), vec2<i32>(12746i, 19812i))), vec2<i32>(~1i, 1i)));
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, ~_wgslsmith_add_u32(u_input.a.x, min(u_input.a.x, arg_0.x)), firstLeadingBit(select(u_input.a.x << (26600u % 32u), ~25351u, select(false, true, true)))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_0.zxx), vec3<u32>(arg_0.x, abs(_wgslsmith_sub_u32(u_input.a.x, func_3(vec3<i32>(29780i, var_0.x, 0i), Struct_3(vec4<bool>(false, false, false, true), vec2<u32>(u_input.a.x, 58034u), Struct_2(vec4<f32>(arg_1.x, arg_1.x, -1890f, 1484f))), false, Struct_3(vec4<bool>(false, true, false, true), vec2<u32>(arg_0.x, u_input.a.x), Struct_2(vec4<f32>(arg_1.x, 463f, -295f, arg_1.x)))))), 1u));
    var_0 = select(-firstLeadingBit(vec2<i32>(1i, 1i)), reverseBits(max(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(50086i, 2147483647i), vec2<i32>(-19791i, var_0.x))), -abs(vec2<i32>(var_0.x, 2147483647i)))), vec2<bool>(!(!all(vec3<bool>(false, false, false))), !(all(vec3<bool>(true, false, true)) || any(vec4<bool>(true, false, false, true)))));
    var var_2 = -(vec2<i32>(var_0.x, var_0.x) << (reverseBits(var_1.xz) % vec2<u32>(32u)));
    var_2 = ~vec2<i32>(var_2.x, _wgslsmith_div_i32(abs(var_0.x), 78439i));
    return Struct_3(vec4<bool>(false, var_1.x != ((var_1.x & 0u) >> ((u_input.a.x | u_input.a.x) % 32u)), true, true), vec2<u32>(var_1.x, var_1.x), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1836f, -498f, 514f, -1021f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-578f, arg_1.x, 155f, arg_1.x), vec4<f32>(1000f, 525f, arg_1.x, 3019f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x))), 4294967295u, select(_wgslsmith_add_i32(abs(~(-19476i)), -(~(-24885i))), 0i, !(!all(arg_1.a.zzz))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -343f), ~firstLeadingBit(var_0.b), firstTrailingBit(var_0.c));
    var_0 = Struct_1(arg_0.x, ~arg_1.b.x, 0i);
    let var_1 = arg_1.b;
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, arg_1.b), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 64420u), select(vec2<u32>(27011u, 4294967295u), vec2<u32>(arg_2, arg_2), false)))), ~(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.c, var_0.c), 1i)));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1099f))) + _wgslsmith_div_f32(913f, -1000f)))), func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, -var_0.c, var_0.c), ~max(vec3<i32>(2147483647i, var_0.c, var_0.c), vec3<i32>(55065i, 0i, var_0.c))), func_2(vec4<u32>(1u, 0u, arg_2, arg_1.b.x), arg_1.c.a.zwy), arg_1.a.x, Struct_3(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.b, Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0)))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, 1i) >> (_wgslsmith_clamp_vec2_u32(arg_1.b, vec2<u32>(arg_2, u_input.a.x), vec2<u32>(arg_2, 42099u)) % vec2<u32>(32u))), min(~vec2<i32>(var_0.c, 11889i), vec2<i32>(var_0.c, var_0.c)) ^ reverseBits(vec2<i32>(var_0.c, -1i))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec4<f32>(1f, 1f, 1f, 1f), func_2(vec4<u32>(91776u, (1u & u_input.a.x) | _wgslsmith_clamp_u32(11494u, u_input.a.x, 1u), u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(950f, 1228f, -1925f))))))), reverseBits(~u_input.a.x));
    var var_1 = vec4<bool>(true, true, func_2(vec4<u32>(~_wgslsmith_clamp_u32(0u, 0u, 8153u), _wgslsmith_div_u32(~61650u, min(0u, u_input.a.x)), _wgslsmith_sub_u32(1u ^ var_0.b, max(u_input.a.x, u_input.a.x)), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, 510f, 1000f)) - vec3<f32>(299f, var_0.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -602f, var_0.a))))).a.x, true);
    var_1 = select(!select(!(!vec4<bool>(var_1.x, true, true, var_1.x)), !(!vec4<bool>(false, true, false, var_1.x)), var_1.x), !select(!vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_0.c == -22228i, var_1.x, true, var_1.x), !select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), true)), !(!any(select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, var_1.x, var_1.x)))));
    var var_2 = func_2(~select(max(~vec4<u32>(u_input.a.x, u_input.a.x, var_0.b, 17601u), reverseBits(vec4<u32>(u_input.a.x, var_0.b, 37935u, var_0.b))), ~vec4<u32>(0u, var_0.b, 4294967295u, u_input.a.x) & ~vec4<u32>(19499u, 7822u, 3024u, u_input.a.x), !(!vec4<bool>(true, var_1.x, false, false))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(510f, 1517f)), _wgslsmith_f_op_f32(2087f + 2040f))))), _wgslsmith_f_op_f32(339f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 814f))))).c;
    var_1 = !vec4<bool>(true, !(!func_2(vec4<u32>(0u, 9788u, 120862u, u_input.a.x), vec3<f32>(var_0.a, var_2.a.x, -452f)).a.x), true, func_2(vec4<u32>(14815u, var_0.b, 28438u, 1u) & vec4<u32>(var_0.b, 13442u, 60160u, u_input.a.x), _wgslsmith_f_op_vec3_f32(floor(var_2.a.zyy))).a.x != var_1.x);
    return Struct_1(var_2.a.x, ~u_input.a.x, abs(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-20924i, var_0.c, -1i, var_0.c), vec4<i32>(var_0.c, var_0.c, -8358i, 22636i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_0.c, -68064i, var_0.c)) ^ firstTrailingBit(vec3<i32>(1i, -37031i, var_0.c)), firstLeadingBit(vec3<i32>(-11967i, 21300i, 0i))), ~vec3<i32>(-var_0.c, select(var_0.c, var_0.c, true), var_0.c)), vec3<i32>(-2147483647i, -1i, firstTrailingBit(-_wgslsmith_mult_i32(var_0.c, var_0.c))));
    var_1 = -vec3<i32>(1i, ~var_0.c, 33051i);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, var_0.a, 238f, var_0.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, -1269f, -622f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) - vec4<f32>(772f, var_0.a, 1589f, var_0.a)))), vec4<f32>(-444f, _wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(abs(-2150f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -1343f), select(!any(vec4<bool>(false, true, false, true)), true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -254f, 1100f, var_0.a)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, -1043f, 930f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 460f, var_0.a, -1000f)), vec4<bool>(false, false, true, false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-123f, var_0.a, 1000f, var_0.a), vec4<f32>(-303f, 139f, -748f, var_0.a), any(vec2<bool>(true, false)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, 108f, var_0.a, 1562f))))))));
    let var_3 = var_0;
    let var_4 = vec3<u32>(func_1().b, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_3.b, 4294967295u), 4294967295u), ~firstLeadingBit(2612u)), u_input.a.x);
    let var_5 = var_0;
    var_1 = countOneBits(select(vec3<i32>(-var_1.x, _wgslsmith_mod_i32(var_3.c | var_0.c, func_4(vec4<f32>(var_5.a, 518f, var_3.a, -968f), Struct_3(vec4<bool>(false, true, true, true), vec2<u32>(var_5.b, var_0.b), Struct_2(var_2)), var_3.b).c), -func_4(vec4<f32>(-326f, 1760f, 1648f, 1000f), Struct_3(vec4<bool>(true, true, true, false), vec2<u32>(var_0.b, 3566u), Struct_2(vec4<f32>(-1926f, var_5.a, -102f, -2233f))), 20099u).c), vec3<i32>(abs(_wgslsmith_add_i32(var_1.x, 61471i)), min(var_3.c, var_1.x), _wgslsmith_add_i32(max(-2147483647i, 0i), 2446i)), func_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_5.b, 0u, var_5.b, var_5.b), vec4<u32>(46756u, 1u, var_5.b, var_4.x) & vec4<u32>(u_input.a.x, var_0.b, var_5.b, 39492u), ~vec4<u32>(11731u, var_0.b, 4294967295u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.zzy)))).a.zxy));
    let var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_6, _wgslsmith_f_op_f32(f32(-1f) * -315f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(func_4(_wgslsmith_f_op_vec4_f32(max(var_2, var_2)), func_2(vec4<u32>(62327u, var_4.x, u_input.a.x, var_4.x), var_2.yzy), var_5.b).a, var_0.a, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-824f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a + var_0.a) - var_6)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_3.a)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_6, 173f), vec2<f32>(var_2.x, var_5.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_3.a) - var_2.yx)))), 26571i);
}

