struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(58848i, vec3<f32>(1784f, -971f, -224f), vec3<i32>(1i, -1i, 1i), vec4<bool>(false, true, false, true), true), vec3<f32>(1383f, 1045f, 483f), Struct_1(-10209i, vec3<f32>(-414f, 927f, 1522f), vec3<i32>(0i, 0i, -35898i), vec4<bool>(true, false, false, true), true), vec2<i32>(-61397i, -32880i));

var<private> global1: Struct_5;

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(18908i, 17694i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(5441i, -1i), vec2<i32>(5496i, -87957i), vec2<i32>(-17282i, 2147483647i), vec2<i32>(27152i, 1i), vec2<i32>(-18172i, 19649i), vec2<i32>(13529i, -1i), vec2<i32>(-5181i, -1i), vec2<i32>(-20943i, 15950i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 45175i), vec2<i32>(-39323i, 48084i), vec2<i32>(-3010i, -22723i), vec2<i32>(2147483647i, -24569i), vec2<i32>(-23049i, 2147483647i), vec2<i32>(1i, i32(-2147483648)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.b.x), global0.a.b.x));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_5(!global0.c.d.x);
    let var_2 = 1u;
    let var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_f32(func_3());
    return Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, var_4, 1683f)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b.x)))), global0.a, -abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-33774i, u_input.b.x)) << (~u_input.c.xz % vec2<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> Struct_5 {
    let var_0 = func_2(arg_1.b, global0.a.d.wyy, vec4<f32>(global0.c.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f)), 2240f)), -972f, _wgslsmith_f_op_f32(-global0.b.x))).a.d.wyw;
    let var_1 = arg_1.c;
    var var_2 = Struct_4(arg_1.a, -1163f, arg_1.a.a.a.d, _wgslsmith_mult_vec2_u32(~vec2<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(28609u, arg_0, 43067u, u_input.a), vec4<u32>(arg_0, 39418u, u_input.c.x, arg_0))), ~firstLeadingBit(vec2<u32>(u_input.a, u_input.a))));
    let var_3 = var_2.d.x;
    global0 = var_2.a.a;
    return Struct_5(any(select(vec3<bool>(false && var_0.x, var_1.x, any(vec3<bool>(false, global1.a, true))), vec3<bool>(true, any(var_2.a.a.c.d.wxz), true), false)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> StorageBuffer {
    var var_0 = Struct_5(!any(!select(vec4<bool>(false, true, true, global1.a), global0.a.d, vec4<bool>(global1.a, global1.a, false, false))));
    let var_1 = 14425u;
    var_0 = func_4(~u_input.c.x, Struct_4(Struct_3(func_2(arg_0.x, !vec3<bool>(global0.c.e, true, global1.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c.b.x, arg_1, 629f, global0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-469f)), _wgslsmith_div_f32(473f, arg_3.x))), func_2(_wgslsmith_f_op_f32(max(-300f, _wgslsmith_f_op_f32(-arg_3.x))), !(!vec3<bool>(false, false, var_0.a)), vec4<f32>(_wgslsmith_f_op_f32(select(global0.b.x, -1000f, global0.a.e)), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(select(1153f, 1421f, false)), _wgslsmith_f_op_f32(func_3()))).a.d, vec2<u32>(~_wgslsmith_add_u32(u_input.c.x, 82885u), countOneBits(u_input.a))), var_0.a);
    global2 = array<vec2<i32>, 17>();
    global1 = Struct_5(!global1.a);
    return StorageBuffer(_wgslsmith_f_op_f32(-func_2(global0.a.b.x, select(vec3<bool>(false, var_0.a, true), func_2(arg_3.x, vec3<bool>(var_0.a, global1.a, var_0.a), arg_0).a.d.wzw, var_0.a || true), vec4<f32>(255f, -971f, _wgslsmith_f_op_f32(-674f - arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -648f))).b.x), 264f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_sub_u32(58535u, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 17>();
    let var_0 = Struct_5(true);
    var var_1 = _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b.x, -1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, 4960i), -u_input.b)) >> (u_input.c.yz % vec2<u32>(32u));
    let var_2 = ~_wgslsmith_mod_u32(~(~u_input.c.x << (~4294967295u % 32u)), u_input.a);
    let var_3 = global0.b.xz;
    global1 = Struct_5(true);
    global1 = Struct_5(!(!(!var_0.a)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, 1882f, -927f, -1997f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, 339f, 678f), vec4<f32>(-109f, -2409f, 1000f, var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1518f, global0.b.x, global0.a.b.x, 1821f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b.x, 356f, var_3.x, var_3.x))))), var_3.x, _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 0u) >> (vec4<u32>(u_input.a, 57729u, 4294967295u, var_2) % vec4<u32>(32u)))), ~vec4<u32>(~var_2, _wgslsmith_mult_u32(var_2, u_input.a), ~u_input.a, _wgslsmith_sub_u32(4294967295u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.b.yz))));
}

