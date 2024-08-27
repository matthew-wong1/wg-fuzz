struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(1u), Struct_2(1u), Struct_2(65928u), Struct_2(4294967295u), Struct_2(0u), Struct_2(8963u), Struct_2(4294967295u), Struct_2(0u), Struct_2(1537u), Struct_2(49878u), Struct_2(9541u), Struct_2(1u), Struct_2(1u), Struct_2(55278u), Struct_2(0u), Struct_2(63112u), Struct_2(0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = ~(~arg_0);
    let var_2 = select(arg_0, arg_0, any(vec4<bool>(any(!vec3<bool>(true, var_0.a, true)), false, false, var_0.a)));
    var var_3 = _wgslsmith_add_u32(var_2.x, 3697u);
    return vec4<u32>(~1u, 9725u, ~60671u, u_input.d);
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c >> (~33629u % 32u), ~u_input.d), 17u)];
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, var_0.a), var_0.a) != 8926u, func_3(vec4<u32>(4294967295u, ~u_input.c, var_0.a, 17253u) & firstTrailingBit(~vec4<u32>(1u, var_0.a, var_0.a, 27834u)), Struct_4(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true)), u_input.a & vec3<i32>(-2147483647i, -1i, u_input.e)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, -1000f, 568f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, -545f, -1000f))))), _wgslsmith_mod_vec4_i32(~(vec4<i32>(-2147483647i, -2654i, -1i, u_input.e) & vec4<i32>(u_input.b.x, u_input.a.x, -44390i, u_input.a.x)), -vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.a.x) ^ reverseBits(vec4<i32>(u_input.e, 0i, 48792i, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, -1704f, 487f))), vec3<f32>(_wgslsmith_f_op_f32(floor(740f)), _wgslsmith_f_op_f32(trunc(-973f)), -1346f))), false);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), 3237f);
    return ~select(~firstTrailingBit(vec4<i32>(u_input.e, u_input.a.x, u_input.a.x, u_input.a.x)) ^ abs(vec4<i32>(-2147483647i, -86832i, u_input.b.x, -2147483647i)), max(abs(reverseBits(vec4<i32>(u_input.a.x, u_input.b.x, -2147483647i, u_input.a.x))), vec4<i32>(_wgslsmith_mult_i32(1i, 1i), u_input.b.x & 0i, 45251i, u_input.b.x >> (var_1.b.x % 32u))), any(!vec4<bool>(var_1.d, var_1.a, var_1.d, var_1.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -167f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1093f, -125f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-409f, -518f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, 338f))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-202f - arg_1), _wgslsmith_f_op_f32(max(-2122f, -912f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-135f, arg_1) + vec2<f32>(var_2.x, -881f)) - vec2<f32>(770f, -824f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, -1020f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(925f, var_2.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1471f, -1000f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, var_2.x))))))));
    return Struct_1(any(!vec3<bool>(all(vec4<bool>(false, true, arg_2.a, false)), any(vec4<bool>(arg_2.a, arg_2.a, false, true)), arg_2.a)), select((countOneBits(vec4<u32>(u_input.c, 4294967295u, u_input.d, u_input.c)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(92224u, u_input.d, 1u, u_input.c), vec4<u32>(0u, u_input.d, u_input.d, u_input.c)) % vec4<u32>(32u))) & vec4<u32>(select(10722u, u_input.d, true), func_3(vec4<u32>(1u, u_input.d, u_input.d, 4294967295u), Struct_4(arg_2.a, vec3<i32>(21422i, -2147483647i, 1i)), vec3<f32>(var_2.x, arg_1, 1355f), vec4<i32>(arg_0.x, -8149i, arg_2.b.x, -2147483647i)).x, 945u, 54382u), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, u_input.c, u_input.c, u_input.d), vec4<u32>(8091u, u_input.d, u_input.d, u_input.c)), !(!select(vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-var_2.x)), 1f)), true & arg_2.a);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_2, 17>();
    let var_0 = arg_0.b;
    global0 = array<Struct_2, 17>();
    let var_1 = true;
    var var_2 = arg_2.zz;
    return arg_0.b;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    return func_5(Struct_5(global0[_wgslsmith_index_u32(abs(1u), 17u)], func_4(func_2(), _wgslsmith_f_op_f32(-159f - _wgslsmith_div_f32(1385f, 1934f)), Struct_4(all(vec4<bool>(true, true, false, true)), vec3<i32>(-48209i, arg_1.x, -18722i)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, any(vec2<bool>(true, false))), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, any(vec3<bool>(false, true, false)), true), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), u_input.c >= 4294967295u), vec3<bool>(true, true, arg_2.a > 20866u), _wgslsmith_f_op_f32(trunc(-324f)) <= 490f)));
}

fn func_6(arg_0: Struct_1) -> Struct_4 {
    var var_0 = arg_0.c.x;
    let var_1 = u_input.a.x;
    var var_2 = arg_0.b;
    var_2 = vec4<u32>(u_input.d, u_input.c, func_1(firstLeadingBit(~reverseBits(u_input.e)), -(-vec3<i32>(var_1, 1i, 0i) & ~u_input.a), Struct_2(~arg_0.b.x)).b.x, var_2.x);
    let var_3 = global0[_wgslsmith_index_u32(var_2.x | _wgslsmith_div_u32((var_2.x & _wgslsmith_sub_u32(arg_0.b.x, u_input.d)) | var_2.x, ~min(0u, arg_0.b.x)), 17u)];
    return Struct_4(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f * arg_0.c.x) * _wgslsmith_f_op_f32(732f - arg_0.c.x)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(538f, arg_0.c.x))), ~(~u_input.a));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_4) -> Struct_3 {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_0 = !vec4<bool>(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -886f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1010f + 688f))), select(false, func_6(func_5(Struct_5(global0[_wgslsmith_index_u32(u_input.c, 17u)], Struct_1(false, vec4<u32>(0u, 39783u, u_input.c, u_input.d), vec3<f32>(2417f, -441f, -103f), arg_0.a)), vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(arg_1.a, arg_0.a, false))).a, arg_0.a), arg_0.a);
    var_0 = !select(select(vec4<bool>(arg_0.b.x >= arg_1.b.x, var_0.x, arg_0.a, arg_1.a), !vec4<bool>(arg_1.a, true, arg_1.a, false), !vec4<bool>(true, arg_0.a, var_0.x, false)), !select(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(true, false, false, var_0.x), false), select(vec4<bool>(true, var_0.x, arg_1.a, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true)), select(vec4<bool>(arg_0.a, true, true, false), vec4<bool>(arg_1.a, true, true, var_0.x), vec4<bool>(arg_0.a, false, arg_1.a, true))), vec4<bool>(arg_0.a, true, var_0.x, func_1(1i, vec3<i32>(2147483647i, arg_1.b.x, arg_1.b.x), Struct_2(u_input.d)).a));
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(min(func_1(abs(-36907i), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-34240i, u_input.e, -1670i), vec3<i32>(1i, 1i, -1i)), -arg_0.b.x), global0[_wgslsmith_index_u32(u_input.d, 17u)]).b.x, ~u_input.c), 17u)], Struct_1(arg_0.a, func_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, u_input.e), ~1i, -1i), vec3<i32>(u_input.e, 2147483647i, ~14259i), Struct_2(reverseBits(4935u))).b, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-476f, 325f)), -353f, all(vec2<bool>(arg_1.a, false)))), _wgslsmith_f_op_f32(max(-1571f, _wgslsmith_f_op_f32(f32(-1f) * -976f))), _wgslsmith_f_op_f32(f32(-1f) * -172f)), !(true & arg_1.a)));
    return Struct_3(~(~vec2<u32>(func_4(vec4<i32>(26923i, 2147483647i, 1i, arg_1.b.x), var_1.b.c.x, Struct_4(arg_0.a, u_input.a)).b.x, 0u)), 0i, vec2<i32>(15552i, -9347i), 24348i, vec2<u32>(~(~20624u), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, 10881u, var_1.b.b.x), ~var_1.b.b.x), (var_1.b.b.x << (var_1.a.a % 32u)) & _wgslsmith_clamp_u32(var_1.b.b.x, var_1.a.a, var_1.a.a))));
}

fn func_8(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: vec4<bool>) -> Struct_5 {
    var var_0 = -22790i;
    let var_1 = !vec3<bool>(!(!arg_1.b.a) | !func_6(Struct_1(false, arg_1.b.b, vec3<f32>(588f, arg_1.b.c.x, arg_1.b.c.x), arg_3.x)).a, false, false);
    var_0 = 38006i;
    global0 = array<Struct_2, 17>();
    var_0 = 21285i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 17u)];
    let var_1 = func_8(func_7(Struct_4(true, _wgslsmith_sub_vec3_i32(-vec3<i32>(0i, u_input.b.x, -37738i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 1i, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 0i)))), func_6(func_1(u_input.a.x, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.a.x), u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(41740u, 43833u), 17u)]))), Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(22416i, u_input.a, Struct_2(4294967295u)).b.x ^ _wgslsmith_mod_u32(0u, 4294967295u), var_0.a), 17u)], Struct_1(false, vec4<u32>(u_input.c, 18512u, 28942u << (var_0.a % 32u), func_7(Struct_4(false, vec3<i32>(1i, u_input.a.x, 0i)), Struct_4(true, vec3<i32>(u_input.e, u_input.b.x, u_input.b.x))).a.x), vec3<f32>(_wgslsmith_f_op_f32(2142f - -1019f), 1001f, 321f), !func_1(-4002i, u_input.a, Struct_2(25799u)).d)), func_5(Struct_5(global0[_wgslsmith_index_u32(func_5(Struct_5(global0[_wgslsmith_index_u32(var_0.a, 17u)], Struct_1(false, vec4<u32>(var_0.a, 4294967295u, u_input.d, var_0.a), vec3<f32>(-1311f, -2152f, 1000f), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)).b.x, 17u)], Struct_1(true, ~vec4<u32>(69540u, u_input.d, 82606u, 4294967295u), vec3<f32>(1589f, 167f, -1000f), true)), select(vec3<bool>(true, any(vec3<bool>(true, true, true)), false), vec3<bool>(true, false, any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(false, false)), false, true)).d, vec4<bool>(false, !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), true, false));
    let var_2 = ~vec3<i32>(0i, select(u_input.b.x, u_input.b.x, func_1(u_input.b.x, vec3<i32>(u_input.a.x, -1i, 41277i), var_1.a).d), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, -37808i), vec4<i32>(-1i, 2147483647i, u_input.e, 1i))) ^ u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-u_input.a, -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.e), min(vec3<i32>(var_2.x, 0i, 0i), vec3<i32>(u_input.a.x, 8925i, u_input.a.x))), func_2().xyx), var_1.b.c, _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, abs(-2147483647i), abs(2147483647i), var_2.x), vec4<i32>(u_input.e, 1i, ~(-2147483647i), u_input.a.x ^ 8858i) >> (vec4<u32>(0u, ~1u, 10640u, ~u_input.c) % vec4<u32>(32u))));
}

