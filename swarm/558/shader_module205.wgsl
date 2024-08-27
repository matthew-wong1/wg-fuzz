struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<u32>(5046u, 317u, 30677u), vec4<f32>(-327f, -1235f, 517f, 207f), vec4<i32>(1i, -3152i, i32(-2147483648), 7968i), vec4<bool>(false, true, false, true), 1i), Struct_1(vec3<u32>(30758u, 4970u, 48221u), vec4<f32>(1198f, -1055f, 797f, -799f), vec4<i32>(-14881i, 0i, 2147483647i, 0i), vec4<bool>(false, true, true, false), 9167i), Struct_1(vec3<u32>(33640u, 1u, 84433u), vec4<f32>(-967f, 1614f, -1489f, 138f), vec4<i32>(16001i, 2147483647i, 0i, 6036i), vec4<bool>(false, true, false, false), 21320i), Struct_1(vec3<u32>(1752u, 4294967295u, 12793u), vec4<f32>(218f, -1000f, -1000f, -653f), vec4<i32>(2147483647i, 34035i, 0i, -17088i), vec4<bool>(false, false, true, true), 0i), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec4<f32>(-555f, 454f, -495f, 1292f), vec4<i32>(32658i, 1i, 0i, 87065i), vec4<bool>(true, false, false, true), 2147483647i), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec4<f32>(-485f, 1005f, -736f, 395f), vec4<i32>(18956i, -1i, 56233i, -1i), vec4<bool>(false, true, true, true), 38180i), Struct_1(vec3<u32>(72905u, 0u, 9937u), vec4<f32>(-276f, 1031f, -935f, -1035f), vec4<i32>(22418i, 12389i, 2147483647i, 23772i), vec4<bool>(true, true, true, true), -1i), Struct_1(vec3<u32>(0u, 0u, 0u), vec4<f32>(-1055f, 933f, -955f, -1449f), vec4<i32>(2147483647i, 7537i, -65496i, 21103i), vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_1(vec3<u32>(18082u, 69251u, 14417u), vec4<f32>(760f, 2184f, -1563f, -922f), vec4<i32>(-7868i, 576i, -11883i, -1i), vec4<bool>(false, false, false, true), 78014i), Struct_1(vec3<u32>(76278u, 36154u, 0u), vec4<f32>(-580f, 141f, -1568f, -837f), vec4<i32>(2147483647i, 1i, 1i, -3581i), vec4<bool>(true, true, false, true), -1667i), Struct_1(vec3<u32>(4294967295u, 23516u, 8342u), vec4<f32>(1107f, -212f, 1261f, 594f), vec4<i32>(-1i, 56000i, i32(-2147483648), 14304i), vec4<bool>(false, true, false, false), -6213i), Struct_1(vec3<u32>(4294967295u, 20593u, 16972u), vec4<f32>(-192f, 838f, 274f, 2528f), vec4<i32>(-349i, -1i, 5860i, 4606i), vec4<bool>(false, false, true, false), 22461i), Struct_1(vec3<u32>(63580u, 4294967295u, 42769u), vec4<f32>(-1000f, -915f, -379f, -950f), vec4<i32>(2147483647i, 28963i, -1i, -1i), vec4<bool>(false, false, true, false), -1i), Struct_1(vec3<u32>(65964u, 1u, 20909u), vec4<f32>(1588f, 530f, 326f, -1026f), vec4<i32>(-1i, 1i, 11429i, 5526i), vec4<bool>(true, true, true, false), 57756i), Struct_1(vec3<u32>(26146u, 91280u, 60348u), vec4<f32>(-729f, -1239f, 1353f, 107f), vec4<i32>(23885i, i32(-2147483648), -26261i, 2147483647i), vec4<bool>(false, true, false, true), 2147483647i), Struct_1(vec3<u32>(1960u, 4294967295u, 1u), vec4<f32>(1778f, -191f, 255f, -130f), vec4<i32>(-30764i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, true), 8396i), Struct_1(vec3<u32>(4294967295u, 23640u, 5619u), vec4<f32>(1048f, -1346f, 1101f, -406f), vec4<i32>(22780i, -18198i, 2147483647i, -1i), vec4<bool>(false, true, true, false), 50689i), Struct_1(vec3<u32>(0u, 2034u, 1u), vec4<f32>(-798f, 1000f, -1112f, -869f), vec4<i32>(19780i, -1i, 6365i, 11954i), vec4<bool>(false, true, false, false), -3873i), Struct_1(vec3<u32>(1u, 0u, 0u), vec4<f32>(-864f, -1114f, 158f, -166f), vec4<i32>(-50624i, 30098i, 2147483647i, 54934i), vec4<bool>(false, false, true, true), 1i));

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<i32> {
    global0 = array<Struct_1, 19>();
    global1 = Struct_1(~max(select(vec3<u32>(u_input.a.x, 65165u, 1u), vec3<u32>(global1.a.x, arg_2.d.a.x, 1u), true), arg_1), _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1763f, arg_2.c, 263f, -195f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, 962f, global1.b.x, arg_2.b.b.x) * global1.b)))), ~(~select(arg_2.b.c, ~vec4<i32>(1i, 7125i, u_input.b.x, -1i), all(arg_2.b.d))), vec4<bool>(true, abs(arg_2.d.a.x) >= global1.a.x, select(_wgslsmith_div_u32(6512u, u_input.a.x) != 40071u, arg_2.d.d.x, true), true), 1i);
    global1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global1.a.x, global1.a.x), _wgslsmith_dot_vec2_u32(u_input.a.zy, global1.a.xz), ~u_input.a.x), global1.a), 4915u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 22306u, global1.a.x), 47931u), countOneBits(~global1.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -591f, -117f, 120f)), arg_2.d.b, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)))), arg_2.b.c, vec4<bool>(false, global1.d.x, 2147483647i > abs(global1.e), true), u_input.b.x);
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1359f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.x * 100f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1433f, global1.b.x) + _wgslsmith_f_op_f32(arg_2.b.b.x - global1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.c, -1159f, false || global1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.b.b.x)), global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f - global1.b.x) * 645f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_f_op_f32(-global1.b.x)))), ~arg_2.b.c.x);
    var var_1 = vec4<bool>(all(global1.d), global1.b.x < 693f, global1.d.x, !global1.d.x);
    return reverseBits(~global1.c.xx);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_sub_u32(firstLeadingBit(~_wgslsmith_add_u32(17401u, u_input.a.x)), u_input.a.x);
    let var_1 = Struct_3(countOneBits(func_3(_wgslsmith_dot_vec4_i32(global1.c, global1.c) << (_wgslsmith_mult_u32(27306u, global1.a.x) % 32u), global1.a, Struct_2(vec2<bool>(false, global1.d.x), Struct_1(global1.a, global1.b, u_input.b, global1.d, -2147483647i), _wgslsmith_f_op_f32(abs(arg_0)), global0[_wgslsmith_index_u32(abs(4294967295u), 19u)], global1.c.wz))), global1.d.x, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], Struct_2(!(!(!vec2<bool>(global1.d.x, true))), global0[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_0, Struct_1(~_wgslsmith_clamp_vec3_u32(u_input.a.xzx, u_input.a.yyy, vec3<u32>(39393u, global1.a.x, 37166u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.b, global1.b)) + global1.b), reverseBits(-vec4<i32>(global1.e, global1.e, u_input.b.x, global1.e)), !select(global1.d, vec4<bool>(global1.d.x, false, true, true), global1.d), -_wgslsmith_mult_i32(2147483647i, u_input.b.x)), ~reverseBits(firstLeadingBit(vec2<i32>(0i, global1.c.x)))));
    let var_2 = all(vec3<bool>(var_1.b, true, any(select(!vec3<bool>(global1.d.x, var_1.b, false), select(vec3<bool>(false, var_1.b, false), var_1.e.b.d.yzy, true), false))));
    let var_3 = global1.d;
    let var_4 = Struct_3(global1.c.zy, any(select(!var_1.e.b.d.wxz, select(select(var_1.d.d.ywy, vec3<bool>(var_2, false, false), var_1.e.b.d.yzz), vec3<bool>(var_3.x, true, var_2), select(vec3<bool>(global1.d.x, var_1.b, true), var_3.zwy, true)), var_2 || all(global1.d.zzx))), ~firstTrailingBit((var_1.d.a.x ^ 15317u) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.a.x), vec2<u32>(u_input.a.x, 0u))), global0[_wgslsmith_index_u32(firstTrailingBit(~reverseBits(27318u)), 19u)], var_1.e);
    return Struct_3(_wgslsmith_mod_vec2_i32(~vec2<i32>(~u_input.b.x, var_1.a.x), vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(var_1.e.e.x, 0i)), ~(~0i))), var_2 | false, u_input.a.x, Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d.b)), vec4<i32>(-1i, -16767i << (var_1.e.d.a.x % 32u), 0i << (var_1.c % 32u), global1.c.x) | select(vec4<i32>(-1i, -14420i, -6629i, 21672i), vec4<i32>(-61415i, var_1.a.x, 30513i, u_input.b.x) ^ vec4<i32>(1i, 0i, 0i, 0i), true), select(select(vec4<bool>(var_2, false, global1.d.x, true), select(var_1.d.d, var_1.e.b.d, false), true), select(var_1.d.d, !var_1.d.d, true), !(!var_4.d.d)), 0i), Struct_2(!(!vec2<bool>(var_3.x, var_2)), Struct_1(vec3<u32>(abs(global1.a.x), global1.a.x ^ var_4.d.a.x, var_1.d.a.x >> (u_input.a.x % 32u)), var_4.d.b, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(37922i, global1.e, u_input.b.x, global1.c.x)), vec4<i32>(u_input.b.x, 14508i, u_input.b.x, global1.e) << (vec4<u32>(global1.a.x, var_1.d.a.x, global1.a.x, var_1.c) % vec4<u32>(32u))), select(!var_4.e.b.d, select(var_4.d.d, vec4<bool>(false, false, var_3.x, var_2), vec4<bool>(false, true, true, true)), select(var_1.d.d.x, true, var_3.x)), firstTrailingBit(~(-43342i))), _wgslsmith_f_op_f32(-var_4.e.c), Struct_1(var_4.d.a, global1.b, min(u_input.b, var_1.e.d.c) ^ select(vec4<i32>(31674i, global1.e, 25899i, 2147483647i), vec4<i32>(var_4.d.e, var_1.d.c.x, var_4.a.x, var_1.d.e), true), select(!var_4.d.d, !vec4<bool>(true, var_4.d.d.x, true, false), global1.d), min(var_4.e.e.x, -1i)), vec2<i32>(~(~11479i), (1i ^ var_1.e.e.x) >> (~1u % 32u))));
}

fn func_1() -> vec2<u32> {
    let var_0 = ~(~_wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33373u, 7868u, u_input.a.x), u_input.a)));
    var var_1 = ~firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, global1.a.x, var_0, u_input.a.x)), u_input.a, firstLeadingBit(u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 18577u, global1.a.x) << (vec4<u32>(global1.a.x, global1.a.x, var_0, var_0) % vec4<u32>(32u)), vec4<u32>(0u, global1.a.x, var_0, u_input.a.x) << (u_input.a % vec4<u32>(32u)))));
    let var_2 = func_2(-2136f);
    let var_3 = Struct_1(select(select(reverseBits(_wgslsmith_mult_vec3_u32(var_2.d.a, var_1.wwz)), abs(~vec3<u32>(0u, 65631u, var_1.x)), true), vec3<u32>(~(~global1.a.x), var_2.c & _wgslsmith_sub_u32(global1.a.x, u_input.a.x), 4294967295u), var_2.d.d.x), _wgslsmith_f_op_vec4_f32(select(var_2.e.d.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, _wgslsmith_f_op_f32(trunc(global1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(-var_2.e.c))), 1u <= select(~37970u, u_input.a.x & u_input.a.x, func_2(global1.b.x).e.d.d.x))), global1.c, vec4<bool>(true, all(!(!var_2.d.d.xyw)), !any(var_2.e.d.d.zw), var_2.e.b.d.x | var_2.e.d.d.x), reverseBits(firstLeadingBit(func_2(_wgslsmith_f_op_f32(-global1.b.x)).e.b.c.x)));
    var_1 = (abs(abs(~vec4<u32>(var_1.x, u_input.a.x, 20115u, 18632u))) & _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 2744u, var_2.e.d.a.x, 4294967295u), u_input.a), ~u_input.a)) ^ select(vec4<u32>(0u, firstTrailingBit(~var_0), _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(var_0, 10628u)), ~(var_1.x & var_3.a.x)), ~select(vec4<u32>(var_3.a.x, global1.a.x, global1.a.x, 11299u), vec4<u32>(1u, var_2.c, 68545u, 4294967295u), func_2(var_3.b.x).b), true);
    return vec2<u32>(var_2.d.a.x, abs(~countOneBits(17547u)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = func_2(global1.b.x).e;
    var var_1 = Struct_2(vec2<bool>(var_0.a.x, !(556f <= global1.b.x) | all(!var_0.d.d.wwz)), Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, arg_0.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), abs(global1.a)), global1.b, -(~firstTrailingBit(u_input.b)), global1.d, -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.x, global1.b.x)) * _wgslsmith_div_f32(653f, var_0.d.b.x))), _wgslsmith_f_op_f32(exp2(var_0.b.b.x))), global0[_wgslsmith_index_u32(func_1().x, 19u)], reverseBits(func_3(var_0.d.e, global1.a, func_2(global1.b.x).e) << (~(~u_input.a.yx) % vec2<u32>(32u))));
    var var_2 = any(select(!select(vec4<bool>(false, var_1.a.x, false, var_1.a.x), !vec4<bool>(global1.d.x, false, global1.d.x, var_0.a.x), true), var_1.b.d, !var_0.d.d));
    var_1 = Struct_2(select(select(vec2<bool>(var_0.d.c.x == u_input.b.x, any(vec3<bool>(true, false, global1.d.x))), var_1.d.d.xw, !var_1.b.d.x), vec2<bool>(true, any(vec3<bool>(true, var_1.d.d.x, var_0.d.d.x))), func_2(-485f).e.a), Struct_1(vec3<u32>(_wgslsmith_add_u32(global1.a.x, _wgslsmith_add_u32(1u, 0u)), 19101u, ~arg_0.x), global1.b, _wgslsmith_div_vec4_i32(func_2(func_2(global1.b.x).d.b.x).d.c, countOneBits(global1.c | global1.c)), global1.d, var_1.b.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f + 248f) * _wgslsmith_f_op_f32(-1000f + var_1.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1177f, var_0.b.b.x)), 1766f)))), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, global1.a.x, u_input.a.x), vec3<u32>(1u, 9851u, 1u)) >> (var_1.d.a % vec3<u32>(32u)), var_0.b.b, vec4<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, u_input.b.x), -38487i), var_1.b.c.x, var_1.e.x), vec4<bool>(!global1.d.x, var_1.d.d.x, !all(vec4<bool>(false, global1.d.x, global1.d.x, true)), select(any(vec4<bool>(false, global1.d.x, var_1.d.d.x, var_0.a.x)), global1.d.x, global1.d.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.b.c, select(global1.c, vec4<i32>(1i, 38960i, u_input.b.x, 0i), var_0.d.d), var_1.b.c), firstTrailingBit(vec4<i32>(2147483647i, var_0.d.e, var_0.e.x, u_input.b.x)))), _wgslsmith_mult_vec2_i32(~u_input.b.xx, vec2<i32>(-26218i, _wgslsmith_sub_i32(-43897i, min(-67484i, var_0.e.x)))));
    let var_3 = ~0u;
    return Struct_2(!(!vec2<bool>(!var_0.b.d.x, var_0.d.a.x <= 1u)), func_2(var_0.b.b.x).e.d, _wgslsmith_f_op_f32(-var_0.b.b.x), global0[_wgslsmith_index_u32(~(~min(_wgslsmith_add_u32(0u, 52017u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.d.a.x, 1u), vec3<u32>(var_1.d.a.x, 1u, var_0.d.a.x)))), 19u)], vec2<i32>(2147483647i, global1.e));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -114f);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(func_4(func_2(var_0).d.a.yx >> (global1.a.zy % vec2<u32>(32u))).c))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1336f, arg_0.b.b.x, -104f, _wgslsmith_div_f32(arg_3, var_0))))), ~(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(-9156i, global1.c.x), u_input.b.x)));
    var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(min(arg_0.d.b, _wgslsmith_f_op_vec4_f32(func_2(-645f).e.d.b * vec4<f32>(-371f, var_2.a.x, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 - -107f))))), -2147483647i);
    let var_3 = 1i;
    return func_2(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(f32(-1f) * -130f))).d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<u32>(u_input.a.x, 0u, 4294967295u), global1.b, u_input.b, !vec4<bool>(true, all(!global1.d.wwx), true, true), 0i);
    let var_0 = false;
    global1 = func_5(func_4(func_1()), _wgslsmith_mod_vec2_i32(func_3(-59580i, firstLeadingBit(vec3<u32>(u_input.a.x, global1.a.x, u_input.a.x)), Struct_2(!global1.d.wz, Struct_1(vec3<u32>(4294967295u, global1.a.x, 65598u), global1.b, vec4<i32>(global1.c.x, u_input.b.x, 65511i, 76700i), global1.d, global1.c.x), _wgslsmith_f_op_f32(-global1.b.x), Struct_1(u_input.a.wwx, vec4<f32>(-1000f, -1107f, global1.b.x, global1.b.x), vec4<i32>(u_input.b.x, -40283i, -2147483647i, -17267i), global1.d, u_input.b.x), -u_input.b.wz)), vec2<i32>(40333i, 0i)), _wgslsmith_dot_vec2_u32(global1.a.zy, _wgslsmith_mod_vec2_u32(u_input.a.yy, min(~u_input.a.zz, ~u_input.a.zy))), _wgslsmith_f_op_f32(-global1.b.x));
    let var_1 = Struct_5(!func_5(func_4(global1.a.zz), firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)) | vec2<i32>(u_input.b.x, u_input.b.x), firstTrailingBit(4294967295u), global1.b.x).d.yxw, global1.b.yzx, ~abs(func_1() >> (u_input.a.yx % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(ceil(var_1.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-15579i, ~(-1i << (countOneBits(u_input.a.x) % 32u)), abs(-u_input.b.x)), vec3<i32>(2147483647i, func_3(21092i, u_input.a.xxy, func_2(-1234f).e).x, _wgslsmith_sub_i32(func_2(_wgslsmith_f_op_f32(max(global1.b.x, global1.b.x))).d.c.x, -1i)), ~u_input.b, vec4<u32>(~(~u_input.a.x) | ~var_1.c.x, global1.a.x, u_input.a.x, 117378u), u_input.b.xzy);
}

