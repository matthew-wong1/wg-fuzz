struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_add_i32(arg_1.d.b.x | ((arg_3.b.x | u_input.e.x) ^ reverseBits(arg_1.c.b.x)), countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, -2504i), 9598i)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_3.a | vec3<u32>(global0.x, 1u, arg_3.d.x), ~arg_3.d), ~_wgslsmith_mult_vec3_u32(arg_1.d.d, arg_3.a)) % 32u));
    global0 = abs((vec4<u32>(4294967295u, 6022u, 1424u, 38733u) >> ((vec4<u32>(36198u, 15489u, 1u, arg_3.e.x) << (vec4<u32>(global0.x, arg_2.b, 4294967295u, arg_3.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_3.d.x, 79972u, arg_1.d.e.x, u_input.a.x), vec4<u32>(arg_2.b, arg_2.b, 32743u, 1u)) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(4294967295u, select(~arg_1.d.a.x, _wgslsmith_clamp_u32(arg_3.d.x, arg_1.c.a.x, arg_0.x), all(vec3<bool>(arg_1.a.a.x, false, false))), arg_1.b, 0u));
    global0 = abs(~(~(~vec4<u32>(13254u, u_input.a.x, arg_0.x, u_input.a.x))) & ~vec4<u32>(~42546u, 56319u, u_input.c.x, ~9749u));
    global0 = select(abs(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 30489u, global0.x), vec3<u32>(global0.x, 0u, arg_1.d.e.x)), _wgslsmith_mult_u32(1u, u_input.c.x), ~1u, countOneBits(arg_0.x))), vec4<u32>(max(30784u, ~_wgslsmith_clamp_u32(1u, arg_2.b, 59601u)), countOneBits(countOneBits(countOneBits(1u))), arg_2.b >> (_wgslsmith_mult_u32(~u_input.c.x, reverseBits(arg_0.x)) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_2.a.x, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), u_input.c, arg_1.c.d)), firstTrailingBit(~36050u))), arg_1.a.a.x);
    global0 = ~select(vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.e.x, arg_0.x, 3850u), arg_3.d), ~arg_1.c.d), arg_0.x, arg_0.x), vec4<u32>(arg_1.b, ~countOneBits(4332u), _wgslsmith_div_u32(max(4294967295u, 11338u), arg_3.e.x), global0.x), select(!vec4<bool>(false, arg_1.a.a.x, arg_1.a.a.x, false), select(vec4<bool>(false, false, arg_1.a.a.x, true), vec4<bool>(true, arg_1.a.a.x, arg_1.a.a.x, true), any(arg_1.a.a)), !arg_1.a.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.c), arg_2.c.x, _wgslsmith_f_op_f32(-315f - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-206f * _wgslsmith_f_op_f32(f32(-1f) * -832f)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    global0 = ~_wgslsmith_sub_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, global0.x, global0.x, u_input.a.x), vec4<u32>(u_input.c.x, 33538u, arg_1.d.x, arg_1.e.x))), ~vec4<u32>(~7120u, ~94828u, abs(global0.x), global0.x << (0u % 32u)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_1.c + arg_1.c), arg_1.c)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - -581f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.c)))))));
    let var_1 = _wgslsmith_dot_vec3_u32(~u_input.c, u_input.c) >= 7706u;
    var var_2 = Struct_2(arg_1.e, global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.c, var_0.x, 219f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1123f, var_0.x, var_0.x, var_0.x), vec4<f32>(arg_1.c, var_0.x, 346f, -1689f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_1.c, -458f, -518f) + vec4<f32>(var_0.x, -421f, var_0.x, arg_1.c)))) - _wgslsmith_f_op_vec4_f32(func_3(~global0.xz, Struct_4(Struct_3(vec2<bool>(false, true)), ~24281u, arg_1, arg_1), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.x, u_input.a.x), vec2<u32>(99730u, 10407u)), 0u >> (global0.x % 32u), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c, -562f, 1011f, var_0.x), vec4<f32>(-1772f, arg_1.c, 753f, var_0.x))), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0.x, 4294967295u), vec3<u32>(41881u, 0u, 4294967295u)), countOneBits(arg_1.b), _wgslsmith_f_op_f32(abs(-1390f)), vec3<u32>(856u, 19117u, u_input.a.x) << (global0.wwx % vec3<u32>(32u)), u_input.c.xx)))));
    var var_3 = Struct_1(select(global0.zxw, global0.yzy << (~(~global0.xxw) % vec3<u32>(32u)), true), vec3<i32>(firstTrailingBit(reverseBits(~arg_1.b.x)), reverseBits(-1i), 120028i), 309f, reverseBits(~(~vec3<u32>(u_input.a.x, var_2.a.x, 0u))), select(u_input.a, vec2<u32>(countOneBits(global0.x), ~var_2.b) & var_2.a, !any(vec3<bool>(true, false, true))));
    return Struct_3(vec2<bool>(true, !all(vec2<bool>(var_1, var_1))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_4(func_2(firstLeadingBit(u_input.e.xzx), Struct_1(~select(global0.wxw, u_input.c, true), ~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)), vec3<u32>(4294967295u, 1u, _wgslsmith_sub_u32(1u, global0.x)), abs(u_input.c.zz)), select(12909i, -32920i, false)), ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.a.x, 85473u), ~(384u & arg_0)), Struct_1(u_input.c ^ ~global0.zwz, ~u_input.d, -1259f, global0.zxz, _wgslsmith_clamp_vec2_u32(firstTrailingBit(~global0.yw), u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0), ~vec2<u32>(38485u, arg_0)))), Struct_1(~vec3<u32>(arg_0, global0.x, arg_0), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, -32228i, 0i) ^ vec3<i32>(u_input.d.x, u_input.d.x, -7734i), max(u_input.d, vec3<i32>(4036i, -16782i, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1163f)))), u_input.c ^ _wgslsmith_add_vec3_u32(global0.zyx, vec3<u32>(arg_0, u_input.c.x, arg_0)), countOneBits(vec2<u32>(max(u_input.a.x, arg_0), min(17112u, 0u)))));
    global0 = countOneBits(_wgslsmith_mod_vec4_u32(min(vec4<u32>(_wgslsmith_sub_u32(57880u, global0.x), _wgslsmith_mod_u32(50537u, u_input.a.x), 110107u, var_0.c.d.x), vec4<u32>(12088u >> (1u % 32u), u_input.c.x | u_input.c.x, ~38283u, ~u_input.c.x)), select(firstTrailingBit(~vec4<u32>(var_0.c.d.x, 27293u, 34452u, global0.x)), min(vec4<u32>(28838u, 15745u, 1u, 15722u), vec4<u32>(23801u, global0.x, global0.x, 1u)), !(var_0.c.c == var_0.d.c))));
    let var_1 = var_0.c.b.x;
    var var_2 = vec2<i32>(((_wgslsmith_sub_i32(-1i, var_0.d.b.x) | ~24543i) ^ _wgslsmith_clamp_i32(2147483647i | u_input.b, 0i, var_0.c.b.x)) | abs(select(-11888i, u_input.d.x, var_0.a.a.x) >> (reverseBits(u_input.c.x) % 32u)), max(_wgslsmith_mult_i32(-2147483647i, -var_1), ~(-2147483647i)) | ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.c.b, var_0.d.b, vec3<i32>(-2147483647i, u_input.d.x, -21610i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, var_1, -9968i), var_0.d.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c, -1004f, 1000f, 558f) - vec4<f32>(var_0.d.c, 1720f, -675f, var_0.c.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.c, 212f, -1165f, var_0.d.c), vec4<f32>(var_0.c.c, -129f, var_0.d.c, -458f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1286f, var_0.c.c, var_0.d.c, 1053f), vec4<f32>(1619f, 383f, var_0.c.c, var_0.c.c))))));
    return Struct_1(vec3<u32>(4294967295u, select(4294967295u, var_0.c.a.x, true), ~(~_wgslsmith_clamp_u32(1u, var_0.c.e.x, arg_0))), vec3<i32>(var_2.x, -(~(-26800i)), -2147483647i), _wgslsmith_f_op_f32(var_0.d.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(var_0.c.a.x, u_input.c.x), Struct_4(Struct_3(var_0.a.a), 39753u, var_0.c, var_0.c), Struct_2(var_0.d.a.zz, 27279u, vec4<f32>(382f, var_0.c.c, var_0.c.c, 223f)), var_0.d)).x - -1748f)), ~_wgslsmith_div_vec3_u32(~var_0.d.d, ~firstLeadingBit(u_input.c)), _wgslsmith_mult_vec2_u32(firstTrailingBit(countOneBits(vec2<u32>(4294967295u, arg_0) << (vec2<u32>(23006u, 1u) % vec2<u32>(32u)))), reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(global0.x, var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(175f, _wgslsmith_div_f32(1000f, -359f))))), -291f);
    var var_1 = min(~1u, ~(~(~0u)));
    let var_2 = func_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~global0.x, abs(1u)) >> (global0.x % 32u), u_input.a.x));
    var var_3 = _wgslsmith_mod_u32(1u, global0.x);
    global0 = vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(select(select(global0.yw, var_2.a.xy, false), u_input.c.xy, all(vec4<bool>(true, false, true, true))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(var_2.a.x, 26245u) | vec2<u32>(global0.x, var_2.e.x)))), _wgslsmith_mult_u32(~firstTrailingBit(~1211u), func_1(18456u).d.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(10701u, var_2.e.x), ~(countOneBits(u_input.c.x) | (global0.x ^ 1u))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~0i);
}

