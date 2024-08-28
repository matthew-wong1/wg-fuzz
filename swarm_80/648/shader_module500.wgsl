struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<bool>(4294967295u > ~arg_0.x, any(vec3<bool>(true, false, select(24821u < arg_0.x, false, false))));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(min(arg_1.a, ~(vec4<u32>(arg_1.a.x, 81370u, 1u, arg_1.a.x) ^ vec4<u32>(46710u, 11674u, arg_1.a.x, arg_1.a.x))), arg_1.a), (i32(-1i) * -u_input.a.x) & _wgslsmith_sub_i32(i32(-1i) * -22239i, -1i));
    var var_2 = var_0;
    var_2 = select(var_0, vec2<bool>(any(!(!vec4<bool>(var_0.x, false, var_0.x, var_2.x))), var_0.x), _wgslsmith_div_f32(-1382f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1349f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1350f - -1221f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(147f * 108f)))));
    var_2 = !var_0;
    return _wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_1.a.x, select(_wgslsmith_sub_u32(arg_1.a.x, arg_0.x), reverseBits(arg_0.x), !var_0.x)), arg_1.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.x;
    var_0 = ~2988i;
    var var_1 = _wgslsmith_mult_u32(min(0u, ~19534u), ~(~9728u) ^ ~func_3(vec2<u32>(1u, 4294967295u), Struct_1(vec4<u32>(1u, 52468u, 94862u, 38900u), u_input.a.x)));
    var_0 = 87507i;
    var_1 = _wgslsmith_clamp_u32(49664u, firstTrailingBit(~(~(~1u))), max(~abs(func_3(vec2<u32>(0u, 0u), Struct_1(vec4<u32>(16574u, 0u, 0u, 0u), -7715i))), 1u));
    return Struct_1(~vec4<u32>(select(~4294967295u, _wgslsmith_div_u32(18480u, 5386u), all(vec4<bool>(true, false, true, false))), _wgslsmith_sub_u32(~1u, 30217u), ~1u, ~_wgslsmith_clamp_u32(0u, 52469u, 26066u)), abs(u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.b ^ ~arg_0.b, _wgslsmith_mod_i32(29665i, ~563i)), 16965i));
    var var_1 = func_2();
    var_0 = arg_0;
    var_1 = func_2();
    return var_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = reverseBits(~16433u);
    var_0 = ~min(~7665u, arg_1.a.x);
    let var_1 = ~_wgslsmith_mod_i32(func_4(arg_0, func_2(), Struct_1(arg_1.a, arg_0.b)), -u_input.a.x) ^ (_wgslsmith_sub_i32(u_input.a.x, ~(-2147483647i)) & ~1i);
    var var_2 = arg_0;
    let var_3 = arg_1.a.x;
    return -53636i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_mult_vec4_i32(select(-abs(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, -36367i, u_input.a.x, 0i)), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 36426i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 20273i, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_i32(~vec4<i32>(-16402i, 5377i, u_input.a.x, -1i), vec4<i32>(2147483647i, -16101i, u_input.a.x, 31850i)))), vec4<i32>(~u_input.a.x, (~0i & u_input.a.x) & (u_input.a.x | func_1(Struct_1(vec4<u32>(7043u, 77414u, 0u, 0u), 26716i), Struct_1(vec4<u32>(0u, 58732u, 53678u, 1u), u_input.a.x), vec2<bool>(false, true), true)), -2147483647i, abs(-68153i)));
    var var_1 = func_2();
    var var_2 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(~var_1.a.wy, abs(vec2<u32>(6495u, 4294967295u))), 14450u, var_1.a.x, var_1.a.x), 2147483647i);
    let var_3 = Struct_1(var_1.a, ~func_1(Struct_1(abs(var_1.a), var_0.x | u_input.a.x), func_2(), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), all(vec3<bool>(true, true, true))));
    var_2 = Struct_1(var_1.a, var_0.x);
    var var_4 = ~(abs(~var_1.a) << (firstTrailingBit(vec4<u32>(var_2.a.x, var_3.a.x, ~var_2.a.x, _wgslsmith_clamp_u32(var_2.a.x, var_3.a.x, var_1.a.x))) % vec4<u32>(32u)));
    var var_5 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, -665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1423f, 432f))), -1507f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1892f, 792f, -1591f, -371f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, 861f, -1906f, 1277f) * vec4<f32>(1000f, -1454f, -940f, -1861f))))), vec4<f32>(-774f, _wgslsmith_f_op_f32(floor(410f)), -702f, 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_1(abs(vec4<u32>(var_2.a.x, var_2.a.x, 0u, var_3.a.x) & var_1.a), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, -12132i), vec2<i32>(81760i, 1i) >> (vec2<u32>(var_4.x, 1u) % vec2<u32>(32u)))), var_3, select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_5.x * 2100f), 890f)) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-168f)), var_5.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x - var_5.x)))), ~(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(45208u, 2902u, var_1.a.x), vec3<u32>(1u, var_1.a.x, 78561u), var_3.a.xwz)) << ((~vec3<u32>(var_4.x, 109969u, var_4.x) & ~vec3<u32>(var_2.a.x, 0u, var_2.a.x)) % vec3<u32>(32u))));
}

