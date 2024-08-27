struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(960f, false, countOneBits(abs(abs(~4294967295u))), firstLeadingBit(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(34068u, 1u, ~41478u, 0u), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), false, u_input.b >= u_input.a))));
    var var_1 = -vec4<i32>(2147483647i, abs(firstLeadingBit(u_input.a)), _wgslsmith_dot_vec4_i32(~(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.b) ^ vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b)), vec4<i32>(~(-79801i), select(u_input.b, 45127i, false), u_input.b, ~25600i)), ~abs(min(u_input.b, 68870i)));
    let var_2 = vec3<bool>(var_0.b, var_0.b, var_0.b != any(select(!vec4<bool>(var_0.b, false, false, true), !vec4<bool>(false, false, var_0.b, true), !vec4<bool>(false, true, var_0.b, var_0.b))));
    let var_3 = Struct_1(var_0.a, !(!var_2.x), ~var_0.d.x, ~min(vec4<u32>(var_0.d.x, ~84577u, 4294967295u, var_0.d.x), select(_wgslsmith_add_vec4_u32(vec4<u32>(2756u, 4294967295u, 30681u, 44628u), var_0.d), var_0.d, vec4<bool>(true, false, false, false))));
    var_0 = var_3;
    return -1734f;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(func_3())))), true && !arg_2.b, 67137u, vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3.c, 4294967295u, _wgslsmith_dot_vec3_u32(arg_0.d.yzw, arg_3.d.yxw)), _wgslsmith_div_vec4_u32(~vec4<u32>(11433u, arg_2.d.x, arg_2.c, 15464u), vec4<u32>(arg_0.c, arg_2.c, 26950u, arg_3.c))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_2.d.x, arg_2.d.x), arg_3.d.xw), countOneBits(arg_3.d.zx)), arg_2.d.x), arg_0.d.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.a * 556f))), -519f))), arg_3.b, arg_3.c, vec4<u32>(1u, countOneBits(1u), arg_0.d.x, 18809u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-720f * _wgslsmith_f_op_f32(f32(-1f) * -124f)), arg_2.b, var_1.d.x | select(abs(arg_3.d.x) ^ 1u, ~_wgslsmith_div_u32(122065u, arg_0.c), true), vec4<u32>(arg_0.d.x, ~4294967295u, ~(~10636u), var_0.c) | var_0.d);
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.c, ~(~arg_3.d.x >> (var_0.d.x % 32u)), firstTrailingBit(firstTrailingBit(var_0.d.x & 40451u))), countOneBits(vec3<u32>(arg_3.c << (arg_0.d.x % 32u), 27205u, countOneBits(14027u)) & (arg_3.d.wxy & ~var_2.d.xyx)));
    var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_1.d.wyw, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_1.d.xwz, arg_0.d.wyy), vec3<u32>(select(4294967295u, 9235u, false), 60844u, select(arg_2.d.x, 7450u, true)))), ~_wgslsmith_div_vec3_u32(~var_1.d.xyw, var_0.d.wzw));
    return select(select(max(firstTrailingBit(select(vec3<i32>(13782i, u_input.b, u_input.a), vec3<i32>(u_input.a, 5049i, -1i), vec3<bool>(true, arg_0.b, arg_0.b))), ~vec3<i32>(78585i, 0i, 54089i)), max(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, 12350i), vec3<i32>(u_input.b, 2147483647i, 49897i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-88670i, u_input.b, 2147483647i), vec3<i32>(u_input.a, 62998i, 21919i))), !vec3<bool>(var_1.b, var_2.b, true)), ~vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, u_input.a), abs(u_input.b)), u_input.a, abs(u_input.a)), select(!select(vec3<bool>(var_2.b, true, arg_3.b), vec3<bool>(arg_2.b, false, arg_3.b), any(vec4<bool>(var_0.b, false, arg_2.b, true))), select(vec3<bool>(true, var_0.c == arg_2.c, true), !vec3<bool>(var_2.b, arg_2.b, arg_2.b), select(vec3<bool>(false, arg_2.b, var_2.b), vec3<bool>(true, true, true), true)), !vec3<bool>(false, var_2.b, 12363u < var_3.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = vec3<i32>(-(~(-countOneBits(0i))), u_input.a, 53981i);
    var_0 = func_2(arg_3, -318f, arg_3, arg_3);
    var_0 = ~(vec3<i32>(-1i) * -(-vec3<i32>(var_0.x, var_0.x, u_input.a) << (reverseBits(vec3<u32>(11977u, 4294967295u, arg_3.d.x)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-arg_3.a);
    var_0 = ~(~(-vec3<i32>(u_input.b, var_0.x & 0i, -24546i)));
    return _wgslsmith_div_vec3_f32(arg_2, arg_2);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 270f) - _wgslsmith_f_op_f32(func_3()))))), any(!(!(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)))), _wgslsmith_dot_vec2_u32(arg_1.d.yz, ~(~(arg_1.d.yz | arg_1.d.xz))), arg_1.d);
    var var_1 = Struct_1(var_0.a, all(!vec2<bool>(var_0.b | arg_1.b, !var_0.b)), arg_1.c, vec4<u32>(max(arg_1.c, 1u), _wgslsmith_dot_vec2_u32(~var_0.d.zw, vec2<u32>(arg_1.d.x, 1u)), ~(~min(19558u, var_0.c)), _wgslsmith_dot_vec2_u32(select(min(vec2<u32>(arg_1.d.x, var_0.c), var_0.d.zx), var_0.d.yw >> (vec2<u32>(var_0.d.x, 19886u) % vec2<u32>(32u)), var_0.b != true), arg_1.d.zy)));
    let var_2 = _wgslsmith_dot_vec2_u32(select(var_1.d.zx & _wgslsmith_sub_vec2_u32(var_0.d.wy, vec2<u32>(4294967295u, var_0.c)), ~vec2<u32>(_wgslsmith_add_u32(var_1.d.x, arg_1.c), 1u), select(!(!vec2<bool>(arg_1.b, true)), vec2<bool>(false, true), !select(vec2<bool>(arg_1.b, true), vec2<bool>(true, true), vec2<bool>(true, true)))), ~countOneBits(~(~var_0.d.wy)));
    var_0 = arg_1;
    let var_3 = vec2<i32>(1i, firstLeadingBit(1194i));
    return vec4<bool>(var_0.b, var_1.b, var_1.b, u_input.b != 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1960f, any(vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))), min(min(~max(23817u, 1u), _wgslsmith_mult_u32(0u, ~29363u)), max(~select(7063u, 1u, false), 15330u)), vec4<u32>(abs(~1u), 1u, abs(4294967295u), _wgslsmith_mod_u32(abs(1u), _wgslsmith_clamp_u32(1u, 46604u >> (0u % 32u), ~10173u))));
    var var_1 = _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.a);
    let var_2 = var_0.d.x;
    var var_3 = ~firstTrailingBit((var_0.d >> (var_0.d % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(var_0.d, var_0.d)) & vec4<u32>(~min(var_0.c, select(var_0.c, 1u, false)), var_0.c, var_0.c, var_0.d.x);
    var var_4 = any(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(405f, -690f, var_0.a) + vec3<f32>(var_0.a, var_0.a, var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, var_0.a, -1007f)) * _wgslsmith_f_op_vec3_f32(func_1(false, vec2<f32>(-414f, var_0.a), vec3<f32>(-817f, var_0.a, 348f), Struct_1(-1129f, var_0.b, 4294967295u, var_0.d))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) * _wgslsmith_f_op_f32(var_0.a * -1144f)), true, var_0.d.x << ((var_3.x >> (var_3.x % 32u)) % 32u), vec4<u32>(var_3.x, 4294967295u, 0u, var_3.x))));
    let var_5 = abs(_wgslsmith_add_u32(var_3.x, var_0.c));
    var var_6 = !func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-809f, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-208f * 1135f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(589f, 1053f, 176f)), var_0.b)), Struct_1(_wgslsmith_f_op_f32(1125f + _wgslsmith_f_op_f32(1000f * var_0.a)), true || !var_0.b, 1337u, firstTrailingBit(~vec4<u32>(var_3.x, 0u, var_3.x, 2980u)))).zzy;
    let x = u_input.a;
    s_output = StorageBuffer(-653f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<f32>(var_0.a, var_0.a, -419f, var_0.a)))))))), _wgslsmith_f_op_f32(-var_0.a), 14028i);
}

