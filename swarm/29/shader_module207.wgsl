struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-153f, 1423f), vec2<f32>(2418f, -597f), vec2<f32>(282f, -158f), vec2<f32>(-111f, 374f), vec2<f32>(258f, -631f), vec2<f32>(362f, -1086f), vec2<f32>(946f, -1051f), vec2<f32>(-1439f, -1145f), vec2<f32>(-301f, 116f), vec2<f32>(-785f, -766f), vec2<f32>(110f, -1046f), vec2<f32>(854f, -456f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = -1570f;
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, var_0, var_0) + vec3<f32>(331f, 1416f, 630f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(157f, -151f, 1630f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(790f, var_0, var_0) - vec3<f32>(559f, -1000f, var_0)))), true)) - vec3<f32>(var_0, var_0, var_0)));
    var var_2 = select(!(!vec2<bool>(all(vec2<bool>(false, false)), true)), select(vec2<bool>(false, true | any(vec3<bool>(false, false, true))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), 0u <= _wgslsmith_dot_vec4_u32(vec4<u32>(975u, 68193u, 1u, u_input.a), ~vec4<u32>(u_input.b, u_input.a, u_input.b, 11509u))), vec2<bool>(false, select(!select(false, false, true), all(vec3<bool>(false, false, true)) || all(vec2<bool>(false, true)), false)));
    return select(!(!(!vec4<bool>(false, true, var_2.x, false))), !(!vec4<bool>(var_2.x || true, false, false, true)), !vec4<bool>(all(!vec2<bool>(var_2.x, true)), var_2.x, !all(vec4<bool>(false, false, var_2.x, var_2.x)), var_2.x));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec2<f32>) -> u32 {
    global0 = array<vec2<f32>, 12>();
    var var_0 = arg_1.a;
    var_0 = Struct_2(!(!select(!arg_1.a.a, select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), var_0.b.a), vec3<bool>(false, arg_1.a.b.a, true))), Struct_1(all(func_3()), arg_1.a.b.b, ~(arg_1.b.c.c | _wgslsmith_div_i32(arg_0.b.c.c, var_0.b.c))));
    var var_1 = Struct_1(!(!var_0.b.a), vec4<u32>(~_wgslsmith_mod_u32(0u | arg_1.a.b.b.x, 1u), ~u_input.a, 1u, 75489u), _wgslsmith_sub_i32(1i, -var_0.b.c));
    var var_2 = -1035f;
    return u_input.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~vec2<u32>(u_input.b, u_input.b);
    let var_1 = vec3<u32>(abs(func_2(Struct_5(Struct_3(arg_2.b.a, global0[_wgslsmith_index_u32(var_0.x, 12u)], arg_2.b.c), arg_2.b, Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), arg_2.b.b, Struct_1(false, vec4<u32>(u_input.a, 18201u, 0u, 1u), arg_2.b.c.c)), arg_2.b.b.x), arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b.x, -1035f, arg_2.b.b.x, arg_2.b.b.x)), _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]))) ^ 1u), 6208u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 4294967295u), var_0) ^ u_input.a);
    let var_2 = Struct_1(any(!arg_1), _wgslsmith_add_vec4_u32(arg_2.a.b.b, firstTrailingBit(abs(~arg_2.a.b.b))), 0i);
    let var_3 = var_2;
    var var_4 = Struct_4(arg_2.a, Struct_3(min(~countOneBits(vec3<u32>(4294967295u, 0u, arg_2.b.a.x)), ~(vec3<u32>(0u, arg_2.a.b.b.x, u_input.b) & vec3<u32>(var_3.b.x, 1u, u_input.a))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1795f), 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.b.x, 844f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.b.x, 2232f) - vec2<f32>(arg_2.b.b.x, arg_2.b.b.x))))), arg_2.a.b));
    return Struct_2(!vec3<bool>(false, var_4.b.c.a || (arg_2.b.c.a || true), true), Struct_1(true, vec4<u32>(var_2.b.x, arg_2.a.b.b.x >> (max(var_2.b.x, var_3.b.x) % 32u), var_3.b.x, 12721u), select(var_4.a.b.c, 23988i, select(true, false & arg_1.x, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = func_1(max(min(~min(vec2<i32>(0i, arg_1.b.c), vec2<i32>(-2147483647i, arg_0)), -vec2<i32>(17396i, -61539i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -1i) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), vec2<i32>(-2147483647i, arg_0))), vec2<bool>(any(arg_3.zwy), (max(arg_1.b.c, 0i) >= -32047i) || all(arg_3)), Struct_4(arg_1, Struct_3(vec3<u32>(44455u, firstTrailingBit(0u), ~0u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -628f))), Struct_1(arg_1.b.c >= arg_0, arg_1.b.b, i32(-1i) * -2147483647i))));
    var var_1 = func_1(min(select(vec2<i32>(arg_1.b.c, var_0.b.c) >> (abs(arg_1.b.b.wz) % vec2<u32>(32u)), max(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.b.c, -20909i), vec2<i32>(arg_1.b.c, 2147483647i)), -vec2<i32>(var_0.b.c, -160i)), arg_1.a.x), ~vec2<i32>(arg_1.b.c, _wgslsmith_mod_i32(-24339i, 32617i))), !(!vec2<bool>(2147483647i <= arg_1.b.c, true)), Struct_4(arg_1, Struct_3(~(vec3<u32>(var_0.b.b.x, arg_1.b.b.x, 10106u) | vec3<u32>(arg_1.b.b.x, var_0.b.b.x, arg_1.b.b.x)), vec2<f32>(-157f, _wgslsmith_f_op_f32(-466f + 2531f)), func_1(vec2<i32>(48848i, arg_1.b.c), !arg_1.a.yz, Struct_4(arg_1, Struct_3(var_0.b.b.ywx, vec2<f32>(-824f, 1000f), var_0.b))).b)));
    global0 = array<vec2<f32>, 12>();
    var_1 = func_1(vec2<i32>(-abs(2147483647i) | func_1(countOneBits(vec2<i32>(var_1.b.c, 2147483647i)), vec2<bool>(var_0.b.a, arg_3.x), Struct_4(Struct_2(arg_1.a, var_0.b), Struct_3(vec3<u32>(0u, 4294967295u, 14128u), vec2<f32>(-118f, 1007f), var_1.b))).b.c, _wgslsmith_div_i32(var_0.b.c >> (abs(99096u) % 32u), 1i)), arg_2, Struct_4(func_1(-vec2<i32>(arg_1.b.c, 16159i), select(vec2<bool>(arg_1.a.x, var_0.a.x), !var_1.a.xz, select(arg_2, vec2<bool>(var_1.a.x, true), arg_3.x)), Struct_4(func_1(vec2<i32>(-1i, 10745i), var_1.a.yx, Struct_4(arg_1, Struct_3(arg_1.b.b.wzw, global0[_wgslsmith_index_u32(0u, 12u)], Struct_1(arg_3.x, vec4<u32>(arg_1.b.b.x, 39995u, 1u, 7612u), var_0.b.c)))), Struct_3(arg_1.b.b.wxz, vec2<f32>(677f, 382f), var_1.b))), Struct_3(_wgslsmith_div_vec3_u32(select(var_1.b.b.xxw, arg_1.b.b.www, var_1.a.x), min(vec3<u32>(arg_1.b.b.x, 33825u, var_0.b.b.x), vec3<u32>(u_input.a, 61877u, 1u))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 12u)], var_0.b)));
    return !func_3().ywz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(select(vec3<bool>(true, true, true), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-7862i, -26626i), vec2<i32>(-7348i, 31960i)), func_1(vec2<i32>(23348i, -2961i), vec2<bool>(true, true), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(true, vec4<u32>(34818u, u_input.b, u_input.b, 0u), -2147483647i)), Struct_3(vec3<u32>(1u, u_input.b, 0u), vec2<f32>(-1460f, 899f), Struct_1(true, vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.b), 25767i)))), vec2<bool>(true, false), vec4<bool>(true, true, false, false)), false)), ~reverseBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, 1u), vec4<u32>(0u, u_input.a, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 28391u), true)), i32(-1i) * -24056i);
    var var_1 = false;
    var_0 = Struct_1(var_0.a, select(vec4<u32>(54690u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, var_0.b.x), var_0.b.x), var_0.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(25915u, u_input.a, var_0.b.x), vec3<u32>(0u, var_0.b.x, var_0.b.x))), vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(~var_0.b.wzy, vec3<u32>(1u, 0u, 1u)), 24924u, 0u), vec4<bool>(any(func_4(1i, Struct_2(vec3<bool>(var_0.a, var_0.a, var_0.a), Struct_1(var_0.a, var_0.b, var_0.c)), vec2<bool>(var_0.a, true), vec4<bool>(true, true, var_0.a, false))), true, any(vec2<bool>(var_0.a, true)), any(func_1(vec2<i32>(var_0.c, 1881i), vec2<bool>(var_0.a, var_0.a), Struct_4(Struct_2(vec3<bool>(var_0.a, true, true), Struct_1(var_0.a, vec4<u32>(u_input.a, 56130u, 62475u, 79493u), 26301i)), Struct_3(var_0.b.ywx, global0[_wgslsmith_index_u32(u_input.b, 12u)], Struct_1(var_0.a, var_0.b, 12331i)))).a))), -var_0.c);
    var_1 = false;
    var var_2 = Struct_5(Struct_3(func_1(vec2<i32>(var_0.c >> (29514u % 32u), -var_0.c), vec2<bool>(var_0.a, var_0.a), Struct_4(func_1(vec2<i32>(2147483647i, var_0.c), vec2<bool>(var_0.a, false), Struct_4(Struct_2(vec3<bool>(true, var_0.a, var_0.a), Struct_1(false, vec4<u32>(5907u, 0u, u_input.b, var_0.b.x), -2883i)), Struct_3(vec3<u32>(31187u, var_0.b.x, var_0.b.x), global0[_wgslsmith_index_u32(var_0.b.x, 12u)], Struct_1(false, var_0.b, var_0.c)))), Struct_3(vec3<u32>(var_0.b.x, 20709u, 19372u), vec2<f32>(-722f, 1000f), Struct_1(var_0.a, vec4<u32>(0u, var_0.b.x, var_0.b.x, u_input.a), 13392i)))).b.b.wzx, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~1824u, 12u)] * vec2<f32>(113f, 844f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f))))), Struct_1(true, vec4<u32>(80579u, ~var_0.b.x, 48228u, ~var_0.b.x), ~(-var_0.c))), Struct_3(var_0.b.zyz, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1325f, 418f) + vec2<f32>(326f, -553f)) * _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(var_0.b.x, 12u)])) * _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 12u)] * global0[_wgslsmith_index_u32(u_input.b, 12u)])))), Struct_1(var_0.c > (var_0.c << (u_input.b % 32u)), ~vec4<u32>(var_0.b.x, 10175u, 4294967295u, var_0.b.x) << (abs(var_0.b) % vec4<u32>(32u)), -(~0i))), Struct_3(~vec3<u32>(_wgslsmith_sub_u32(132071u, u_input.a), var_0.b.x, u_input.b << (26604u % 32u)), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.b.x), vec2<u32>(u_input.a, 34889u)), var_0.b.x), 12u)]), func_1(select(vec2<i32>(var_0.c, -5857i), vec2<i32>(29290i, var_0.c), var_0.a), vec2<bool>(true, !var_0.a), Struct_4(func_1(vec2<i32>(var_0.c, -1i), vec2<bool>(false, var_0.a), Struct_4(Struct_2(vec3<bool>(var_0.a, false, false), Struct_1(var_0.a, var_0.b, var_0.c)), Struct_3(vec3<u32>(u_input.b, var_0.b.x, var_0.b.x), global0[_wgslsmith_index_u32(var_0.b.x, 12u)], Struct_1(var_0.a, vec4<u32>(0u, 1u, 10789u, 1u), var_0.c)))), Struct_3(var_0.b.yyz, vec2<f32>(1137f, 1000f), Struct_1(true, var_0.b, var_0.c)))).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)) - 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~var_2.c.c.b, _wgslsmith_div_vec4_u32(vec4<u32>(65061u, var_0.b.x, 68622u, 1u), vec4<u32>(var_2.b.c.b.x, 32973u, 0u, var_0.b.x))), vec4<u32>(func_1(vec2<i32>(var_2.a.c.c, -14690i), vec2<bool>(var_2.c.c.a, var_0.a), Struct_4(Struct_2(vec3<bool>(var_2.c.c.a, true, var_2.b.c.a), Struct_1(var_0.a, vec4<u32>(var_2.b.c.b.x, var_2.a.a.x, 0u, var_0.b.x), -2147483647i)), var_2.c)).b.b.x, 1u, _wgslsmith_sub_u32(u_input.a, var_0.b.x), ~var_0.b.x)));
}

