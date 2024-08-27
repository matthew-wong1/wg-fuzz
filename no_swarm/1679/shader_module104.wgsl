struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(2147483647i, 18652i), vec2<u32>(100378u, 12018u), vec2<bool>(false, true)), Struct_1(vec2<i32>(1i, -18250i), vec2<u32>(0u, 1u), vec2<bool>(false, false)), Struct_1(vec2<i32>(17291i, 0i), vec2<u32>(68957u, 17142u), vec2<bool>(true, false)), Struct_1(vec2<i32>(2619i, 0i), vec2<u32>(0u, 6408u), vec2<bool>(true, false)), Struct_1(vec2<i32>(-10809i, -1i), vec2<u32>(1u, 76009u), vec2<bool>(false, true)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<u32>(42334u, 9335u), vec2<bool>(false, true)), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(42322u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, 22339i), vec2<u32>(106151u, 1u), vec2<bool>(true, true)), Struct_1(vec2<i32>(-26915i, 71121i), vec2<u32>(4294967295u, 1u), vec2<bool>(false, false)), Struct_1(vec2<i32>(25193i, -56293i), vec2<u32>(21014u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec2<i32>(2147483647i, 7838i), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, -1954i), vec2<u32>(4294967295u, 23500u), vec2<bool>(true, false)), Struct_1(vec2<i32>(858i, 2147483647i), vec2<u32>(15093u, 1u), vec2<bool>(false, false)), Struct_1(vec2<i32>(-10789i, -1i), vec2<u32>(0u, 0u), vec2<bool>(false, false)), Struct_1(vec2<i32>(5300i, -23218i), vec2<u32>(1u, 2753u), vec2<bool>(true, false)), Struct_1(vec2<i32>(2887i, 0i), vec2<u32>(19367u, 31984u), vec2<bool>(false, false)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(25030u, 0u), vec2<bool>(false, false)), Struct_1(vec2<i32>(-40165i, 0i), vec2<u32>(11987u, 3267u), vec2<bool>(false, false)), Struct_1(vec2<i32>(49283i, 0i), vec2<u32>(1u, 26455u), vec2<bool>(false, false)), Struct_1(vec2<i32>(-1i, 0i), vec2<u32>(15156u, 0u), vec2<bool>(true, true)), Struct_1(vec2<i32>(-49447i, 18379i), vec2<u32>(18402u, 110884u), vec2<bool>(false, false)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec2<i32>(-28650i, -11607i), vec2<u32>(28871u, 1u), vec2<bool>(true, true)), Struct_1(vec2<i32>(-12208i, -44888i), vec2<u32>(26814u, 10494u), vec2<bool>(true, true)), Struct_1(vec2<i32>(10431i, i32(-2147483648)), vec2<u32>(18709u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec2<i32>(26648i, 33712i), vec2<u32>(1686u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(32659u, 5911u), vec2<bool>(true, false)), Struct_1(vec2<i32>(2147483647i, -1i), vec2<u32>(4294967295u, 25574u), vec2<bool>(false, true)), Struct_1(vec2<i32>(i32(-2147483648), 18275i), vec2<u32>(24180u, 1u), vec2<bool>(true, false)));

var<private> global2: i32 = 45871i;

var<private> global3: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> bool {
    global0 = arg_3.x;
    var var_0 = (i32(-1i) * -_wgslsmith_mod_i32(28669i, -arg_1)) & _wgslsmith_mod_i32(-27606i, u_input.a.x);
    var_0 = -6046i;
    global1 = array<Struct_1, 29>();
    let var_1 = global1[_wgslsmith_index_u32(~abs(~_wgslsmith_div_u32(reverseBits(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 3866u), vec2<u32>(1u, 26669u)))), 29u)];
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_0;
    global0 = var_0.a.x;
    let var_1 = Struct_1(vec2<i32>(firstLeadingBit(u_input.b), reverseBits(u_input.a.x)), ~(~arg_0.b), !select(arg_0.c, select(arg_0.c, vec2<bool>(false, false), !vec2<bool>(var_0.c.x, arg_1.x)), select(!var_0.c, select(arg_0.c, arg_0.c, var_0.c.x), vec2<bool>(arg_0.c.x, var_0.c.x))));
    global2 = _wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(-17981i, arg_0.a.x)) >> (_wgslsmith_mult_u32(max(~4294967295u | _wgslsmith_sub_u32(arg_0.b.x, var_0.b.x), 4294967295u), ~4294967295u) % 32u);
    return _wgslsmith_f_op_f32(f32(-1f) * -1301f);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_2;
    let var_1 = 21964i;
    global2 = countOneBits(_wgslsmith_mod_i32(~min(i32(-1i) * -1i, _wgslsmith_sub_i32(-7395i, arg_1)), var_1));
    global1 = array<Struct_1, 29>();
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a.zz, firstLeadingBit(u_input.a.wz));
    global1 = array<Struct_1, 29>();
    var var_1 = Struct_1(~arg_1.xx, vec2<u32>(u_input.c ^ 4294967295u, ~u_input.c), select(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), false)), select(select(vec2<bool>(arg_0, false), select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), true), !arg_0), vec2<bool>(func_2(u_input.b, u_input.b, vec4<bool>(false, arg_0, true, arg_0), arg_1.xw), arg_2 <= arg_2), false), arg_0));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -4685i), ~u_input.a.xx);
    global1 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, -179f, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(arg_1.x, 13134i), var_1.b, vec2<bool>(var_1.c.x, arg_0)), vec4<bool>(true, arg_0, var_1.c.x, var_1.c.x)))))), -2147483647i, Struct_1(u_input.a.zy, min(vec2<u32>(~var_1.b.x, _wgslsmith_clamp_u32(u_input.c, u_input.c, var_1.b.x)), firstTrailingBit(var_1.b)), select(var_1.c, !vec2<bool>(arg_0, arg_0), select(var_1.c, var_1.c, var_1.c))), Struct_1(u_input.a.xy, ~var_1.b ^ ~var_1.b, select(select(select(vec2<bool>(false, false), var_1.c, var_1.c.x), var_1.c, select(var_1.c, vec2<bool>(var_1.c.x, var_1.c.x), true)), vec2<bool>(false, true), vec2<bool>(func_2(0i, 2147483647i, vec4<bool>(var_1.c.x, true, true, arg_0), vec2<i32>(var_1.a.x, var_1.a.x)), !arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(380f * -141f)));
    let var_1 = u_input.a.ywz;
    var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_1(true, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(2711i, var_1.x, u_input.a.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f)))));
    let var_2 = !(-29673i > _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1, vec3<i32>(var_1.x, var_1.x, u_input.a.x)), ~u_input.a.zxz)));
    let var_3 = ~(~vec4<u32>(u_input.c | u_input.c, 56027u, ~u_input.c, _wgslsmith_div_u32(u_input.c, 4294967295u)) << (firstTrailingBit(vec4<u32>(abs(u_input.c), ~4294967295u, ~109335u, 1u)) % vec4<u32>(32u)));
    global3 = array<vec3<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), _wgslsmith_f_op_f32(f32(-1f) * -1001f));
}

