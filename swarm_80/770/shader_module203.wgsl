struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(0i, 1i, -1i, 28994i), vec4<bool>(true, true, true, true), vec2<bool>(true, false), 979f), Struct_1(vec4<i32>(6132i, 0i, -36722i, 2147483647i), vec4<bool>(true, false, true, false), vec2<bool>(false, true), 576f), Struct_1(vec4<i32>(1i, -39881i, -33246i, 6409i), vec4<bool>(true, false, false, false), vec2<bool>(false, true), 136f));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<i32>(-1i, 2147483647i, 27192i, 2147483647i), vec4<bool>(true, false, true, true), vec2<bool>(true, false), -181f), Struct_1(vec4<i32>(-12186i, 3674i, 2147483647i, -1i), vec4<bool>(false, true, true, true), vec2<bool>(true, true), -364f), Struct_1(vec4<i32>(0i, 2147483647i, 0i, -17463i), vec4<bool>(true, false, true, false), vec2<bool>(false, false), 503f), Struct_1(vec4<i32>(-14908i, -1i, -82897i, i32(-2147483648)), vec4<bool>(false, false, false, true), vec2<bool>(false, true), 327f), Struct_1(vec4<i32>(-29185i, i32(-2147483648), 0i, -26559i), vec4<bool>(false, true, false, false), vec2<bool>(false, true), 415f), Struct_1(vec4<i32>(0i, -28218i, 829i, 14897i), vec4<bool>(true, false, true, true), vec2<bool>(true, false), -772f), Struct_1(vec4<i32>(1i, -15985i, 34683i, 0i), vec4<bool>(false, true, true, false), vec2<bool>(false, false), -450f), Struct_1(vec4<i32>(36919i, 25839i, 41104i, 2147483647i), vec4<bool>(true, true, true, true), vec2<bool>(true, true), -104f), Struct_1(vec4<i32>(-21055i, 1i, -454i, -43381i), vec4<bool>(true, true, false, false), vec2<bool>(true, false), 1031f), Struct_1(vec4<i32>(1005i, 39172i, 1i, -62288i), vec4<bool>(true, false, true, false), vec2<bool>(false, false), -2218f), Struct_1(vec4<i32>(0i, 3103i, 1i, -765i), vec4<bool>(false, false, false, true), vec2<bool>(true, false), -1191f), Struct_1(vec4<i32>(32909i, 47526i, i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, true), vec2<bool>(false, true), 1275f));

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1003f, -1070f, -741f), vec3<f32>(132f, 279f, 886f), vec3<f32>(-366f, 165f, 657f), vec3<f32>(267f, 1896f, -1361f), vec3<f32>(1024f, 758f, 307f), vec3<f32>(-1000f, -299f, 1338f), vec3<f32>(-173f, 1308f, -1513f), vec3<f32>(1203f, -1000f, -1000f));

var<private> global3: array<bool, 17>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<i32>(-26507i, -1i, 32867i, 1i), vec4<bool>(true, false, true, false), vec2<bool>(true, true), -107f), false, Struct_1(vec4<i32>(2147483647i, -41534i, 2023i, i32(-2147483648)), vec4<bool>(true, true, false, false), vec2<bool>(false, false), -232f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = Struct_1((arg_0.a | select(arg_1.a.a.a, vec4<i32>(42049i, 7274i, -1i, global4.c.a.x), arg_1.b.a.b)) << (~vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), 37434u, ~u_input.a) % vec4<u32>(32u)), select(arg_1.b.c.b, !vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 17u)], arg_1.b.b, true), select(global4.a.b, arg_1.a.c.b, false)), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-528f))), false))));
    global2 = array<vec3<f32>, 8>();
    let var_1 = all(arg_0.b);
    global3 = array<bool, 17>();
    let var_2 = reverseBits(arg_0.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, 2181f, var_0.d)))))) - vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d)), 772f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.c.d), arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1834f + -159f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.d, -930f))), _wgslsmith_f_op_f32(f32(-1f) * -598f), arg_0.d))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-390f, 185f, global4.c.d, -604f), vec4<f32>(global4.a.d, global4.c.d, -1918f, global4.c.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, 1278f, global4.c.d, global4.a.d))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<i32>(u_input.c.x, 1i, global4.c.a.x, u_input.d.x), global4.c.b, vec2<bool>(true, false), global4.a.d), Struct_3(Struct_2(global4.c, true, Struct_1(global4.c.a, vec4<bool>(true, true, false, true), global4.c.b.xy, 1000f)), Struct_2(global1[_wgslsmith_index_u32(75118u, 12u)], global4.a.b.x, global0[_wgslsmith_index_u32(u_input.a, 3u)]), u_input.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.d, global4.a.d, global4.a.d, 1262f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global4.c.a, global4.c.b, vec2<bool>(global4.b, global3[_wgslsmith_index_u32(u_input.a, 17u)]), -1834f), Struct_3(Struct_2(Struct_1(global4.a.a, vec4<bool>(global4.c.c.x, false, false, true), global4.c.c, global4.c.d), global3[_wgslsmith_index_u32(u_input.a, 17u)], Struct_1(vec4<i32>(u_input.b.x, u_input.d.x, -22294i, 0i), vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(true, global4.b), 362f)), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), 1i))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, 1310f, global4.c.d, -479f))) * vec4<f32>(-966f, 297f, global4.c.d, 987f))));
    let var_1 = Struct_3(Struct_2(global4.a, all(global4.a.b.ywz), global0[_wgslsmith_index_u32(1u, 3u)]), Struct_2(Struct_1(vec4<i32>(firstTrailingBit(-2147483647i), 1i, -1i << (u_input.a % 32u), firstTrailingBit(global4.c.a.x)), !(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], true, global4.b, global4.b)), global4.c.b.xy, _wgslsmith_f_op_f32(-var_0.x)), any(vec2<bool>(true, all(vec3<bool>(global3[_wgslsmith_index_u32(24897u, 17u)], true, true)))), Struct_1(global4.a.a, vec4<bool>(any(global4.a.b.wyx), !global4.b, true, global3[_wgslsmith_index_u32(u_input.a ^ 0u, 17u)]), vec2<bool>(true, select(global3[_wgslsmith_index_u32(98836u, 17u)], global3[_wgslsmith_index_u32(29463u, 17u)], global4.a.c.x)), -1810f)), firstTrailingBit(u_input.b.x));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 1u), u_input.a)), ~max(~u_input.a, u_input.a), ~52185u, min(~4294967295u, _wgslsmith_sub_u32(u_input.a, u_input.a)) ^ 1u) ^ vec4<u32>(~(select(u_input.a, 14751u, global4.b) << (max(49657u, u_input.a) % 32u)), u_input.a, 95688u, reverseBits(reverseBits(70112u & u_input.a)));
    let var_3 = _wgslsmith_clamp_i32(u_input.d.x, u_input.c.x, 1i);
    global4 = var_1.b;
    return var_1.b;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 3>();
    global4 = func_2();
    let var_0 = all(vec2<bool>(!(!(global4.a.d <= -987f)), true & (arg_0.c.b.x || func_2().c.b.x)));
    let var_1 = !(!vec4<bool>(!all(vec4<bool>(false, false, false, true)), true, true, true || select(global3[_wgslsmith_index_u32(u_input.a, 17u)], arg_0.a.b.x, false)));
    global0 = array<Struct_1, 3>();
    return Struct_2(Struct_1(arg_0.a.a, vec4<bool>(!(!arg_0.c.b.x), var_0, true, false), vec2<bool>(true, _wgslsmith_f_op_f32(-global4.a.d) < -1494f), -1614f), var_0, func_2().a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<i32>(-1i, -1i, global4.a.a.x, -2147483647i), global4.c.b, vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global4.b), -1984f), Struct_3(arg_1, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(arg_0.x, 17u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), 48118i))).x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.c.d, 610f), _wgslsmith_f_op_f32(-global4.a.d))), func_1(func_1(arg_1)).a.d))));
    global3 = array<bool, 17>();
    global3 = array<bool, 17>();
    var var_1 = Struct_3(Struct_2(func_1(func_2()).a, true, arg_1.c), func_2(), 2147483647i);
    global2 = array<vec3<f32>, 8>();
    return vec3<f32>(_wgslsmith_div_f32(-1679f, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.a.d, -267f))))) + var_1.b.a.d), global4.c.d);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = func_2().a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1040f, 2012f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(min(-242f, 517f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-665f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 884f), var_0.d));
    global3 = array<bool, 17>();
    var var_2 = _wgslsmith_mult_i32(~18636i, u_input.b.x);
    var_2 = ~(-_wgslsmith_mod_i32(u_input.d.x, max(u_input.d.x, -1i << (1u % 32u))));
    return func_1(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    var var_0 = -2147483647i;
    let var_1 = vec3<bool>(true, select(global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.a, u_input.a)), 17u)], true, global4.b), 992f >= _wgslsmith_div_f32(global4.c.d, -559f));
    let var_2 = var_1;
    var var_3 = func_5(~42023u & (max(~u_input.a, 4294967295u) ^ 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(~vec3<u32>(93277u, 4294967295u, u_input.a), func_1(Struct_2(global1[_wgslsmith_index_u32(13705u, 12u)], true, global0[_wgslsmith_index_u32(u_input.a, 3u)]))))));
    let var_4 = _wgslsmith_f_op_f32(1370f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_3.a.a, vec4<bool>(true, global4.c.c.x, false, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(true, true), -1580f), Struct_3(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 12u)], false, global1[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_2(Struct_1(vec4<i32>(-10843i, 2147483647i, 2147483647i, global4.a.a.x), global4.c.b, vec2<bool>(var_2.x, true), var_3.c.d), true, Struct_1(vec4<i32>(14193i, -1i, var_3.c.a.x, u_input.c.x), vec4<bool>(true, var_1.x, global4.c.c.x, true), var_1.zx, global4.a.d)), var_3.a.a.x))).x)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(~abs(4294967295u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 13908u, 1u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 17192u, 4294967295u), vec4<u32>(4294967295u, 68645u, 33518u, 56806u))), ~_wgslsmith_add_u32(u_input.a, 4294967295u)), vec3<u32>(4294967295u, u_input.a, _wgslsmith_div_u32(4863u >> (1u % 32u), u_input.a))), 4294967295u);
}

