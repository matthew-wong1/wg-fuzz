struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(206f, 115f, -1018f, -845f, -594f, -322f);

var<private> global1: i32 = -1921i;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = -16053i;
    var var_1 = Struct_5(u_input.b, arg_2.b.b.x, arg_2.a.b.x, vec2<u32>(1u, ~2205u));
    let var_2 = u_input.a.yz;
    var var_3 = firstLeadingBit(arg_3.b.b.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1591f)), global0[_wgslsmith_index_u32(var_1.d.x << (var_1.c % 32u), 6u)], !arg_3.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)])))), -1623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(236f)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_2.b.b.x, 6u)], -920f, false)), true)) + 1200f)));
    return arg_3.a.a;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_5(-(u_input.b >> (1u % 32u)), 0u, ~16261u, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, 65310u), 1u), ~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    var_0 = Struct_5(-u_input.a.x, ~(~35015u), var_0.b, vec2<u32>(var_0.b, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.c, var_0.b), reverseBits(vec3<u32>(1u, 2691u, var_0.d.x)))));
    let var_1 = min(var_0.c, 27772u);
    let var_2 = firstTrailingBit(vec2<i32>(countOneBits(var_0.a), -33154i));
    global1 = var_2.x;
    return Struct_2(Struct_1(select(func_3(firstTrailingBit(-2147483647i), true, Struct_4(Struct_1(arg_0, vec3<u32>(1u, 0u, var_1)), Struct_1(vec2<bool>(false, true), vec3<u32>(var_1, 1u, 81452u))), Struct_4(Struct_1(vec2<bool>(true, arg_0.x), vec3<u32>(var_0.d.x, var_0.d.x, var_1)), Struct_1(arg_0, vec3<u32>(var_0.c, 0u, 8160u)))), vec2<bool>(true, any(vec3<bool>(arg_0.x, false, false))), true), ~select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, var_1, var_0.b), vec3<u32>(80465u, 0u, 4294967295u)), select(vec3<u32>(31525u, var_0.c, 4294967295u), vec3<u32>(var_1, var_1, var_0.d.x), vec3<bool>(arg_0.x, arg_0.x, true)), u_input.b <= 2147483647i)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(7599u, 6u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(-514f + -1108f), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] - global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(220f + 1286f)))))) == global0[_wgslsmith_index_u32(~(58191u & select(~59557u, reverseBits(33592u), true)), 6u)];
    global0 = array<f32, 6>();
    let var_1 = ~(~abs(~countOneBits(vec3<u32>(1u, 4294967295u, 0u))));
    global0 = array<f32, 6>();
    let var_2 = func_2(vec2<bool>(!(!var_0), all(vec2<bool>(var_0, !var_0))));
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(arg_0.b.a, select(arg_0.b.b, arg_0.a.b, all(vec3<bool>(arg_1, false, arg_0.a.a.x))))), _wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(select(-vec3<i32>(-10511i, u_input.a.x, u_input.a.x), u_input.a, arg_0.b.a.x), vec3<i32>(-48222i, -1i, 1i))), any(!select(!vec4<bool>(arg_1, arg_1, true, arg_0.b.a.x), select(vec4<bool>(true, true, arg_0.b.a.x, arg_1), vec4<bool>(false, false, false, arg_1), vec4<bool>(false, arg_1, arg_0.b.a.x, arg_1)), vec4<bool>(true, false, arg_1, true))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~func_2(arg_0.a.a).a.b.x));
    var var_1 = ~_wgslsmith_add_vec3_u32(min(var_0.a.a.b, vec3<u32>(firstLeadingBit(0u), 80817u | arg_0.a.b.x, firstLeadingBit(1u))), ~abs(vec3<u32>(arg_2.d.x, 1u, var_0.e) | var_0.a.a.b));
    let var_2 = Struct_5(-1i, func_2(var_0.a.a.a).a.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(7948u, arg_2.d.x), var_0.a.a.b.x), vec2<u32>(~21671u, select(arg_0.a.b.x, 4294967295u, true))), vec2<u32>(countOneBits(_wgslsmith_mod_u32(arg_2.d.x, 83669u)), abs(_wgslsmith_div_u32(60325u, var_0.e)))), min(~vec2<u32>(~arg_0.b.b.x, func_2(vec2<bool>(arg_1, arg_1)).a.b.x), max((var_1.zx | vec2<u32>(1u, 88304u)) | arg_0.b.b.yz, ~(~arg_0.b.b.yz))));
    var var_3 = var_0.a;
    var var_4 = var_0;
    return 42995u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1114f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] + global0[_wgslsmith_index_u32(27629u, 6u)]))), global0[_wgslsmith_index_u32(0u, 6u)]));
    var var_1 = ~(~(~reverseBits(0u)));
    let var_2 = true;
    let var_3 = vec4<u32>(0u | (95898u ^ (28090u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(29453u, 118179u), vec2<u32>(73517u, 0u)))), 37792u, _wgslsmith_clamp_u32(56463u, 83965u, firstTrailingBit(0u) ^ 44343u), ~func_4(Struct_4(Struct_1(vec2<bool>(true, var_2), vec3<u32>(0u, 0u, 71030u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 1u))), func_1(), Struct_5(_wgslsmith_sub_i32(-60956i, u_input.a.x), ~0u, _wgslsmith_sub_u32(29376u, 5711u), max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9927u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 6u)])))));
    global1 = -(((_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -738i), vec4<i32>(u_input.b, u_input.a.x, -34019i, 0i)) ^ (u_input.a.x ^ u_input.b)) >> (0u % 32u)) >> (~var_3.x % 32u));
    global1 = abs(firstTrailingBit(countOneBits(~abs(-2147483647i))));
    var var_4 = Struct_4(Struct_1(vec2<bool>(true, true), var_3.xww & _wgslsmith_mod_vec3_u32(var_3.ywy, ~vec3<u32>(4294967295u, var_3.x, var_3.x))), func_2(select(!vec2<bool>(false, var_2), select(vec2<bool>(true, true), vec2<bool>(false, var_2), !var_2), func_3(2147483647i, true, Struct_4(Struct_1(vec2<bool>(var_2, false), vec3<u32>(var_3.x, 11456u, 19101u)), Struct_1(vec2<bool>(false, var_2), vec3<u32>(0u, 37120u, 62426u))), Struct_4(Struct_1(vec2<bool>(var_2, false), vec3<u32>(var_3.x, 1u, 739u)), Struct_1(vec2<bool>(var_2, var_2), var_3.ywz))).x)).a);
    var var_5 = vec2<u32>(~var_3.x, _wgslsmith_mult_u32(firstTrailingBit(abs(countOneBits(var_4.a.b.x))), ~func_2(vec2<bool>(false, false)).a.b.x));
    var var_6 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.x, ~(~var_3.x >> (~4294967295u % 32u))), _wgslsmith_mult_vec2_i32(abs(countOneBits(u_input.a.zy) | _wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.zy)), ~u_input.a.xx));
}

