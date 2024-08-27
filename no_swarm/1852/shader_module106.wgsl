struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<i32, 16> = array<i32, 16>(-12410i, -1i, 2147483647i, 2147483647i, -1i, 1i, -313i, i32(-2147483648), 2147483647i, 6008i, 2147483647i, -22985i, -13923i, i32(-2147483648), -30019i, 12184i);

var<private> global2: i32 = 20090i;

var<private> global3: array<i32, 18> = array<i32, 18>(2147483647i, 73724i, -1i, 30271i, i32(-2147483648), i32(-2147483648), -20829i, i32(-2147483648), 0i, 51706i, 17900i, i32(-2147483648), i32(-2147483648), 27058i, 2147483647i, -1i, -1i, -73383i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(1u, 18u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!select(!vec3<bool>(false, arg_1.b.x, arg_1.b.x), !vec3<bool>(arg_1.b.x, true, true), all(arg_0.b))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-31325i, arg_1.c.x)), ~(~(-arg_1.c)), ~(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.x, -60740i), vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])))));
    global1 = array<i32, 16>();
    let var_2 = Struct_1(arg_1.a, !(!select(arg_1.b, !vec3<bool>(arg_1.b.x, true, arg_2), arg_1.b)), arg_0.c);
    global1 = array<i32, 16>();
    return var_2;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = 0i;
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(63677i), global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), arg_0.c);
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-arg_0.a) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), !(arg_0.b.x || arg_0.b.x), all(select(vec2<bool>(arg_0.b.x, false), !arg_0.b.yx, func_1(arg_0, arg_0, false, -1000f).b.x && false)));
    global1 = array<i32, 16>();
    var var_3 = arg_0;
    return vec2<f32>(-2687f, _wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(step(258f, -784f))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(1f - 598f), select(!func_1(Struct_1(arg_0.x, vec3<bool>(true, true, true), vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.a)), Struct_1(arg_0.x, vec3<bool>(false, true, false), vec2<i32>(u_input.a, 19574i)), true, 1000f).b, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true || (arg_0.x < arg_0.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -8682i) >> (u_input.b.yy % vec2<u32>(32u)), countOneBits(vec2<i32>(-1i, -27163i))), reverseBits(countOneBits(vec2<i32>(27169i, global3[_wgslsmith_index_u32(u_input.c.x, 18u)]))))), func_1(func_1(func_1(Struct_1(arg_0.x, vec3<bool>(true, true, true), vec2<i32>(global1[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(u_input.b.x, 18u)])), func_1(Struct_1(arg_0.x, vec3<bool>(true, true, false), vec2<i32>(71096i, global3[_wgslsmith_index_u32(1u, 18u)])), Struct_1(-671f, vec3<bool>(true, true, true), vec2<i32>(-25023i, u_input.a)), true, 955f), any(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(step(715f, 488f))), Struct_1(arg_0.x, vec3<bool>(true, true, true), ~vec2<i32>(33478i, -1i)), (2147483647i & global1[_wgslsmith_index_u32(0u, 16u)]) <= firstTrailingBit(global3[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_f_op_f32(-arg_0.x)), func_1(func_1(Struct_1(arg_0.x, vec3<bool>(true, true, true), vec2<i32>(-2909i, -12787i)), func_1(Struct_1(arg_0.x, vec3<bool>(false, false, true), vec2<i32>(-1i, 0i)), Struct_1(1314f, vec3<bool>(false, false, true), vec2<i32>(31915i, -24699i)), false, 191f), false, _wgslsmith_div_f32(arg_0.x, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -208f), vec3<bool>(true, true, true), firstLeadingBit(vec2<i32>(-2147483647i, u_input.a))), true, arg_0.x), true, 796f), any(func_1(func_1(Struct_1(arg_0.x, vec3<bool>(true, true, false), vec2<i32>(-1i, -2147483647i)), Struct_1(arg_0.x, vec3<bool>(false, true, true), vec2<i32>(21370i, 2147483647i)), true, -948f), func_1(func_1(Struct_1(arg_0.x, vec3<bool>(true, true, false), vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.b.x, 18u)])), Struct_1(arg_0.x, vec3<bool>(false, true, false), vec2<i32>(u_input.a, 1i)), false, -1281f), Struct_1(arg_0.x, vec3<bool>(false, false, false), vec2<i32>(-25639i, u_input.a)), true, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), true, arg_0.x).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(809f))));
    let var_1 = -1i;
    global3 = array<i32, 18>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) - func_1(func_1(Struct_1(arg_0.x, var_0.b, vec2<i32>(-16979i, u_input.a)), Struct_1(814f, var_0.b, vec2<i32>(21656i, global1[_wgslsmith_index_u32(u_input.c.x, 16u)])), var_0.b.x, arg_0.x), Struct_1(174f, var_0.b, vec2<i32>(-13992i, 6370i)), true, _wgslsmith_f_op_f32(floor(arg_0.x))).a)) - var_0.a);
    global1 = array<i32, 16>();
    return all(select(!select(vec4<bool>(var_0.b.x, var_0.b.x, true, false), !vec4<bool>(true, var_0.b.x, var_0.b.x, false), var_0.b.x), !vec4<bool>(var_0.b.x, var_0.a >= var_2, any(var_0.b), false), !vec4<bool>(all(var_0.b), true, var_0.b.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    global2 = 1i;
    var var_0 = vec4<bool>(true, true, true, !func_3(_wgslsmith_f_op_vec2_f32(func_2(func_1(Struct_1(333f, vec3<bool>(false, false, true), vec2<i32>(9778i, global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), Struct_1(-1310f, vec3<bool>(false, false, false), vec2<i32>(0i, -21500i)), true, -627f)))));
    global2 = ~global1[_wgslsmith_index_u32(34208u, 16u)];
    var var_1 = func_1(func_1(func_1(func_1(func_1(Struct_1(1000f, var_0.yxw, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), Struct_1(-359f, vec3<bool>(true, false, var_0.x), vec2<i32>(global3[_wgslsmith_index_u32(16396u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)])), false, -1000f), Struct_1(1422f, var_0.xzx, vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(14682u, 18u)])), !var_0.x, _wgslsmith_f_op_f32(select(1409f, -1380f, true))), func_1(Struct_1(2362f, var_0.wxz, vec2<i32>(0i, global3[_wgslsmith_index_u32(55869u, 18u)])), func_1(Struct_1(-603f, vec3<bool>(var_0.x, false, true), vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], 10693i)), Struct_1(609f, vec3<bool>(false, true, var_0.x), vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), var_0.x, 1972f), !var_0.x, _wgslsmith_f_op_f32(402f + 615f)), select(false && var_0.x, var_0.x, func_1(Struct_1(360f, var_0.zzw, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 16u)])), Struct_1(711f, var_0.yxw, vec2<i32>(u_input.a, u_input.a)), false, -1278f).b.x), _wgslsmith_f_op_f32(f32(-1f) * -187f)), Struct_1(-2658f, select(!vec3<bool>(false, true, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), var_0.ywz, var_0.wzx), false), ~vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], -12084i) ^ ~vec2<i32>(51303i, u_input.a)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1328f, -1828f))), func_1(func_1(Struct_1(1325f, !vec3<bool>(true, false, var_0.x), vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.c.x, 16u)])), func_1(Struct_1(-1828f, vec3<bool>(false, var_0.x, true), vec2<i32>(-1i, global3[_wgslsmith_index_u32(1u, 18u)])), func_1(Struct_1(1573f, vec3<bool>(false, false, true), vec2<i32>(-2147483647i, -58684i)), Struct_1(348f, var_0.wwz, vec2<i32>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(84152u, 18u)])), var_0.x, -715f), !var_0.x, _wgslsmith_f_op_f32(-1419f + 176f)), any(select(vec3<bool>(var_0.x, false, false), var_0.zxx, var_0.x)), _wgslsmith_f_op_f32(857f - 1f)), Struct_1(-1195f, select(!var_0.zyw, !var_0.xyy, true), ~vec2<i32>(-1i, global3[_wgslsmith_index_u32(u_input.b.x, 18u)])), var_0.x, -1647f), var_0.x, -977f);
    var var_2 = -326f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(u_input.b)), ~countOneBits(u_input.b)), 77414u), global3[_wgslsmith_index_u32(6464u, 18u)], ~vec2<i32>(~2147483647i, ~2147483647i));
}

