struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(27579u, 0u, 0u), vec3<u32>(46400u, 0u, 4294967295u), vec3<u32>(1u, 64222u, 101008u), vec3<u32>(0u, 0u, 101783u), vec3<u32>(66123u, 22301u, 1u), vec3<u32>(0u, 16505u, 4294967295u), vec3<u32>(37215u, 1u, 56151u), vec3<u32>(1u, 13845u, 0u), vec3<u32>(70237u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 23096u, 29250u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 74600u), vec3<u32>(4294967295u, 10821u, 33464u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 1u, 17191u), vec3<u32>(1u, 34005u, 53665u), vec3<u32>(0u, 4294967295u, 112256u), vec3<u32>(1u, 0u, 738u), vec3<u32>(1601u, 122459u, 4294967295u));

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> vec2<u32> {
    var var_0 = -_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-9835i, -21614i, u_input.a), ~firstLeadingBit(vec3<i32>(10390i, 23863i, 0i))), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) << (~vec3<u32>(arg_2, arg_0, arg_0) % vec3<u32>(32u))));
    var var_1 = ~(~vec3<u32>(~arg_2, arg_2, max(~0u, 1u)));
    var var_2 = Struct_1(u_input.a);
    let var_3 = ~var_1.x;
    var var_4 = select(vec3<u32>(8758u, _wgslsmith_clamp_u32(4294967295u, 0u, firstTrailingBit(arg_0)), 1u), global0[_wgslsmith_index_u32(var_3, 20u)], false);
    return var_4.yy << (vec2<u32>(1u, max(_wgslsmith_sub_u32(5809u, var_3), 31317u >> (arg_0 % 32u)) >> (arg_0 % 32u)) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> bool {
    global1 = array<vec2<bool>, 13>();
    let var_0 = ~arg_0.d;
    global1 = array<vec2<bool>, 13>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-381f, arg_0.a)))), arg_0.b, firstLeadingBit(arg_0.c & abs(-vec4<i32>(u_input.a, -32843i, -35164i, u_input.a))), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(30141u, var_0), vec2<u32>(var_0, 4294967295u)) << (vec2<u32>(58232u, var_0) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(10332u, 1u), vec2<u32>(56755u, var_0)), -745f, 56429u), ~vec2<u32>(var_0, arg_0.d))));
    var var_2 = arg_0.c.yx;
    return true;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = ~(arg_0.x | 17217i);
    var var_1 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), !vec3<bool>(func_2(Struct_2(751f, Struct_1(1i), vec4<i32>(var_0, 1i, arg_0.x, arg_0.x), 1u)), true, true)), vec3<bool>(!any(vec2<bool>(true, true)), false, arg_0.x > (var_0 | 1i)), any(vec4<bool>(true, !(var_0 != var_0), false, all(vec4<bool>(false, true, true, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-123f, 853f), _wgslsmith_div_f32(-112f, 752f))), -278f)));
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_f32(-2441f, 525f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 581f) - vec2<f32>(var_2.x, -576f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1328f, var_2.x) - vec2<f32>(-818f, 1000f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1202f, -527f) - vec2<f32>(var_2.x, var_2.x)))), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(2615u, 1u, 1u | firstTrailingBit(1u)), 13u)]))));
    let var_3 = true;
    return Struct_2(_wgslsmith_f_op_f32(trunc(var_2.x)), Struct_1(u_input.a), select(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -15564i, -49422i, var_0), vec4<i32>(u_input.a, arg_0.x, -22478i, -2147483647i)), select(vec4<i32>(47700i, var_0, arg_0.x, -13498i), vec4<i32>(-1i, -14568i, var_0, -15312i), vec4<bool>(true, var_3, true, true))), min(vec4<i32>(4711i, var_0, u_input.a, u_input.a), vec4<i32>(-1i, -2145i, var_0, var_0)) & ~vec4<i32>(var_0, -20450i, u_input.a, -1990i)), ~(~vec4<i32>(-1i, var_0, -26771i, arg_0.x)) & -_wgslsmith_sub_vec4_i32(vec4<i32>(-51521i, arg_0.x, 0i, -2147483647i), vec4<i32>(6989i, -1i, -2147483647i, arg_0.x)), select(select(!vec4<bool>(var_3, false, var_1.x, true), select(vec4<bool>(false, false, var_3, false), vec4<bool>(false, true, var_3, false), false), all(vec3<bool>(var_1.x, var_1.x, var_3))), !vec4<bool>(true, var_3, true, false), !vec4<bool>(var_3, true, var_1.x, true))), ~1u);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1(select(arg_2.c.xx, -vec2<i32>(firstLeadingBit(arg_2.c.x), arg_2.c.x), true)).b;
    let var_1 = func_1(arg_2.c.zy ^ _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a, ~u_input.a), -arg_2.c.yw)).b;
    var var_2 = any(!(!vec4<bool>(arg_1 & false, arg_1, arg_0, false)));
    global1 = array<vec2<bool>, 13>();
    let var_3 = Struct_1(-_wgslsmith_mod_i32(-18207i, abs(reverseBits(arg_2.c.x))));
    return Struct_1(~(~_wgslsmith_mult_i32(u_input.a, var_1.a)) & -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 20>();
    global1 = array<vec2<bool>, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) + -528f)))), func_4(false, all(vec2<bool>(true, true)), func_1(reverseBits(vec2<i32>(u_input.a, -17997i)))), max(-reverseBits(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), -vec4<i32>(-20852i, u_input.a, 2147483647i, -6122i) << (~vec4<u32>(4294967295u, 49366u, 68013u, 4294967295u) % vec4<u32>(32u))), ~(firstTrailingBit(6418u << (0u % 32u)) ^ 0u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)) * func_1(var_0.c.yy).a))), Struct_1(-2901i), ~max(-var_0.c, max(var_0.c, var_0.c)) << (_wgslsmith_sub_vec4_u32((vec4<u32>(88767u, 41859u, var_0.d, 111832u) >> (vec4<u32>(var_0.d, 64071u, 11735u, var_0.d) % vec4<u32>(32u))) & (vec4<u32>(var_0.d, 1u, 48017u, var_0.d) ^ vec4<u32>(var_0.d, 0u, var_0.d, 54363u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(33845u, var_0.d, 4294967295u, var_0.d), vec4<u32>(1u, 60210u, var_0.d, 0u), vec4<u32>(var_0.d, 1u, var_0.d, var_0.d)))) % vec4<u32>(32u)), var_0.d);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1803f, var_0.a))))), Struct_1(~2147483647i), _wgslsmith_mod_vec4_i32(min(var_0.c, firstLeadingBit(var_0.c >> (vec4<u32>(22667u, var_1.d, 13445u, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(func_4(false, false, var_0).a, firstLeadingBit(var_0.b.a), var_0.b.a, var_1.b.a) & abs(vec4<i32>(var_1.b.a, 0i, 48371i, u_input.a))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), _wgslsmith_sub_vec2_u32(~vec2<u32>(15707u, var_0.d), select(vec2<u32>(var_0.d, var_0.d), vec2<u32>(var_1.d, var_1.d), vec2<bool>(true, false)))), min(vec2<u32>(~51332u, ~9594u), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(var_1.d, var_0.d)), vec2<u32>(0u, 4362u), ~vec2<u32>(0u, var_0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(~64407u, vec2<f32>(-611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a * var_1.a))) - -650f)), var_1.a);
}

