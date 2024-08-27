struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(12062i, 1i, 2147483647i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-26890i, 40245i, 0i), vec3<i32>(2147483647i, -1i, 65855i), vec3<i32>(1228i, 0i, -1i), vec3<i32>(-17313i, 2147483647i, 0i), vec3<i32>(2147483647i, -14255i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-1i, 39390i, i32(-2147483648)), vec3<i32>(-8810i, 41261i, 2147483647i), vec3<i32>(6981i, -47i, 2147483647i), vec3<i32>(-36332i, 1i, 28729i), vec3<i32>(-1i, -1i, 26212i), vec3<i32>(i32(-2147483648), 39526i, 4356i), vec3<i32>(-11903i, 1i, i32(-2147483648)), vec3<i32>(1886i, -63688i, 18993i), vec3<i32>(15274i, 10946i, 2147483647i), vec3<i32>(i32(-2147483648), -9563i, -17172i), vec3<i32>(1i, -10481i, -1i), vec3<i32>(3365i, -2012i, 2147483647i), vec3<i32>(i32(-2147483648), 20976i, 10389i), vec3<i32>(2147483647i, 21605i, 2147483647i), vec3<i32>(-1i, -63260i, i32(-2147483648)), vec3<i32>(12630i, -29061i, 8406i), vec3<i32>(-7741i, -1i, i32(-2147483648)), vec3<i32>(20166i, -82078i, -29782i), vec3<i32>(-57850i, 2147483647i, 29051i), vec3<i32>(2147483647i, -12158i, 2147483647i));

var<private> global2: array<Struct_5, 14>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = vec2<u32>(~_wgslsmith_sub_u32(52030u | u_input.a.x, global0.x), 29969u);
    return false;
}

fn func_3() -> f32 {
    var var_0 = global0.x;
    let var_1 = !((-countOneBits(u_input.c.x) & _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(0i, 29494i, 4558i))) < -50067i);
    let var_2 = !(!var_1);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-519f, 277f, -2400f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, 838f, 456f))))));
    global0 = abs(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x))), abs(15918u), abs(~10416u & u_input.a.x)));
    return var_3.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(false, func_2());
    var var_1 = Struct_4(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1886f, 378f)))), 2402i, select(abs(~(vec4<u32>(11940u, global0.x, global0.x, global0.x) ^ vec4<u32>(4294967295u, 0u, 95763u, global0.x))), countOneBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, global0.x)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(18580u, 1u, 12013u, 50958u), ~vec4<u32>(1u, 12543u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), select(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !vec4<bool>(var_0.x, var_0.x, true, false), true & var_0.x)));
    var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-var_1.a))), abs(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-38956i, arg_0.x), countOneBits(firstTrailingBit(39746i)))), vec4<u32>(~35345u, var_1.c.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 1u), u_input.a.x) & ~(~0u), ~39730u));
    let var_2 = Struct_4(943f, firstTrailingBit(~11453i), firstLeadingBit(var_1.c));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -886f), var_2.a) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a))), -1000f)));
    return Struct_1(max(max(var_1.b, -60785i), _wgslsmith_mod_i32(reverseBits(-1i), firstTrailingBit(-var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - -703f)), -258f), _wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(56530u, 6517u)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = u_input.c.x;
    let var_2 = true;
    var var_3 = func_1(global1[_wgslsmith_index_u32(~u_input.a.x, 28u)]);
    let var_4 = Struct_1(_wgslsmith_mult_i32(-7110i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1068f, 993f)) * -190f))) + 2464f), _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xz, vec2<u32>(60074u, global0.x)), min(var_0.zy, vec2<u32>(global0.x, var_0.x))), (_wgslsmith_div_vec2_u32(u_input.a.zz, var_0.zx) | ~var_3.c) >> (~firstLeadingBit(vec2<u32>(var_3.c.x, 0u)) % vec2<u32>(32u))), vec3<i32>(~(~_wgslsmith_clamp_i32(14446i, -58642i, var_1)), abs(u_input.c.x), ~firstTrailingBit(u_input.c.x & var_1)));
    var_3 = Struct_1(firstLeadingBit(var_3.d.x) & reverseBits(_wgslsmith_add_i32(-33406i, -1i)), -251f, ~select(~(~vec2<u32>(var_3.c.x, 49929u)), select(vec2<u32>(4294967295u, 21137u), func_1(vec3<i32>(var_4.a, var_4.d.x, var_1)).c, var_2), !select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2))), var_4.d);
    var var_5 = vec3<u32>(_wgslsmith_mod_u32(6571u, ~select(var_4.c.x, ~1u, false)), _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_mult_u32(abs(var_3.c.x), u_input.a.x));
    var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(17169i, 17345i, u_input.b), vec3<i32>(15983i, u_input.b, 0i)), u_input.c.x, abs(~(-1i)))));
}

