struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-4830i, 12208i, -12074i, 2147483647i), vec2<i32>(2147483647i, 41872i), vec2<bool>(true, true));

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(0i, 0i, -1i, 2147483647i), vec2<i32>(0i, -17661i), vec2<bool>(true, false)), Struct_1(vec4<i32>(1651i, -43070i, 4789i, -6252i), vec2<i32>(-29285i, 26707i), vec2<bool>(false, true)), Struct_1(vec4<i32>(i32(-2147483648), 19467i, 2026i, i32(-2147483648)), vec2<i32>(25020i, -36822i), vec2<bool>(true, false)), Struct_1(vec4<i32>(2147483647i, 39404i, 0i, 18706i), vec2<i32>(2147483647i, 1i), vec2<bool>(true, false)), Struct_1(vec4<i32>(2147483647i, 9282i, 17540i, 2147483647i), vec2<i32>(19531i, 2147483647i), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, -19845i, 2147483647i, 11083i), vec2<i32>(0i, -290i), vec2<bool>(true, true)), Struct_1(vec4<i32>(-35880i, -12667i, 49928i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false)), Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 61018i), vec2<i32>(-58475i, -45558i), vec2<bool>(false, true)), Struct_1(vec4<i32>(14353i, 1i, -4674i, -1i), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false)), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec2<i32>(-1i, -1i), vec2<bool>(false, false)), Struct_1(vec4<i32>(-18442i, 0i, 1i, 2147483647i), vec2<i32>(-21649i, -23820i), vec2<bool>(true, false)), Struct_1(vec4<i32>(13998i, 0i, i32(-2147483648), -48918i), vec2<i32>(0i, -16102i), vec2<bool>(true, false)), Struct_1(vec4<i32>(-1i, -1i, -20966i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec4<i32>(79751i, 37483i, -1i, 2147483647i), vec2<i32>(6857i, -1i), vec2<bool>(false, true)), Struct_1(vec4<i32>(0i, 2147483647i, -46524i, 0i), vec2<i32>(1i, 13124i), vec2<bool>(false, true)), Struct_1(vec4<i32>(-37081i, -1i, 67721i, 1i), vec2<i32>(-12075i, 1i), vec2<bool>(false, true)), Struct_1(vec4<i32>(2147483647i, 27856i, -23229i, -79544i), vec2<i32>(6548i, 40848i), vec2<bool>(true, false)), Struct_1(vec4<i32>(57742i, 26125i, -1i, -43863i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false)), Struct_1(vec4<i32>(28300i, 1i, -18053i, 3388i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, 0i, -3316i, -1i), vec2<i32>(-17543i, 19757i), vec2<bool>(false, true)), Struct_1(vec4<i32>(2147483647i, -1i, 12957i, 78841i), vec2<i32>(-1i, -32797i), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, 1509i, -24777i, 0i), vec2<i32>(0i, 2147483647i), vec2<bool>(true, false)), Struct_1(vec4<i32>(26925i, 0i, -41235i, i32(-2147483648)), vec2<i32>(5305i, -58379i), vec2<bool>(true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec4<i32>(firstTrailingBit(global0.a.x), firstTrailingBit(~max(-1i, 34088i)), _wgslsmith_sub_i32(~2147483647i, ~global0.a.x), global0.b.x), global0.a.wz, select(!vec2<bool>(global0.c.x, false), select(vec2<bool>(true, true), vec2<bool>(false & global0.c.x, global0.c.x), global0.c), select(vec2<bool>(false, global0.c.x), !(!global0.c), !vec2<bool>(true, global0.c.x))));
    var_0 = Struct_1(~_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, global0.b.x, global0.a.x, var_0.a.x), ~var_0.a << (vec4<u32>(19857u, u_input.a.x, 52225u, u_input.b.x) % vec4<u32>(32u))), global0.b, vec2<bool>(select(!(global0.c.x & var_0.c.x), true, any(select(var_0.c, global0.c, global0.c.x))), any(global0.c)));
    let var_1 = var_0.a;
    var var_2 = vec2<i32>(countOneBits(max(reverseBits(~var_0.b.x), _wgslsmith_div_i32(global0.a.x << (u_input.b.x % 32u), countOneBits(var_1.x)))), 1i);
    let var_3 = ~reverseBits(vec2<u32>(_wgslsmith_mod_u32(70503u, u_input.a.x) >> (~22323u % 32u), 0u));
    return false;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = vec4<bool>(false, !(!(!select(global0.c.x, true, true))), select(global0.c.x, false, func_3()), true);
    let var_1 = global1[_wgslsmith_index_u32(1u, 23u)];
    let var_2 = select(select(select(vec4<bool>(true, var_0.x, false, true), select(var_0, vec4<bool>(var_0.x, var_1.c.x, global0.c.x, var_0.x), false), true), vec4<bool>(!var_1.c.x, any(vec3<bool>(var_1.c.x, var_1.c.x, global0.c.x)), any(var_0.wzz), !(var_1.c.x || var_1.c.x)), func_3()), var_0, var_0);
    global1 = array<Struct_1, 23>();
    return global0.b.x ^ -global0.a.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> vec2<i32> {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(arg_1) >> (arg_1 % 32u), ~(~arg_1)), min(~(~arg_1), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x), arg_1)), ~_wgslsmith_clamp_u32(~u_input.b.x, ~arg_1, ~0u)) | 1u, 23u)];
    let var_0 = !any(global0.c);
    let var_1 = Struct_1(global0.a, arg_0.zy, !select(global0.c, select(global0.c, !vec2<bool>(var_0, var_0), vec2<bool>(var_0, global0.c.x)), select(vec2<bool>(global0.c.x, false), vec2<bool>(true, global0.c.x), all(vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-157f, 1638f, 449f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1991f, -229f, 265f))) * vec3<f32>(_wgslsmith_f_op_f32(round(-575f)), _wgslsmith_f_op_f32(floor(229f)), _wgslsmith_f_op_f32(select(358f, -1189f, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(222f, -1000f, 2394f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(299f, 967f, -930f) * vec3<f32>(-1523f, 1515f, -196f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(558f, 1014f, -1617f), vec3<f32>(1890f, -349f, -1000f)))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, -612f, 278f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(668f, 746f, -505f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1385f, -1849f, -1903f))))))), !vec3<bool>(true, any(!vec4<bool>(global0.c.x, var_1.c.x, true, var_1.c.x)), false)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, 1239f, -747f))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(2500f)), _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(961f + 888f)))));
    return vec2<i32>(0i, func_2(u_input.a));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(~vec3<i32>(-arg_3.a.x, arg_2.a.x, ~arg_2.b.x) & (vec3<i32>(func_2(vec3<u32>(46866u, 78598u, u_input.a.x)), -22363i, -9235i) ^ firstTrailingBit(abs(vec3<i32>(arg_3.b.x, -12818i, arg_1.x)))), reverseBits(select(u_input.a.x << (4294967295u % 32u), _wgslsmith_add_u32(u_input.b.x, 1u), select(false, false, all(arg_2.c)))));
    var var_1 = -global0.a;
    let var_2 = arg_2.c.x && (all(arg_2.c) != true);
    var var_3 = arg_2;
    var var_4 = global1[_wgslsmith_index_u32(1u, 23u)];
    return Struct_1(var_3.a, -max(arg_1, arg_3.a.xz), select(select(arg_3.c, vec2<bool>(true, true), !(u_input.a.x > u_input.b.x)), !(!var_4.c), global0.c));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = min(arg_0.x, -arg_3.a.x);
    global1 = array<Struct_1, 23>();
    var_0 = 0i;
    var var_1 = 1i;
    let var_2 = Struct_1(arg_1.a, arg_3.a.zw, func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1358f))) < _wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(-819f * -1012f)), vec2<i32>(-68348i, 1i), Struct_1(reverseBits(-global0.a), vec2<i32>(arg_0.x, global0.a.x >> (u_input.a.x % 32u)), arg_1.c), func_1(arg_1.c.x, ~vec2<i32>(-2147483647i, 0i), arg_3, func_1(-22382i < arg_0.x, vec2<i32>(arg_1.b.x, 27951i), arg_1, func_1(true, arg_1.b, Struct_1(vec4<i32>(global0.b.x, -22752i, arg_1.b.x, 2147483647i), arg_0.zz, vec2<bool>(global0.c.x, false)), Struct_1(vec4<i32>(arg_1.b.x, 2147483647i, 2147483647i, 2147483647i), arg_1.a.yz, arg_1.c))))).c);
    return 1320f;
}

fn func_6(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = select(select(global0.c, global0.c, true), select(vec2<bool>(_wgslsmith_f_op_f32(min(arg_2.x, -134f)) == arg_2.x, false && global0.c.x), vec2<bool>(global0.c.x, global0.c.x), !global0.c.x), false);
    global1 = array<Struct_1, 23>();
    let var_1 = select(vec4<i32>(~(i32(-1i) * -1i), -2147483647i, global0.b.x, _wgslsmith_dot_vec2_i32(global0.a.zw, -global0.a.zy | vec2<i32>(global0.b.x, -2147483647i))), vec4<i32>(i32(-1i) * -(~global0.b.x), -1i, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(min(362f, 310f)) == arg_1);
    let var_2 = u_input.b.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_2.x);
    return func_1(!(false & !var_0.x) || true, (vec2<i32>(-var_1.x, -1490i) << ((~u_input.b.zy ^ (vec2<u32>(1u, 1u) << (u_input.a.xx % vec2<u32>(32u)))) % vec2<u32>(32u))) ^ global0.a.yy, func_1(var_0.x, ~firstLeadingBit(vec2<i32>(18144i, -2147483647i)) ^ global0.b, func_1(any(vec2<bool>(false, var_0.x)) || any(vec4<bool>(var_0.x, false, true, true)), arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], func_1(select(global0.c.x, false, true), ~vec2<i32>(60937i, var_1.x), Struct_1(var_1, var_1.yw, vec2<bool>(false, var_0.x)), func_1(var_0.x, global0.a.yz, global1[_wgslsmith_index_u32(82837u, 23u)], Struct_1(vec4<i32>(arg_0.x, 31984i, arg_0.x, 0i), global0.b, vec2<bool>(var_0.x, false))))), func_1(-623f > _wgslsmith_div_f32(arg_2.x, arg_2.x), var_1.ww, global1[_wgslsmith_index_u32(~57575u, 23u)], global1[_wgslsmith_index_u32(var_2, 23u)])), global1[_wgslsmith_index_u32(var_2 ^ ~4294967295u, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    let var_0 = func_6(select(vec2<i32>(-global0.a.x & ~global0.a.x, 1i), ~select(vec2<i32>(28797i, 46536i), global0.b, global0.c), global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, global0.b.x, global0.b.x), vec4<i32>(global0.a.x, 2147483647i, 9037i, global0.a.x)), Struct_1(global0.a, vec2<i32>(global0.b.x, global0.a.x), vec2<bool>(true, global0.c.x)), 18963u, func_1(false, vec2<i32>(global0.a.x, global0.b.x), global1[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(global0.a, global0.b, global0.c))))))), vec4<f32>(_wgslsmith_f_op_f32(-1371f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f))), _wgslsmith_f_op_f32(191f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-208f, -1827f)), _wgslsmith_f_op_f32(-135f - -1150f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(162f)))) - _wgslsmith_f_op_f32(floor(273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)))));
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(511f + 799f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.a.x, ~4294967295u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -725f), -677f, 478f, _wgslsmith_f_op_f32(-176f * 1172f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-283f, -1709f, -2770f, -435f), vec4<f32>(-2099f, 534f, -1000f, -427f))))));
}

