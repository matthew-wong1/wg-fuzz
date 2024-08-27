struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-16219i, 2147483647i, -1i, 33443i), vec4<i32>(-9058i, 2147483647i, 15553i, 1i), vec4<i32>(2147483647i, -1i, 8485i, -52400i), vec4<i32>(2147483647i, 2147483647i, 0i, 0i), vec4<i32>(1i, -36865i, 10875i, 10021i), vec4<i32>(i32(-2147483648), 10558i, 1i, -4769i), vec4<i32>(2483i, 0i, -40988i, 81499i), vec4<i32>(1i, -63649i, i32(-2147483648), 10626i), vec4<i32>(0i, 42118i, -1i, 2147483647i), vec4<i32>(7723i, -1i, 78563i, i32(-2147483648)), vec4<i32>(24588i, -13928i, -24270i, -1i), vec4<i32>(1i, -77493i, -1i, 10573i), vec4<i32>(-15361i, 10697i, 2147483647i, -1i), vec4<i32>(-13250i, i32(-2147483648), -6346i, 0i), vec4<i32>(i32(-2147483648), 12612i, -3392i, -16959i), vec4<i32>(3824i, -6642i, i32(-2147483648), -1i), vec4<i32>(57465i, -45856i, 52071i, 0i), vec4<i32>(-3327i, 23340i, 41962i, -39636i), vec4<i32>(1i, 13770i, 0i, -46936i), vec4<i32>(11700i, 1i, -13570i, 0i), vec4<i32>(-19777i, 58497i, -15561i, -13766i), vec4<i32>(2147483647i, -4373i, 59920i, 13716i), vec4<i32>(i32(-2147483648), 9142i, 0i, 2147483647i), vec4<i32>(1i, 19802i, 2147483647i, 1i), vec4<i32>(-1527i, -1i, 0i, i32(-2147483648)), vec4<i32>(7074i, 1i, 0i, 8602i), vec4<i32>(17130i, 0i, 1i, -18050i), vec4<i32>(1i, -7808i, 0i, 4386i), vec4<i32>(-3023i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-10443i, 0i, 1i, 1i));

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(4294967295u, 15557u, 77349u, 4294967295u), vec2<bool>(true, false), Struct_1(-1185f), vec4<u32>(4294967295u, 63903u, 0u, 45027u), Struct_1(-1649f)), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 42629u), vec2<bool>(true, false), Struct_1(-190f), vec4<u32>(5604u, 19866u, 49196u, 18408u), Struct_1(499f)), Struct_2(vec4<u32>(18612u, 11666u, 4294967295u, 0u), vec2<bool>(false, false), Struct_1(-1103f), vec4<u32>(4294967295u, 7784u, 4294967295u, 0u), Struct_1(-556f)), Struct_2(vec4<u32>(4294967295u, 7017u, 7309u, 4294967295u), vec2<bool>(true, false), Struct_1(957f), vec4<u32>(0u, 4294967295u, 42943u, 45597u), Struct_1(127f)));

var<private> global4: array<bool, 25> = array<bool, 25>(true, true, true, false, true, false, true, true, true, true, false, false, false, true, true, true, true, false, false, true, true, true, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    global0 = u_input.d.xz;
    var var_0 = arg_0;
    return -149f;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -global0.x) >> (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1.b.d.x), vec2<u32>(45255u, u_input.a)), global1.b.a.xx) % vec2<u32>(32u)), vec2<i32>(-32164i, ~reverseBits(1i))) ^ abs(u_input.d.zy);
    var var_0 = vec2<u32>(u_input.b, global1.b.d.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f - 1005f)), _wgslsmith_f_op_f32(func_3(Struct_3(!global1.a, global1.b), Struct_1(_wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(global1.b.e.a * global1.b.c.a))))));
    let var_2 = global0.x;
    var var_3 = !all(select(select(!vec4<bool>(false, global1.b.b.x, global4[_wgslsmith_index_u32(0u, 25u)], true), !vec4<bool>(true, global1.a.x, false, false), false), select(select(vec4<bool>(true, global1.b.b.x, false, global4[_wgslsmith_index_u32(36940u, 25u)]), vec4<bool>(false, global1.a.x, true, global4[_wgslsmith_index_u32(global1.b.d.x, 25u)]), vec4<bool>(global1.a.x, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, global1.a.x, global1.b.b.x, global4[_wgslsmith_index_u32(0u, 25u)]), false), true), true));
    return global1.b.c.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = any(vec4<bool>(global4[_wgslsmith_index_u32(25847u, 25u)], _wgslsmith_dot_vec3_u32(global1.b.a.yyy, ~vec3<u32>(1814u, 54274u, u_input.a)) > (29082u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, 1u, u_input.b), arg_0) % 32u)), false, true));
    var var_2 = global1.b.c;
    var var_3 = vec3<bool>(!global4[_wgslsmith_index_u32(4294967295u, 25u)], select(global1.a.x, true, any(!vec4<bool>(false, true, global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(u_input.c.x, 25u)]))), true);
    var var_4 = any(select(global1.b.b, vec2<bool>(true, !(global1.b.b.x != true)), !select(var_3.yz, vec2<bool>(true, true), select(var_3.yy, global1.a.yy, global4[_wgslsmith_index_u32(arg_0.x, 25u)]))));
    return global3[_wgslsmith_index_u32(1u, 4u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = func_4(global1.b.d, min(firstLeadingBit(firstLeadingBit(u_input.e)), (1i >> (u_input.b % 32u)) | (_wgslsmith_div_i32(19000i, u_input.e) >> (_wgslsmith_sub_u32(29328u, u_input.c.x) % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    global0 = u_input.d.zw;
    return Struct_3(vec3<bool>(global1.b.b.x, !(!(!global1.a.x)), true), Struct_2(~vec4<u32>(var_0.d.x, var_0.d.x, global1.b.a.x, var_0.a.x) >> (global1.b.a % vec4<u32>(32u)), vec2<bool>(true, arg_0.x), func_4(_wgslsmith_clamp_vec4_u32(~global1.b.d, global1.b.d << (var_0.d % vec4<u32>(32u)), ~u_input.c), 1i, _wgslsmith_f_op_f32(-685f + _wgslsmith_f_op_f32(step(arg_2.e.a, -1009f)))).c, vec4<u32>(global1.b.d.x, u_input.c.x, _wgslsmith_dot_vec3_u32(global1.b.d.wzy, u_input.c.zwz) << (64460u % 32u), 0u), func_4(reverseBits(u_input.c | u_input.c), countOneBits(-1i | arg_1.x), arg_3.x).c));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(u_input.d.zzw, u_input.d.zxx);
    var var_1 = select(vec3<u32>(func_5(func_1(select(vec2<bool>(global4[_wgslsmith_index_u32(global1.b.d.x, 25u)], global4[_wgslsmith_index_u32(30802u, 25u)]), global1.b.b, vec2<bool>(global1.b.b.x, false)), u_input.d.wy, Struct_2(global1.b.a, global1.b.b, Struct_1(global1.b.c.a), global1.b.a, global1.b.e), vec3<f32>(global1.b.c.a, -1000f, global1.b.e.a)), !select(vec4<bool>(true, true, false, global1.b.b.x), vec4<bool>(global1.b.b.x, true, global4[_wgslsmith_index_u32(u_input.b, 25u)], false), vec4<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 25u)], false)), global1.b.c), func_1(vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b.d.x, u_input.a), 25u)], global1.b.b.x || true), vec2<i32>(global0.x, 1i), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.c.a, 542f, global1.b.c.a) + vec3<f32>(-1596f, -880f, global1.b.e.a)))).b.a.x, 0u), ~global1.b.a.wxz, all(select(select(select(vec4<bool>(global1.b.b.x, global4[_wgslsmith_index_u32(u_input.b, 25u)], global1.b.b.x, global1.b.b.x), vec4<bool>(global4[_wgslsmith_index_u32(global1.b.d.x, 25u)], global1.b.b.x, global1.a.x, global1.a.x), global4[_wgslsmith_index_u32(global1.b.a.x, 25u)]), select(vec4<bool>(global1.b.b.x, false, global4[_wgslsmith_index_u32(36810u, 25u)], global1.b.b.x), vec4<bool>(global1.a.x, false, global4[_wgslsmith_index_u32(u_input.b, 25u)], global1.b.b.x), vec4<bool>(global1.a.x, false, true, global1.a.x)), !vec4<bool>(global1.b.b.x, false, global4[_wgslsmith_index_u32(1u, 25u)], false)), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 25u)] == false, any(vec2<bool>(global1.a.x, global4[_wgslsmith_index_u32(u_input.b, 25u)])), global1.a.x, true), true)));
    var_1 = vec3<u32>(62740u, ~(~u_input.b) << (max(~min(23144u, u_input.b), 0u) % 32u), ~(~var_1.x | firstLeadingBit(_wgslsmith_dot_vec3_u32(global1.b.d.xxw, vec3<u32>(23531u, 4294967295u, 36412u)))));
    var var_2 = all(vec3<bool>(true, false, global4[_wgslsmith_index_u32(1u & firstTrailingBit(1035u), 25u)])) & true;
    global2 = array<vec4<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_5(Struct_3(func_1(global1.b.b, u_input.d.yz, Struct_2(global1.b.a, global1.a.zz, Struct_1(1226f), vec4<u32>(1u, global1.b.a.x, var_1.x, 0u), Struct_1(-1000f)), vec3<f32>(-510f, -2031f, global1.b.e.a)).a, func_1(global1.a.zx, var_0.xy, Struct_2(u_input.c, vec2<bool>(true, global4[_wgslsmith_index_u32(0u, 25u)]), global1.b.c, vec4<u32>(30146u, 1u, 0u, u_input.a), global1.b.c), vec3<f32>(global1.b.e.a, -495f, 2354f)).b), select(vec4<bool>(true, global4[_wgslsmith_index_u32(global1.b.d.x, 25u)], true, true), select(vec4<bool>(global1.a.x, global4[_wgslsmith_index_u32(var_1.x, 25u)], global4[_wgslsmith_index_u32(var_1.x, 25u)], false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 25u)], false, true, global1.a.x), vec4<bool>(global1.a.x, global1.b.b.x, global1.b.b.x, true)), global4[_wgslsmith_index_u32(~20567u, 25u)]), Struct_1(_wgslsmith_f_op_f32(-global1.b.c.a))), ~_wgslsmith_add_u32(41503u, max(4294967295u, u_input.c.x))), var_0.x, ~vec3<i32>(global0.x, -2147483647i, -global0.x) << (vec3<u32>(4294967295u, ~(~1u), ~global1.b.a.x >> (4294967295u % 32u)) % vec3<u32>(32u)));
}

