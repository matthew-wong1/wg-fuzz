struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = (i32(-1i) * -(_wgslsmith_add_i32(arg_1.x, -21310i) << (~u_input.a.x % 32u))) ^ 0i;
    let var_1 = -981f;
    global0 = -2147483647i;
    let var_2 = !(true && !all(vec4<bool>(false, false, false, true)));
    global0 = arg_1.x;
    return Struct_1(arg_1.yxz, select(arg_1, _wgslsmith_add_vec4_i32(arg_1, arg_1), select(!(!vec4<bool>(var_2, var_2, var_2, var_2)), !select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, true, var_2, false), vec4<bool>(false, var_2, var_2, false)), ~arg_1.x != select(2147483647i, arg_1.x, false))), vec4<u32>(~u_input.c, 327u, u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, ~29938u), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> vec2<f32> {
    global0 = -_wgslsmith_dot_vec2_i32(abs(abs(arg_0.a.yx)) << (~(~vec2<u32>(25811u, 108260u)) % vec2<u32>(32u)), vec2<i32>(arg_2.x, arg_0.b.x));
    let var_0 = Struct_2(arg_1, arg_0);
    let var_1 = true;
    let var_2 = ~abs(_wgslsmith_mod_u32(max(arg_0.c.x, _wgslsmith_dot_vec2_u32(var_0.b.c.ww, vec2<u32>(u_input.c, var_0.b.c.x))), 0u));
    var var_3 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-273f, -326f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-752f)))), _wgslsmith_f_op_f32(f32(-1f) * -585f))), abs((vec4<i32>(-20226i, arg_1, var_0.a, -73151i) | arg_0.b) >> (vec4<u32>(u_input.c, 22930u, arg_0.c.x, var_0.b.c.x) % vec4<u32>(32u))) ^ -arg_0.b);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1868f), _wgslsmith_f_op_f32(373f + 193f))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1264f, 1000f)), _wgslsmith_f_op_f32(select(908f, -651f, true))), -378f))), -273f);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec2<bool> {
    global0 = 27143i;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1567f + -370f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1286f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0))))))));
    global0 = select(~50636i, -68426i, true);
    var var_1 = vec3<bool>(~1u > _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(min(u_input.a.x, 8535u), u_input.b.x)), any(vec3<bool>(true, true, true)), !(!(!any(vec4<bool>(true, false, false, false)))));
    return select(vec2<bool>(!(!all(vec3<bool>(true, var_1.x, var_1.x))), var_1.x || !(!var_1.x)), !var_1.yx, vec2<bool>(true, var_1.x || false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(456f, _wgslsmith_f_op_f32(f32(-1f) * -1315f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<i32>(-10695i, 61333i, -31474i), vec4<i32>(-7540i, -1i, 1i, -12299i), vec4<u32>(23794u, 61275u, u_input.c, u_input.c)), -44674i, vec2<i32>(1i, -9399i)))))), select(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) + _wgslsmith_f_op_f32(ceil(-792f))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 35763u, u_input.b.x, u_input.c), vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x)), select(1u, u_input.c, false), 0u, 35899u)), vec2<bool>(false, func_3(-1188f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c)).x), vec2<bool>(true, 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i), vec4<i32>(-11390i, 3851i, 2147483647i, -22491i))))));
    global0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(max(select(vec2<i32>(1i, -60626i), vec2<i32>(0i, -22762i), vec2<bool>(false, true)), ~vec2<i32>(42801i, 25407i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(27374i, -20354i), vec2<i32>(22941i, -11604i))), -vec2<i32>(-1i, 1i));
    let var_1 = var_0.x;
    global0 = 1i;
    let var_2 = ~min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-19723i, 36189i), vec2<i32>(2147483647i, -1i) >> (vec2<u32>(2689u, u_input.b.x) % vec2<u32>(32u)))) ^ 0i;
    global0 = _wgslsmith_div_i32(var_2, -19351i);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, _wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + var_1))), vec4<i32>(reverseBits(-3089i) >> ((4294967295u | u_input.c) % 32u), -2147483647i, ~var_2, -2147483647i), firstLeadingBit(~(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -38890i), vec2<i32>(1i, 1i)) << (~vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u)))), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2, var_2, 2147483647i, 0i), vec4<i32>(var_2, var_2, var_2, -25374i), false), vec4<i32>(var_2, var_2, 2147483647i, var_2) >> (vec4<u32>(1u, 59467u, u_input.c, 20032u) % vec4<u32>(32u))), 52024i, firstTrailingBit(2147483647i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_2, var_2, var_2, var_2), vec4<i32>(920i, 29792i, 0i, var_2)) & -vec4<i32>(var_2, var_2, 19790i, -1885i), _wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, 11476u, 66373u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 4294967295u, u_input.c), vec4<u32>(8105u, 0u, u_input.b.x, 1u)), vec4<bool>(true, false, true, true)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.c, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.c, u_input.a.x, 73403u, 1u)))));
    var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(var_1, var_3.a.x), -1103f, var_3.a.x), vec3<f32>(-751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_0.x))), _wgslsmith_mod_vec4_i32(var_3.d.b | vec4<i32>(var_3.b.x, var_2, -2147483647i, -2147483647i & var_2), vec4<i32>(var_2, 2147483647i, ~_wgslsmith_sub_i32(44586i, 2147483647i), 21464i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(var_2, -87i), i32(-1i) * -2147483647i), vec2<i32>(abs(var_2), -(~var_2))), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1(var_3.d, var_3.d.b.x, vec2<i32>(21762i, var_3.c.x))).x, _wgslsmith_f_op_vec3_f32(max(var_3.a, var_3.a)), ~vec3<u32>(func_2(-1273f, firstLeadingBit(var_3.b)).c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(13445u, 1u), u_input.b), ~(~var_3.d.c.x)));
}

