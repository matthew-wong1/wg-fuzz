struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = vec4<bool>(arg_0.x & true, 1215f >= _wgslsmith_f_op_f32(floor(1000f)), arg_0.x, arg_0.x);
    let var_1 = Struct_3(Struct_1(0u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, abs(1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-9000i, 1728i), 1i, _wgslsmith_div_i32(-2147483647i, 33962i)), vec3<i32>(0i, _wgslsmith_mult_i32(0i, 3065i), ~60479i))), !(!arg_0.x), arg_0, ~max(vec3<u32>(select(1u, u_input.a, false), 11855u, 3064u), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_1, u_input.a), vec3<u32>(0u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), countOneBits(vec3<u32>(42510u, 0u, 4294967295u)), arg_0.x)));
    let var_2 = max(min(var_1.e.yz, firstLeadingBit(~(vec2<u32>(var_1.e.x, var_1.a.a) & var_1.e.yz))), _wgslsmith_div_vec2_u32(var_1.e.zy, firstTrailingBit(~firstTrailingBit(vec2<u32>(u_input.a, arg_1)))));
    var var_3 = arg_0.x;
    var var_4 = Struct_2(~(_wgslsmith_clamp_i32(var_1.b, _wgslsmith_div_i32(var_1.b, var_1.b), ~var_1.b) << (_wgslsmith_add_u32(max(1u, var_2.x), countOneBits(var_2.x)) % 32u)), arg_1);
    return Struct_1((~_wgslsmith_clamp_u32(arg_1, var_4.b, 0u) ^ 48735u) ^ u_input.a);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    let var_0 = -1984f;
    let var_1 = 818f;
    var var_2 = arg_0;
    let var_3 = Struct_2(var_2.b, ~u_input.a);
    var_2 = arg_0;
    return select(!vec2<bool>(false, 27768u < countOneBits(var_3.b)), !select(!var_2.d, !arg_0.d, var_2.d.x), arg_0.c);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(func_2(vec2<bool>(true, true), 1u), arg_1.a, true, !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_add_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.a, arg_1.b, arg_1.b))) | ~(vec3<u32>(u_input.a, 1u, u_input.a) ^ vec3<u32>(arg_1.b, arg_1.b, 7025u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a, 0u, 1u)), vec3<u32>(arg_1.b, 0u, 0u)), ~select(vec3<u32>(13606u, u_input.a, 0u), vec3<u32>(u_input.a, 1u, 39864u), false))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(-234f * arg_0), -158f);
    var_0 = Struct_3(func_2(select(vec2<bool>(true, var_0.c || var_0.d.x), func_3(Struct_3(Struct_1(u_input.a), var_0.b, var_0.c, vec2<bool>(true, true), var_0.e), func_2(var_0.d, arg_1.b), 1i), var_0.c), 1u), arg_1.a, var_0.d.x, vec2<bool>(true, true), ~vec3<u32>(u_input.a | (5712u >> (u_input.a % 32u)), select(~u_input.a, ~4294967295u, var_0.d.x), var_0.a.a << (~var_0.e.x % 32u)));
    var var_2 = 369f;
    var var_3 = var_0.a;
    return Struct_2(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(countOneBits(arg_1.a), 0i ^ var_0.b), 54i), -1i), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 1u), arg_1.b));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = 0u;
    let var_1 = func_2(vec2<bool>(false, arg_0.a <= -21207i), ~(select(32025u, arg_0.b, func_3(Struct_3(Struct_1(arg_0.b), arg_0.a, false, vec2<bool>(false, false), vec3<u32>(arg_0.b, 0u, arg_0.b)), Struct_1(u_input.a), -1i).x) << (~(u_input.a >> (arg_0.b % 32u)) % 32u)));
    let var_2 = Struct_2(1i, ~1u);
    var var_3 = func_2(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), u_input.a);
    var_3 = var_1;
    return Struct_4(0u);
}

fn func_5(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    let var_1 = Struct_1(1u);
    var var_2 = _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(min(vec2<i32>(1i, -16737i), vec2<i32>(45292i, 44406i)), vec2<i32>(abs(2147483647i), -1i)), max(reverseBits(~vec2<i32>(1i, 1i)), firstLeadingBit(select(~vec2<i32>(19539i, 2147483647i), vec2<i32>(1i, 1i), any(vec4<bool>(var_0.x, false, var_0.x, true))))));
    var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(var_2.x, 0i), ~(-43479i)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, -19916i, var_2.x), vec4<i32>(29118i, -8951i, var_2.x, var_2.x)), -var_2.x), select(vec2<i32>(-14569i, -47213i), vec2<i32>(-4403i, 30431i), true) << (~vec2<u32>(26696u, 49853u) % vec2<u32>(32u)))) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.a), vec2<u32>(u_input.a, arg_0.a), vec2<u32>(2709u, arg_0.a) >> (vec2<u32>(19755u, 4294967295u) % vec2<u32>(32u))) | ~(vec2<u32>(0u, 24480u) ^ vec2<u32>(27290u, arg_0.a)), max(~(vec2<u32>(arg_0.a, arg_0.a) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), abs(vec2<u32>(4294967295u, 0u)) >> ((vec2<u32>(1u, u_input.a) | vec2<u32>(8388u, 70826u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_3 = vec2<u32>(~var_1.a, var_1.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(526f, -926f, -140f, -520f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1458f, 589f, 810f, 1861f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -1500f, -1000f, 1688f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_4(func_1(-339f, Struct_2(-38985i, 398u)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(119f, -1057f, 1565f, 1356f), vec4<f32>(-1147f, -735f, 946f, -1959f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1504f, 956f, 364f, 165f))), _wgslsmith_f_op_vec4_f32(func_5(Struct_4(u_input.a | 6922u))))));
    var var_1 = 1u;
    var_1 = u_input.a;
    var var_2 = any(!select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), false)));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

