struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: u32;

var<private> global2: Struct_5;

var<private> global3: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(40062i, vec3<f32>(-1000f, -449f, -344f), 25001u), Struct_5(12639i, vec3<f32>(-1000f, 841f, -2034f), 4294967295u), Struct_5(1i, vec3<f32>(-794f, 310f, -195f), 0u), Struct_5(1i, vec3<f32>(763f, 953f, 1043f), 4294967295u), Struct_5(0i, vec3<f32>(167f, 1033f, -165f), 3460u), Struct_5(0i, vec3<f32>(794f, -975f, 1841f), 79536u), Struct_5(0i, vec3<f32>(-281f, -1000f, 575f), 10062u), Struct_5(0i, vec3<f32>(-1073f, 487f, -1048f), 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = u_input.d;
    let var_1 = vec4<bool>(true, true, true, true);
    global2 = global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 8u)];
    var var_2 = global2.b;
    var var_3 = _wgslsmith_add_i32(i32(-1i) * -33774i, global2.a);
    return 398f;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_4 {
    let var_0 = vec3<f32>(222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + global2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - -500f) - 296f));
    let var_1 = any(select(vec2<bool>(true, true), vec2<bool>(!(!arg_3), arg_3), arg_3));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yz + vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))));
    let var_3 = true;
    var var_4 = max(arg_2, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 77429u, _wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_add_u32(51154u, 388u)), 4294967295u), vec4<u32>(arg_0, arg_2.x, arg_2.x, 71173u)));
    return Struct_4(Struct_1(var_0.x, arg_2.x | ~(~149452u), !(!any(vec4<bool>(true, var_1, var_1, false))), var_4.x, ~firstTrailingBit(var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -624f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-arg_1.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    global3 = array<Struct_5, 8>();
    global1 = abs(~reverseBits(arg_1.a.e));
    let var_0 = arg_3;
    let var_1 = func_2(1u, _wgslsmith_f_op_vec3_f32(step(global2.b, global2.b)), ~_wgslsmith_sub_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 0u, 1u, arg_0), vec4<u32>(global0[_wgslsmith_index_u32(0u, 8u)], 51945u, arg_0, 1u)), ~vec4<u32>(global2.c, global2.c, 4294967295u, 4294967295u)), ~vec4<u32>(arg_0, 68095u, 1u, 83319u) & max(vec4<u32>(1u, 10726u, 5094u, 4294967295u), vec4<u32>(0u, arg_0, u_input.b, arg_0))), true).a.c;
    return Struct_4(arg_1.a, _wgslsmith_f_op_f32(1000f - -837f));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = abs(select(vec4<i32>(global2.a, 2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, 0i, global2.a), u_input.d), -u_input.d.x), _wgslsmith_clamp_vec4_i32(~min(vec4<i32>(global2.a, 1040i, 1i, global2.a), vec4<i32>(11168i, global2.a, -2147483647i, -16525i)), vec4<i32>(u_input.a, 1i, 1i, global2.a), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a, -1i, -2572i, 11464i), vec4<i32>(-11770i, 15767i, u_input.d.x, global2.a)), vec4<i32>(u_input.a, global2.a, -1i, 2147483647i) ^ vec4<i32>(global2.a, 8108i, -6424i, u_input.d.x))), all(select(!vec4<bool>(arg_1.c, arg_1.c, true, true), vec4<bool>(true, true, arg_1.c, arg_1.c), vec4<bool>(arg_3.c, true, false, false)))));
    let var_1 = -382f;
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_2 = arg_0;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.d ^ 1u, var_2.a.d, ~10680u, _wgslsmith_mod_u32(24977u, 91616u) << (_wgslsmith_clamp_u32(arg_3.b, 6666u, arg_0.a.b) % 32u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.b, u_input.b, 0u)) | vec4<u32>(0u, var_2.a.d, 13472u, 4294967295u), vec4<u32>(1u, 10912u ^ global0[_wgslsmith_index_u32(0u, 8u)], ~global2.c, u_input.b >> (0u % 32u)))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_3.d, arg_0.a.b ^ 9087u, firstTrailingBit(u_input.b), func_2(4294967295u, vec3<f32>(arg_0.a.a, var_1, arg_2.x), vec4<u32>(global0[_wgslsmith_index_u32(3501u, 8u)], 4294967295u, 4294967295u, arg_1.e), false).a.b)), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.a.b, arg_0.a.d, 0u, 1u)), firstLeadingBit(vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(8769u, 8u)], global2.c)))));
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_5(-global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b * global2.b) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, 1564f, -1240f) - global2.b))))), u_input.b & global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)] ^ u_input.b, ~0u)), 8u)]);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, -1746f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.zy), var_0.b.yx))));
    global0 = array<u32, 8>();
    global2 = global3[_wgslsmith_index_u32(min(countOneBits(0u), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(min(u_input.b, 2475u), var_0.c), _wgslsmith_mod_u32(1u, 10209u ^ var_0.c)))), 8u)];
    return vec2<u32>(func_5(func_4(global0[_wgslsmith_index_u32(104736u, 8u)], func_2(~60907u, _wgslsmith_f_op_vec3_f32(var_0.b + global2.b), vec4<u32>(u_input.b, 4294967295u, 1731u, 4294967295u), any(vec4<bool>(var_1, var_1, var_1, var_1))), func_2(var_0.c, vec3<f32>(-121f, global2.b.x, var_0.b.x), ~vec4<u32>(global2.c, 4002u, 4294967295u, var_0.c), all(vec4<bool>(false, var_1, false, var_1))), Struct_2(vec2<i32>(-15710i, 1i), !vec4<bool>(false, var_1, true, false), var_1)), Struct_1(_wgslsmith_f_op_f32(func_3()), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global0[_wgslsmith_index_u32(1u, 8u)], 0u), vec3<u32>(1u, 10699u, var_0.c))), var_1, _wgslsmith_mult_u32(1u, ~var_0.c), 1u), var_0.b, Struct_1(_wgslsmith_div_f32(-1000f, global2.b.x), ~var_0.c, !(!var_1), 1u, ~global0[_wgslsmith_index_u32(~global2.c, 8u)])), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(u_input.b, 8u)];
    let var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 8u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_0.c)), ~vec2<u32>(var_0.c, var_0.c))), _wgslsmith_add_vec2_u32(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, global2.a, var_0.a, var_0.a), vec4<i32>(1i, -16434i, u_input.a, -23902i))), _wgslsmith_sub_vec2_u32(~vec2<u32>(global2.c, global2.c), ~vec2<u32>(var_0.c, 0u))) << (~(~(vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_2 = Struct_3(Struct_2(vec2<i32>(var_0.a, 2147483647i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), !func_4(_wgslsmith_mod_u32(u_input.b, 1u), Struct_4(func_2(0u, vec3<f32>(var_0.b.x, global2.b.x, -1518f), vec4<u32>(1u, 1u, 6120u, 4294967295u), false).a, -987f), Struct_4(Struct_1(-541f, global0[_wgslsmith_index_u32(1u, 8u)], true, 57723u, var_0.c), 630f), Struct_2(~u_input.d.yz, vec4<bool>(true, true, true, true), true)).a.c, Struct_2(max(u_input.c, _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(-2147483647i, global2.a))) ^ vec2<i32>(2147483647i, _wgslsmith_mod_i32(1i, 34238i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), false | all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), Struct_2(-_wgslsmith_mod_vec2_i32(u_input.d.yx ^ vec2<i32>(var_0.a, -11485i), ~vec2<i32>(u_input.c.x, -1i)), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, true, true, true))), Struct_2(vec2<i32>(abs(select(u_input.a, var_0.a, false)), u_input.a), vec4<bool>(true, true, true, true), select(true, false, true)));
    let var_3 = global3[_wgslsmith_index_u32(22011u, 8u)];
    let var_4 = global3[_wgslsmith_index_u32(func_1(~vec4<i32>(var_3.a, -global2.a << (_wgslsmith_mult_u32(var_1, u_input.b) % 32u), countOneBits(-global2.a), i32(-1i) * -var_3.a)).x, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -163f), -(u_input.d.x | _wgslsmith_mod_i32(-1i, max(1i, 30902i))), _wgslsmith_sub_u32(~12384u, select(~(52881u | var_3.c), 1u, all(!var_2.a.b))), ~(-25550i));
}

