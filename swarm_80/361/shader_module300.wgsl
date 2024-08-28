struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<i32>(-1i, 0i), Struct_1(vec3<u32>(1u, 3993u, 13435u), vec2<bool>(true, true))), Struct_2(vec2<i32>(-48800i, 17627i), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec2<bool>(true, true))), Struct_2(vec2<i32>(-39718i, -45558i), Struct_1(vec3<u32>(27053u, 19994u, 1u), vec2<bool>(false, false))), Struct_2(vec2<i32>(55726i, 1i), Struct_1(vec3<u32>(0u, 1u, 1u), vec2<bool>(false, true))), Struct_2(vec2<i32>(-19361i, i32(-2147483648)), Struct_1(vec3<u32>(62019u, 44300u, 62665u), vec2<bool>(false, true))), Struct_2(vec2<i32>(0i, 53660i), Struct_1(vec3<u32>(12553u, 9611u, 1u), vec2<bool>(true, false))), Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(vec3<u32>(0u, 1u, 70346u), vec2<bool>(true, false))), Struct_2(vec2<i32>(0i, -29i), Struct_1(vec3<u32>(16211u, 4294967295u, 1u), vec2<bool>(false, true))), Struct_2(vec2<i32>(-10767i, 14647i), Struct_1(vec3<u32>(0u, 64824u, 1u), vec2<bool>(false, false))), Struct_2(vec2<i32>(-65149i, -1i), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<bool>(true, false))), Struct_2(vec2<i32>(0i, 0i), Struct_1(vec3<u32>(5505u, 0u, 4294967295u), vec2<bool>(false, false))), Struct_2(vec2<i32>(-39074i, 21214i), Struct_1(vec3<u32>(4294967295u, 18322u, 47023u), vec2<bool>(false, false))), Struct_2(vec2<i32>(-23055i, 2147483647i), Struct_1(vec3<u32>(79588u, 28565u, 0u), vec2<bool>(true, true))), Struct_2(vec2<i32>(14342i, -3095i), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(false, false))), Struct_2(vec2<i32>(50946i, 2147483647i), Struct_1(vec3<u32>(1u, 1u, 82365u), vec2<bool>(true, true))), Struct_2(vec2<i32>(1i, -15667i), Struct_1(vec3<u32>(49u, 4294967295u, 15461u), vec2<bool>(false, true))), Struct_2(vec2<i32>(1i, -13807i), Struct_1(vec3<u32>(1u, 7048u, 25429u), vec2<bool>(false, true))), Struct_2(vec2<i32>(-13874i, i32(-2147483648)), Struct_1(vec3<u32>(29328u, 3565u, 11242u), vec2<bool>(false, false))), Struct_2(vec2<i32>(0i, -7968i), Struct_1(vec3<u32>(93258u, 4294967295u, 0u), vec2<bool>(true, true))), Struct_2(vec2<i32>(2147483647i, -16897i), Struct_1(vec3<u32>(44374u, 0u, 0u), vec2<bool>(true, false))), Struct_2(vec2<i32>(0i, -1i), Struct_1(vec3<u32>(29151u, 1u, 0u), vec2<bool>(true, true))), Struct_2(vec2<i32>(50985i, -2144i), Struct_1(vec3<u32>(31757u, 1u, 29771u), vec2<bool>(false, false))), Struct_2(vec2<i32>(-37460i, 0i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<bool>(false, false))), Struct_2(vec2<i32>(62369i, -19687i), Struct_1(vec3<u32>(83383u, 4294967295u, 95426u), vec2<bool>(true, true))), Struct_2(vec2<i32>(59671i, 17474i), Struct_1(vec3<u32>(11097u, 1u, 0u), vec2<bool>(true, true))), Struct_2(vec2<i32>(5048i, i32(-2147483648)), Struct_1(vec3<u32>(8011u, 1u, 29743u), vec2<bool>(true, true))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = u_input.a.x;
    global0 = array<Struct_2, 26>();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(max(0u, 25510u), ~9142u), firstLeadingBit(vec2<u32>(abs(52873u), ~1u))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, 89313u))), 17617u), 13204u);
    var var_2 = Struct_4(~1u, vec3<f32>(-1006f, _wgslsmith_f_op_f32(select(482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) - _wgslsmith_f_op_f32(f32(-1f) * -536f)), true)), _wgslsmith_f_op_f32(abs(-139f))), global0[_wgslsmith_index_u32(var_1.x, 26u)]);
    var_1 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(7827u, 45087u), 1u) << (_wgslsmith_dot_vec3_u32(~var_2.c.b.a, var_2.c.b.a) % 32u), abs(0u));
    return var_2.c.b.b.x;
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_0 = 1i;
    let var_1 = Struct_1(reverseBits(reverseBits(vec3<u32>(~10617u, 1u, ~0u))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_3()), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), !(func_3() & true)));
    var var_2 = Struct_4(0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 548f, arg_0) - vec3<f32>(1196f, arg_0, -1000f)))))), Struct_2(reverseBits(u_input.a.yw), var_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.x))))));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_0 = Struct_1(vec3<u32>(1u, 1u, 1u), vec2<bool>(true, true));
    global0 = array<Struct_2, 26>();
    var var_1 = select(any(!select(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), !vec3<bool>(var_0.b.x, var_0.b.x, false), var_0.a.x != 0u)), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f * -1570f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(abs(-1184f)), abs(-1i)))));
    return var_0.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.zw, Struct_1(~firstLeadingBit(vec3<u32>(0u, 46439u, 4294967295u)), vec2<bool>(select(select(false, false, false), true, true), true)));
    global0 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~var_0.b.a.x, min(var_0.b.a.x, 0u)), ~var_0.b.a.x), func_1());
    var var_2 = vec3<f32>(1f, 1f, 1f);
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.zy | var_0.b.a.xx, var_1.x);
}

