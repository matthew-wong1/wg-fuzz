struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.d, select(u_input.d, _wgslsmith_add_vec2_i32(select(vec2<i32>(arg_0, u_input.d.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-4777i, 62050i), vec2<i32>(u_input.d.x, u_input.d.x)), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, arg_1), arg_1)), ~(-vec2<i32>(1i, arg_0))), 0u == u_input.a.x));
    var var_1 = Struct_1(!vec2<bool>(any(global2.zy), global1.x), abs(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 116470u), 1u), ~min(4294967295u, u_input.b), u_input.c.x)), countOneBits(u_input.d.x));
    let var_2 = ~var_1.b.x;
    let var_3 = abs(4294967295u);
    var var_4 = vec2<i32>(~var_0.x, _wgslsmith_add_i32(i32(-1i) * -(~(-78608i)), 1i));
    return global2.xx;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec4<bool> {
    return !vec4<bool>(false, !any(select(global1.wyz, global1.zxw, vec3<bool>(arg_3, true, false))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(407f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1673f, -1868f)));
}

fn func_2() -> vec2<bool> {
    global1 = !func_4(global2.x | false, Struct_1(select(func_3(u_input.d.x, global1.x), global1.wz, !global1.wx), u_input.c, 24980i), _wgslsmith_add_i32(abs(~u_input.d.x), _wgslsmith_mult_i32(select(u_input.d.x, u_input.d.x, global2.x), u_input.d.x & u_input.d.x)), !global2.x);
    global2 = select(!(!global1.xxy), !global1.wwx, global1.wyy);
    var var_0 = u_input.c.x | abs(countOneBits(u_input.b));
    let var_1 = global1.ywz;
    var var_2 = Struct_1(select(var_1.yy, vec2<bool>(all(!vec4<bool>(global1.x, true, global2.x, global2.x)), func_3(firstTrailingBit(u_input.d.x), any(vec4<bool>(false, global2.x, var_1.x, false))).x), all(select(select(vec4<bool>(false, global2.x, var_1.x, global2.x), vec4<bool>(false, true, false, global1.x), vec4<bool>(false, true, global1.x, var_1.x)), select(vec4<bool>(false, var_1.x, global2.x, global1.x), vec4<bool>(false, var_1.x, true, false), false), select(var_1.x, false, global2.x)))), u_input.c, 18847i);
    return select(var_1.zx, vec2<bool>(true, all(!vec4<bool>(global2.x, false, false, global2.x))), vec2<bool>(func_4(all(vec2<bool>(false, var_1.x)), Struct_1(vec2<bool>(true, true), var_2.b, var_2.c), var_2.c, false).x & true, true));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = select(vec3<bool>(global2.x, any(!(!vec4<bool>(false, arg_0.a.x, true, global1.x))), global1.x), vec3<bool>(true, any(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(834f)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-494f)), -1149f)), !vec3<bool>(!(u_input.d.x >= -18302i), arg_0.a.x, all(func_3(arg_0.c, false))));
    global1 = !select(vec4<bool>(any(func_4(false, arg_0, u_input.d.x, false).zz), true, global1.x, global1.x || func_4(true, arg_0, u_input.d.x, global2.x).x), select(select(!vec4<bool>(false, arg_0.a.x, global1.x, true), vec4<bool>(global2.x, true, false, true), true), vec4<bool>(global1.x, u_input.d.x <= 2889i, !global2.x, arg_0.a.x), true), vec4<bool>(false, func_4(all(vec3<bool>(arg_0.a.x, true, global2.x)), Struct_1(vec2<bool>(false, false), arg_0.b, 47931i), u_input.d.x, false).x, arg_0.a.x, all(select(vec2<bool>(false, false), vec2<bool>(global2.x, global1.x), vec2<bool>(false, true)))));
    let var_0 = abs(~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, -54442i), firstLeadingBit(u_input.d.x), 0i, -u_input.d.x), firstTrailingBit(vec4<i32>(0i, 2147483647i, u_input.d.x, 48695i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 17751u, arg_0.b.x), vec4<u32>(1u, arg_0.b.x, u_input.b, u_input.b)) % vec4<u32>(32u))));
    var var_1 = arg_0.a.x;
    var var_2 = Struct_1(arg_0.a, vec3<u32>(u_input.b, firstLeadingBit(arg_0.b.x), ~u_input.a.x), arg_0.c);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(global1.ww, vec3<u32>(~_wgslsmith_add_u32(1u, _wgslsmith_add_u32(u_input.a.x, 62135u)), _wgslsmith_mult_u32(~4294967295u, 54670u), ~1u), arg_0.c);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(797f, _wgslsmith_f_op_f32(318f - _wgslsmith_f_op_f32(ceil(-1000f))), arg_0.a.x)) - 139f);
    var var_1 = u_input.c;
    global0 = all(vec4<bool>(19750u < _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(108094u, 1u, arg_2.b.x)), true, !(_wgslsmith_clamp_u32(436u, 31392u, 4294967295u) == ~1u), any(vec3<bool>(true, true, var_1.x > arg_0.b.x))));
    global1 = !vec4<bool>(global1.x, arg_2.b.x != ~(~arg_0.b.x), false, global1.x);
    global2 = global1.xzx;
    return !vec4<bool>(any(!vec4<bool>(true, arg_1.x, arg_2.a.x, arg_0.a.x)), any(!(!arg_0.a)), true, all(select(func_4(true, arg_2, -12070i, global1.x).yyw, global1.yyz, arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(select(vec3<bool>(!global1.x, true, true), vec3<bool>(global2.x, -8166i > u_input.d.x, !global1.x), vec3<bool>(global2.x, false, all(vec2<bool>(true, true)))), vec3<bool>(!global2.x, true, true), all(global1.wz)), !global1.wyz, any(func_6(Struct_1(global1.zw, vec3<u32>(4294967295u, 12352u, u_input.b), u_input.d.x), select(global2.xz, !vec2<bool>(global2.x, global2.x), !global2.zx), func_5(Struct_1(vec2<bool>(global1.x, false), u_input.c, u_input.d.x), func_1(Struct_1(vec2<bool>(true, global1.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.b), 1i)), Struct_1(global2.xz, u_input.c, u_input.d.x), func_1(Struct_1(global1.zz, u_input.c, 19185i))))));
    global0 = false;
    var var_0 = func_1(func_5(Struct_1(!vec2<bool>(global1.x, global1.x), firstTrailingBit(vec3<u32>(u_input.a.x, 26417u, u_input.a.x) ^ u_input.c), ~18511i), func_1(func_1(func_1(Struct_1(global2.yx, u_input.c, u_input.d.x)))), Struct_1(!(!global2.zy), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.b, 169279u), u_input.c), _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), Struct_1(global1.wx, u_input.c, 0i)));
    let var_1 = Struct_1(var_0.a, ~firstLeadingBit(func_1(Struct_1(global2.zy, var_0.b, 78118i)).b) | ~vec3<u32>(abs(212u), 17711u, var_0.b.x), 0i);
    global0 = ~_wgslsmith_clamp_u32(~(~u_input.b), u_input.a.x, var_0.b.x) < 13072u;
    var var_2 = var_0.c;
    let var_3 = vec3<i32>(var_1.c, _wgslsmith_div_i32(-1i ^ var_1.c, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(19454i, 1i, var_0.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c, 25441i, 0i), vec3<i32>(3660i, 1i, u_input.d.x))))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-2082i, var_0.c, 12705i, var_1.c), abs(firstTrailingBit(vec4<i32>(var_1.c, var_1.c, u_input.d.x, var_0.c)))), -max(reverseBits(vec4<i32>(2147483647i, 2034i, -44116i, -49653i)), firstTrailingBit(vec4<i32>(66153i, u_input.d.x, -2147483647i, var_1.c)))));
    global0 = func_4(var_1.a.x, var_1, -var_1.c, true).x & var_1.a.x;
    var var_4 = ~(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec3_i32(var_3, ~var_3)), ~4305u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(585f, -566f))))))));
}

