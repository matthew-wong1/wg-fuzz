struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(i32(-2147483648), 2294i, 1i), vec3<i32>(29557i, -21601i, 0i), vec3<i32>(0i, 16597i, 27771i), vec3<i32>(-1i, -18595i, i32(-2147483648)), vec3<i32>(1i, -35427i, -28897i), vec3<i32>(-3430i, 43687i, 1i));

var<private> global1: array<vec3<f32>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-421f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f * -1174f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.b.x, arg_2.d.b.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, 440f)), _wgslsmith_f_op_f32(arg_2.b.a * arg_0.x), _wgslsmith_f_op_f32(195f * -230f), 1f))))));
    let var_1 = arg_2.a;
    let var_2 = arg_0.yz;
    var var_3 = reverseBits(~_wgslsmith_sub_vec4_i32(-u_input.c, u_input.c | u_input.c) ^ (firstTrailingBit(select(vec4<i32>(-1716i, arg_1.a, arg_1.a, arg_1.a), u_input.c, true)) << (~vec4<u32>(u_input.a, 28419u, 0u, u_input.a) % vec4<u32>(32u))));
    let var_4 = select(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), false), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), false & all(vec3<bool>(false, false, false))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), vec3<bool>(true || (_wgslsmith_add_u32(u_input.a, 4294967295u) != ~2420u), false | any(vec2<bool>(true, false)), !(!(arg_1.c.x >= arg_0.x))));
    return vec4<f32>(548f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.d.b.x, 211f))), -640f)))), -223f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_2.b.b.x)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_5(u_input.c.xx, !select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), vec4<bool>(true, true, true, true), u_input.a < ~u_input.a), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(877f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(2279f, -1328f, false)), _wgslsmith_f_op_f32(floor(826f)), _wgslsmith_f_op_f32(select(-1922f, 1034f, false)), 842f), _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(1f, 1f, 1f), Struct_2(u_input.e, Struct_1(-236f, vec4<f32>(-1489f, 897f, -400f, -677f)), vec2<f32>(-631f, 1398f), Struct_1(817f, vec4<f32>(215f, -932f, -238f, -332f))), Struct_2(7947i, Struct_1(-992f, vec4<f32>(-218f, -569f, 1073f, 375f)), vec2<f32>(-1000f, 1026f), Struct_1(-640f, vec4<f32>(-589f, 399f, 686f, -1000f)))))))));
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    let var_1 = 0i;
    global0 = array<vec3<i32>, 6>();
    return vec3<bool>(var_0.b.x, any(var_0.b.zyy), select(false, true | (_wgslsmith_f_op_f32(trunc(-1983f)) == _wgslsmith_div_f32(-2170f, var_0.c.b.x)), true));
}

fn func_1() -> Struct_1 {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), func_2(), !any(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-302f)) + -2196f)), -1000f));
    global0 = array<vec3<i32>, 6>();
    var var_2 = Struct_4(vec3<u32>(~select(firstTrailingBit(u_input.a), firstLeadingBit(u_input.a), false), 41996u, u_input.a), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(726f, -1062f)))) - vec2<f32>(_wgslsmith_f_op_f32(-965f + 853f), _wgslsmith_f_op_f32(sign(var_1.x)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2858f, var_1.x, var_1.x, var_1.x))), min(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(9643u, u_input.a))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9113u, u_input.a, 0u, u_input.a), vec4<u32>(49534u, 4294967295u, 0u, 1u)), _wgslsmith_div_u32(0u, 8739u)))));
    let var_3 = var_2.b.b;
    return Struct_1(_wgslsmith_div_f32(786f, 108f), var_2.b.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    global0 = array<vec3<i32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_1 = ~vec3<i32>(-(_wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.zw) ^ _wgslsmith_sub_i32(u_input.e, -13282i)), _wgslsmith_dot_vec4_i32(max(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -68655i), vec4<i32>(0i, u_input.c.x, u_input.e, 5469i))), u_input.c), 0i);
    global1 = array<vec3<f32>, 18>();
    global0 = array<vec3<i32>, 6>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 6>();
    var var_0 = false;
    var var_1 = u_input.a;
    global1 = array<vec3<f32>, 18>();
    var var_2 = vec4<i32>(firstTrailingBit(~(-28830i)), u_input.b | -1i, (-2147483647i >> (~_wgslsmith_clamp_u32(u_input.a, 13981u, u_input.a) % 32u)) ^ -2147483647i, _wgslsmith_mult_i32(u_input.e, max(-1i << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-10340i, 741i, u_input.c.x, -48456i), u_input.c))) << (_wgslsmith_mod_u32(0u & (0u | u_input.a), ~u_input.a) % 32u));
    var var_3 = min(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(var_2.x, 50340i), func_4(func_1(), _wgslsmith_add_u32(1u, 1u), vec4<bool>(true, true, true, true)), u_input.d, -26187i), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b, 27377i, -13845i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -31831i, -2147483647i, var_2.x), u_input.c)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-7231i, var_2.x, 7729i, u_input.b) ^ vec4<i32>(2147483647i, u_input.d, u_input.b, -2147483647i), abs(u_input.c))));
    var var_4 = 188f;
    let var_5 = vec2<u32>(91110u, _wgslsmith_sub_u32(1u, 0u >> (_wgslsmith_mod_u32(43843u, u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-954f)), _wgslsmith_f_op_f32(1059f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1267f, 351f), -127f))))), -1109f, 66496u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-900f - 882f) * 1725f), _wgslsmith_f_op_f32(f32(-1f) * -844f))), ~(global0[_wgslsmith_index_u32(min(3125u, _wgslsmith_sub_u32(var_5.x, 0u)), 6u)] ^ max(vec3<i32>(u_input.c.x, 2147483647i, var_2.x), abs(var_2.wyw))));
}

