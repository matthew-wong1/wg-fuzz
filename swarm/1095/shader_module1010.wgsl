struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(18399u, 4294967295u, 40014u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = select(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)) >> (u_input.a % vec4<u32>(32u)), abs(firstLeadingBit(~vec4<i32>(14555i, 55579i, 1i, 14695i)))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-min(vec4<i32>(-38367i, 23646i, 2147483647i, -6240i), vec4<i32>(-32902i, 43248i, -1i, 0i)), vec4<i32>(~26090i, 1i, 62520i, 0i)), vec4<i32>(1i, -1762i, reverseBits(25900i), ~2147483647i) ^ min(vec4<i32>(0i, 0i, -1203i, 0i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i))), true);
    var var_1 = vec4<bool>(any(vec3<bool>(arg_1, any(vec2<bool>(false, arg_1)), _wgslsmith_f_op_f32(-2363f - 650f) > _wgslsmith_f_op_f32(ceil(1000f)))), !any(select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), vec2<bool>(true, true)), !vec2<bool>(arg_1, arg_1), vec2<bool>(true, true))), arg_1, true);
    var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-var_0.x, ~(i32(-1i) * -1i)), -_wgslsmith_dot_vec4_i32(min(vec4<i32>(-10531i, var_0.x, var_0.x, var_0.x), vec4<i32>(-2147483647i, var_0.x, var_0.x, 0i)), vec4<i32>(var_0.x, var_0.x, 31066i, 0i))), select(_wgslsmith_dot_vec2_i32(~(-var_0.xx), firstTrailingBit(vec2<i32>(406i, -1i))), var_0.x, arg_1), firstLeadingBit(firstTrailingBit(_wgslsmith_mult_i32(abs(0i), var_0.x))), _wgslsmith_clamp_i32(-(_wgslsmith_mult_i32(-1i, var_0.x) & ~17431i), -17088i, i32(-1i) * -var_0.x));
    var var_2 = select(var_1.wz, vec2<bool>(true, var_1.x), vec2<bool>(any(vec2<bool>(var_1.x, var_0.x != var_0.x)), var_1.x));
    var var_3 = Struct_2(~select(vec2<u32>(abs(global0.a.x), global0.a.x & arg_0.a.x), u_input.a.zz, any(vec4<bool>(false, false, arg_1, true))));
    return _wgslsmith_dot_vec3_u32(max(~vec3<u32>(arg_2.a.x, ~arg_0.a.x, _wgslsmith_sub_u32(global0.a.x, 21875u)), arg_0.a), global0.a);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(vec2<u32>(17302u << ((global0.a.x | (global0.a.x ^ 52396u)) % 32u), ~countOneBits(~52093u)));
    var var_2 = -1153f;
    var var_3 = ~vec4<u32>(~global0.a.x, var_1.a.x, var_1.a.x, func_3(Struct_1(u_input.a.xxz), true, Struct_2(global0.a.yy)) | 4294967295u);
    let var_4 = ~95450u;
    return ~(~(~min(~var_1.a.x, ~4294967295u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = u_input.a.ww;
    global0 = Struct_1(~(global0.a & vec3<u32>(33096u, global0.a.x, ~arg_0.x)));
    let var_1 = Struct_2(min((u_input.a.zx | var_0) << (arg_0.zz % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 1u)), vec2<u32>(global0.a.x, max(global0.a.x, 12904u)))));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(~30266i, ~(-40278i), 2147483647i >> (arg_2.a.x % 32u)), 0i, ~firstLeadingBit(-29711i), abs(select(-5898i, -23777i, true))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -11212i), 1i), max(~2147483647i, _wgslsmith_div_i32(-8405i, 12894i)), -(-2147483647i << (var_0.x % 32u)), 27219i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, 45815i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 23072i, -14664i, 1i)), -vec4<i32>(-23772i, 2147483647i, 24086i, 0i)), ~(-2147483647i << (global0.a.x % 32u)), _wgslsmith_clamp_i32(select(13044i, 0i, arg_3.x), 53877i >> (arg_2.a.x % 32u), 10153i)), select(select(select(vec4<i32>(-1i, 15371i, 12046i, 4371i), vec4<i32>(-2147483647i, -1i, -49926i, 0i), arg_3.x), -vec4<i32>(-33457i, 22448i, 0i, -27168i), !vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)), vec4<i32>(1i, 1i, 1i, 1i), true));
    let var_3 = var_1;
    return Struct_1(countOneBits(vec3<u32>(var_0.x, 4294967295u, ~(~global0.a.x))));
}

fn func_1() -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(global0.a.x, 1u, 0u)), _wgslsmith_div_vec3_u32(~vec3<u32>(89171u, 4294967295u, u_input.a.x), global0.a)));
    var var_0 = func_4(~firstTrailingBit(global0.a), _wgslsmith_mod_u32(1u, min(func_2(1i) >> (1u % 32u), _wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x))), Struct_2(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(global0.a.x, u_input.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), global0.a.xx))), vec2<bool>(select(2147483647i, -1i, true) > (-1i >> (~u_input.a.x % 32u)), true));
    var_0 = Struct_1(min(~max(~global0.a, _wgslsmith_mod_vec3_u32(global0.a, var_0.a)), ~vec3<u32>(var_0.a.x, u_input.a.x, 4294967295u ^ u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -909f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-714f))), _wgslsmith_f_op_f32(ceil(-3165f)), -800f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1927f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 815f)), -231f, _wgslsmith_f_op_f32(f32(-1f) * -1606f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1715f, 496f, -786f, -639f) - vec4<f32>(-424f, 1023f, -2585f, 666f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, 282f, 1353f, -166f)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1780f)), _wgslsmith_f_op_f32(482f + -503f), _wgslsmith_f_op_f32(sign(-1639f)), -1000f))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), !vec4<bool>(all(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, true, true))), true)));
    let var_2 = u_input.a.ww;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(258f + -516f), 1f)), var_1.x, _wgslsmith_f_op_f32(round(-300f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), -478f, var_1.x, -285f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, var_1.x, var_1.x, var_1.x)))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(arg_0.zw);
    var var_1 = func_4(_wgslsmith_clamp_vec3_u32(~(~min(global0.a, vec3<u32>(global0.a.x, u_input.a.x, arg_0.x))), select(~(~u_input.a.yzy), reverseBits(vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))), vec3<u32>(40960u, _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, global0.a.x), ~1u), _wgslsmith_add_u32(var_0.a.x & 4294967295u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)))), ~select(37075u, u_input.a.x, !all(vec2<bool>(false, false))), Struct_2(reverseBits(vec2<u32>(reverseBits(1u), 1u))), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false)), vec2<bool>(true, true), true), !vec2<bool>(global0.a.x >= 4294967295u, true)));
    var var_2 = Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19966u, var_1.a.x, arg_0.x), global0.a), firstLeadingBit(vec3<u32>(0u, global0.a.x, global0.a.x))), ~max(var_1.a, vec3<u32>(4294967295u, u_input.a.x, 0u))));
    let var_3 = func_3(Struct_1(var_1.a), all(vec3<bool>(!all(vec2<bool>(true, true)), false, true && select(false, true, true))), Struct_2(var_0.a));
    return func_4(global0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(var_1.a.x, var_1.a.x, arg_0.x), var_2.a), u_input.a.zwy | global0.a), _wgslsmith_mult_vec3_u32(abs(arg_0.zzw), vec3<u32>(27058u, global0.a.x, var_2.a.x))) | abs(abs(u_input.a.x)), Struct_2(vec2<u32>(_wgslsmith_mult_u32(var_3, func_2(1i)), 1u)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true || any(vec2<bool>(false, true))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-898f, -1379f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(655f, -161f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1186f - 932f), _wgslsmith_f_op_f32(730f - -573f)))));
    var var_1 = ~_wgslsmith_mod_vec3_u32(global0.a >> (select(vec3<u32>(12704u, 55611u, 1u), global0.a, true) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~u_input.a.xwz, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 5979u, 21607u), u_input.a.yxz))) & vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(55360u, min(1819u, 5959u) & u_input.a.x), 1u);
    global0 = func_5(max(~_wgslsmith_add_vec4_u32(min(u_input.a, vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, 1u)), ~u_input.a), ~u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-820f, 1793f, -1954f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-450f, var_0.x, 604f, 325f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1000f, -1137f, 682f)))))), vec4<i32>(15374i, _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(-28829i, 14020i)), firstLeadingBit(2147483647i) << (countOneBits(17159u) % 32u), firstLeadingBit(_wgslsmith_mod_i32(0i, 2147483647i))) & (vec4<i32>(1i, 1i, 1i << (1u % 32u), _wgslsmith_div_i32(1i, 2147483647i)) ^ select(vec4<i32>(1i, -1i, -2147483647i, 1i) << (vec4<u32>(u_input.a.x, 109043u, 0u, 90543u) % vec4<u32>(32u)), vec4<i32>(6354i, 3270i, 26611i, 9747i), all(vec3<bool>(false, false, false)))));
    var var_2 = var_0.x;
    let var_3 = (-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-36851i, -2147483647i), vec2<i32>(-16241i, 14540i)), -3741i) > -(~0i)) & (true && select(_wgslsmith_f_op_f32(-var_0.x) > var_0.x, all(vec3<bool>(true, true, true)), true & all(vec3<bool>(false, false, false))));
    var_2 = _wgslsmith_f_op_f32(1099f - 224f);
    let var_4 = reverseBits(vec2<i32>(45041i, max(37459i, -2147483647i)));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1568f, 1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, -1155f))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-493f, var_0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, 1579f)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_1()).x, -1105f)), 705f), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, -790f, ~(~(~u_input.a) & u_input.a));
}

