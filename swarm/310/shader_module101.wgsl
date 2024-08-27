struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec4<f32> {
    global0 = ~u_input.a.x >= max(_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(arg_1, 1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, 16892u), min(vec4<u32>(1u, 1u, 4294967295u, u_input.c.x), vec4<u32>(21323u, u_input.c.x, u_input.a.x, u_input.c.x))), firstLeadingBit(u_input.c.x));
    let var_0 = 26186i;
    var var_1 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), firstTrailingBit(firstLeadingBit(0i ^ var_0) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 2066u, 50487u, u_input.a.x), reverseBits(vec4<u32>(u_input.b, 4294967295u, 11262u, u_input.a.x))) % 32u)), vec4<i32>(1i, ~52133i, abs(_wgslsmith_add_i32(41098i, -2147483647i)), -abs(7723i)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1, u_input.b, arg_1), vec4<u32>(73426u, 1u, u_input.a.x, 5730u)), ~vec4<u32>(34903u, u_input.c.x, 25563u, arg_1)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.b, arg_1, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, u_input.a.x), vec4<u32>(0u, 24990u, 25463u, 1u)))) % vec4<u32>(32u)), false, -firstLeadingBit(vec4<i32>(var_0 | 8663i, 0i, abs(var_0), var_0)));
    let var_2 = Struct_1(var_1.a, 0i, var_1.e, var_1.c.x < 0i, -var_1.e);
    var var_3 = -1i & (-firstLeadingBit(_wgslsmith_mod_i32(50716i, var_2.e.x)) << (4922u % 32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), var_2.a.x, _wgslsmith_div_f32(var_2.a.x, var_1.a.x), -1092f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -2483f, -1127f, var_1.a.x))), vec4<bool>(var_2.d, select(arg_0.x, var_2.d, false), var_1.d || false, false))) + var_1.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = arg_0.x || select(true, (_wgslsmith_div_u32(u_input.c.x, arg_1) << (countOneBits(arg_2.x) % 32u)) <= 10286u, arg_0.x);
    var_0 = arg_0.x;
    let var_1 = arg_0;
    var_0 = true;
    var var_2 = true;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(arg_0, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(176f, -1210f, -1137f, 1000f), vec4<f32>(1703f, 1000f, -331f, -712f)))))), 1i, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(12267i, -1i, 48993i, 2147483647i), ~(~vec4<i32>(0i, -13021i, -1i, 2147483647i))), true, ~_wgslsmith_mult_vec4_i32(-vec4<i32>(9118i, 57287i, 1i, 32965i), vec4<i32>(1i, 1i, 1i, 1i))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4) -> vec4<i32> {
    global0 = arg_0.x | any(!(!(!vec3<bool>(false, arg_1.a.d, true))));
    let var_0 = arg_2.b.a.zw;
    global0 = true;
    let var_1 = func_2(vec2<bool>(any(vec4<bool>(all(arg_0), true, all(vec4<bool>(true, false, false, false)), !arg_0.x)), true && any(vec4<bool>(arg_0.x, true, true, arg_1.a.d))), u_input.a.x, ~vec2<u32>(12360u, 4294967295u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_2.c.a))), 2147483647i, arg_2.b.c, all(select(!arg_0, select(arg_0, select(arg_0, arg_0, arg_0.x), !arg_2.c.d), !var_1.a.d)), vec4<i32>(-_wgslsmith_dot_vec2_i32(arg_1.a.c.zw, vec2<i32>(2147483647i, arg_2.c.e.x) >> (u_input.a % vec2<u32>(32u))), -arg_2.c.c.x, -(-27004i & _wgslsmith_dot_vec4_i32(arg_1.a.c, vec4<i32>(var_1.a.c.x, arg_2.b.c.x, 2147483647i, var_1.a.c.x))), abs(_wgslsmith_mult_i32(arg_1.a.b, _wgslsmith_div_i32(-18170i, 3297i)))));
    return firstLeadingBit(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(arg_2.b.c.x, -11460i, arg_1.a.c.x, var_2.b)), arg_1.a.e, _wgslsmith_div_vec4_i32(arg_1.a.c, _wgslsmith_sub_vec4_i32(var_1.a.c, var_1.a.c)))) & vec4<i32>(select(var_2.e.x, ~arg_1.a.e.x, u_input.c.x != max(u_input.a.x, u_input.a.x)), firstTrailingBit(i32(-1i) * -5611i) << (abs(u_input.b) % 32u), _wgslsmith_dot_vec4_i32(~firstTrailingBit(var_1.a.c), var_1.a.e), var_1.a.e.x);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = Struct_5(vec4<bool>(!arg_2.a.d, true, all(select(!vec3<bool>(arg_2.a.d, arg_2.a.d, arg_2.a.d), !vec3<bool>(arg_2.a.d, arg_2.a.d, false), select(vec3<bool>(true, arg_2.a.d, false), vec3<bool>(true, arg_2.a.d, true), arg_2.a.d))), 19059u >= u_input.b), vec3<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(626f)), _wgslsmith_f_op_f32(-arg_1.x))), 745f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), true)) * _wgslsmith_f_op_f32(f32(-1f) * -688f))));
    let var_1 = -select(~_wgslsmith_div_vec4_i32(arg_2.a.c | arg_2.a.c, arg_2.a.c), func_4(select(var_0.a.wwx, vec3<bool>(var_0.a.x, false, var_0.a.x), !var_0.a.zxy), func_2(var_0.a.xz, u_input.c.x, u_input.c), Struct_4(true | arg_2.a.d, arg_2.a, Struct_1(vec4<f32>(-1000f, 372f, 1174f, 618f), arg_2.a.b, arg_2.a.c, true, vec4<i32>(arg_2.a.c.x, arg_2.a.e.x, -2147483647i, arg_0)))), all(var_0.a.yy));
    var var_2 = arg_2.b;
    let var_3 = Struct_2(arg_2.a, select(~(arg_2.b >> (arg_2.b % 32u)) >> (min(abs(1u), _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)) % 32u), 4294967295u, true), reverseBits(1u & ~u_input.c.x));
    var var_4 = Struct_5(var_0.a, var_0.b);
    return ~(_wgslsmith_mod_vec3_u32(min(~vec3<u32>(u_input.a.x, 0u, arg_2.c), vec3<u32>(u_input.b, arg_2.c, 0u)), min(vec3<u32>(102792u, 22324u, arg_2.b) >> (vec3<u32>(var_3.b, var_3.c, 0u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, var_3.b), vec3<u32>(0u, 77443u, u_input.c.x)))) & vec3<u32>(~(u_input.a.x << (12623u % 32u)), ~arg_2.c, ~countOneBits(var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(_wgslsmith_add_i32(-5476i, -1835i >> (u_input.b % 32u)) >= firstLeadingBit(~(-2147483647i))));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1529f, -625f, -1352f))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), -1512f, 1f))))));
    var var_1 = _wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x)), ~func_1(2147483647i, vec4<f32>(-478f, var_0.x, 624f, var_0.x), Struct_2(Struct_1(vec4<f32>(-1263f, -780f, var_0.x, var_0.x), -32204i, vec4<i32>(-1i, 1i, 0i, 1i), true, vec4<i32>(0i, 2147483647i, 4730i, -2147483647i)), u_input.a.x, u_input.b))), firstLeadingBit(~vec3<u32>(u_input.c.x, 5364u, 45420u)) << (max(firstTrailingBit(vec3<u32>(4294967295u, u_input.b, u_input.c.x)), func_1(-52218i, vec4<f32>(360f, var_0.x, var_0.x, var_0.x), Struct_2(Struct_1(vec4<f32>(-169f, -591f, var_0.x, var_0.x), -1i, vec4<i32>(29234i, -2147483647i, 1i, -15765i), true, vec4<i32>(0i, -23102i, -32032i, -2147483647i)), 1u, 1u))) % vec3<u32>(32u)), vec3<bool>(true, true, true)), ~firstTrailingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b)), vec3<u32>(u_input.c.x, 2535u, u_input.a.x))));
    global0 = all(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, false), true))) != (reverseBits(0u) == countOneBits(~_wgslsmith_add_u32(var_1.x, 4294967295u)));
    let var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-811f + var_0.x)), -973f), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-53783i, 9927i), _wgslsmith_clamp_vec2_i32(vec2<i32>(11041i, 49962i) >> (var_1.xz % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 29302i), vec2<i32>(-1i, -1185i)), -vec2<i32>(29265i, 66544i))), abs(vec4<i32>(firstLeadingBit(-35815i), reverseBits(-29618i), -8581i, 0i)), false, min(vec4<i32>(~(-13865i), 95941i, select(115161i, -1i, false), 1i), ~vec4<i32>(1i, -45432i, 0i, 2147483647i))), firstTrailingBit(~var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(33405u, _wgslsmith_clamp_u32(~var_1.x, ~1u, ~var_1.x), ~65451u, 4294967295u), countOneBits(~(~vec4<u32>(4294967295u, 0u, 18706u, 102443u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.a.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x))))));
}

