struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec3<bool>(false, false, true), vec2<i32>(54752i, -5694i), vec4<f32>(-730f, 1607f, 584f, 128f), -47548i, vec4<bool>(false, false, true, true)), vec2<bool>(false, false), vec4<bool>(false, true, false, true), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, 1i), vec4<f32>(1409f, 422f, -516f, 388f), 0i, vec4<bool>(false, true, false, false))), Struct_1(vec3<bool>(true, false, true), vec2<i32>(2147483647i, 694i), vec4<f32>(373f, -237f, 362f, -1834f), 0i, vec4<bool>(false, false, false, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, 0i), vec4<f32>(656f, -126f, 1104f, -1193f), 28814i, vec4<bool>(false, false, true, true)), vec2<bool>(false, true), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(-3303i, 2147483647i), vec4<f32>(524f, -1906f, -188f, 1158f), -25195i, vec4<bool>(false, true, false, false))), Struct_1(vec3<bool>(true, false, false), vec2<i32>(2147483647i, -74407i), vec4<f32>(873f, 724f, -445f, 2677f), 2147483647i, vec4<bool>(true, true, false, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<i32>(0i, i32(-2147483648)), vec4<f32>(673f, 979f, 122f, 738f), 0i, vec4<bool>(true, true, true, true)), vec2<bool>(false, false), vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(33923i, 2147483647i), vec4<f32>(391f, 1000f, -471f, 1126f), 1i, vec4<bool>(false, false, false, true))), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-39044i, i32(-2147483648)), vec4<f32>(-620f, -329f, 784f, 667f), 66172i, vec4<bool>(false, true, true, false))), Struct_3(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-29763i, 0i), vec4<f32>(-202f, -572f, -367f, -2081f), -1i, vec4<bool>(true, true, false, false)), vec2<bool>(true, true), vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(0i, 24523i), vec4<f32>(-849f, -518f, 1232f, -1151f), 1i, vec4<bool>(false, false, false, false))), Struct_1(vec3<bool>(false, false, true), vec2<i32>(36754i, 0i), vec4<f32>(-701f, 2072f, -2250f, -491f), -13239i, vec4<bool>(false, true, false, false))), Struct_3(Struct_1(vec3<bool>(false, false, true), vec2<i32>(-1i, 7353i), vec4<f32>(-302f, -1228f, -480f, 1020f), 0i, vec4<bool>(true, true, false, false)), vec2<bool>(true, true), vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(0i, i32(-2147483648)), vec4<f32>(526f, -1893f, -1975f, -1213f), 49319i, vec4<bool>(true, false, false, true))), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-25203i, i32(-2147483648)), vec4<f32>(-1000f, 1038f, 278f, -530f), 22879i, vec4<bool>(true, true, true, true))), Struct_3(Struct_1(vec3<bool>(false, false, false), vec2<i32>(1i, 61464i), vec4<f32>(-1513f, 1367f, -1338f, -109f), 58510i, vec4<bool>(false, false, true, false)), vec2<bool>(false, true), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, 0i), vec4<f32>(739f, 1813f, 445f, -442f), 30663i, vec4<bool>(true, false, false, false))), Struct_1(vec3<bool>(true, false, false), vec2<i32>(-25110i, 30957i), vec4<f32>(1000f, -525f, -1000f, 341f), -29483i, vec4<bool>(false, true, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, false), vec2<i32>(-9635i, -83959i), vec4<f32>(-1637f, 1074f, 116f, 670f), -22270i, vec4<bool>(true, false, false, false)), vec2<bool>(false, true), vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(5227i, i32(-2147483648)), vec4<f32>(431f, 295f, 1038f, 532f), 2147483647i, vec4<bool>(true, false, false, false))), Struct_1(vec3<bool>(false, true, true), vec2<i32>(36384i, 28023i), vec4<f32>(1382f, 1729f, 1000f, 2163f), 1i, vec4<bool>(false, false, true, false))), Struct_3(Struct_1(vec3<bool>(true, true, true), vec2<i32>(-39275i, 0i), vec4<f32>(631f, -715f, -1265f, -380f), -12461i, vec4<bool>(false, false, true, true)), vec2<bool>(false, false), vec4<bool>(true, true, false, true), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-17570i, -35441i), vec4<f32>(1000f, -1119f, -1446f, 465f), 2147483647i, vec4<bool>(true, true, true, true))), Struct_1(vec3<bool>(false, false, true), vec2<i32>(37583i, 66692i), vec4<f32>(272f, 581f, 1574f, -720f), i32(-2147483648), vec4<bool>(false, true, false, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<i32>(2147483647i, -49999i), vec4<f32>(1000f, -944f, -686f, -922f), -38813i, vec4<bool>(false, true, true, false)), vec2<bool>(true, true), vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(1i, -10318i), vec4<f32>(-231f, 1000f, -1254f, 1611f), -35124i, vec4<bool>(false, false, false, false))), Struct_1(vec3<bool>(true, true, true), vec2<i32>(42742i, 1i), vec4<f32>(-405f, -1000f, 542f, 1046f), 37916i, vec4<bool>(true, true, true, false))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, -88555i), vec4<f32>(1062f, 1766f, 450f, 490f), 68409i, vec4<bool>(true, true, false, false)), vec2<bool>(true, true), vec4<bool>(false, true, false, true), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-27876i, -5063i), vec4<f32>(667f, -225f, -152f, -931f), 38230i, vec4<bool>(false, false, false, true))), Struct_1(vec3<bool>(false, true, true), vec2<i32>(0i, i32(-2147483648)), vec4<f32>(-1567f, 1000f, -1721f, -413f), 10590i, vec4<bool>(true, true, true, false))));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec2<i32>(-1i, 1i), vec4<f32>(943f, -947f, -1204f, 886f), 12912i, vec4<bool>(true, false, true, false));

var<private> global2: i32 = -43479i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = -reverseBits(~countOneBits(vec4<i32>(-2147483647i, 10966i, global1.b.x, -27565i)));
    return -min(22689i, _wgslsmith_mod_i32(firstLeadingBit(-58454i), arg_2.a.d));
}

fn func_2() -> Struct_3 {
    global1 = Struct_1(global1.e.zyx, global1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -559f), -905f))), global1.c.x, 801f), -func_3(_wgslsmith_mult_i32(-2172i, _wgslsmith_sub_i32(global1.d, 32738i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c.x - -445f))), Struct_2(Struct_1(vec3<bool>(true, global1.a.x, true), vec2<i32>(2147483647i, u_input.c), global1.c, global1.d, global1.e))), !(!(!global1.e)));
    var var_0 = Struct_1(select(vec3<bool>(true, !(1u == u_input.a), global1.a.x), !vec3<bool>(global1.e.x, any(global1.e.yx), true), true), global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.x), global1.c.x, true)), global1.c.x, global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global1.c.x + global1.c.x), 145f, _wgslsmith_f_op_f32(select(global1.c.x, -780f, true)), _wgslsmith_f_op_f32(floor(-272f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, -782f, -1113f, global1.c.x)))))), global1.d, !global1.e);
    global2 = min(abs(~var_0.b.x) << (~u_input.b % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(43i, _wgslsmith_add_i32(_wgslsmith_div_i32(-18968i, -24511i), _wgslsmith_mult_i32(1i, var_0.b.x))), _wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i), -vec3<i32>(-7707i, var_0.d, -2147483647i)))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 10u)];
    let var_2 = global1.e.x;
    return global0[_wgslsmith_index_u32(16884u, 10u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = Struct_1(var_0.a.a, vec2<i32>(firstLeadingBit(~(-2147483647i)) >> (u_input.a % 32u), ~var_0.d.a.d), _wgslsmith_f_op_vec4_f32(-arg_1), -(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, 37564i), ~vec2<i32>(0i, 2147483647i)) ^ u_input.c), select(global1.e, var_0.c, true));
    var_0 = global0[_wgslsmith_index_u32(~7958u, 10u)];
    global2 = ~_wgslsmith_add_i32(min(-52227i, var_0.d.a.b.x), abs(_wgslsmith_mult_i32(min(var_1.b.x, -62453i), 7747i)));
    let var_2 = global1.b.x;
    return StorageBuffer(global1.c.xw, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(min(~u_input.b, u_input.a), 7671u), u_input.b, _wgslsmith_add_u32(4596u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(7016u, u_input.b), vec2<u32>(u_input.a, 41392u), vec2<bool>(false, arg_0.x)), ~vec2<u32>(0u, 90506u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(select(!vec4<bool>(true, global1.e.x, global1.a.x, global1.d > u_input.c), global1.e, !select(vec4<bool>(global1.e.x, false, global1.a.x, false), global1.e, select(vec4<bool>(true, global1.e.x, false, global1.a.x), vec4<bool>(global1.e.x, global1.a.x, false, true), vec4<bool>(global1.a.x, true, true, global1.e.x)))), global1.c);
}

