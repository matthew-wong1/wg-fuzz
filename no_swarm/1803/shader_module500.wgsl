struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_2));
    var var_1 = arg_0.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-650f, 163f)) + 744f));
    let var_2 = arg_0.b.c.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(487f + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(sign(-1609f)))));
    return -6899i;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = arg_1;
    let var_1 = 54052u ^ _wgslsmith_mod_u32(max(abs(_wgslsmith_dot_vec2_u32(var_0.b.a, var_0.b.a)), 31102u), ~arg_0.d.b.a.x);
    let var_2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.a.x, arg_0.a.x))) >= -746f));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.a, arg_0.b.a, !vec2<bool>(arg_3.x, arg_3.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.b, _wgslsmith_f_op_vec2_f32(min(arg_0.a, vec2<f32>(-823f, arg_0.b.b.x)))))), vec2<f32>(-620f, arg_0.a.x), vec2<bool>(any(select(arg_0.d.b.b, arg_3, true)), arg_1.b.b.x)));
    var_0 = arg_0.d;
    return vec4<i32>(-23338i, u_input.b, firstTrailingBit(-(~(1i | arg_1.b.d.x))), ~(i32(-1i) * -_wgslsmith_add_i32(-1i, -49057i)));
}

fn func_2(arg_0: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_clamp_u32(arg_0.x, reverseBits(arg_0.x), 19457u), Struct_1(countOneBits(vec2<u32>(arg_0.x, arg_0.x)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.a, u_input.a, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true), true)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 14722i, var_0.a.b.d.x >> (1u % 32u), -11756i) & _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(58760i, var_0.a.b.d.x, -26510i, var_1.a.b.c.x), vec4<i32>(0i, u_input.c, 2147483647i, var_1.a.b.d.x), vec4<i32>(var_1.a.b.c.x, var_1.a.b.d.x, 37208i, u_input.c)), vec4<i32>(var_0.a.b.c.x, var_1.a.b.d.x, var_0.a.b.c.x, -13889i) & vec4<i32>(-2465i, var_1.a.b.c.x, var_0.a.b.c.x, u_input.b)), countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(32467i, 29689i, var_1.a.b.c.x, -3594i), vec4<i32>(25688i, 0i, 0i, 12117i)), min(vec4<i32>(21286i, var_0.a.b.d.x, 1i, 12633i), vec4<i32>(u_input.a.x, 2147483647i, -1i, -2147483647i))))) ^ abs(func_3(Struct_5(vec2<f32>(-516f, 1281f), Struct_4(vec2<f32>(1308f, 908f), vec2<f32>(-770f, -657f), var_1.a.c.x, vec3<i32>(0i, 2147483647i, var_0.a.b.d.x)), var_1.a.b, Struct_2(1u, Struct_1(var_0.a.b.a, var_0.a.b.b, u_input.a, var_0.a.b.c, var_1.a.c.x), vec2<bool>(var_0.a.b.b.x, true))), var_1.a, true, !var_0.a.b.b));
    var var_3 = _wgslsmith_div_f32(2309f, _wgslsmith_f_op_f32(1f - -339f));
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-280f, _wgslsmith_f_op_f32(-1f))))), 904f, var_0.a.b.e));
    return vec4<i32>(_wgslsmith_div_i32(u_input.c, abs(12425i)) | -17641i, ~(~(-1i | u_input.c)), u_input.c, var_1.a.b.d.x) ^ firstTrailingBit(vec4<i32>(-31018i, var_2.x, ~var_1.a.b.d.x, ~0i) | -_wgslsmith_mult_vec4_i32(var_2, vec4<i32>(var_2.x, var_2.x, 0i, -10142i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(-(~select(vec4<i32>(-1i, -6371i, u_input.c, u_input.a.x), vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.c), vec4<bool>(false, true, true, false))) >> (~vec4<u32>(~1u, _wgslsmith_clamp_u32(35587u, 8520u, 1u), 23704u, ~0u) % vec4<u32>(32u)), vec4<i32>(~u_input.a.x & _wgslsmith_sub_i32(u_input.a.x, 26112i), firstLeadingBit(-func_1(Struct_2(4294967295u, Struct_1(vec2<u32>(4294967295u, 1u), vec3<bool>(true, true, false), u_input.a, vec3<i32>(1i, u_input.b, u_input.c), false), vec2<bool>(false, true)), Struct_3(Struct_2(51421u, Struct_1(vec2<u32>(7319u, 71921u), vec3<bool>(true, false, false), u_input.a, u_input.a, true), vec2<bool>(true, true))), 291f, vec2<f32>(-1000f, 366f))), u_input.a.x, u_input.b), ~(~func_2(vec3<u32>(1u, 26052u, 1u))));
    var_0 = -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-233i, var_0.x, u_input.a.x, 10740i)), abs(vec4<i32>(35355i, var_0.x, u_input.c, 50449i))), firstLeadingBit(vec4<i32>(37845i, -5708i, u_input.b, u_input.c)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), -((vec4<i32>(var_0.x, var_0.x, u_input.b, -2147483647i) >> (vec4<u32>(0u, 9100u, 4294967295u, 1u) % vec4<u32>(32u))) & -vec4<i32>(2147483647i, var_0.x, 1i, -24101i)));
    let var_1 = Struct_1(reverseBits(vec2<u32>(firstLeadingBit(~1u), min(~32236u, ~26523u))), vec3<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_add_i32(u_input.c >> (1u % 32u), _wgslsmith_mod_i32(0i, -1i)) <= 1i, true), _wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 12676i << (0u % 32u), -2147483647i), u_input.a)), vec3<i32>(1i, u_input.c, u_input.a.x), true);
    var var_2 = 0u;
    var var_3 = _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(var_1.a.x, var_1.a.x, ~var_1.a.x)), ~abs(select(~vec3<u32>(var_1.a.x, 0u, var_1.a.x), ~vec3<u32>(1u, var_1.a.x, var_1.a.x), var_1.b)));
    var_0 = func_3(Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1942f, _wgslsmith_div_f32(-1124f, -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(max(113f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -743f))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(446f, 711f)), -832f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, 945f)) + vec2<f32>(1128f, 1809f)), all(vec4<bool>(var_1.b.x, false, true, false)), func_2(vec3<u32>(55360u, var_1.a.x, 23114u)).wwx), Struct_1(var_1.a | _wgslsmith_mod_vec2_u32(vec2<u32>(3893u, var_1.a.x), vec2<u32>(var_1.a.x, 1u)), select(var_1.b, var_1.b, var_1.b), max(select(var_0.ywz, vec3<i32>(var_0.x, 19857i, -2147483647i), false), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(var_0.x, var_1.d.x, var_1.c.x))), vec3<i32>(1i, var_0.x ^ -1i, u_input.b), any(var_1.b)), Struct_2(4294967295u, var_1, select(!vec2<bool>(var_1.b.x, true), vec2<bool>(var_1.e, true), true))), Struct_2(var_1.a.x, Struct_1(vec2<u32>(select(var_1.a.x, 1u, true), _wgslsmith_div_u32(var_1.a.x, 1u)), select(select(var_1.b, var_1.b, var_1.b), var_1.b, !var_1.b), vec3<i32>(abs(1i), u_input.b >> (4294967295u % 32u), -1i >> (var_1.a.x % 32u)), ~var_1.c, var_1.e), vec2<bool>(false, all(!vec4<bool>(var_1.b.x, false, var_1.e, false)))), any(vec4<bool>(select(var_1.b.x, var_1.b.x, var_1.e) == true, var_1.e | false, false, !(var_0.x > 38839i))), !select(select(vec3<bool>(var_1.b.x, var_1.e, var_1.e), vec3<bool>(true, var_1.b.x, true), u_input.b <= -45615i), !(!vec3<bool>(false, false, var_1.e)), var_1.b));
    let var_4 = vec2<bool>(abs(var_1.a.x & ~28330u) < ~var_1.a.x, any(!select(select(vec2<bool>(false, false), vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.zz), vec2<bool>(false, false), var_1.e)));
    var_2 = _wgslsmith_mult_u32(~1u, firstLeadingBit(var_1.a.x) | var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2527f, 689f), vec2<f32>(-1000f, -966f))), vec2<f32>(1f, 1f), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), vec4<i32>(~13707i, max(var_1.d.x, ~u_input.c), var_1.c.x, func_1(Struct_2(var_1.a.x, var_1, vec2<bool>(var_1.e, true)), Struct_3(Struct_2(var_1.a.x, var_1, var_4)), _wgslsmith_f_op_f32(513f + 1691f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, 619f)))) << (max(~(~vec4<u32>(var_1.a.x, 0u, var_1.a.x, 37065u)), vec4<u32>(1u, ~8524u, ~8064u, var_1.a.x)) % vec4<u32>(32u)));
}

