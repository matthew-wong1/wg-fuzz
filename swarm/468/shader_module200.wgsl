struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = !(any(vec4<bool>(true, true, true, true)) || !(true & (u_input.b < u_input.a.x)));
    global0 = array<Struct_2, 8>();
    global1 = arg_0;
    global1 = Struct_2(u_input.b, global1.b);
    global0 = array<Struct_2, 8>();
    return global1.b;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_2, 8>();
    let var_0 = global0[_wgslsmith_index_u32(~1u, 8u)];
    var var_1 = Struct_1(17762u, abs(~arg_1.b << (_wgslsmith_mod_u32(0u, 1u) % 32u)), vec2<f32>(-954f, var_0.b.c.x), ~vec2<u32>(~_wgslsmith_mod_u32(4742u, arg_3.e.x), 0u), reverseBits(var_0.b.e));
    let var_2 = Struct_2(-2147483647i, global1.b);
    let var_3 = Struct_1(var_2.b.d.x, var_1.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b.c.x, global1.b.c.x)), arg_3.c.x), _wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(532f, 1030f) - _wgslsmith_f_op_f32(min(arg_1.c.x, arg_1.c.x))))), _wgslsmith_sub_vec2_u32(var_0.b.e.zx, ~arg_1.d ^ vec2<u32>(~arg_1.d.x, 51562u)), var_2.b.e);
    return 0i;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = select(global1.b.e.zyy, vec3<u32>(_wgslsmith_mult_u32(arg_1.b ^ (arg_1.e.x << (global1.b.d.x % 32u)), ~23993u), ~0u, ~_wgslsmith_div_u32(45718u, _wgslsmith_dot_vec4_u32(arg_1.e, arg_1.e))), vec3<bool>(any(vec2<bool>(false, false)), true | (_wgslsmith_div_u32(12138u, arg_1.a) != 28094u), true));
    global1 = Struct_2(-23426i, func_2(global0[_wgslsmith_index_u32(58971u, 8u)], _wgslsmith_mod_vec2_u32(vec2<u32>(~9408u, ~1u), ~vec2<u32>(43953u, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.c.x, 535f, arg_1.c.x)))))));
    let var_1 = Struct_2(~(-(~func_3(vec4<f32>(-1560f, arg_1.c.x, 2204f, -1000f), global1.b, Struct_1(global1.b.b, var_0.x, arg_1.c, vec2<u32>(1u, global1.b.a), vec4<u32>(global1.b.d.x, global1.b.e.x, 65429u, var_0.x)), Struct_1(global1.b.e.x, 1u, vec2<f32>(arg_1.c.x, 2309f), arg_1.e.wx, arg_1.e)))), func_2(Struct_2(global1.a, Struct_1(max(global1.b.b, arg_1.a), func_2(global0[_wgslsmith_index_u32(arg_1.a, 8u)], arg_1.d, vec3<f32>(-1526f, -769f, global1.b.c.x)).e.x, global1.b.c, vec2<u32>(15919u, 29327u) & arg_1.d, vec4<u32>(var_0.x, 1u, 68472u, global1.b.d.x) << (global1.b.e % vec4<u32>(32u)))), select(~_wgslsmith_clamp_vec2_u32(global1.b.e.wz, vec2<u32>(1u, 1u), arg_1.d), ~_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.a, 27865u), global1.b.e.yz), true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1.b.c.x), _wgslsmith_f_op_f32(arg_1.c.x * -2840f)), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.c.x), -562f, _wgslsmith_f_op_f32(f32(-1f) * -893f))))));
    global0 = array<Struct_2, 8>();
    let var_2 = !select(vec3<bool>(true, true, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true);
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-2147483647i, Struct_1(1u, global1.b.b, vec2<f32>(546f, -572f), global1.b.d, global1.b.e))))), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(~u_input.a, u_input.a << (vec2<u32>(13890u, global1.b.e.x) % vec2<u32>(32u))), Struct_1(4294967295u, 4294967295u, vec2<f32>(1269f, 889f), ~vec2<u32>(global1.b.a, 22866u), global1.b.e))), -171f, _wgslsmith_f_op_f32(1281f - 949f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, global1.b.c.x, global1.b.c.x, global1.b.c.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2176f, global1.b.c.x, global1.b.c.x, -1000f), vec4<f32>(-1086f, global1.b.c.x, -745f, 1000f))), true)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, var_0.x, func_2(global0[_wgslsmith_index_u32(18558u, 8u)], vec2<u32>(global1.b.d.x, 26360u), vec3<f32>(var_0.x, var_0.x, global1.b.c.x)).c.x, -866f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c.x, var_0.x, var_0.x, global1.b.c.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -334f, global1.b.c.x), vec4<f32>(292f, var_0.x, -1368f, var_0.x), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1379f, global1.b.c.x, -161f) * vec4<f32>(var_0.x, global1.b.c.x, var_0.x, global1.b.c.x)), var_0.x <= 1026f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.c.x, -1218f, global1.b.c.x, global1.b.c.x) * vec4<f32>(419f, global1.b.c.x, -245f, global1.b.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(2147483647i, global1.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c.x, -868f, -760f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1.b.c.x, -414f, var_0.x) * vec4<f32>(var_0.x, 471f, -574f, 230f))), vec4<f32>(_wgslsmith_f_op_f32(max(123f, 648f)), global1.b.c.x, -355f, var_0.x)))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.c.x), -307f)), 598f, 380f));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1501f, 158f, var_0.x, global1.b.c.x) - vec4<f32>(global1.b.c.x, global1.b.c.x, global1.b.c.x, var_0.x))))))));
    let var_2 = func_3(vec4<f32>(_wgslsmith_f_op_f32(select(global1.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -490f), true)), 699f, -1004f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(var_0.x, 1620f)))))), func_2(Struct_2(~1i, Struct_1(87310u, min(28137u, 122852u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.c.x, 993f) + var_0.yy), vec2<u32>(4294967295u, 113539u), abs(vec4<u32>(global1.b.d.x, global1.b.b, global1.b.b, 12652u)))), ~max(min(vec2<u32>(20688u, global1.b.d.x), vec2<u32>(global1.b.b, global1.b.d.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1.b.d.x), global1.b.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(func_1(-2147483647i, global1.b)), _wgslsmith_f_op_f32(-global1.b.c.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1172f, 626f), vec3<f32>(var_0.x, -667f, -453f))), vec3<bool>(true, true, global1.b.c.x >= var_0.x)))), func_2(global0[_wgslsmith_index_u32(1u, 8u)], ~global1.b.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-151f, -638f, 1075f) * vec3<f32>(global1.b.c.x, var_0.x, 628f)) * _wgslsmith_f_op_vec3_f32(-var_0.zxw)), vec3<f32>(_wgslsmith_div_f32(405f, 171f), global1.b.c.x, _wgslsmith_f_op_f32(global1.b.c.x + global1.b.c.x))))), Struct_1(74026u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1.b.e.x, 0u), ~(vec3<u32>(4294967295u, global1.b.b, 1u) | vec3<u32>(global1.b.b, 29350u, global1.b.b))), var_0.xy, global1.b.d, vec4<u32>(~0u, global1.b.e.x, 55072u, global1.b.e.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.c.x, var_0.x, -264f, global1.b.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1219f, 668f, global1.b.c.x, global1.b.c.x)))))));
    var var_4 = select(firstTrailingBit(u_input.a), countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-1i, -1i)), u_input.a >> (global1.b.e.yz % vec2<u32>(32u)))), true || (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 27404i, 10251i, var_2), vec4<i32>(var_2, u_input.a.x, -13618i, 2147483647i)) <= max(global1.a, var_2))) << (reverseBits(reverseBits(~(~global1.b.e.ww))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(240f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))), -784f)), vec3<i32>(u_input.b, var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.a, -var_2), abs(vec3<i32>(var_2, var_4.x, var_2)))), -(~vec4<i32>(27761i, 2147483647i, -1i, var_4.x) | ((vec4<i32>(1i, var_2, var_2, global1.a) << (global1.b.e % vec4<u32>(32u))) >> (global1.b.e % vec4<u32>(32u)))));
}

