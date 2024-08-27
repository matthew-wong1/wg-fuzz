struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: vec4<f32>;

var<private> global2: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> i32 {
    global1 = vec4<f32>(1074f, _wgslsmith_f_op_f32(1000f * arg_3.x), 1683f, -849f);
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_2(arg_0.a);
    var var_1 = u_input.c.wy;
    var var_2 = min(max(~u_input.c.wxy, vec3<u32>(~var_1.x << (~u_input.c.x % 32u), ~_wgslsmith_add_u32(55189u, 43933u), select(14882u, var_1.x, arg_1.x) >> (var_1.x % 32u))), ~(~u_input.c.zzy));
    return _wgslsmith_mod_i32(~_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(var_0.a.a, 1i))), -1i);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(countOneBits(6610i), ~0i), func_3(Struct_2(Struct_1(u_input.b, vec4<bool>(true, false, false, true))), select(vec4<bool>(true, var_0, global2.x, global2.x), vec4<bool>(var_0, true, true, false), var_0), _wgslsmith_div_vec2_f32(global1.zw, vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-global1.wx)), ~abs(0i)), vec4<bool>(all(!vec4<bool>(var_0, false, global2.x, true)), false, u_input.c.x <= u_input.e, global2.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))) - -389f), global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(947f, global1.x)), global1.x)))));
    var var_0 = Struct_4(func_2().a);
    var_0 = Struct_4(arg_0.a);
    let var_1 = -arg_0.a.a;
    global0 = array<vec3<f32>, 4>();
    return Struct_4(Struct_1(var_0.a.a, vec4<bool>(false & (true || var_0.a.b.x), any(var_0.a.b.www), global2.x && !global2.x, (u_input.e << (1663u % 32u)) <= (1u >> (1u % 32u)))));
}

fn func_5(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_3(firstLeadingBit(min(abs(~vec4<i32>(arg_0.a.a, -47003i, -4993i, -2147483647i)), abs(-vec4<i32>(arg_0.a.a, 34282i, arg_0.a.a, arg_0.a.a)))), Struct_1(0i, !arg_0.a.b));
    let var_1 = arg_0.a.a;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -1918f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(1509f))), vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), -986f, _wgslsmith_f_op_f32(f32(-1f) * -147f), 1f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -614f, global1.x, global1.x), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -907f, global1.x), vec4<f32>(-1298f, global1.x, 713f, -1000f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(819f, -1600f, -772f, global1.x), vec4<f32>(global1.x, global1.x, -1064f, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, -1508f, -306f, global1.x))))))), !var_0.b.b.x));
    let var_2 = Struct_5(-_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-51688i, arg_0.a.a), ~vec2<i32>(25121i, -1i)), -vec2<i32>(-39089i, var_1) & vec2<i32>(2147483647i, var_1)), ~abs(u_input.d) & vec3<i32>(_wgslsmith_add_i32(var_0.b.a, u_input.d.x | u_input.d.x), -(~arg_0.a.a), func_2().a.a), u_input.e);
    global2 = !(!vec4<bool>(var_0.b.b.x, ~27474u != var_2.c, func_4(Struct_2(var_0.b)).a.b.x, any(!vec4<bool>(global2.x, false, true, false))));
    return -764i;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = any(arg_0.b.zw);
    var_0 = true;
    let var_1 = vec4<i32>(2147483647i, _wgslsmith_mult_i32(arg_0.a, u_input.b), func_5(func_4(func_2())), arg_0.a);
    let var_2 = select(func_4(func_2()).a.b.xy, vec2<bool>(true, !any(func_2().a.b.xw)), (~(~0u) >> (u_input.e % 32u)) <= u_input.e);
    var_0 = all(!vec4<bool>(true, false, false, true || (u_input.e > u_input.c.x)));
    return arg_0.b;
}

fn func_6(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = global1.x;
    var var_1 = arg_0.a.b;
    let var_2 = Struct_1(1i, !func_4(Struct_2(arg_0.a)).a.b);
    global2 = arg_0.a.b;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(442f))), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2164f, -953f, 1376f)))))), var_1.x));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.a.a, 2147483647i, var_2.a)), -vec3<i32>(u_input.b, -2147483647i, u_input.d.x)), vec3<i32>(-var_2.a, -2147483647i, -24926i)), reverseBits(-9800i & (var_2.a & u_input.a)), ~1i, -77714i) ^ -vec4<i32>(_wgslsmith_mult_i32(0i, -56231i), u_input.d.x, -1i, arg_0.a.a);
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_4 {
    global0 = array<vec3<f32>, 4>();
    global2 = select(vec4<bool>(!(func_1(Struct_1(-9711i, vec4<bool>(global2.x, global2.x, global2.x, global2.x))).x | global2.x), false, global2.x, false), vec4<bool>(all(vec3<bool>(true, global2.x, all(global2.yz))), global2.x, !global2.x, !func_4(Struct_2(Struct_1(-40156i, vec4<bool>(false, false, false, true)))).a.b.x), !global2.x);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-713f, -122f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(global1.x))))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global1.x, global1.x, 591f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1340f, -718f)) + 607f), 1000f, 630f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, 2529f, global1.x, -1507f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, 839f, 1712f, global1.x)))))));
    global2 = vec4<bool>(any(func_2().a.b.zy), global2.x, global2.x, any(select(global2.wwy, vec3<bool>(true, global2.x | false, true), true)));
    return Struct_4(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(!(((-58866i | u_input.b) >= select(2147483647i, -2147483647i, true)) && global2.x), !global2.x, true | global2.x, select(true, all(!(!vec2<bool>(global2.x, global2.x))), true));
    var var_0 = -967f;
    var var_1 = func_7(u_input.c.wy, func_6(Struct_2(Struct_1(u_input.d.x, func_1(Struct_1(12955i, vec4<bool>(false, false, false, global2.x)))))));
    var var_2 = u_input.c.zyw >> (_wgslsmith_sub_vec3_u32(~u_input.c.wwz, _wgslsmith_div_vec3_u32((u_input.c.ywz >> (u_input.c.zzy % vec3<u32>(32u))) >> (~vec3<u32>(4294967295u, 1u, u_input.e) % vec3<u32>(32u)), u_input.c.wxx)) % vec3<u32>(32u));
    var var_3 = func_7(var_2.xx, abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 0i, var_1.a.a), vec4<i32>(u_input.d.x, -17606i, var_1.a.a, 2147483647i)), vec4<i32>(9076i, -19000i, var_1.a.a, -2147483647i) >> (vec4<u32>(var_2.x, u_input.e, 0u, 4294967295u) % vec4<u32>(32u))))).a.a << (_wgslsmith_sub_u32(22857u, 1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.c.wyz), reverseBits(vec3<u32>(15135u, var_2.x, 29421u) ^ u_input.c.yyy)), u_input.c.zyy));
}

