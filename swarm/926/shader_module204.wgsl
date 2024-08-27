struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 994f, vec4<i32>(43981i, 30184i, -23638i, -1i), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32) -> u32 {
    global0 = Struct_1(1u, global0.b, vec4<i32>(2147483647i, -_wgslsmith_mod_i32(arg_2, global0.c.x), -1i, abs(-2147483647i) ^ ((global0.c.x ^ 0i) ^ 1i)), !(!(!select(global0.d, global0.d, global0.d))));
    global0 = Struct_1(3679u, global0.b, _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, -2147483647i), vec2<i32>(-36201i, 76078i)), _wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(-1i, u_input.b.x, u_input.a.x, global0.c.x)), -1i, ~48732i), ~global0.c), vec4<bool>(1u <= countOneBits(u_input.c.x), false, arg_1, all(!vec2<bool>(global0.d.x, arg_0))));
    var var_0 = ~vec4<u32>(u_input.c.x, ~_wgslsmith_add_u32(1u, select(global0.a, 2818u, global0.d.x)), 4294967295u, ~_wgslsmith_mod_u32(firstLeadingBit(global0.a), _wgslsmith_mult_u32(global0.a, 0u)));
    let var_1 = u_input.c;
    var_0 = reverseBits(abs(vec4<u32>(~_wgslsmith_mult_u32(u_input.c.x, 0u), reverseBits(~14583u), global0.a, 55266u)));
    return global0.a;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, 1u & _wgslsmith_mod_u32(arg_0, global0.a), arg_0, u_input.c.x), vec4<u32>(global0.a, ~arg_0, 4294967295u, _wgslsmith_mod_u32(1u << (arg_0 % 32u), 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f - global0.b) * -168f)))), -(~global0.c), global0.d);
    global0 = var_1;
    global0 = Struct_1(func_3(false, !all(!var_1.d), -(~(-54295i))), -398f, vec4<i32>(select(var_1.c.x, _wgslsmith_dot_vec4_i32(abs(global0.c), global0.c), all(select(global0.d.yw, global0.d.zx, false))), countOneBits(-938i), -2147483647i ^ (-1i ^ global0.c.x), u_input.a.x), global0.d);
    global0 = Struct_1(~arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(808f * var_1.b) + global0.b))), var_1.c, global0.d);
    return -1473f;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(1u, _wgslsmith_f_op_f32(func_2(~(~firstTrailingBit(4294967295u)))), (vec4<i32>(14029i, arg_1.c.x, u_input.a.x, arg_1.c.x) >> (vec4<u32>(u_input.c.x, _wgslsmith_add_u32(1u, u_input.c.x), ~global0.a, 1u >> (0u % 32u)) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_sub_i32(~global0.c.x, -1i), arg_2.x, u_input.a.x << (~24918u % 32u), -arg_2.x), select(select(arg_1.d, !(!vec4<bool>(global0.d.x, global0.d.x, false, arg_1.d.x)), select(global0.d, !vec4<bool>(global0.d.x, arg_1.d.x, false, arg_1.d.x), select(vec4<bool>(true, global0.d.x, false, global0.d.x), global0.d, arg_1.d.x))), !(!global0.d), vec4<bool>(arg_1.d.x, true, true, all(!vec2<bool>(global0.d.x, arg_1.d.x)))));
    global0 = Struct_1(arg_1.a << (73018u % 32u), _wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -856f, false))))), arg_1.c, !(!select(select(global0.d, vec4<bool>(false, arg_1.d.x, global0.d.x, false), arg_1.d), !arg_1.d, select(global0.d, global0.d, global0.d))));
    var var_0 = vec4<i32>(arg_2.x, 1i, _wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, arg_2.x), ~arg_2.wz)), u_input.a.x ^ 2147483647i), -_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(8015i, arg_1.c.x, 0i, -2147483647i), vec4<i32>(-2147483647i, arg_1.c.x, 19086i, global0.c.x)), reverseBits(abs(vec4<i32>(-1i, 0i, 1i, arg_2.x)))));
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(select(select(vec4<u32>(51927u, arg_1.a, arg_1.a, 1u), vec4<u32>(1u, 0u, 54548u, 4294967295u), global0.d) >> (~vec4<u32>(global0.a, u_input.c.x, 0u, 44912u) % vec4<u32>(32u)), reverseBits(vec4<u32>(0u, 88759u, 0u, 21979u) & vec4<u32>(1u, 4294967295u, 0u, u_input.c.x)), arg_1.d)), firstLeadingBit(~vec4<u32>(_wgslsmith_clamp_u32(1u, 33732u, global0.a), ~arg_1.a, 54194u, _wgslsmith_mod_u32(4294967295u, 1u))));
    let var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    let var_0 = countOneBits(18247i);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -985f);
    var var_2 = select(arg_1.d.yxz, !select(select(arg_1.d.wzx, !global0.d.xwy, global0.d.x), func_1(vec2<f32>(global0.b, global0.b), func_1(arg_3.zy, Struct_1(global0.a, 468f, global0.c, arg_1.d), vec4<i32>(global0.c.x, var_0, var_0, 4314i), -1261f), -global0.c, _wgslsmith_f_op_f32(global0.b * global0.b)).d.xwy, vec3<bool>(true, func_1(vec2<f32>(arg_3.x, global0.b), arg_1, global0.c, global0.b).d.x, all(vec4<bool>(arg_1.d.x, arg_1.d.x, true, arg_1.d.x)))), select(!vec3<bool>(arg_1.d.x, global0.d.x, false), !vec3<bool>(true | global0.d.x, global0.d.x, false), ((arg_1.d.x || true) | true) && false));
    var var_3 = vec2<u32>(19791u, ~1u);
    let var_4 = arg_1.b;
    return _wgslsmith_clamp_u32(1u, global0.a, 4996u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(countOneBits(func_4(Struct_2(global0.c.x, 32620i), func_1(vec2<f32>(global0.b, global0.b), Struct_1(u_input.c.x, global0.b, global0.c, global0.d), global0.c, global0.b), -2147483647i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1136f, 1000f, -325f, 268f))))), 29797u), 0u);
    let var_1 = vec4<bool>(-867f <= func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1141f, global0.b) + vec2<f32>(global0.b, -1116f))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1453f, global0.b) - vec2<f32>(-1000f, global0.b)), Struct_1(0u, 504f, global0.c, vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x)), ~vec4<i32>(u_input.b.x, 14296i, 25177i, u_input.a.x), -101f), -global0.c >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 18417u, var_0, 0u), vec4<u32>(1u, var_0, 60030u, global0.a)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global0.b))).b, false, _wgslsmith_mod_i32(global0.c.x, _wgslsmith_dot_vec3_i32(u_input.a, global0.c.xyz)) > 0i, global0.d.x);
    var var_2 = vec3<u32>(~u_input.c.x, countOneBits(~(~1u)), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(64902u, global0.a, 4294967295u, 109087u), vec4<u32>(u_input.c.x, global0.a, 25949u, var_0)) >> (~31296u % 32u))) ^ u_input.c;
    let var_3 = ~((~vec4<u32>(4294967295u, 1u, 25278u, u_input.c.x) ^ vec4<u32>(global0.a, 7594u, global0.a, 4294967295u)) & (~vec4<u32>(var_2.x, var_0, u_input.c.x, global0.a) & countOneBits(vec4<u32>(u_input.c.x, 80809u, var_0, 68532u)))) >> (abs(~vec4<u32>(func_4(Struct_2(2147483647i, -33059i), Struct_1(var_2.x, global0.b, vec4<i32>(-1i, u_input.a.x, global0.c.x, -16707i), var_1), -2147483647i, vec4<f32>(global0.b, global0.b, global0.b, 1853f)), _wgslsmith_add_u32(59699u, global0.a), ~0u, 1u)) % vec4<u32>(32u));
    let var_4 = vec4<i32>(u_input.a.x, ~(-u_input.b.x), -1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec2<u32>(var_2.x, 2796u), global0.c.ywz, -44019i);
}

