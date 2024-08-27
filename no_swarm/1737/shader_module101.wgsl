struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(-42126i, vec2<i32>(i32(-2147483648), 18175i)), vec3<bool>(false, true, true), Struct_1(-58089i, vec2<i32>(2147483647i, -28266i)), Struct_1(i32(-2147483648), vec2<i32>(1i, -1i))), Struct_2(Struct_1(2147483647i, vec2<i32>(33600i, 17649i)), vec3<bool>(false, true, false), Struct_1(-5909i, vec2<i32>(i32(-2147483648), -1i)), Struct_1(-1i, vec2<i32>(-22634i, 6304i))), Struct_2(Struct_1(10036i, vec2<i32>(39921i, 6648i)), vec3<bool>(true, true, false), Struct_1(-17948i, vec2<i32>(-14187i, i32(-2147483648))), Struct_1(0i, vec2<i32>(-12882i, 1i))), Struct_2(Struct_1(-51467i, vec2<i32>(77473i, -1i)), vec3<bool>(true, false, false), Struct_1(23792i, vec2<i32>(-2731i, -5272i)), Struct_1(-28779i, vec2<i32>(0i, 1i))), Struct_2(Struct_1(-1i, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<bool>(false, false, false), Struct_1(-21187i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(31687i, vec2<i32>(2147483647i, 11083i))), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(2745i, 31251i)), vec3<bool>(false, true, true), Struct_1(-1i, vec2<i32>(0i, -45479i)), Struct_1(-41225i, vec2<i32>(0i, 1i))), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(24113i, i32(-2147483648))), vec3<bool>(false, false, false), Struct_1(-1i, vec2<i32>(12540i, 36947i)), Struct_1(1i, vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(-19536i, -7698i)), vec3<bool>(true, true, true), Struct_1(45717i, vec2<i32>(0i, -40297i)), Struct_1(i32(-2147483648), vec2<i32>(68411i, 2147483647i))), Struct_2(Struct_1(11934i, vec2<i32>(20219i, i32(-2147483648))), vec3<bool>(false, false, true), Struct_1(-8229i, vec2<i32>(0i, 16381i)), Struct_1(41234i, vec2<i32>(0i, 1i))), Struct_2(Struct_1(2147483647i, vec2<i32>(40519i, -1i)), vec3<bool>(false, true, false), Struct_1(19674i, vec2<i32>(i32(-2147483648), 1i)), Struct_1(31209i, vec2<i32>(-1i, 12467i))), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(2147483647i, -63948i)), vec3<bool>(true, true, false), Struct_1(-52164i, vec2<i32>(2147483647i, 40694i)), Struct_1(i32(-2147483648), vec2<i32>(19972i, -1i))), Struct_2(Struct_1(1i, vec2<i32>(0i, -3099i)), vec3<bool>(true, false, true), Struct_1(-1i, vec2<i32>(i32(-2147483648), 33514i)), Struct_1(-1i, vec2<i32>(0i, 15136i))), Struct_2(Struct_1(2727i, vec2<i32>(27168i, 6350i)), vec3<bool>(false, true, false), Struct_1(2147483647i, vec2<i32>(-1i, 18962i)), Struct_1(-59140i, vec2<i32>(36952i, -3529i))), Struct_2(Struct_1(-1i, vec2<i32>(2147483647i, -6903i)), vec3<bool>(false, false, true), Struct_1(1i, vec2<i32>(-47196i, 75678i)), Struct_1(45560i, vec2<i32>(2147483647i, -4962i))), Struct_2(Struct_1(-1i, vec2<i32>(12091i, 64421i)), vec3<bool>(false, false, false), Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(-9835i, vec2<i32>(-6858i, -1i))), Struct_2(Struct_1(-15233i, vec2<i32>(-1i, 37616i)), vec3<bool>(true, false, false), Struct_1(-14974i, vec2<i32>(25187i, 46769i)), Struct_1(-74267i, vec2<i32>(i32(-2147483648), -5721i))), Struct_2(Struct_1(1i, vec2<i32>(-321i, 2147483647i)), vec3<bool>(true, false, false), Struct_1(740i, vec2<i32>(-9583i, -1i)), Struct_1(-1i, vec2<i32>(-49700i, 7123i))), Struct_2(Struct_1(47298i, vec2<i32>(-12455i, i32(-2147483648))), vec3<bool>(false, true, false), Struct_1(25606i, vec2<i32>(i32(-2147483648), 48783i)), Struct_1(2147483647i, vec2<i32>(-13721i, -1i))));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<Struct_2, 18>();
    var var_0 = Struct_2(Struct_1(-39289i, -(~firstTrailingBit(vec2<i32>(arg_0, arg_0)))), vec3<bool>(global1.x, arg_0 == -arg_0, global1.x), Struct_1(arg_0, select(vec2<i32>(arg_0, 0i), -vec2<i32>(22601i, -1i), !select(vec2<bool>(false, false), vec2<bool>(true, true), true))), Struct_1(min(arg_0, arg_0), ~(~vec2<i32>(arg_0, arg_0))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-123f, -1423f)))))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(259f)), _wgslsmith_f_op_f32(step(851f, -1225f)))))))) - _wgslsmith_f_op_f32(1487f + _wgslsmith_f_op_f32(trunc(-1000f))));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<Struct_2, 18>();
    return vec3<f32>(-125f, _wgslsmith_f_op_f32(func_3(-1i)), _wgslsmith_f_op_f32(-255f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(floor(1154f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2, vec3<bool>(global1.x, any(vec4<bool>(true == global1.x, global1.x, arg_1.x > arg_1.x, -2147483647i != arg_2.b.x)), any(select(select(vec2<bool>(false, global1.x), vec2<bool>(true, global1.x), global1.x), !vec2<bool>(true, global1.x), vec2<bool>(global1.x, true)))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(6803i, arg_2.a), ~reverseBits(vec2<i32>(10903i, 2147483647i))), -arg_0.b), Struct_1(2147483647i, countOneBits(select(firstLeadingBit(arg_2.b), arg_0.b, vec2<bool>(global1.x, false)))));
    let var_1 = !var_0.b;
    var var_2 = arg_2;
    let var_3 = abs(~arg_0.b.x);
    return 1i;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(func_4(Struct_1(~33330i, vec2<i32>(_wgslsmith_sub_i32(0i, -1583i), 1i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1239f, 106f, -460f) - vec3<f32>(-428f, 1131f, -393f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(6928i, vec2<i32>(2147483647i, 2147483647i)))), !vec3<bool>(global1.x, true, true))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(7491i, 2147483647i, -1i))), vec2<i32>(firstLeadingBit(-4670i), 1i))), min(-abs(vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2836i, -20585i), vec2<i32>(2147483647i, -34883i)) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)), abs(-vec2<i32>(1i, 0i)))));
    let var_1 = Struct_1(_wgslsmith_mod_i32((i32(-1i) * -1i) << (select(u_input.a, u_input.a, any(vec4<bool>(true, global1.x, true, global1.x))) % 32u), 695i >> (~_wgslsmith_clamp_u32(0u, u_input.a, 31890u) % 32u)), ~reverseBits(vec2<i32>(abs(var_0.b.x), var_0.a)));
    let var_2 = u_input.b;
    let var_3 = false;
    global1 = select(select(vec2<bool>(global1.x, all(!vec3<bool>(false, global1.x, false))), !vec2<bool>(!var_3, global1.x | false), vec2<bool>(true, any(vec3<bool>(true, true, var_3)))), !(!vec2<bool>(!global1.x, var_3)), true);
    return Struct_2(Struct_1(-46244i, ~(-max(var_0.b, var_1.b))), !(!select(select(vec3<bool>(var_3, false, global1.x), vec3<bool>(var_3, true, true), false), select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, var_3, var_3)), true)), var_1, Struct_1(2147483647i, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, -12361i), abs(vec2<i32>(var_0.b.x, var_0.a) & var_0.b), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_1.b, var_1.b), vec2<i32>(65127i, var_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(1f, u_input.b, countOneBits(abs(~15640u)), ~min(1u, 33395u), ~(-9183i));
}

