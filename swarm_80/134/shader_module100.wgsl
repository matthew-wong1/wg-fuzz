struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    let var_0 = global1.c;
    var var_1 = select(select(global1.b.b.x, u_input.c << (global1.a.x % 32u), arg_1.x), -14317i, !var_0.x);
    global1 = Struct_3(abs(~(~(~vec4<u32>(u_input.d.x, 49080u, 23239u, global1.a.x)))), global1.b, arg_1.wwy);
    var var_2 = global0[_wgslsmith_index_u32(global1.a.x, 1u)];
    let var_3 = _wgslsmith_f_op_f32(-global1.b.a.b.x);
    return u_input.d.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    global1 = Struct_3(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, 17676u, u_input.d.x) | vec4<u32>(u_input.d.x, global1.a.x, 4294967295u, global1.a.x), ~_wgslsmith_add_vec4_u32(u_input.d, global1.a)) << (vec4<u32>(_wgslsmith_clamp_u32(func_3(-628f, vec4<bool>(true, true, false, arg_0.x)), min(51555u, 63051u), global1.a.x & 32271u), global1.a.x, ~56126u, global1.a.x) % vec4<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.b.a.a), global1.b.a.b), vec4<i32>(-u_input.a, _wgslsmith_add_i32(-5360i, global1.b.b.x ^ global1.b.b.x), -1878i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15879i, -2147483647i), vec3<i32>(u_input.a, 5132i, u_input.a)))), vec3<bool>((4294967295u | _wgslsmith_add_u32(global1.a.x, u_input.d.x)) == ~abs(u_input.d.x), any(!vec4<bool>(false, global1.c.x, arg_0.x, false)), false));
    let var_0 = global1.b.a.b.x;
    var var_1 = Struct_2(Struct_1(vec2<f32>(-219f, _wgslsmith_f_op_f32(global1.b.a.a.x - _wgslsmith_f_op_f32(floor(1265f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.a.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-425f, 1630f, global1.b.a.b.x, global1.b.a.a.x))))))), global1.b.b);
    var var_2 = var_1.b;
    var_2 = var_1.b >> (select(u_input.d, vec4<u32>(~(u_input.b.x >> (98411u % 32u)), _wgslsmith_clamp_u32(~7342u, 4755u, firstTrailingBit(1u)), ~(~u_input.b.x), firstLeadingBit(1u)), !(!(!vec4<bool>(true, global1.c.x, arg_0.x, arg_0.x)))) % vec4<u32>(32u));
    return Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, ~_wgslsmith_add_vec4_u32(vec4<u32>(30663u, 202u, 6616u, global1.a.x), global1.a), ~(~u_input.d)), ~(~global1.a) << (u_input.d % vec4<u32>(32u))), Struct_2(var_1.a, _wgslsmith_sub_vec4_i32(-global1.b.b >> (~u_input.d % vec4<u32>(32u)), global1.b.b)), !vec3<bool>(!global1.c.x & !arg_0.x, false, all(!vec4<bool>(global1.c.x, false, arg_0.x, global1.c.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = func_2(select(select(select(vec4<bool>(arg_0.c.x, arg_0.c.x, false, global1.c.x), !vec4<bool>(arg_0.c.x, arg_1.c.x, false, true), true), select(select(vec4<bool>(false, true, arg_0.c.x, false), vec4<bool>(false, false, arg_0.c.x, true), vec4<bool>(global1.c.x, arg_0.c.x, false, true)), vec4<bool>(true, arg_1.c.x, global1.c.x, false), select(vec4<bool>(true, arg_0.c.x, arg_0.c.x, global1.c.x), vec4<bool>(arg_0.c.x, arg_1.c.x, false, true), vec4<bool>(global1.c.x, arg_0.c.x, arg_1.c.x, arg_1.c.x))), select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, false), vec4<bool>(arg_0.c.x, global1.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(false, global1.c.x, arg_0.c.x, arg_1.c.x)), vec4<bool>(arg_1.c.x, arg_0.c.x, true, global1.c.x), select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_0.c.x, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, arg_1.c.x)))), select(!vec4<bool>(false, false, true, global1.c.x), select(select(vec4<bool>(false, arg_0.c.x, false, true), vec4<bool>(true, true, false, arg_0.c.x), vec4<bool>(false, global1.c.x, false, arg_0.c.x)), !vec4<bool>(global1.c.x, true, global1.c.x, false), global1.c.x != true), select(select(vec4<bool>(true, arg_0.c.x, arg_1.c.x, true), vec4<bool>(false, global1.c.x, true, arg_1.c.x), arg_0.c.x), vec4<bool>(global1.c.x, arg_0.c.x, true, true), global1.c.x || arg_1.c.x)), vec4<bool>(!all(vec4<bool>(arg_0.c.x, false, true, false)), arg_1.c.x, false, true))).b.a;
    let var_1 = arg_0.b.a.a.x;
    global1 = Struct_3(arg_0.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(~(~arg_1.a.x)), arg_1.a.x, ~u_input.b.x), 1u)], arg_0.c);
    var var_2 = _wgslsmith_dot_vec2_u32(~global1.a.xx << (vec2<u32>(4294967295u, ~1u) % vec2<u32>(32u)), ~vec2<u32>(60244u, arg_1.a.x));
    var var_3 = global1.b;
    return Struct_3(~countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 19020u, arg_1.a.x, arg_0.a.x), global1.a)), Struct_2(func_2(vec4<bool>(true, false, arg_0.c.x, true)).b.a, min(~vec4<i32>(global1.b.b.x, arg_0.b.b.x, 0i, arg_1.b.b.x), arg_0.b.b | vec4<i32>(arg_0.b.b.x, -1i, 2147483647i, arg_2.x)) & (vec4<i32>(arg_2.x, 2147483647i, arg_2.x, 2147483647i) ^ (vec4<i32>(u_input.c, 2147483647i, 47066i, arg_2.x) << (vec4<u32>(384u, global1.a.x, arg_1.a.x, arg_1.a.x) % vec4<u32>(32u))))), arg_1.c);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = vec4<i32>(select(_wgslsmith_sub_i32(-50029i, _wgslsmith_mult_i32(1i, -1i)), -(~global1.b.b.x), global1.c.x && false), _wgslsmith_mult_i32(0i, global1.b.b.x), u_input.a, _wgslsmith_sub_i32(-55563i, min(u_input.c, 1210i) & _wgslsmith_add_i32(u_input.c, u_input.c))) << (~vec4<u32>(~23811u, ~(~4294967295u), 80156u | global1.a.x, 8453u) % vec4<u32>(32u));
    global1 = func_4(func_2(vec4<bool>(true, 0u <= _wgslsmith_dot_vec3_u32(global1.a.yyx, vec3<u32>(global1.a.x, global1.a.x, u_input.b.x)), true, global1.c.x)), func_2(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x)), vec2<i32>(~1i, ~_wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(global1.b.b.x, global1.b.b.x, 0i))), ~global1.b.b.wz);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.b.a.a.x, 785f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.a.a.x, -504f)))), global1.b.a.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, arg_0.b.x, -168f, -797f) + vec4<f32>(1235f, arg_0.a.x, arg_0.a.x, global1.b.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, 1454f, -834f, global1.b.a.b.x))) - _wgslsmith_div_vec4_f32(global1.b.a.b, arg_0.b)))));
    var var_2 = func_4(Struct_3(~max(vec4<u32>(u_input.d.x, global1.a.x, 3157u, 19020u) ^ u_input.d, ~u_input.d), global0[_wgslsmith_index_u32(84005u, 1u)], vec3<bool>(var_1.a.x == var_1.b.x, all(vec3<bool>(true, global1.c.x, true)), !global1.c.x)), Struct_3(vec4<u32>(1u, 44715u, ~0u, _wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.b.yz) & ~u_input.d.x), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 23878u), 1u)], !select(vec3<bool>(false, true, global1.c.x), global1.c, global1.c.x || false)), ~_wgslsmith_add_vec2_i32(var_0.zx, ~vec2<i32>(-1i, global1.b.b.x)), select(_wgslsmith_mod_vec2_i32(global1.b.b.xz & (global1.b.b.zw ^ vec2<i32>(global1.b.b.x, global1.b.b.x)), func_4(Struct_3(vec4<u32>(50517u, global1.a.x, global1.a.x, 19185u), Struct_2(Struct_1(vec2<f32>(var_1.a.x, -619f), global1.b.a.b), global1.b.b), vec3<bool>(false, global1.c.x, global1.c.x)), Struct_3(u_input.d, Struct_2(global1.b.a, global1.b.b), vec3<bool>(true, global1.c.x, global1.c.x)), global1.b.b.zz, vec2<i32>(global1.b.b.x, 0i)).b.b.xx ^ global1.b.b.wx), ~vec2<i32>(1i, 1i), vec2<bool>(any(select(vec4<bool>(global1.c.x, false, false, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), global1.c.x)), global1.c.x))).b;
    var_0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(global1.b.b.x, var_2.b.x >> (0u % 32u), 30006i, 1i) & vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.b.x, -16006i, global1.b.b.x, 1i), vec4<i32>(-40425i, global1.b.b.x, 0i, -2843i)) << (u_input.b.x % 32u), var_0.x, ~(~17328i)), vec4<i32>(_wgslsmith_mod_i32(-23262i, _wgslsmith_div_i32(~6913i, var_0.x)), -2147483647i, ~((var_0.x << (global1.a.x % 32u)) | -global1.b.b.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-11527i, var_0.x ^ -1i), func_2(vec4<bool>(true, global1.c.x, true, false)).b.b.x)));
    return Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(global1.a.xy, ~u_input.b.yz << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global1.a.x), vec2<u32>(global1.a.x, global1.a.x)) % vec2<u32>(32u))), global1.a.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.x, 106090u, global1.a.x), global1.a.wxw), func_3(arg_0.a.x, !select(vec4<bool>(true, global1.c.x, global1.c.x, true), vec4<bool>(false, false, true, true), vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x)))), global1.b, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.a.a), vec2<f32>(-265f, global1.b.a.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(295f, global1.b.a.a.x, _wgslsmith_f_op_f32(-global1.b.a.a.x), _wgslsmith_f_op_f32(abs(global1.b.a.b.x))) - vec4<f32>(-1133f, _wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(f32(-1f) * -1902f), -596f))));
    let var_1 = _wgslsmith_add_vec4_i32(abs(var_0.b.b), reverseBits(vec4<i32>(_wgslsmith_div_i32(u_input.c, var_0.b.b.x), ~33316i, _wgslsmith_dot_vec4_i32(global1.b.b, vec4<i32>(-13085i, -13673i, u_input.c, u_input.a)), -28570i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.a.x, _wgslsmith_mult_u32(1u, var_0.a.x), ~u_input.b.x, _wgslsmith_sub_u32(global1.a.x, 1u)), max(var_0.a, ~var_0.a)) % vec4<u32>(32u)));
    global1 = Struct_3(global1.a, global0[_wgslsmith_index_u32(global1.a.x, 1u)], !vec3<bool>(any(vec4<bool>(false, true, true, false)) != true, global1.c.x, global1.c.x));
    global1 = func_4(func_2(vec4<bool>(global1.c.x, true, ~u_input.b.x >= var_0.a.x, u_input.b.x != u_input.d.x)), Struct_3(vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.d, var_0.a), abs(~u_input.d.x), _wgslsmith_mod_u32(~var_0.a.x, var_0.a.x), 67382u), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.b.a.a - vec2<f32>(1000f, 180f)), global1.b.a.b), _wgslsmith_sub_vec4_i32(var_0.b.b & vec4<i32>(1i, global1.b.b.x, 1i, var_0.b.b.x), global1.b.b << (vec4<u32>(0u, 19538u, 1u, 1u) % vec4<u32>(32u)))), !var_0.c), global1.b.b.zw | _wgslsmith_mod_vec2_i32(var_1.wy >> (~u_input.d.wz % vec2<u32>(32u)), var_1.zx), vec2<i32>(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_0.b.b.x, -1i), var_0.b.b.zyy), _wgslsmith_mult_i32(var_0.b.b.x, -44704i)), -2147483647i));
    global1 = Struct_3(func_2(!select(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), select(vec4<bool>(global1.c.x, var_0.c.x, var_0.c.x, global1.c.x), vec4<bool>(var_0.c.x, true, global1.c.x, var_0.c.x), vec4<bool>(var_0.c.x, false, true, false)), true & var_0.c.x)).a, Struct_2(global1.b.a, -global1.b.b), vec3<bool>(!var_0.c.x, any(!select(vec4<bool>(global1.c.x, var_0.c.x, global1.c.x, var_0.c.x), vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x), var_0.c.x)), false));
    global1 = var_0;
    let var_2 = (global1.b.b.yxz >> (abs(vec3<u32>(firstTrailingBit(1u), 58718u, reverseBits(25035u))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(~(~vec3<i32>(var_0.b.b.x, -61235i, u_input.a)) >> (var_0.a.xww % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(func_4(var_0, var_0, global1.b.b.zw, vec2<i32>(-53349i, -1i)).b.b.ywx << (vec3<u32>(var_0.a.x, 21824u, 53112u) % vec3<u32>(32u)), -var_1.xwx << (~global1.a.xyw % vec3<u32>(32u))));
    let var_3 = vec2<bool>(global1.c.x, global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~1i);
}

