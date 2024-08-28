struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<i32>(2147483647i, -30260i, -37820i)), Struct_1(vec3<i32>(26450i, 10558i, 49095i)), Struct_1(vec3<i32>(-1i, 1i, 0i)), Struct_1(vec3<i32>(20665i, -9991i, 44784i)), Struct_1(vec3<i32>(-7780i, 34328i, -25120i)), Struct_1(vec3<i32>(-1i, 1i, 0i)), Struct_1(vec3<i32>(-1i, 47379i, i32(-2147483648))), Struct_1(vec3<i32>(14118i, -43497i, 1i)), Struct_1(vec3<i32>(-45073i, 1i, -1i)), Struct_1(vec3<i32>(21719i, 1i, -2965i)), Struct_1(vec3<i32>(i32(-2147483648), -19359i, -60594i)), Struct_1(vec3<i32>(-31525i, i32(-2147483648), 29556i)), Struct_1(vec3<i32>(-349i, -1i, 1i)), Struct_1(vec3<i32>(14473i, -31356i, 9935i)), Struct_1(vec3<i32>(-1i, 2147483647i, 28074i)), Struct_1(vec3<i32>(i32(-2147483648), -8282i, 18041i)), Struct_1(vec3<i32>(i32(-2147483648), 17539i, 31638i)), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(33473i, -39708i, -39797i)), Struct_1(vec3<i32>(-49145i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(i32(-2147483648), 61645i, i32(-2147483648))), Struct_1(vec3<i32>(-40178i, -9306i, 2615i)), Struct_1(vec3<i32>(0i, 12825i, -1i)), Struct_1(vec3<i32>(-23303i, -1i, 95813i)), Struct_1(vec3<i32>(38095i, 0i, -70915i)), Struct_1(vec3<i32>(57852i, 0i, -1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(abs(global0.x))), global0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -744f))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, -1003f), 167f)))));
    var var_2 = _wgslsmith_clamp_i32(-2147483647i, arg_1.c.a.x, _wgslsmith_clamp_i32(~(-24502i), var_0.a.c.a.x, _wgslsmith_mult_i32(var_0.a.a.x, _wgslsmith_sub_i32(firstLeadingBit(arg_1.a.x), ~(-1i)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1475f - arg_0.x))), 1607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -396f))))));
    var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-var_0.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -601i, 17210i, arg_1.c.a.x), vec4<i32>(1i, 12475i, 15547i, var_0.a.a.x)), firstTrailingBit(var_0.a.a.x)), -(var_0.a.c.a >> (vec3<u32>(arg_1.d.x, 1u, u_input.a) % vec3<u32>(32u))) & -max(var_0.a.c.a, var_0.a.c.a)), ~arg_1.a.x);
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x * -502f))), _wgslsmith_f_op_f32(func_3(vec4<f32>(1027f, global0.x, global0.x, -921f), Struct_2(vec3<i32>(arg_2, 8421i, -1i), vec2<f32>(global0.x, global0.x), Struct_1(vec3<i32>(9295i, 26169i, arg_2)), vec3<u32>(u_input.a, u_input.a, 1u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.x)))))), 612f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-global0.x)));
    let var_0 = select(abs(firstTrailingBit(arg_0.a)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.a, _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.a.x, arg_1.a.x, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0.a.x, arg_1.a.x), vec3<i32>(-1i, -40524i, arg_1.a.x)))), ~arg_0.a), true);
    global1 = array<Struct_1, 26>();
    let var_1 = u_input.a;
    var var_2 = vec4<bool>(all(vec3<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)), all(vec2<bool>(false, true)))), _wgslsmith_mod_u32(u_input.a, ~4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.a), vec4<u32>(1u, u_input.a, var_1, u_input.a)) % 32u)) == ~max(min(u_input.a, var_1), min(u_input.a, 8481u)), true, !select(true, any(vec4<bool>(true, true, true, true)), false));
    return false;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), func_2(global1[_wgslsmith_index_u32((u_input.a << (u_input.a % 32u)) | ~5264u, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a | 0u, 81941u, u_input.a), 26u)], firstLeadingBit(~(-11793i))));
    global1 = array<Struct_1, 26>();
    let var_1 = u_input.a;
    var_0 = !vec3<bool>(true, true, var_0.x);
    global1 = array<Struct_1, 26>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.a, 212u, u_input.a), vec4<u32>(var_1, var_1, u_input.a, ~(~12161u))), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global0 = vec4<f32>(-297f, _wgslsmith_f_op_f32(round(1f)), global0.x, _wgslsmith_f_op_f32(abs(global0.x)));
    var var_1 = Struct_3(Struct_2(vec3<i32>(_wgslsmith_clamp_i32(reverseBits(47032i), -31996i, 0i), abs(min(-1i, 0i)), -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2484f, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(102f, 1116f) * global0.wy)) + vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 537f)), Struct_1(-(vec3<i32>(33175i, 0i, 7985i) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u)))), select(vec3<u32>(~u_input.a, u_input.a & 36090u, reverseBits(1u)), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true))), true, func_1(global0.yz));
    var var_2 = Struct_1(-countOneBits(_wgslsmith_mult_vec3_i32(var_1.a.c.a, reverseBits(var_1.c.a))));
    var var_3 = Struct_4(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1073f, global0.x)), global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(-108f * -1000f), 1255f, _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(312f, -128f, -128f, global0.x), vec4<f32>(global0.x, 411f, -696f, global0.x))))));
    global1 = array<Struct_1, 26>();
    let var_4 = Struct_4(Struct_2(_wgslsmith_add_vec3_i32(select(-var_3.a.c.a, vec3<i32>(var_2.a.x, 2147483647i, var_2.a.x) << (vec3<u32>(var_3.a.d.x, var_3.a.d.x, var_1.a.d.x) % vec3<u32>(32u)), var_1.b), select(var_1.c.a, vec3<i32>(var_1.c.a.x, 0i, var_1.a.c.a.x), !var_1.b)), var_3.c.yx, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -31695i, 1i), var_2.a) | vec3<i32>(0i, var_2.a.x, -4563i)), var_3.a.d), var_3.a.b.x, _wgslsmith_f_op_vec4_f32(abs(var_3.c)));
    let var_5 = var_1.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a.x);
}

