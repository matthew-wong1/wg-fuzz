struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(25275u, 1u), vec2<u32>(51768u, 0u), vec2<u32>(0u, 36432u));

var<private> global1: array<bool, 4> = array<bool, 4>(true, true, true, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> i32 {
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    var var_0 = abs(~vec2<i32>(min(arg_3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_3.b, u_input.b))), -13876i));
    let var_1 = vec2<i32>(48730i, abs(max(~arg_3.b, ~(-1i)) << (arg_3.e.x % 32u)));
    global0 = array<vec2<u32>, 3>();
    return 16396i;
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = arg_1.d;
    let var_1 = true | arg_2.x;
    let var_2 = vec3<i32>(reverseBits(arg_1.c.x), -func_3(select(vec3<bool>(arg_1.d.c.x, true, var_1), arg_2.xzy, !vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], true, true)), _wgslsmith_f_op_f32(-arg_1.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.b.d.x * arg_1.d.b.d.x) * var_0.b.d.x), Struct_1(_wgslsmith_f_op_f32(-arg_1.d.b.a), ~arg_1.d.d, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 25107u, arg_0), vec3<u32>(1u, u_input.a, var_0.b.c.x)), _wgslsmith_f_op_vec3_f32(var_0.b.d + vec3<f32>(219f, arg_1.d.b.a, 369f)), arg_1.e & vec4<u32>(arg_0, arg_3, arg_0, 23405u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, 40527i, _wgslsmith_mult_i32(var_0.b.b, 5445i)), reverseBits(vec3<i32>(-18063i, var_0.d, -70229i) << (arg_1.e.yww % vec3<u32>(32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, -49192i, arg_1.b, -1i) & vec4<i32>(24926i, arg_1.d.b.b, arg_1.c.x, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-4246i, var_0.d, arg_1.d.b.b, arg_1.b), vec4<i32>(-2825i, arg_1.d.b.b, var_0.b.b, -4896i))) & u_input.b, _wgslsmith_div_i32(24324i, arg_1.c.x)));
    global1 = array<bool, 4>();
    let var_3 = Struct_1(_wgslsmith_div_f32(arg_1.d.a.x, 1253f), _wgslsmith_mult_i32(abs(31580i), _wgslsmith_sub_i32(~arg_1.b, -arg_1.d.b.b) ^ 0i), vec3<u32>(29522u, 56005u, ~_wgslsmith_add_u32(44190u, arg_3)) & arg_1.d.b.e.wzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.x, var_0.b.d.x, arg_1.d.a.x) + vec3<f32>(2300f, var_0.a.x, var_0.b.a)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.d.b.d, vec3<f32>(var_0.a.x, -212f, -1000f))))), vec4<u32>(0u, ~(_wgslsmith_add_u32(4294967295u, var_0.b.c.x) | var_0.b.c.x), _wgslsmith_mod_u32(countOneBits(firstTrailingBit(1u)), firstTrailingBit(arg_1.e.x) ^ arg_0), select(~_wgslsmith_div_u32(u_input.c, 1u), ~_wgslsmith_mod_u32(var_0.b.e.x, u_input.c), var_0.c.x)));
    return Struct_3(Struct_2(var_3, 0u), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-851f, arg_1.d.a.x) + _wgslsmith_f_op_f32(-var_0.b.a)), var_0.b.b & 1i, vec3<u32>(u_input.c, arg_3 | var_0.b.c.x, arg_3), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(var_3.d)))), countOneBits(arg_1.e) << (vec4<u32>(u_input.a, 43251u, arg_3, u_input.a) % vec4<u32>(32u))), u_input.c), -abs(vec4<i32>(var_0.d, arg_1.c.x, -u_input.b, var_0.b.b | -17919i)), select(select(!arg_1.d.c, select(vec3<bool>(arg_1.d.c.x, global1[_wgslsmith_index_u32(7233u, 4u)], false), arg_1.d.c, vec3<bool>(var_0.c.x, false, var_0.c.x)), select(!vec3<bool>(var_1, var_1, arg_1.d.c.x), vec3<bool>(arg_1.d.c.x, arg_1.d.c.x, true), var_1 & var_0.c.x)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, var_1, arg_2.x), arg_2.yzz, var_0.c), var_0.c), select(arg_1.d.c, vec3<bool>(arg_1.d.c.x, var_0.c.x, global1[_wgslsmith_index_u32(arg_3, 4u)]), any(var_0.c.xz)), !vec3<bool>(true, arg_2.x, false)), !vec3<bool>(var_0.c.x, !var_1, any(vec3<bool>(true, false, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_3 {
    global1 = array<bool, 4>();
    let var_0 = arg_0.b.a.b | (_wgslsmith_mod_i32(firstLeadingBit(arg_0.c.x), i32(-1i) * -23180i) >> (max(u_input.a, _wgslsmith_add_u32(0u, ~u_input.c)) % 32u));
    global0 = array<vec2<u32>, 3>();
    var var_1 = arg_0.a.a.d.xx;
    let var_2 = _wgslsmith_add_u32(42645u, 1u);
    return Struct_3(arg_1.b, arg_1.a, arg_1.c, vec3<bool>(arg_0.d.x, arg_1.d.x, true));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    return arg_2.b;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = ~arg_1.x;
    global1 = array<bool, 4>();
    global0 = array<vec2<u32>, 3>();
    var var_1 = arg_0;
    let var_2 = func_5(global1[_wgslsmith_index_u32(51517u, 4u)], false, func_4(func_2(~(29797u & u_input.a), Struct_5(max(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), max(u_input.b, 1i), arg_1.yz, Struct_4(vec4<f32>(arg_0, -1708f, arg_0, arg_0), Struct_1(-338f, u_input.b, vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<f32>(1792f, -1375f, arg_0), vec4<u32>(1u, u_input.a, u_input.a, u_input.c)), vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 4u)]), 21862i), vec4<u32>(u_input.c, u_input.a, 0u, u_input.c)), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 4u)], true, false)), 4294967295u), Struct_3(func_2(1u, Struct_5(vec2<u32>(1u, u_input.a), -33850i, arg_1.yx, Struct_4(vec4<f32>(-727f, arg_0, -540f, -1740f), Struct_1(-407f, arg_1.x, vec3<u32>(10890u, 0u, 42964u), vec3<f32>(arg_0, arg_0, 752f), vec4<u32>(u_input.c, 1u, u_input.a, 9471u)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], false), arg_1.x), vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.a)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], false, global1[_wgslsmith_index_u32(u_input.a, 4u)], true), ~u_input.a).a, func_2(select(u_input.a, 14556u, true), Struct_5(vec2<u32>(u_input.a, 4294967295u), u_input.b, vec2<i32>(-2147483647i, -1854i), Struct_4(vec4<f32>(arg_0, arg_0, 451f, arg_0), Struct_1(-508f, -1i, vec3<u32>(u_input.a, 4294967295u, 23519u), vec3<f32>(arg_0, -394f, arg_0), vec4<u32>(4294967295u, u_input.a, u_input.c, u_input.a)), vec3<bool>(false, true, global1[_wgslsmith_index_u32(21592u, 4u)]), arg_1.x), vec4<u32>(49670u, 0u, 45007u, u_input.a)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(19772u, 4u)], false), true), firstTrailingBit(u_input.a)).a, -(vec4<i32>(arg_1.x, arg_1.x, -2147483647i, arg_1.x) << (vec4<u32>(u_input.c, 1u, u_input.a, 1u) % vec4<u32>(32u))), select(vec3<bool>(true, true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 4u)], true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(36395u, 4u)], false))), _wgslsmith_dot_vec2_i32(arg_1.xy, -vec2<i32>(u_input.b, arg_1.x)), _wgslsmith_f_op_f32(ceil(arg_0))));
    return Struct_2(var_2.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 49385u))), select(~global0[_wgslsmith_index_u32(26730u, 3u)], vec2<u32>(u_input.a, 4294967295u), vec2<bool>(false, !global1[_wgslsmith_index_u32(var_2.a.e.x, 4u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 3>();
    global0 = array<vec2<u32>, 3>();
    let var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-114f, _wgslsmith_f_op_f32(max(111f, -557f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f - -436f))), vec3<i32>(_wgslsmith_clamp_i32(-10766i, 13953i, ~u_input.b), u_input.b, 14053i)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(411f, 741f))), _wgslsmith_clamp_i32(func_3(vec3<bool>(true, true, false), -707f, -628f, Struct_1(-563f, -28095i, vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<f32>(875f, -554f, -336f), vec4<u32>(u_input.a, u_input.a, 31587u, 4294967295u))), reverseBits(u_input.b), u_input.b), func_2(firstTrailingBit(4294967295u), Struct_5(global0[_wgslsmith_index_u32(38665u, 3u)], u_input.b, vec2<i32>(-2147483647i, u_input.b), Struct_4(vec4<f32>(-2735f, 1138f, -1000f, -1000f), Struct_1(1285f, 2147483647i, vec3<u32>(u_input.a, 52075u, u_input.c), vec3<f32>(1839f, 684f, -242f), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], false), u_input.b), vec4<u32>(13971u, 4294967295u, 13316u, u_input.c)), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(21270u, 4u)], true), vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(50866u, 4u)], false, false)), func_2(u_input.c, Struct_5(global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b, vec2<i32>(2147483647i, 47709i), Struct_4(vec4<f32>(-147f, -427f, -904f, 1258f), Struct_1(277f, u_input.b, vec3<u32>(u_input.c, u_input.a, 28432u), vec3<f32>(-502f, -485f, 1411f), vec4<u32>(1u, 0u, 49042u, u_input.c)), vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), u_input.b), vec4<u32>(u_input.c, u_input.a, 1u, 56470u)), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], false, global1[_wgslsmith_index_u32(1u, 4u)], false), u_input.a).b.b).b.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, -1000f, -548f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1085f, 913f, -1452f) - vec3<f32>(-1838f, -910f, 1461f))), vec4<u32>(2250u, u_input.c, abs(4671u), func_5(true, true, Struct_3(Struct_2(Struct_1(1827f, u_input.b, vec3<u32>(46055u, 28237u, 27074u), vec3<f32>(-634f, 328f, -1033f), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1121u)), 1u), Struct_2(Struct_1(-744f, -2147483647i, vec3<u32>(u_input.c, 66423u, u_input.a), vec3<f32>(655f, 535f, -658f), vec4<u32>(u_input.c, u_input.c, 60523u, 18074u)), 0u), vec4<i32>(u_input.b, u_input.b, -23278i, u_input.b), vec3<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], false))).a.e.x)), ~func_5(all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 4u)])), global1[_wgslsmith_index_u32(10647u, 4u)], func_2(1u, Struct_5(vec2<u32>(23239u, 4294967295u), 0i, vec2<i32>(-1i, u_input.b), Struct_4(vec4<f32>(1249f, -2169f, -1377f, 2272f), Struct_1(519f, -1i, vec3<u32>(39535u, u_input.a, 0u), vec3<f32>(-909f, 621f, 560f), vec4<u32>(4294967295u, u_input.a, 1u, u_input.c)), vec3<bool>(false, true, global1[_wgslsmith_index_u32(64465u, 4u)]), 1i), vec4<u32>(u_input.c, 80001u, 1u, u_input.a)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], false, global1[_wgslsmith_index_u32(u_input.a, 4u)]), u_input.a)).a.e.x), vec4<i32>(_wgslsmith_add_i32(abs(u_input.b), _wgslsmith_mod_i32(u_input.b, u_input.b)), u_input.b ^ min(-22257i, -2147483647i), 0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(-2147483647i, 1i))), !vec3<bool>(true, all(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], true, global1[_wgslsmith_index_u32(24390u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(41404u, 4u)], true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1500u, 4u)], global1[_wgslsmith_index_u32(14031u, 4u)], true))), true));
    var var_1 = var_0.c;
    var_1 = var_0.c;
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wx ^ vec2<i32>(abs(~var_1.x), func_4(var_0, var_0, var_0.b.a.b & u_input.b, 703f).a.a.b), abs(~(vec4<i32>(2147483647i, -2147483647i, u_input.b, -1i) | vec4<i32>(u_input.b, var_1.x, -3167i, u_input.b)) | var_0.c), func_5(false, !all(select(var_0.d.yz, var_0.d.zy, vec2<bool>(var_0.d.x, false))), var_0).a.d.zx, _wgslsmith_f_op_f32(step(-114f, -985f)), 1u);
}

