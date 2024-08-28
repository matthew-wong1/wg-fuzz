struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = select(vec4<bool>(global0.a, -9684i > (1i | _wgslsmith_div_i32(6780i, u_input.a.x)), global0.a, !(global0.a & any(vec4<bool>(false, global0.a, global0.b.x, global0.b.x)))), vec4<bool>(true, !(global0.e.x < _wgslsmith_f_op_f32(floor(1000f))), -(~u_input.a.x) < u_input.a.x, any(!(!vec2<bool>(global0.b.x, global0.a)))), all(global0.b.yy));
    var var_1 = select(vec4<bool>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.e.x)))), global0.b.x), vec4<bool>(true, var_0.x, false, global0.b.x), select(vec4<bool>(select(global0.d.x >= global0.c.x, var_0.x, var_0.x), false, true, true), select(vec4<bool>(var_0.x && global0.b.x, any(vec4<bool>(true, true, global0.a, false)), true, true), vec4<bool>(false, var_0.x, !global0.b.x, any(global0.b.yx)), vec4<bool>(true, global0.b.x & global0.a, all(vec2<bool>(true, false)), any(vec2<bool>(global0.b.x, var_0.x)))), select(select(!vec4<bool>(global0.a, false, global0.b.x, true), !vec4<bool>(var_0.x, var_0.x, true, global0.a), select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, global0.b.x, global0.a, false), vec4<bool>(global0.b.x, global0.a, var_0.x, false))), vec4<bool>(false, false, all(vec4<bool>(global0.b.x, global0.a, global0.b.x, var_0.x)), true | global0.a), select(select(vec4<bool>(global0.a, var_0.x, true, true), vec4<bool>(false, false, var_0.x, false), true), vec4<bool>(false, true, global0.b.x, true), false))));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.e.x)) * global0.e.x)) != _wgslsmith_f_op_f32(-global0.e.x), all(global0.b));
    var var_3 = global0.b.x;
    var var_4 = vec2<u32>(global0.c.x, 29876u);
    return ~0u;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_sub_i32(u_input.a.x, i32(-1i) * -2147483647i)) < -firstLeadingBit(u_input.a.x), !global0.b, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(global0.d.xy, ~vec2<u32>(global0.d.x, 4294967295u)), firstLeadingBit(arg_0.d.zy)), ~_wgslsmith_add_vec3_u32(vec3<u32>(func_3(), global0.d.x, abs(1u)), ~arg_0.d | select(vec3<u32>(3468u, global0.d.x, 0u), global0.d, arg_0.a)), arg_0.e);
    var var_1 = Struct_1(!global0.a, arg_0.b, ~var_0.d.zz, _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.d.x, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(12649u, 0u, var_0.d.x) >> (vec3<u32>(var_0.d.x, 5811u, global0.c.x) % vec3<u32>(32u)), ~vec3<u32>(0u, arg_0.d.x, global0.c.x)), vec3<u32>(1u, arg_0.c.x >> (62021u % 32u), global0.c.x)) ^ firstTrailingBit(~vec3<u32>(99224u, 1u, arg_0.d.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(362f, _wgslsmith_f_op_f32(f32(-1f) * -1586f)), global0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), arg_0.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1290f, 166f, 1632f, 1439f), vec4<f32>(arg_0.e.x, -362f, 1000f, -540f), true))), any(global0.b.xy))));
    var var_2 = global0.d.x << (~arg_0.d.x % 32u);
    let var_3 = Struct_2(arg_0, arg_0);
    global0 = arg_0;
    return select(select(select(vec3<bool>(true, arg_0.a && true, u_input.a.x <= u_input.a.x), select(vec3<bool>(true, arg_0.b.x, false), vec3<bool>(arg_0.a, false, true), !arg_0.b), var_3.b.b), !vec3<bool>(var_1.b.x && var_0.b.x, !var_3.a.b.x, true), var_3.a.a), select(arg_0.b, !select(var_1.b, arg_0.b, 45323u <= var_1.c.x), var_0.b), any(var_0.b.zx));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    global0 = Struct_1(global0.b.x, !select(global0.b, select(vec3<bool>(false, global0.b.x, true), func_2(Struct_1(global0.a, global0.b, vec2<u32>(global0.c.x, 1u), vec3<u32>(4294967295u, global0.d.x, 0u), global0.e), false, global0.e.xz), select(vec3<bool>(true, global0.b.x, global0.a), vec3<bool>(true, true, global0.a), vec3<bool>(false, global0.b.x, true))), false), _wgslsmith_mod_vec2_u32(vec2<u32>(35021u, 1220u), vec2<u32>(global0.d.x >> (_wgslsmith_mod_u32(99627u, global0.d.x) % 32u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.d.x, 50286u, 0u), vec4<u32>(global0.c.x, global0.c.x, 41353u, global0.c.x))))), ~vec3<u32>(35258u, global0.d.x, global0.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1863f, global0.e.x, _wgslsmith_f_op_f32(exp2(global0.e.x)), global0.e.x) * _wgslsmith_f_op_vec4_f32(-global0.e)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(422f, global0.e.x, 466f, -1167f), global0.e), _wgslsmith_f_op_vec4_f32(-global0.e), !vec4<bool>(true, global0.b.x, true, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x)), _wgslsmith_f_op_vec4_f32(-global0.e))))));
    let var_0 = Struct_2(Struct_1(!(_wgslsmith_f_op_f32(-global0.e.x) < -2027f), func_2(Struct_1(select(global0.a, global0.b.x, false), !vec3<bool>(global0.b.x, true, global0.b.x), global0.c, global0.d, _wgslsmith_f_op_vec4_f32(floor(global0.e))), any(!vec4<bool>(global0.a, global0.a, global0.a, false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.x, global0.e.x)))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(global0.d.x, 5090u)), ~min(vec2<u32>(4294967295u, global0.c.x), vec2<u32>(global0.c.x, global0.c.x)), global0.d.zz), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(global0.d, global0.d), abs(global0.d)), ~(vec3<u32>(global0.c.x, global0.d.x, global0.d.x) & vec3<u32>(global0.c.x, global0.c.x, global0.d.x))), global0.e), Struct_1(true, vec3<bool>(select(global0.a, global0.b.x & true, false != global0.b.x), true, global0.b.x | true), vec2<u32>(~1u, abs(_wgslsmith_add_u32(global0.d.x, global0.d.x))), global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e.x, global0.e.x, 489f, -1299f), global0.e)), _wgslsmith_f_op_vec4_f32(round(global0.e))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.e))))));
    var var_1 = var_0.b.e.x;
    global0 = var_0.a;
    let var_2 = ~_wgslsmith_mult_u32(~global0.c.x, firstLeadingBit(98073u)) < var_0.a.c.x;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x) == func_1(_wgslsmith_mod_i32(u_input.a.x, reverseBits(u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, 22648i, u_input.a.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, 32588u, 2870u, global0.c.x), vec4<u32>(33650u, 0u, global0.c.x, 22454u)) % vec4<u32>(32u)), vec3<i32>(0i, -4458i, u_input.a.x) << ((global0.d >> (vec3<u32>(global0.d.x, global0.d.x, 121u) % vec3<u32>(32u))) % vec3<u32>(32u))), select(!select(vec3<bool>(false, global0.a, true), vec3<bool>(true, global0.b.x, false), global0.b), global0.b, false), global0.c, vec3<u32>(global0.c.x, firstTrailingBit(4294967295u), global0.d.x), vec4<f32>(global0.e.x, global0.e.x, global0.e.x, -1066f));
    let var_0 = Struct_2(Struct_1(true, global0.b, global0.d.yy, (_wgslsmith_add_vec3_u32(global0.d, vec3<u32>(global0.c.x, global0.d.x, 213u)) | ~vec3<u32>(0u, global0.c.x, 101727u)) ^ _wgslsmith_mod_vec3_u32(global0.d, _wgslsmith_clamp_vec3_u32(global0.d, vec3<u32>(11797u, global0.c.x, 0u), vec3<u32>(global0.d.x, global0.d.x, 22515u))), _wgslsmith_f_op_vec4_f32(exp2(global0.e))), Struct_1(true, select(global0.b, !global0.b, select(vec3<bool>(global0.b.x, global0.b.x, global0.a), !vec3<bool>(global0.a, false, false), false)), ~global0.d.zy, ~global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.e))))));
    global0 = Struct_1(true, vec3<bool>(!var_0.b.a, !global0.a, select(true, all(!vec3<bool>(false, false, global0.b.x)), true)), _wgslsmith_mod_vec2_u32(var_0.a.d.yy, vec2<u32>(~global0.d.x, 52227u)), vec3<u32>(var_0.a.d.x, _wgslsmith_clamp_u32(~1u, abs(~var_0.a.d.x), 77676u), _wgslsmith_sub_u32(~(0u & global0.c.x), global0.d.x)), vec4<f32>(var_0.b.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - 1679f) * _wgslsmith_div_f32(-2438f, global0.e.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b.e.x)), 2113f)), global0.e.x, 697f));
    var var_1 = var_0.b;
    let var_2 = any(select(vec3<bool>(-1347f >= _wgslsmith_div_f32(var_1.e.x, var_0.b.e.x), _wgslsmith_f_op_f32(-540f + -433f) < var_0.a.e.x, var_1.b.x), var_1.b, !(!func_2(Struct_1(global0.b.x, vec3<bool>(false, global0.a, var_1.a), var_1.c, vec3<u32>(global0.c.x, 0u, 1u), global0.e), true, var_0.b.e.zw))));
    let var_3 = Struct_1(!var_1.b.x, !select(select(vec3<bool>(var_1.a, false, false), global0.b, !vec3<bool>(var_2, var_0.b.b.x, false)), select(func_2(Struct_1(false, vec3<bool>(var_0.b.b.x, var_1.a, true), vec2<u32>(var_0.b.d.x, global0.d.x), var_1.d, vec4<f32>(var_0.b.e.x, 1078f, var_1.e.x, 1000f)), false, vec2<f32>(921f, var_0.a.e.x)), global0.b, all(var_1.b.yz)), global0.b), select(~var_1.d.yz, vec2<u32>(global0.d.x, var_0.b.d.x), global0.b.zy) & var_1.c, vec3<u32>(1u, 1054u, var_1.c.x) ^ vec3<u32>(countOneBits(var_0.b.d.x), 0u >> (max(29621u, global0.d.x) % 32u), 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.e.x))), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.e.x), 237f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1160f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_1.e.x)), u_input.a.x, ~u_input.a.yy, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1937f, var_1.e.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.a.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(-1789f + -2027f))))), -1393f), 1u);
}

