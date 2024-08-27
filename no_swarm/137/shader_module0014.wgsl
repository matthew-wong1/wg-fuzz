struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global1: array<i32, 21> = array<i32, 21>(-16568i, i32(-2147483648), i32(-2147483648), -1i, 1i, 2646i, -17699i, 2147483647i, 34054i, -1i, i32(-2147483648), -11469i, -44023i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -41146i, 86681i, -1i, 1i, 0i);

var<private> global2: array<Struct_3, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 1f;
    return arg_0.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> bool {
    global0 = array<bool, 4>();
    global1 = array<i32, 21>();
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-(global1[_wgslsmith_index_u32(1u, 21u)] ^ -1i), -20367i), vec2<i32>(global1[_wgslsmith_index_u32(~arg_1.c.c.x | u_input.a.x, 21u)], -2147483647i), firstTrailingBit(select(vec2<i32>(17789i, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 27126i), !arg_0.zy))), ~(-vec2<i32>(-56314i, select(u_input.b, 61727i, false))));
    let var_1 = vec2<i32>(-1i) * -select(reverseBits(vec2<i32>(u_input.b, -17591i)), countOneBits(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 21u)])) & vec2<i32>(2147483647i, 2147483647i), arg_1.b.a.xz);
    var var_2 = func_1(Struct_2(func_1(Struct_2(arg_1.c, vec2<f32>(607f, 895f), abs(vec4<u32>(4294967295u, 36708u, arg_1.c.c.x, 0u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, arg_1.c.b.x)) + vec2<f32>(arg_1.c.b.x, -355f)))), u_input.c));
    return !arg_1.b.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 743f, -437f));
    global0 = array<bool, 4>();
    global1 = array<i32, 21>();
    global2 = array<Struct_3, 25>();
    global0 = array<bool, 4>();
    return (select(88964u, u_input.c.x, func_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), Struct_3(4294967295u, Struct_1(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true), arg_0.zx, u_input.c.wyx), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_2.a.x), var_0.xz, vec3<u32>(u_input.a.x, u_input.c.x, 1u))))) | 4294967295u) >> (~(((u_input.c.x << (u_input.a.x % 32u)) ^ ~12164u) << (~(~23078u) % 32u)) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_2 {
    global1 = array<i32, 21>();
    global2 = array<Struct_3, 25>();
    var var_0 = Struct_4(!(!arg_1.a.a.zzx));
    var var_1 = arg_1.a;
    global0 = array<bool, 4>();
    return Struct_2(Struct_1(!var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(sign(var_1.b.x))), ~func_1(arg_1).c), arg_1.b, vec4<u32>(0u, max(~1u, ~(~arg_1.c.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.c.c, u_input.a), max(max(vec3<u32>(arg_1.a.c.x, 1u, 52277u), vec3<u32>(64939u, arg_3.x, 0u)), arg_3)), var_1.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    global0 = array<bool, 4>();
    let var_0 = _wgslsmith_div_u32(6332u, arg_0.c.x);
    global2 = array<Struct_3, 25>();
    global2 = array<Struct_3, 25>();
    global0 = array<bool, 4>();
    return func_4(global2[_wgslsmith_index_u32(~(firstLeadingBit(1u & arg_1.c.x) >> (0u % 32u)), 25u)], func_4(Struct_3(1u, Struct_1(arg_0.a, arg_1.b, ~vec3<u32>(arg_1.c.x, u_input.c.x, 32058u)), func_1(func_4(Struct_3(var_0, Struct_1(arg_0.a, arg_1.b, vec3<u32>(var_0, arg_1.c.x, arg_0.c.x)), arg_0), Struct_2(Struct_1(arg_0.a, vec2<f32>(-1553f, arg_2), arg_1.c), vec2<f32>(arg_0.b.x, -316f), u_input.c), vec3<bool>(false, arg_0.a.x, false), vec3<u32>(arg_1.c.x, 11167u, arg_0.c.x)))), func_4(Struct_3(91052u, Struct_1(arg_1.a, vec2<f32>(arg_2, -549f), u_input.a), Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, 469f), arg_0.c)), func_4(Struct_3(4294967295u, Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.c.x, 4u)], false, false), vec2<f32>(arg_1.b.x, arg_2), u_input.c.yxy), Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.c.x, 4u)], arg_1.a.x, global0[_wgslsmith_index_u32(arg_1.c.x, 4u)]), arg_0.b, vec3<u32>(arg_1.c.x, 4294967295u, 1u))), Struct_2(arg_1, vec2<f32>(1000f, arg_2), u_input.c), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true, arg_0.a.x), arg_0.a.yxy, false), ~u_input.c.zxw), !func_4(Struct_3(arg_1.c.x, Struct_1(vec4<bool>(false, arg_0.a.x, true, false), arg_0.b, arg_0.c), Struct_1(vec4<bool>(false, arg_1.a.x, false, global0[_wgslsmith_index_u32(arg_1.c.x, 4u)]), arg_1.b, vec3<u32>(arg_1.c.x, 4294967295u, u_input.a.x))), Struct_2(arg_1, vec2<f32>(698f, arg_1.b.x), u_input.c), arg_1.a.wzx, vec3<u32>(u_input.a.x, 0u, 76319u)).a.a.wyx, ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), arg_0.c)), vec3<bool>((arg_0.a.x != arg_1.a.x) | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_1.c.x, 0u), 4u)], select(arg_0.a.x, true, false), (arg_0.c.x >= var_0) || (global1[_wgslsmith_index_u32(59912u, 21u)] != 1i)), vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(func_4(Struct_3(5856u, arg_0, Struct_1(arg_1.a, vec2<f32>(arg_2, arg_2), arg_1.c)), Struct_2(Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, arg_0.b.x), arg_0.c), arg_1.b, u_input.c), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(1u, arg_0.c.x, u_input.a.x)).a.c.x, var_0 & var_0), ~var_0 & ~1u)), select(arg_1.a.yxw, arg_0.a.wxy, arg_1.a.yzx), arg_0.c);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_4(arg_2);
    let var_1 = u_input.c.x;
    global1 = array<i32, 21>();
    global2 = array<Struct_3, 25>();
    global1 = array<i32, 21>();
    return func_5(func_5(arg_0.a, func_1(func_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, 1u), 25u)], func_4(global2[_wgslsmith_index_u32(u_input.c.x, 25u)], Struct_2(Struct_1(arg_0.a.a, vec2<f32>(arg_0.b.x, arg_0.a.b.x), arg_0.a.c), vec2<f32>(arg_0.a.b.x, -1294f), arg_0.c), arg_2, u_input.a), var_0.a, ~arg_0.a.c)), _wgslsmith_f_op_f32(max(184f, -559f))).a, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -979f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -101f;
    var var_1 = u_input.a;
    global0 = array<bool, 4>();
    let var_2 = ~vec2<u32>(24498u, u_input.a.x);
    var var_3 = func_6(func_5(func_1(Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<f32>(-1391f, 563f), vec3<u32>(var_2.x, var_2.x, 23358u)), vec2<f32>(var_0, 782f), _wgslsmith_div_vec4_u32(vec4<u32>(68763u, 30018u, u_input.c.x, var_2.x), vec4<u32>(1u, var_1.x, u_input.a.x, var_2.x)))), func_1(func_4(global2[_wgslsmith_index_u32(func_2(vec3<f32>(-1602f, 2538f, 168f), vec2<i32>(-1i, u_input.b), Struct_4(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_1.x, 4u)])), vec4<i32>(2147483647i, -17553i, u_input.b, global1[_wgslsmith_index_u32(1u, 21u)])), 25u)], Struct_2(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(53915u, 4u)], false, global0[_wgslsmith_index_u32(0u, 4u)]), vec2<f32>(1000f, -2000f), vec3<u32>(u_input.a.x, u_input.c.x, 0u)), vec2<f32>(var_0, 1128f), u_input.c), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], false, true), u_input.c.zwy ^ vec3<u32>(var_2.x, var_1.x, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) - 567f)), !all(select(func_4(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(3286u, 4u)], true, global0[_wgslsmith_index_u32(105562u, 4u)], true), vec2<f32>(var_0, -1162f), u_input.a), vec2<f32>(var_0, 878f), vec4<u32>(var_1.x, var_1.x, 21094u, u_input.a.x)), vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(var_2.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), u_input.a).a.a.xz, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec2<bool>(false, true))), !vec3<bool>(!func_1(Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], true, global0[_wgslsmith_index_u32(3965u, 4u)]), vec2<f32>(153f, var_0), u_input.c.zwy), vec2<f32>(var_0, var_0), u_input.c)).a.x, (global0[_wgslsmith_index_u32(var_2.x, 4u)] || global0[_wgslsmith_index_u32(var_1.x, 4u)]) && (2088f >= var_0), func_1(func_4(global2[_wgslsmith_index_u32(var_1.x, 25u)], Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(75013u, 4u)], global0[_wgslsmith_index_u32(17092u, 4u)], global0[_wgslsmith_index_u32(22392u, 4u)], false), vec2<f32>(var_0, var_0), vec3<u32>(34728u, var_2.x, 4294967295u)), vec2<f32>(var_0, var_0), u_input.c), vec3<bool>(global0[_wgslsmith_index_u32(92994u, 4u)], false, false), vec3<u32>(var_2.x, var_2.x, u_input.c.x))).a.x));
    global1 = array<i32, 21>();
    var var_4 = u_input.c.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.a.c, _wgslsmith_mult_vec3_u32(var_3.c.zxy, vec3<u32>(var_1.x, var_2.x, 4294967295u))), 21u)], ~(-2147483647i), !func_1(Struct_2(Struct_1(var_3.a.a, vec2<f32>(var_3.b.x, var_3.a.b.x), u_input.c.xyz), var_3.a.b, vec4<u32>(0u, 4294967295u, var_4.x, 1596u))).a.x), u_input.b << ((_wgslsmith_add_u32(var_4.x, var_2.x) & reverseBits(var_3.a.c.x)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -798f)))), var_1.x, global1[_wgslsmith_index_u32(func_2(vec3<f32>(func_1(func_5(var_3.a, var_3.a, var_3.a.b.x)).b.x, _wgslsmith_f_op_f32(var_3.b.x - func_1(Struct_2(Struct_1(var_3.a.a, var_3.a.b, var_3.c.xwx), var_3.a.b, u_input.c)).b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -557f)))), -_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, u_input.b), firstLeadingBit(vec2<i32>(2147483647i, -38827i))), Struct_4(vec3<bool>(var_0 == 912f, var_3.a.c.x < var_3.a.c.x, true)), -vec4<i32>(1i, max(u_input.b, u_input.b), global1[_wgslsmith_index_u32(14122u | u_input.c.x, 21u)], 52412i)), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2111f))) * -837f));
}

