struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-15522i, u_input.a, -2147483647i) & _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -22883i, 0i), vec3<i32>(15558i, 40174i, -43994i)), -vec3<i32>(28702i, 20044i, -24590i)), vec3<i32>(~select(u_input.a, -1i, true), min(1i, ~(-1454i)), reverseBits(-42238i))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(~(-40289i), 40273i)), abs(~u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0 | -1i, u_input.a, 0i, arg_0), vec4<i32>(u_input.a, -u_input.a << (~u_input.b.x % 32u), countOneBits(arg_0), 1i)));
    global0 = !(any(vec4<bool>(true, false, true, true)) | (2147483647i != var_0.x));
    global0 = true;
    let var_1 = 0u;
    var_0 = vec3<i32>(i32(-1i) * -661i, arg_0 | _wgslsmith_dot_vec2_i32(var_0.zz, ~min(vec2<i32>(-49000i, -1i), var_0.yy)), 73145i);
    return _wgslsmith_dot_vec3_u32(u_input.b.wyy, u_input.b.wyz);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, 517f, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, arg_3.x, -1264f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, 909f, -1652f, arg_3.x) + vec4<f32>(-947f, arg_3.x, 1467f, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-569f - arg_0.x), _wgslsmith_f_op_f32(-673f + arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1298f + 1993f) * 693f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(abs(1404f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_3.x))))));
    var var_1 = arg_2.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(arg_3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(319f + arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)))));
    var var_3 = !(!(!arg_2.a));
    var_2 = var_0.wyy;
    return 0u;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23392u, 0u, u_input.c, arg_1.b.x), ~vec4<u32>(0u, u_input.b.x, arg_1.b.x, 4294967295u)), ~func_2(vec3<f32>(-1000f, 687f, -714f), arg_1, arg_1, vec3<f32>(-824f, 917f, 483f)), arg_1.b.x) < ~reverseBits(_wgslsmith_add_u32(4294967295u, arg_1.b.x)), abs(arg_1.b));
    global0 = false;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-296f + -1000f), _wgslsmith_f_op_f32(trunc(-1074f)))))));
    var var_3 = select(vec3<i32>(-41083i, firstTrailingBit(1i), min(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -7102i, u_input.a), ~vec3<i32>(-1568i, -7440i, 2147483647i)), reverseBits(~u_input.a))), -vec3<i32>(-1i, -1i, abs(u_input.a)), false);
    return ~(countOneBits(u_input.b) & firstTrailingBit((vec4<u32>(var_0.b.x, var_0.b.x, arg_1.b.x, 4294967295u) & vec4<u32>(0u, var_0.b.x, var_0.b.x, arg_0.x)) << (max(vec4<u32>(27131u, 18963u, var_0.b.x, var_0.b.x), var_0.b) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(false, 1u < ~firstTrailingBit(0u), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), firstTrailingBit(u_input.b));
    global0 = var_0.a;
    var var_1 = ~vec4<u32>(var_0.b.x, abs(func_1(u_input.a >> (var_0.b.x % 32u))), 2062u, 57400u);
    global0 = ~(-726i) <= _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a))), max(vec2<i32>(1i, u_input.a), min(vec2<i32>(-1i, -3393i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -7138i), vec2<i32>(u_input.a, u_input.a)))));
    global0 = var_0.a;
    let var_2 = var_0;
    var_1 = var_2.b;
    var_1 = func_3(select(vec4<u32>(func_1(55837i), u_input.b.x, ~var_1.x, select(0u, 12827u, var_0.a) & 4294967295u), vec4<u32>(69474u, firstTrailingBit(1u), abs(func_2(vec3<f32>(-1262f, -321f, 454f), Struct_1(true, u_input.b), var_0, vec3<f32>(188f, -303f, -1022f))), 5193u), false), var_2);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 9847i), vec4<i32>(-2147483647i, 22817i, u_input.a, u_input.a)) << (vec4<u32>(0u, u_input.c, var_3.b.x, var_1.x) % vec4<u32>(32u)))), 312f, max(max(countOneBits(vec4<i32>(u_input.a, 55351i, 32405i, u_input.a)), vec4<i32>(1i, u_input.a, -2147483647i, u_input.a) << (vec4<u32>(7773u, 62189u, var_1.x, 43959u) % vec4<u32>(32u))), max(vec4<i32>(2147483647i, -6393i, -26990i, -1i), vec4<i32>(-69360i, u_input.a, u_input.a, u_input.a)) ^ ~vec4<i32>(0i, 1i, -12276i, u_input.a)) | vec4<i32>(-5712i, u_input.a, u_input.a, -31208i), ~(13527u ^ var_0.b.x));
}

