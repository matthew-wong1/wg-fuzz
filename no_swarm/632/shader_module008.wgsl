struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: array<bool, 26>;

var<private> global2: array<i32, 28> = array<i32, 28>(2147483647i, -53746i, -47257i, 2147483647i, -41745i, -15457i, -1i, 67738i, -19952i, i32(-2147483648), -1i, -24786i, -1i, 1i, -8062i, 1i, -44175i, -69522i, 1i, 19285i, -62021i, i32(-2147483648), 0i, 2147483647i, 0i, 1i, 2147483647i, i32(-2147483648));

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 15777i);

var<private> global4: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_5 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)), _wgslsmith_f_op_f32(f32(-1f) * -645f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1123f)) * 519f)))));
    return Struct_5(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(50896u, 12u)], global0[_wgslsmith_index_u32(10953u, 12u)], global0[_wgslsmith_index_u32(51316u, 12u)]), vec3<u32>(global0[_wgslsmith_index_u32(64528u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10399u, 12u)], 12u)], global0[_wgslsmith_index_u32(1u, 12u)])) & min(abs(vec3<u32>(32895u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10165u, 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(10253u, 12u)])), vec3<u32>(global0[_wgslsmith_index_u32(47484u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 7698u) ^ vec3<u32>(62239u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(99349u, 61476u, 92347u) >> (min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21769u, 12u)], 12u)], 0u, global0[_wgslsmith_index_u32(82705u, 12u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20470u, 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5547u, 12u)], 12u)], 12u)])) % vec3<u32>(32u)), ~min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 1u, 0u), vec3<u32>(51064u, global0[_wgslsmith_index_u32(40734u, 12u)], global0[_wgslsmith_index_u32(25185u, 12u)])))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1437f)) + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)), 186f)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(6300u, 35982u), global0[_wgslsmith_index_u32(~0u, 12u)]), 12u)], vec3<u32>(23968u, 1u, 17266u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -401f) * vec3<f32>(1264f, -387f, var_0.x))), -40037i)));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> bool {
    let var_0 = !select(select(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 26u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.c.a.b.a, 26u)], false, arg_2.b), vec3<bool>(arg_2.c.b, arg_2.b, false), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 26u)], true)), select(vec3<bool>(arg_2.c.b, true, global1[_wgslsmith_index_u32(arg_2.c.c.b.a, 26u)]), vec3<bool>(false, arg_2.c.b, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87606u, 12u)], 26u)]), arg_2.c.b)), vec3<bool>(true, true, !global1[_wgslsmith_index_u32(104842u, 26u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)] | arg_2.b)), vec3<bool>(any(vec2<bool>(true, true)), !(global2[_wgslsmith_index_u32(arg_2.c.c.b.a, 28u)] >= 48065i), arg_2.b), select(vec3<bool>(true, true, true), vec3<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_2.c.b), global1[_wgslsmith_index_u32(arg_2.c.a.b.a, 26u)] | arg_2.c.b));
    global3 = vec3<i32>(-2147483647i, -(~(i32(-1i) * -22579i)), ~(i32(-1i) * -9860i));
    let var_1 = arg_2.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1212f, arg_2.c.c.a.x, 646f, -466f) - vec4<f32>(arg_2.c.a.a.x, -1013f, -1000f, arg_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.x, 597f, arg_0, var_1.c.a.x)), vec4<f32>(arg_2.c.c.a.x, 284f, -1331f, -858f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.c.a.a.x)), 1556f, arg_0, 1f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-286f - 570f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f - -170f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1647f, 1044f)) - var_1.a.a.x)), vec4<f32>(-1000f, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(arg_0 * var_1.c.b.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.c.b.c.x))))), var_0.x))));
    global3 = ~(-(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global3.x, 2147483647i), u_input.a))));
    return all(var_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> vec2<i32> {
    global2 = array<i32, 28>();
    global0 = array<u32, 12>();
    var var_0 = vec3<i32>(arg_3.c.b.d, (_wgslsmith_mod_i32(u_input.a.x, -global3.x) ^ (u_input.a.x >> ((arg_3.a.b.b.x & arg_1.c.c.b.b.x) % 32u))) ^ arg_2.d, -1i);
    var var_1 = ~0u;
    global3 = vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 28u)], arg_1.a.x, arg_2.d, global3.x), vec4<i32>(-1i, 0i, u_input.a.x, -2147483647i)), vec4<i32>(-23144i, -1i, -2147483647i, arg_1.d) >> (vec4<u32>(arg_1.c.c.b.a, arg_2.a, 26737u, 15284u) % vec4<u32>(32u))), _wgslsmith_sub_i32(func_2().b.b.d, 6967i)), arg_1.a.x, arg_3.c.b.d);
    return -countOneBits(_wgslsmith_sub_vec2_i32(firstTrailingBit(var_0.zz), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global2[_wgslsmith_index_u32(0u, 28u)], var_0.x)), arg_1.a.x)));
}

fn func_1() -> Struct_5 {
    let var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, 31445u >> (global0[_wgslsmith_index_u32(24578u, 12u)] % 32u), 4294967295u) | firstLeadingBit(vec3<u32>(1u, global0[_wgslsmith_index_u32(92503u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66308u, 12u)], 12u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(147151u, 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(51549u, 12u)], 4294967295u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 0u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(68583u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)])), ~(~4294967295u), 1u));
    let var_1 = func_2();
    global4 = ~global0[_wgslsmith_index_u32(0u, 12u)];
    var var_2 = Struct_4(func_4(vec3<bool>(true, global1[_wgslsmith_index_u32(abs(1u), 26u)], select(false, func_3(-221f, Struct_5(vec3<u32>(global0[_wgslsmith_index_u32(var_1.b.b.a, 12u)], global0[_wgslsmith_index_u32(27715u, 12u)], 56490u), var_1.b), Struct_4(u_input.a.yz, false, Struct_3(Struct_2(vec3<f32>(var_1.b.a.x, -722f, 991f), Struct_1(var_1.a.x, vec3<u32>(9235u, 0u, 4497u), vec3<f32>(var_1.b.b.c.x, var_1.b.a.x, 1000f), 1i)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.b.b.x, 12u)], 26u)], var_1.b), var_1.b.b.d)), true)), Struct_4(vec2<i32>(var_1.b.b.d, _wgslsmith_clamp_i32(u_input.a.x, global2[_wgslsmith_index_u32(var_0.x, 28u)], var_1.b.b.d)), false, Struct_3(Struct_2(var_1.b.a, var_1.b.b), !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 12u)], 26u)], Struct_2(vec3<f32>(736f, 590f, var_1.b.a.x), var_1.b.b)), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(var_1.b.b.b.x, 28u)] & -1i, u_input.a.x << (global0[_wgslsmith_index_u32(426u, 12u)] % 32u), ~7692i)), Struct_1(~41264u, ~(~vec3<u32>(var_0.x, 1u, var_1.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-687f, 369f, var_1.b.a.x), func_2().b.b.c), -1i), Struct_3(func_2().b, true, func_2().b)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(14059u, var_1.b.b.a), ~var_1.b.b.a) >> (~4294967295u % 32u), 26u)], Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.a)), var_1.b.b), true, func_2().b), var_1.b.b.d);
    let var_3 = -13353i;
    return Struct_5(vec3<u32>(46006u, abs(~59220u), ~var_0.x) | var_1.b.b.b, func_2().b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43021u, 12u)], 26u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 26u)]), vec3<bool>(false, false, false), false)), vec3<bool>((1746u > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36719u, 12u)], 12u)]) & (true || global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 26u)]), !any(vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 26u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30085u, 12u)], 12u)], 12u)], 12u)], 26u)])), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 26u)], true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 26u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 26u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44096u, 12u)], 12u)], 12u)], 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], false)))), true));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b.c.x, -451f, -194f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.b.c.x)) - -759f), -2032f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.c.x)), _wgslsmith_f_op_f32(-var_1.b.b.c.x), _wgslsmith_f_op_f32(step(-935f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.a.x + var_1.b.a.x)))))));
    var var_3 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 30546u << (~(4294967295u & global0[_wgslsmith_index_u32(var_1.b.b.a, 12u)]) % 32u)), 12u)], ~firstTrailingBit(global0[_wgslsmith_index_u32(var_1.a.x, 12u)]), select(4294967295u, 96839u, true), ~(~4294967295u));
    let var_4 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2035f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(_wgslsmith_div_f32(var_1.b.a.x, -647f), _wgslsmith_f_op_f32(select(var_4.b.c.x, var_2.x, global1[_wgslsmith_index_u32(30881u, 26u)])), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -2044f))))), func_1().b.b.c.xx);
}

