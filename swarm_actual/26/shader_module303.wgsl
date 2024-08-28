struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -669f, 434f, 240f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1585f, -291f, -111f, 1368f), vec4<f32>(1975f, 1093f, 683f, 835f))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1102f + 884f), _wgslsmith_f_op_f32(floor(-1254f)), _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(f32(-1f) * -1248f))))));
    var var_2 = vec2<i32>(-u_input.b, _wgslsmith_mod_i32(i32(-1i) * -u_input.a, _wgslsmith_mod_i32(-(~u_input.a), firstLeadingBit(u_input.b ^ u_input.b))));
    var var_3 = u_input.b;
    var var_4 = false;
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = ~(~(~arg_2.d));
    let var_1 = min(54949i, ~(abs(abs(arg_3.x)) & 0i));
    let var_2 = ~_wgslsmith_clamp_vec3_i32(arg_3, -_wgslsmith_mod_vec3_i32(abs(vec3<i32>(5489i, 2147483647i, 53661i)), -vec3<i32>(-1i, -1i, arg_2.a.x)), _wgslsmith_mult_vec3_i32(~arg_3 ^ vec3<i32>(0i, var_1, u_input.b), ~vec3<i32>(arg_3.x, u_input.a, var_1) ^ vec3<i32>(52676i, var_1, 22119i)));
    global0 = !(!vec4<bool>(func_3(), true, all(arg_2.c) || true, global0.x));
    global0 = arg_2.c;
    return arg_1.xxw;
}

fn func_4(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(select(vec2<i32>(u_input.a, ~u_input.a), vec2<i32>(1i, 1i), global0.x), global0.zwx, vec4<bool>(1i != (-2147483647i & u_input.a), true, false, any(global0.zy) & true), ~vec2<u32>(firstLeadingBit(u_input.c), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(ceil(-1046f)))), all(vec2<bool>(true, global0.x)), Struct_1(~(vec2<i32>(u_input.a, u_input.b) | vec2<i32>(1i, 11657i)), global0.zzx, vec4<bool>(!func_3(), false, global0.x != any(global0.wzz), all(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, true, true), vec4<bool>(global0.x, global0.x, false, true)))), vec2<u32>(4294967295u, u_input.c) << (((vec2<u32>(24404u, u_input.c) | vec2<u32>(32566u, 75809u)) | (vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1909f - arg_0.x) - -937f)));
    global0 = select(!var_0.a.c, !vec4<bool>(all(select(vec2<bool>(true, global0.x), vec2<bool>(false, false), var_0.a.c.x)), true, var_0.a.c.x, !all(vec4<bool>(true, false, true, false))), var_0.a.c.x);
    var var_1 = 5066u & var_0.a.d.x;
    var var_2 = Struct_1(min(select(-reverseBits(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(-u_input.a, ~12883i), false), _wgslsmith_sub_vec2_i32(var_0.c.a, var_0.a.a)), vec3<bool>(var_0.c.b.x, true && any(var_0.c.c), !(!func_3())), !(!vec4<bool>(var_0.c.b.x, true, true, true)), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.d, var_0.a.d), select(vec2<u32>(var_0.c.d.x, var_0.a.d.x), var_0.c.d, global0.ww) & (var_0.a.d >> (var_0.c.d % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(min(arg_0.x, -482f)))))));
    return var_2.c;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.b, u_input.b, -1i), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.a, -83824i, 28758i)), firstLeadingBit(vec4<i32>(17272i, 2147483647i, -2096i, -2147483647i)), vec4<i32>(u_input.b, u_input.a, u_input.a, -1i) ^ vec4<i32>(u_input.b, -36544i, u_input.a, u_input.a))), ~(vec4<i32>(-43955i, 43536i, u_input.b, u_input.a) & ~vec4<i32>(-73159i, u_input.a, u_input.b, u_input.a))), vec4<i32>(max(u_input.b, abs(33650i)), 0i, -14256i, ~u_input.a));
    global0 = !select(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(622f, vec4<f32>(-1402f, 162f, -865f, 406f), Struct_1(vec2<i32>(var_0, u_input.b), vec3<bool>(true, global0.x, global0.x), vec4<bool>(false, global0.x, false, false), vec2<u32>(arg_0, 1u), -185f), vec3<i32>(21749i, 0i, u_input.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-653f, -228f, 432f) * vec3<f32>(-236f, 405f, 731f)))), select(select(!vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(true, global0.x | false, true, false), global0.x), !vec4<bool>(true, true, false, any(vec2<bool>(false, global0.x))));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-15134i, 1i, abs(_wgslsmith_add_i32(select(u_input.b, -2147483647i, global0.x), u_input.a)), _wgslsmith_add_i32(-74754i, _wgslsmith_sub_i32(var_0, i32(-1i) * -27143i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(_wgslsmith_add_i32(u_input.b, 43289i), 17346i), var_0 << (arg_0 % 32u), 0i, -21279i), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_0, 2341i) | vec4<i32>(var_0, u_input.a, var_0, var_0), ~vec4<i32>(u_input.a, -15273i, 2147483647i, -1i)), vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0, 9715i), vec3<i32>(-1i, var_0, 0i)), var_0, ~var_0)), ~vec4<i32>(max(var_0, -2124i), abs(24069i), -1i, var_0) | _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0, var_0, -40439i, -1i), ~vec4<i32>(u_input.a, u_input.b, -2147483647i, 1i)));
    let var_2 = ~max(var_0, countOneBits(1i));
    var var_3 = select(_wgslsmith_div_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c, 9220u), vec4<u32>(u_input.c, u_input.c, 95785u, 0u)), min(vec4<u32>(arg_0, u_input.c, 4294967295u, arg_0), vec4<u32>(4294967295u, 43001u, arg_0, 61859u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 6999u, u_input.c), vec4<u32>(arg_0, arg_0, 58566u, arg_0)))), ~((vec4<u32>(4294967295u, 24369u, 50669u, 4294967295u) & vec4<u32>(u_input.c, arg_0, 41590u, arg_0)) ^ select(vec4<u32>(1u, 0u, arg_0, u_input.c), vec4<u32>(u_input.c, 0u, 0u, 1u), vec4<bool>(false, global0.x, false, true))), select(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, -153f, -345f))), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, global0.x), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, true, false), global0.x)), vec4<bool>(global0.x, true, true, !global0.x))) | min(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(54388u, 21803u, 37374u, u_input.c), firstTrailingBit(vec4<u32>(u_input.c, arg_0, arg_0, u_input.c))) % vec4<u32>(32u)), vec4<u32>(~min(arg_0, 1u), abs(~0u), 4294967295u, arg_0));
    return (~(~_wgslsmith_mod_u32(u_input.c, 1u)) < ~0u) & any(global0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!global0.x, global0.x | true, true, true);
    global0 = !vec4<bool>(any(!vec4<bool>(false, true, global0.x, global0.x)), false, !(u_input.a <= 0i) & global0.x, any(vec2<bool>(true, true)));
    var var_0 = vec4<bool>(global0.x, !global0.x, !global0.x, global0.x);
    let var_1 = func_1(_wgslsmith_sub_u32(90230u, u_input.c));
    var var_2 = Struct_1(vec2<i32>(-38006i, 2147483647i), vec3<bool>(all(vec3<bool>(!var_0.x, global0.x, var_1)), all(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-222f, -256f, 1457f), vec3<f32>(-666f, 632f, 994f)))), false), vec4<bool>(_wgslsmith_sub_i32(u_input.b, -1i) >= -30281i, -1i >= _wgslsmith_sub_i32(u_input.b ^ u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -25218i), vec3<i32>(u_input.a, u_input.a, -1i))), func_1(u_input.c), true), vec2<u32>(~20357u, firstTrailingBit(u_input.c)), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.a, _wgslsmith_sub_i32(var_2.a.x, 1i), i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(-var_2.a >> (vec2<u32>(u_input.c, var_2.d.x) % vec2<u32>(32u)), firstLeadingBit(var_2.a))), var_2.d.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(select(var_2.e, _wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(-1000f + -680f)), var_0.x))), 37188u);
}

