struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-124f, 977f, -376f, -658f, 140f, 1246f, 557f, 216f, -897f, -1120f, -2252f, -1155f, 1125f, 1820f, -1580f, 1508f, -477f, -182f, -264f, 555f, -149f, 255f, -1136f, -887f, -676f, 102f, -1456f);

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, true, false, true, false, true, true, true, false, false, true, false, false, false, true, false, true, true, true, true, true, false, true, false, true, false);

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<f32, 27>();
    var var_0 = !vec4<bool>(global1[_wgslsmith_index_u32(~74528u, 27u)] | true, true, global1[_wgslsmith_index_u32(arg_1.a, 27u)], !global1[_wgslsmith_index_u32(~(~1u), 27u)]);
    let var_1 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), 75052i, _wgslsmith_mult_i32(~u_input.b, -1i), -14024i), u_input.c));
    let var_2 = ~arg_0.b.b & vec3<u32>(arg_1.b.x, 0u, ~(~26215u >> (1u % 32u)));
    global2 = ~vec4<u32>(4294967295u, ~u_input.a, 18326u, _wgslsmith_dot_vec4_u32(~vec4<u32>(40532u, 1u, global2.x, 56353u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 47978u, 8862u, 1u), vec4<u32>(15243u, u_input.d, u_input.a, var_2.x))) >> (~(var_2.x ^ 1467u) % 32u));
    return !(!vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 27u)], arg_0.c == -180f, select(any(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(3386u, 27u)], global1[_wgslsmith_index_u32(arg_0.d.a, 27u)], var_0.x)), all(vec2<bool>(true, true)), any(vec4<bool>(false, global1[_wgslsmith_index_u32(82337u, 27u)], true, true))), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> f32 {
    return _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(global2.wyy, vec3<u32>(global2.x, global2.x, 4294967295u))), 27u)]));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    global1 = array<bool, 27>();
    let var_0 = global1[_wgslsmith_index_u32(~1u, 27u)];
    let var_1 = arg_2.a.b;
    var var_2 = 0u;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-427f - arg_2.c), _wgslsmith_f_op_f32(func_4(select(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(arg_0.x, 27u)]), func_3(Struct_2(Struct_1(4294967295u, vec3<u32>(0u, 19532u, u_input.a)), Struct_1(arg_0.x, var_1), global0[_wgslsmith_index_u32(1u, 27u)], Struct_1(arg_2.d.b.x, global2.zyw), Struct_1(17208u, global2.xyz)), Struct_1(1u, arg_2.e.b)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - global0[_wgslsmith_index_u32(var_1.x, 27u)])), _wgslsmith_dot_vec2_u32(global2.xw, ~arg_0)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b.a, ~_wgslsmith_add_u32(u_input.a, arg_0.x) << (~_wgslsmith_sub_u32(arg_2.a.b.x, 1u) % 32u)), 27u)], 1062f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(564f, -533f))) * 202f), _wgslsmith_f_op_f32(min(354f, _wgslsmith_f_op_f32(f32(-1f) * -1715f))))));
    return ~1u;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(-vec3<i32>(0i, ~u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, -2147483647i)) | u_input.c.xyx);
    let var_1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(global2.x, func_2(vec2<u32>(global2.x, u_input.a), _wgslsmith_div_vec4_i32(u_input.c, u_input.c), Struct_2(global3[_wgslsmith_index_u32(global2.x, 25u)], global3[_wgslsmith_index_u32(0u, 25u)], -248f, global3[_wgslsmith_index_u32(u_input.d, 25u)], global3[_wgslsmith_index_u32(global2.x, 25u)]))), u_input.d), _wgslsmith_sub_u32(52993u & (~4294967295u >> (u_input.a % 32u)), ~21713u), max(4294967295u, _wgslsmith_sub_u32(~4294967295u, ~global2.x)), u_input.a);
    global2 = vec4<u32>(global2.x, countOneBits(global2.x), _wgslsmith_div_u32(u_input.d, max(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global2.x, u_input.a), vec4<u32>(u_input.d, u_input.a, 39052u, 4294967295u)))) >> (~(~(~u_input.d)) % 32u), _wgslsmith_dot_vec4_u32(abs(var_1), abs(var_1)));
    global0 = array<f32, 27>();
    var var_2 = firstLeadingBit(min(u_input.c, vec4<i32>(~u_input.b, var_0.x, _wgslsmith_add_i32(u_input.c.x, -4615i), 2147483647i ^ u_input.c.x)) >> (~var_1 % vec4<u32>(32u)));
    return Struct_1(min(var_1.x, func_2(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.wz, vec2<u32>(global2.x, 43557u)), ~global2.wx), vec4<i32>(-1i) * -u_input.c, Struct_2(global3[_wgslsmith_index_u32(global2.x, 25u)], global3[_wgslsmith_index_u32(~global2.x, 25u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 27u)] + global0[_wgslsmith_index_u32(var_1.x, 27u)]), Struct_1(u_input.a, global2.ywy), Struct_1(49136u, global2.ywx)))), ~(~_wgslsmith_mod_vec3_u32(global2.xww, global2.yyz)) ^ vec3<u32>(u_input.d, global2.x | global2.x, abs(var_1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    global1 = array<bool, 27>();
    var var_0 = vec3<u32>(0u, 1u, func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~global2.x, 51227u), max(vec2<u32>(u_input.a, 35161u), vec2<u32>(76984u, 24490u))), ~vec4<i32>(-31333i << (1u % 32u), min(u_input.b, -1i), 1i, -18725i), Struct_2(global3[_wgslsmith_index_u32(func_2(arg_0.b.yy, firstTrailingBit(vec4<i32>(u_input.c.x, 5822i, u_input.c.x, 9718i)), Struct_2(Struct_1(arg_0.b.x, vec3<u32>(arg_0.a, arg_0.a, 34753u)), Struct_1(u_input.d, vec3<u32>(global2.x, arg_0.b.x, 33772u)), -571f, arg_0, Struct_1(global2.x, vec3<u32>(13558u, 21846u, arg_0.b.x)))), 25u)], global3[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global2.x)), 25u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 27u)] * global0[_wgslsmith_index_u32(29082u, 27u)]), Struct_1(_wgslsmith_mod_u32(global2.x, arg_0.a), ~vec3<u32>(27835u, 40803u, global2.x)), func_1())));
    global2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(13791u, global2.x), (global2.x << (20679u % 32u)) & (1u << (arg_0.b.x % 32u)), 1300u, ~_wgslsmith_add_u32(global2.x, var_0.x))), ~(~(~vec4<u32>(global2.x, 1u, u_input.d, 4294967295u))) | vec4<u32>(27354u, arg_0.a | 79557u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a, global2.x)), ~vec2<u32>(global2.x, 48573u)), global2.x));
    return Struct_2(global3[_wgslsmith_index_u32(arg_0.b.x, 25u)], Struct_1(19197u, vec3<u32>(~(~var_0.x), u_input.d, ~63093u)), _wgslsmith_f_op_f32(f32(-1f) * -1033f), Struct_1(~u_input.a, vec3<u32>(select(_wgslsmith_div_u32(global2.x, 15000u), global2.x >> (global2.x % 32u), true), select(firstLeadingBit(arg_0.b.x), global2.x, true || global1[_wgslsmith_index_u32(1u, 27u)]), 60373u)), func_1());
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    global1 = array<bool, 27>();
    global2 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(0u), ~arg_1.e.b.x, arg_0.a, 4294967295u), vec4<u32>(_wgslsmith_sub_u32(~arg_0.b.x, arg_0.a), 4294967295u, 1u, select(~global2.x, ~42189u, true))));
    global2 = countOneBits(vec4<u32>((arg_1.d.a | global2.x) >> (arg_1.a.b.x % 32u), arg_0.b.x, ~_wgslsmith_div_u32(global2.x, 16425u), global2.x)) >> (~vec4<u32>(20576u | arg_1.a.b.x, func_2(global2.wy >> (global2.xw % vec2<u32>(32u)), firstLeadingBit(u_input.c), Struct_2(arg_0, arg_1.a, arg_1.c, global3[_wgslsmith_index_u32(1u, 25u)], Struct_1(arg_0.b.x, arg_1.a.b))), ~(arg_1.d.a << (467u % 32u)), ~firstTrailingBit(arg_1.b.b.x)) % vec4<u32>(32u));
    global3 = array<Struct_1, 25>();
    let var_0 = vec2<bool>(false, 1u > _wgslsmith_div_u32(1u, u_input.d));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, all(func_6(Struct_1(1u, reverseBits(vec3<u32>(1u, u_input.a, u_input.a))), func_5(func_1(), vec4<bool>(global1[_wgslsmith_index_u32(27731u, 27u)], true, false, global1[_wgslsmith_index_u32(36191u, 27u)])))));
    global2 = vec4<u32>(23500u, _wgslsmith_dot_vec2_u32(~func_1().b.xz << ((~vec2<u32>(u_input.d, 35345u) << (global2.yy % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(~vec2<u32>(1u, 1u))), global2.x, 58549u);
    global1 = array<bool, 27>();
    let var_1 = global2.wxw;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 27u)] * _wgslsmith_f_op_f32(step(func_5(global3[_wgslsmith_index_u32(31400u, 25u)], vec4<bool>(true, var_0.x, true, global1[_wgslsmith_index_u32(27338u, 27u)])).c, 1728f))), 827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 27u)] - global0[_wgslsmith_index_u32(u_input.a, 27u)])), _wgslsmith_f_op_f32(668f * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~var_1.x, 27u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 27u)]))))));
    global0 = array<f32, 27>();
    let var_3 = func_5(func_1(), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 27u)], var_0.x, !all(select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 27u)], true), vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(2654u, 27u)], true))), var_0.x)).b;
    let var_4 = func_5(func_5(func_5(Struct_1(var_3.a | u_input.a, abs(vec3<u32>(25125u, 17602u, var_3.b.x))), !vec4<bool>(true, global1[_wgslsmith_index_u32(var_3.a, 27u)], var_0.x, var_0.x)).a, !(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(31270u, 27u)], var_0.x))).e, func_3(func_5(func_5(func_5(Struct_1(1u, global2.zzz), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 27u)], true)).b, vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 27u)], var_0.x)).e, select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(var_1.x, 27u)], false, var_0.x))), func_1())).e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2))) - _wgslsmith_f_op_vec4_f32(min(var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(-316f, 872f, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(220u, 27u)])) - var_2)))));
}

