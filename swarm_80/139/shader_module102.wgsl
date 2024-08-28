struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-940f, -706f, 1596f, 1058f, -713f, -1959f, 422f, -1014f, -557f, -1107f);

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-1526f, 543f, -502f), vec3<f32>(1293f, -189f, -311f), vec3<f32>(-194f, -347f, -397f), vec3<f32>(-667f, 2188f, -550f), vec3<f32>(1000f, -1362f, 2001f), vec3<f32>(2367f, 732f, 1251f), vec3<f32>(-308f, 747f, -361f), vec3<f32>(588f, -977f, -1166f), vec3<f32>(-1449f, -761f, -2320f), vec3<f32>(198f, 916f, -165f), vec3<f32>(-747f, 288f, -632f), vec3<f32>(-1319f, -1000f, 373f), vec3<f32>(127f, 1042f, -824f), vec3<f32>(-1900f, 698f, -349f), vec3<f32>(1297f, -415f, -1290f), vec3<f32>(-272f, 313f, 564f), vec3<f32>(-322f, 398f, -1081f), vec3<f32>(-737f, 346f, 1247f), vec3<f32>(494f, 1221f, 174f), vec3<f32>(383f, -423f, 385f), vec3<f32>(-124f, 663f, 1330f), vec3<f32>(121f, 1243f, 452f), vec3<f32>(2136f, 463f, 208f), vec3<f32>(-221f, 1000f, -821f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = select(!(!select(!vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, arg_0, false, arg_0), !vec4<bool>(false, arg_0, true, false))), vec4<bool>(all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), arg_0)) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(39642u, 10u)] + -802f) + _wgslsmith_f_op_f32(-502f + -831f)) <= -1137f, false, any(!select(vec4<bool>(false, false, false, arg_0), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_0)))), arg_0);
    var var_1 = global1[_wgslsmith_index_u32(u_input.d, 15u)];
    global2 = array<vec3<f32>, 24>();
    let var_2 = select(!vec3<bool>(!(u_input.d <= u_input.d), true, var_0.x), !var_0.wwx, u_input.d <= u_input.d);
    global1 = array<vec3<i32>, 15>();
    return ~_wgslsmith_mult_vec2_u32(firstTrailingBit(select(vec2<u32>(70947u, u_input.d), vec2<u32>(4294967295u, u_input.d) << (vec2<u32>(7886u, u_input.d) % vec2<u32>(32u)), select(vec2<bool>(var_0.x, true), var_2.yx, var_0.xz))), reverseBits(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, 43271u)), max(vec2<u32>(22735u, u_input.d), vec2<u32>(33655u, u_input.d)))));
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    global2 = array<vec3<f32>, 24>();
    let var_0 = true;
    global1 = array<vec3<i32>, 15>();
    let var_1 = !vec4<bool>(true, true, !var_0, true);
    global1 = array<vec3<i32>, 15>();
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 10u)]);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    global2 = array<vec3<f32>, 24>();
    global1 = array<vec3<i32>, 15>();
    global0 = array<f32, 10>();
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~(~arg_2), 10u)], _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, arg_2), func_3(false)))), -435f));
    return Struct_2(var_1.a);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<u32>(38162u, u_input.d)))) <= -382f);
    global2 = array<vec3<f32>, 24>();
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~countOneBits(~vec2<u32>(94094u, 83500u)), vec2<u32>(u_input.d, _wgslsmith_sub_u32(abs(55910u), u_input.d))), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, ~u_input.d), ~(~vec2<u32>(99838u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 94042u, 1u), vec4<u32>(6673u, u_input.d, 14786u, u_input.d)), 1u))));
    global1 = array<vec3<i32>, 15>();
    var var_2 = 12269i;
    return select(vec4<bool>(1u != abs(_wgslsmith_clamp_u32(1u, u_input.d, u_input.d)), any(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), (~1u >> (u_input.d % 32u)) >= 0u, !(!var_0.x)), !select(vec4<bool>(true, false, var_0.x | false, global0[_wgslsmith_index_u32(0u, 10u)] > -1169f), !vec4<bool>(var_0.x, var_0.x, false, false), true), false);
}

fn func_1() -> Struct_1 {
    let var_0 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), false & (_wgslsmith_f_op_f32(-891f - global0[_wgslsmith_index_u32(u_input.d, 10u)]) < _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(946u, 10u)])))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec2<bool>(true, false)))));
    global1 = array<vec3<i32>, 15>();
    var var_1 = any(!(!select(vec4<bool>(false, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, true)))));
    var var_2 = func_5(Struct_2(Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(44516u, 0u)), 10u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 10u)]), 726f)), u_input.a.x, func_2(abs(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.c, u_input.b, -1i, u_input.b)), vec4<i32>(-2147483647i, 1i, -2147483647i, -1i) ^ vec4<i32>(u_input.a.x, -2147483647i, -14207i, u_input.b))), -1383f, 51516u));
    let var_3 = !func_5(func_2(~(vec4<i32>(-30032i, u_input.c, 24531i, u_input.a.x) & vec4<i32>(-5889i, 9619i, 46800i, 2147483647i)), -698f, ~4294967295u), -22613i, func_2(-vec4<i32>(u_input.a.x, u_input.a.x, -9753i, -29030i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 10u)])), u_input.d)).wz;
    return func_2(vec4<i32>(0i & u_input.c, -(1i & u_input.b), u_input.b, u_input.a.x) & -vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-43876i, u_input.c, -40120i, u_input.b), vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.b)), u_input.c & u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.a.x, 26381i))), global0[_wgslsmith_index_u32(u_input.d, 10u)], ~(~abs(~1u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 24>();
    let var_0 = func_1();
    var var_1 = var_0;
    var var_2 = true;
    let var_3 = Struct_2(func_1());
    let var_4 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~19472u, 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~(u_input.d << (u_input.d % 32u)), 24u)]) - global2[_wgslsmith_index_u32(18685u, 24u)]), min(0u & ~(u_input.d & u_input.d), u_input.d), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(u_input.a.x, -2147483647i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), u_input.a)));
}

