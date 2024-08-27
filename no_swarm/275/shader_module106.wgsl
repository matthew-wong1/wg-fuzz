struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_2(1u, !(min(u_input.b.x, 1i) != min(2147483647i, u_input.a.x)) || !(-u_input.a.x >= _wgslsmith_div_i32(u_input.a.x, 1i)), arg_0.x, Struct_1(vec2<bool>(true, true), ~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(35137u, 35034u), 32960u << (0u % 32u)), firstLeadingBit(1u), _wgslsmith_mult_u32(4626u, 1u)), ~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, -1i, u_input.a.x, -3715i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 87613i), vec4<i32>(-20923i, u_input.b.x, -46491i, u_input.a.x))), true), max(4294967295u, firstTrailingBit(~0u)) | 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.c)))) + _wgslsmith_f_op_f32(ceil(var_0.c)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * 435f)));
    var var_3 = abs(~(45818u << (abs(var_0.e) % 32u)) | var_0.d.b.x);
    let var_4 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.d.b.x, var_0.e, var_0.d.b.x), _wgslsmith_clamp_u32(var_0.d.c.x, var_0.a, var_0.a), var_0.d.c.x >> (4294967295u % 32u), abs(0u)), vec4<u32>(13186u, var_0.e | 55673u, _wgslsmith_div_u32(var_0.a, 0u), _wgslsmith_mod_u32(var_0.d.c.x, var_0.d.b.x))));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<i32>(arg_1.d.d.x, arg_1.d.d.x, arg_2.d.x);
    var var_1 = Struct_1(vec2<bool>(arg_1.d.e, any(!arg_1.d.a)), arg_2.c, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(16275u, arg_1.a, 1u), arg_2.c)) ^ ~(~(~vec3<u32>(arg_2.c.x, arg_1.e, arg_2.c.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), arg_1.d.d.zx >> (~vec2<u32>(1u, arg_2.c.x) % vec2<u32>(32u))), reverseBits(i32(-1i) * -arg_1.d.d.x), u_input.b.x, (i32(-1i) * -2147483647i) << (select(arg_2.b.x, 0u, arg_1.c < arg_1.c) % 32u)), true);
    var_1 = Struct_1(arg_2.a, vec3<u32>(var_1.c.x, var_1.c.x, arg_1.a), vec3<u32>(var_1.b.x, var_1.b.x, min(1u, abs(115321u) & var_1.b.x)), -var_1.d, ~(_wgslsmith_sub_u32(arg_2.c.x, arg_1.d.b.x) >> (min(31412u, 87048u) % 32u)) >= min(_wgslsmith_div_u32(var_1.c.x, ~46761u), var_1.b.x));
    var_0 = vec3<i32>(-1i, 1i >> (arg_1.a % 32u), -13818i) & _wgslsmith_div_vec3_i32(~vec3<i32>(countOneBits(1i), 10053i, i32(-1i) * -1i), var_1.d.zzw);
    return abs(~1i);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x) >> (vec3<u32>(99999u, 0u, 2510u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), abs(vec3<i32>(u_input.a.x, 39580i, u_input.a.x))), (vec3<i32>(u_input.b.x, 17420i, 31548i) << (vec3<u32>(10987u, 4294967295u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), false) ^ -abs(vec3<i32>(u_input.a.x, 17810i, u_input.a.x)), ~vec3<i32>(_wgslsmith_mod_i32(8152i, 87813i), -2147483647i, u_input.a.x));
    var_0 = vec3<i32>(var_0.x, u_input.a.x, var_0.x);
    let var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(-16788i, -(i32(-1i) * -3100i), -20727i), vec3<i32>(1i, func_4(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, 1558f))), Struct_2(~4294967295u, true, _wgslsmith_f_op_f32(abs(1202f)), Struct_1(vec2<bool>(true, false), vec3<u32>(4078u, 4294967295u, 0u), vec3<u32>(4294967295u, 17540u, 28274u), vec4<i32>(u_input.a.x, var_0.x, -6993i, var_0.x), true), firstLeadingBit(1u)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 1u, 1u), vec3<u32>(20017u, 50028u, 0u), select(vec4<i32>(u_input.b.x, u_input.a.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -1i, -1i, 49083i), true), true)), ~max(var_0.x, ~var_0.x)));
    let var_2 = Struct_2(~firstLeadingBit(abs(max(50597u, 19976u))), any(select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(false, any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1512f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1275f * -1000f) - _wgslsmith_f_op_f32(sign(980f))))), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(true, false, false)), true), vec3<u32>(_wgslsmith_div_u32(1u, 40589u >> (0u % 32u)), 67486u, ~(~64876u)), ~reverseBits(~vec3<u32>(0u, 50166u, 4294967295u)), ~min(vec4<i32>(0i, var_1.x, 39151i, var_0.x), vec4<i32>(var_1.x, u_input.a.x, var_1.x, 2147483647i)), !select(u_input.a.x <= var_0.x, true, true)), select(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7151u, 38827u, 4294967295u), vec4<u32>(38317u, 0u, 70758u, 41266u))), ~max(7498u, 87054u), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_3 = Struct_3(Struct_2(firstLeadingBit(var_2.e), var_2.b, _wgslsmith_f_op_f32(-var_2.c), Struct_1(select(!var_2.d.a, !var_2.d.a, select(var_2.d.a, var_2.d.a, vec2<bool>(true, false))), vec3<u32>(abs(80940u), max(var_2.a, 1u), ~57604u), vec3<u32>(_wgslsmith_sub_u32(var_2.a, var_2.a), 16603u, var_2.e), abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -15524i, -887i, u_input.b.x), var_2.d.d)), !(2147483647i >= var_1.x)), ~(~1u | _wgslsmith_dot_vec2_u32(var_2.d.c.yx, vec2<u32>(var_2.d.c.x, 4294967295u)))), var_2, ~vec4<u32>(~42862u, 1u, min(23742u, 1u), var_2.d.c.x));
    return Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(12530u, var_2.d.c.x)), var_2.d.b.xx), !var_3.b.d.e, _wgslsmith_f_op_f32(select(var_3.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f)), all(vec3<bool>(false, var_3.b.d.a.x, true)))), Struct_1(!select(vec2<bool>(var_2.b, false), var_3.a.d.a, var_3.b.d.a), vec3<u32>(_wgslsmith_dot_vec4_u32(var_3.c, var_3.c), ~28134u, ~28042u), _wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 30971u, 17446u), var_3.b.d.c), vec3<u32>(var_2.e, var_2.a, var_2.a)), vec4<i32>(firstLeadingBit(var_3.a.d.d.x), 0i, -22576i, countOneBits(var_2.d.d.x)), true), var_3.a.d.c.x), var_2, vec4<u32>(4561u, _wgslsmith_dot_vec4_u32(vec4<u32>(100341u, var_3.a.a | 1u, var_2.d.c.x, 1u), ~vec4<u32>(var_3.a.e, var_3.a.d.b.x, 4294967295u, var_2.d.c.x)), var_2.d.b.x, ~var_3.a.d.c.x));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = -(~(-_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(1i, 1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.c, arg_0.a.c, arg_0.b.c, arg_0.b.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, arg_0.a.c, arg_0.b.c, arg_0.b.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(874f, arg_0.b.c, 318f, arg_0.b.c), vec4<f32>(arg_0.a.c, 769f, 223f, -720f), true)) * _wgslsmith_div_vec4_f32(vec4<f32>(-401f, -700f, -1200f, 1000f), vec4<f32>(-848f, -2016f, arg_0.b.c, -356f))), vec4<bool>(false, all(vec2<bool>(false, true)), all(vec3<bool>(false, arg_0.b.b, arg_0.b.d.e)), func_3(vec2<f32>(arg_0.a.c, arg_0.a.c))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-397f * arg_0.b.c), _wgslsmith_f_op_f32(select(1418f, 152f, arg_0.a.b)), _wgslsmith_f_op_f32(arg_0.b.c - -1072f), _wgslsmith_f_op_f32(arg_0.b.c - arg_0.b.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c, arg_0.a.c, -1315f, -132f) * vec4<f32>(arg_0.b.c, 1000f, arg_0.a.c, -948f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, arg_0.a.c, 1000f, _wgslsmith_div_f32(arg_0.b.c, arg_0.b.c)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.c, arg_0.b.c, arg_0.a.c, -1622f)))), arg_0.a.b)));
    var_0 = -arg_0.b.d.d.x;
    let var_2 = countOneBits(-1i);
    return arg_0.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(func_5(func_2()), func_5(Struct_3(Struct_2(~arg_1.x, false == arg_0.x, _wgslsmith_f_op_f32(-1188f - 1852f), func_2().a.d, select(arg_1.x, arg_1.x, arg_0.x)), Struct_2(~arg_1.x, arg_0.x, 327f, func_5(Struct_3(Struct_2(arg_1.x, false, -430f, Struct_1(vec2<bool>(false, false), vec3<u32>(27727u, 43935u, 1u), arg_1, vec4<i32>(-1i, u_input.a.x, 12272i, u_input.b.x), arg_0.x), 55017u), Struct_2(0u, arg_0.x, 1000f, Struct_1(arg_0, vec3<u32>(arg_1.x, 540u, 0u), vec3<u32>(arg_1.x, arg_1.x, 1u), vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), arg_0.x), arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 1u, 62409u))).d, func_5(Struct_3(Struct_2(arg_1.x, arg_0.x, -303f, Struct_1(arg_0, arg_1, vec3<u32>(arg_1.x, 54899u, arg_1.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.b.x), false), 70284u), Struct_2(31303u, true, 513f, Struct_1(vec2<bool>(true, arg_0.x), arg_1, vec3<u32>(31883u, arg_1.x, arg_1.x), vec4<i32>(u_input.a.x, u_input.a.x, 36809i, u_input.b.x), false), arg_1.x), vec4<u32>(17902u, 4294967295u, 54595u, 60898u))).e), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(58450u, arg_1.x, 0u, arg_1.x), vec4<u32>(0u, 54628u, arg_1.x, arg_1.x), vec4<u32>(1u, 4294967295u, arg_1.x, arg_1.x)))), vec4<u32>(arg_1.x, 77207u, abs(_wgslsmith_clamp_u32(44571u, 1u, arg_1.x) << (arg_1.x % 32u)), arg_1.x | firstLeadingBit(arg_1.x)));
    var var_1 = countOneBits(var_0.b.d.d.zxw);
    let var_2 = var_0.b.d;
    let var_3 = Struct_3(var_0.b, var_0.a, ~func_2().c);
    let var_4 = ~(~(~var_2.b.yz));
    return var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(firstLeadingBit(1u), true, -1164f, Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 1u, 1u), firstLeadingBit(~vec3<u32>(4294967295u, 1u, 15609u)), ~countOneBits(vec4<i32>(7037i, u_input.b.x, -2147483647i, -41339i)), true), countOneBits(1u)), Struct_2(~47117u, !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-1125f + 321f), func_1(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec3<u32>(1u, firstLeadingBit(1u), 4294967295u)), ~65948u), ~vec4<u32>(0u, max(max(16121u, 1u), 1u), ~7895u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(46489u, 46490u, 0u, 1u), vec4<u32>(63479u, 1u, 1u, 0u)) % 32u), ~1u));
    var_0 = func_2();
    var var_1 = vec3<bool>(false, !func_5(func_2()).b, var_0.a.d.e);
    let var_2 = Struct_3(func_2().b, func_2().a, (vec4<u32>(~var_0.b.d.c.x, 4294967295u, 0u, ~var_0.a.e) | _wgslsmith_clamp_vec4_u32(var_0.c, ~var_0.c, firstTrailingBit(var_0.c))) >> (var_0.c % vec4<u32>(32u)));
    var_0 = func_2();
    let var_3 = var_0.b.c;
    let var_4 = true;
    var_0 = func_2();
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(func_2().a.d.d.x, -var_2.b.d.d.x), u_input.a.x, 2147483647i, firstLeadingBit(firstTrailingBit(2147483647i))), var_2.b.d.d), vec3<u32>(~1u, func_5(func_2()).a, ~1u), var_2.c.wyz, _wgslsmith_clamp_i32(reverseBits(i32(-1i) * -31997i), var_2.a.d.d.x, _wgslsmith_clamp_i32(22172i, ~(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(~0i, var_0.a.d.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.c - var_0.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.c)))));
}

