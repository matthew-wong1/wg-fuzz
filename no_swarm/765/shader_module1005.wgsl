struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: u32;

var<private> global2: array<vec4<f32>, 25>;

var<private> global3: u32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_2(u_input.a.x, Struct_1(vec2<f32>(559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f + -718f))), u_input.b, !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(vec2<bool>(false, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-807f, -874f), vec2<f32>(-1087f, -1265f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(464f, -1112f) + vec2<f32>(847f, 718f)))), vec2<i32>(u_input.b.x, -_wgslsmith_clamp_i32(-1i, 10185i, -1i)), !vec2<bool>(false, all(vec2<bool>(true, true)))), _wgslsmith_mult_vec2_i32(u_input.b, abs(min(vec2<i32>(arg_0, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)))), -23832i);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x ^ 0i, firstTrailingBit(arg_0)), u_input.b, ~(-vec2<i32>(-2147483647i, 0i))), u_input.b), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -45399i, 1i) << (vec4<u32>(65011u, var_0.a, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 24469i, var_0.d.x, u_input.b.x), vec4<i32>(37532i, 0i, u_input.b.x, arg_0)))), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2713i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -2147483647i) << (u_input.a % vec2<u32>(32u)), vec2<i32>(19015i, 0i)))), u_input.b.x, reverseBits(~(i32(-1i) * -var_0.d.x)));
    var var_2 = vec3<bool>(var_0.c.c.x, true, any(vec3<bool>(true, true, true)));
    var_0 = Struct_2(~countOneBits(_wgslsmith_mult_u32(~31075u, 1u)), var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, -1188f) + var_0.b.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -12620i), select(-1i, u_input.b.x, true)), vec2<i32>(arg_0 >> (1u % 32u), 0i << (u_input.a.x % 32u))), vec2<bool>(var_0.c.c.x, all(vec4<bool>(var_0.c.c.x, var_0.b.c.x, var_0.c.c.x, false)))), vec2<i32>(_wgslsmith_mod_i32(var_1.x, 1i), u_input.b.x), min(-60392i & _wgslsmith_add_i32(-arg_0, u_input.b.x), -u_input.b.x));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 25u)];
    return max(_wgslsmith_div_u32(13749u, var_0.a), 4294967295u);
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global3 = _wgslsmith_add_u32(u_input.a.x, 1u);
    var var_0 = (_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -37156i, u_input.b.x, u_input.b.x, arg_0.b.x), vec4<i32>(-1i, 1i, u_input.b.x ^ -2147483647i, arg_0.b.x)) >> (~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 3668u, u_input.a.x))) % vec4<u32>(32u))) << (max(_wgslsmith_div_vec4_u32(~(~vec4<u32>(36823u, 4294967295u, 1u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(20397u), ~9460u, func_3(arg_0.b.x), abs(1u)), max(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 24914u, 9522u)), vec4<u32>(114266u, u_input.a.x, u_input.a.x, 27203u)))) % vec4<u32>(32u));
    global1 = u_input.a.x;
    var var_1 = Struct_2(u_input.a.x, arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(1214f, arg_0.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.a), select(!arg_0.c, vec2<bool>(arg_0.c.x, arg_0.c.x), !arg_0.c.x))), -countOneBits(vec2<i32>(-33522i, u_input.b.x) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), select(!arg_0.c, vec2<bool>(arg_0.c.x & arg_0.c.x, !arg_0.c.x), !vec2<bool>(false, arg_0.c.x))), vec2<i32>(-_wgslsmith_sub_i32(-arg_0.b.x, i32(-1i) * -38655i), _wgslsmith_add_i32(arg_0.b.x, -61638i)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 8101i, arg_0.b.x, var_0.x), vec4<i32>(47664i, var_0.x, var_0.x, u_input.b.x)) << (~u_input.a.x % 32u)));
    global0 = array<Struct_2, 3>();
    return !select(select(vec3<bool>(!var_1.c.c.x, var_1.b.c.x, any(vec3<bool>(true, var_1.c.c.x, false))), !select(vec3<bool>(true, var_1.c.c.x, var_1.c.c.x), vec3<bool>(true, var_1.c.c.x, var_1.b.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, var_1.b.c.x)), !vec3<bool>(false, false, var_1.c.c.x)), select(vec3<bool>(true, 79187u > var_1.a, all(vec4<bool>(false, arg_0.c.x, true, true))), vec3<bool>(arg_0.b.x > u_input.b.x, true, arg_0.a.x < arg_0.a.x), any(vec3<bool>(false, arg_0.c.x, false))), select(var_1.c.c.x, any(!vec2<bool>(arg_0.c.x, arg_0.c.x)), false));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    global3 = abs(_wgslsmith_mult_u32(10075u, u_input.a.x));
    var var_0 = func_2(arg_2);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~abs(vec3<u32>(0u, 1u, u_input.a.x) >> (vec3<u32>(4294967295u, u_input.a.x, 11279u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), 71846u), ~u_input.a.x), u_input.a.x, u_input.a.x)), 3u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(arg_1.zw)))), vec2<i32>(~arg_3.x, _wgslsmith_div_i32(-11771i, abs(-arg_3.x))), vec2<bool>(true, var_0.x));
    global2 = array<vec4<f32>, 25>();
    return !select(select(vec4<bool>(!var_2.c.x, var_1.a == 4294967295u, true, 1u != var_1.a), select(select(vec4<bool>(true, true, true, var_2.c.x), vec4<bool>(var_1.c.c.x, var_2.c.x, var_1.c.c.x, true), vec4<bool>(var_1.b.c.x, arg_2.c.x, false, true)), select(vec4<bool>(var_1.c.c.x, var_1.c.c.x, arg_2.c.x, false), vec4<bool>(var_1.c.c.x, false, var_2.c.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), arg_2.c.x), !select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_2.c.x, var_2.c.x, var_1.b.c.x, var_2.c.x), vec4<bool>(var_1.b.c.x, arg_2.c.x, arg_2.c.x, var_1.c.c.x))), !(!select(vec4<bool>(var_2.c.x, var_0.x, true, var_2.c.x), vec4<bool>(var_1.b.c.x, var_0.x, true, var_0.x), vec4<bool>(true, var_2.c.x, false, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-56132i);
    global0 = array<Struct_2, 3>();
    let var_1 = !(!select(vec4<bool>(false, false, true, true), !func_1(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(0u, 25u)], Struct_1(vec2<f32>(731f, -1436f), vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(true, false)), vec4<i32>(u_input.b.x, u_input.b.x, 2454i, u_input.b.x)), func_1(vec4<i32>(1i, 1i, 0i, -40578i), _wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), Struct_1(vec2<f32>(-1066f, 1000f), u_input.b, vec2<bool>(true, true)), vec4<i32>(u_input.b.x, u_input.b.x, 1320i, -26545i)).x));
    var var_2 = vec2<i32>(1245i, ~0i);
    var_0 = _wgslsmith_sub_i32(reverseBits(-1i), firstLeadingBit(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~abs(u_input.b.x) ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(-14100i, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1126f, 425f, -225f), vec3<f32>(-1456f, -683f, 942f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, -1036f, -275f)), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1063f, 206f, -575f))))));
}

