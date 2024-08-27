struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<i32, 10> = array<i32, 10>(-34048i, 2456i, -47419i, 2147483647i, -15814i, -38231i, 1i, 1i, 7969i, -47637i);

var<private> global2: array<Struct_5, 10>;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(~((1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(33761u, 25646u, 54927u), vec3<u32>(1u, arg_0.a, arg_0.a))) << (arg_2 % 32u))), 10u)];
    var_0 = -(_wgslsmith_sub_i32(-19411i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, 1i, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(7840u, 10u)]), -vec4<i32>(16818i, -61382i, 1i, arg_3))) | 1003i);
    let var_1 = ~vec4<u32>(abs(1u), max(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), 1u), ~u_input.b.x, ~_wgslsmith_add_u32(1u, arg_2) >> (12577u % 32u));
    var var_2 = vec2<bool>(!(!(!all(vec2<bool>(true, true)))), true);
    global1 = array<i32, 10>();
    return arg_1.x;
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1385f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_sub_u32(1u, arg_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1406f, -170f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-698f, 291f) * vec2<f32>(284f, 962f))), arg_0.a, -abs(u_input.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1952f) - 311f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 111f, any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1630f, false))), var_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-878f, 1082f, 1006f, var_0))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(384f, var_0, -245f, 859f)))))), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1217f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1654f)), _wgslsmith_f_op_f32(abs(-1743f)), -513f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-224f, -1229f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(select(var_0, var_0, false))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, 1117f, 1510f))))));
    return vec4<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(-59237i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_0.a, 10u)], 2147483647i))), _wgslsmith_sub_i32(max(u_input.a.x, -1i), 0i) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(81419u, arg_0.a, 49387u, u_input.b.x)) % 32u), -1i), max(-abs(u_input.a.x), global1[_wgslsmith_index_u32(~(~firstLeadingBit(4294967295u)), 10u)]));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_4 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(~2147483647i, ~u_input.a.x)), select(-abs(vec2<i32>(42472i, 0i)), u_input.a.zz, vec2<bool>(true, arg_0 == 7576u))), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -761f), u_input.a.x);
    global2 = array<Struct_5, 10>();
    var var_2 = _wgslsmith_mult_u32(var_0, arg_0);
    var var_3 = select(_wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-13593i, var_1.a, 43559i, var_1.b.x) & vec4<i32>(2147483647i, -1i, -10430i, var_1.d), reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(18385u, 10u)], u_input.a.x, -2147483647i, -8392i))), select(func_2(Struct_3(var_0)), vec4<i32>(2147483647i, -1i, -2147483647i, -2147483647i), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), vec4<i32>(28578i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 1i), u_input.a), global1[_wgslsmith_index_u32(4294967295u | _wgslsmith_div_u32(var_0, 58538u), 10u)], u_input.a.x)), abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_1.a, 30303i)), select(vec2<i32>(var_1.a, var_1.b.x), vec2<i32>(-53204i, var_1.a) | var_1.b.zz, true))), true);
    return Struct_4(~var_1.b, -(~(~vec4<i32>(-12906i, var_1.a, var_1.a, u_input.a.x)) | -vec4<i32>(1i, -6826i, 1i, var_1.b.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1570f)), -299f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), -480f))), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(682f, arg_0), vec2<f32>(arg_0, arg_0)))), 8748u, arg_2)))));
    global3 = array<Struct_1, 10>();
    var var_1 = Struct_3(4294967295u);
    global1 = array<i32, 10>();
    var var_2 = func_1(~reverseBits(_wgslsmith_div_u32(31130u, 4294967295u & u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1000f))) * 471f));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-(~u_input.a >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 3605u, u_input.b.x)) % vec3<u32>(32u))), func_4(-681f, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 58724u, u_input.b.x, 92867u), ~vec4<u32>(u_input.b.x, 108108u, u_input.b.x, u_input.b.x)), -733f), global1[_wgslsmith_index_u32(4294967295u, 10u)]));
    var var_1 = Struct_5(Struct_4(var_0.b.wzw, abs(reverseBits(-vec4<i32>(global1[_wgslsmith_index_u32(9644u, 10u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x)))), global3[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u), vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), 1u, u_input.b.x, firstLeadingBit(u_input.b.x))), vec4<u32>(1u, 1u, ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 129087u)));
    var var_2 = global2[_wgslsmith_index_u32(10734u, 10u)];
    var var_3 = Struct_5(var_0, var_1.b, 4294967295u);
    var var_4 = select(!(!vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true && any(vec3<bool>(false, false, true)), !(var_0.a.x == u_input.a.x), false, true));
    let var_5 = Struct_1(var_1.a.a.x, -u_input.a, _wgslsmith_f_op_f32(step(709f, -1056f)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(var_3.a.b), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x, var_0.b.x), select(var_3.a.b, vec4<i32>(-4558i, var_0.b.x, var_1.a.a.x, 23379i), var_4.x))), ~1i));
    var_4 = select(select(!vec4<bool>(var_2.b.c >= 254f, false, true, var_5.d < 2147483647i), !(!(!vec4<bool>(false, var_4.x, var_4.x, false))), true), select(!vec4<bool>(var_4.x, any(vec4<bool>(false, false, var_4.x, var_4.x)), all(vec4<bool>(var_4.x, var_4.x, true, false)), var_4.x | var_4.x), !vec4<bool>(true != var_4.x, true, false, false), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, var_2.c), 35771u) != var_1.c), !(!all(!vec3<bool>(var_4.x, var_4.x, var_4.x))));
    let var_6 = vec3<f32>(var_3.b.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.c + 1492f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1172f, var_3.b.c)) - -264f))), var_3.b.c);
    global3 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_6, select(~func_1(1u, var_2.b.c).a.yx, ~func_2(global0[_wgslsmith_index_u32(~var_3.c, 20u)]).wy, !(u_input.b.x == 1135u)), _wgslsmith_sub_vec4_u32(~abs(reverseBits(vec4<u32>(0u, 0u, 1218u, 48172u))), abs(~select(vec4<u32>(4555u, 1u, var_1.c, 4294967295u), vec4<u32>(var_2.c, 1u, var_2.c, 14216u), vec4<bool>(var_4.x, var_4.x, true, true)))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), countOneBits(u_input.b), u_input.b), ~u_input.b), ~1u, ~u_input.b.x), ~u_input.b);
}

