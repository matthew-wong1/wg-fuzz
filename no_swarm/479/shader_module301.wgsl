struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<f32>;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

var<private> global3: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_0.a.x;
    let var_1 = _wgslsmith_clamp_vec2_u32(reverseBits(firstTrailingBit(vec2<u32>(1u, 1u))), ~min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 60828u), vec2<u32>(104746u, 4294967295u)), ~max(vec2<u32>(347u, 9368u), vec2<u32>(4294967295u, 6938u))), _wgslsmith_mod_vec2_u32(abs(~(~vec2<u32>(18071u, 124919u))), vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(1u, 32068u))));
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(2286f, arg_0.c.x) - _wgslsmith_f_op_f32(-arg_0.c.x));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 * -564f), 637f))), -573f, _wgslsmith_f_op_f32(arg_0.c.x * -1000f)) - vec4<f32>(819f, global1.x, global1.x, -840f));
    return any(arg_0.b.yz);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(func_3(Struct_1(!global0.wxy, vec3<bool>(false, false, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1351f, global1.x, 149f, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -302f)), select(vec4<i32>(49448i, 1i, u_input.a, 19699i) << (vec4<u32>(74369u, 31928u, 38872u, 30162u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.b.x, 28811i, u_input.b.x, global2.x)), select(global0.x, false, global0.x))), select(global0.x, true, 1000f <= global1.x), true), select(global0.ywz, vec3<bool>(_wgslsmith_f_op_f32(1000f - global1.x) > global1.x, global0.x, true), any(!(!vec3<bool>(global0.x, global0.x, global0.x)))), vec4<f32>(-1188f, 439f, 390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    let var_1 = select(true, false, true);
    let var_2 = var_0;
    global2 = u_input.b.yz;
    global0 = vec4<bool>(!any(global0.yx), any(select(select(select(vec4<bool>(global0.x, var_1, false, global0.x), vec4<bool>(true, global0.x, false, true), var_1), select(vec4<bool>(global0.x, true, true, var_2.b.x), vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.b.x, global0.x, var_1, true)), false), !vec4<bool>(true, global0.x, false, true), vec4<bool>(true, true, !global0.x, var_2.a.x))), var_0.a.x == any(vec4<bool>(global0.x != var_0.a.x, var_2.a.x, all(vec3<bool>(global0.x, global0.x, var_2.b.x)), var_1)), -global2.x != (2147483647i << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(5574u, 50017u, 78541u), vec3<u32>(40660u, 54326u, 0u))) % 32u)));
    return Struct_1(!select(vec3<bool>(true, var_2.b.x, true), !select(var_0.b, vec3<bool>(var_0.b.x, var_2.a.x, global0.x), var_0.b.x), !any(var_2.a.yx)), global0.wxz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(var_0.c)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.x, var_0.c.x, global1.x, -102f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_2.c, var_2.c, var_2.a.x)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-3021f, -1272f, -292f, var_0.c.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.c)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, arg_0, global1.x))), arg_1.c, select(select(vec4<bool>(true, global0.x, true, arg_1.b.x), vec4<bool>(true, false, false, false), arg_1.a.x), select(vec4<bool>(arg_1.a.x, true, arg_1.b.x, global0.x), vec4<bool>(false, false, true, global0.x), global0.x), vec4<bool>(arg_1.a.x, false, arg_1.b.x, false)))))));
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(global2.x, global2.x, global2.x ^ ~firstTrailingBit(global2.x)), -54959i, -1i);
    let var_1 = !(!vec2<bool>(!(false && arg_1.b.x), 0u <= ~arg_2));
    global3 = func_2().c.x;
    let var_2 = ~reverseBits(1u);
    return vec4<bool>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 1439f) * func_2().c.x), arg_1.c.x)) >= _wgslsmith_f_op_f32(-376f * arg_0), _wgslsmith_mod_i32(select(firstTrailingBit(-5176i), 2147483647i, 1u <= var_2), global2.x) != var_0.x, !all(vec3<bool>(!arg_1.a.x, all(vec4<bool>(var_1.x, var_1.x, global0.x, arg_1.a.x)), false)));
}

fn func_1() -> vec3<bool> {
    global0 = select(func_4(global1.x, func_2(), 47106u), vec4<bool>(true, true, true & (global0.x || global0.x), global0.x), !(!select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x)));
    global0 = !(!func_4(global1.x, func_2(), select(abs(0u), _wgslsmith_add_u32(0u, 4294967295u), !global0.x)));
    let var_0 = Struct_1(select(global0.zyy, !select(vec3<bool>(true, false, true), func_2().a, !vec3<bool>(false, global0.x, true)), global0.yyx), !vec3<bool>(select(global0.x, global0.x, true) | global0.x, global0.x, all(!vec4<bool>(false, true, global0.x, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1380f, -549f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -379f, 1125f, 564f)), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(select(-294f, global1.x, global0.x)), global1.x, _wgslsmith_f_op_f32(1772f - -307f), 1251f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * -753f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-938f * global1.x)))));
    var var_1 = ~abs(_wgslsmith_mod_vec4_i32(-(vec4<i32>(-61202i, u_input.c, u_input.b.x, global2.x) & vec4<i32>(global2.x, 39271i, -18302i, -1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(global2.x, 1i, global2.x, u_input.a), ~vec4<i32>(global2.x, 1i, global2.x, -2147483647i))));
    var_1 = min(vec4<i32>(select(u_input.b.x, ~global2.x, !var_0.b.x), -1i & ~u_input.a, ~(-64868i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.x, -2147483647i), var_1.wwy)), _wgslsmith_add_vec4_i32(-abs(vec4<i32>(-2147483647i, global2.x, -2147483647i, u_input.a)), ~(~vec4<i32>(27392i, var_1.x, 0i, var_1.x)))) >> (~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 1u, ~27869u)) % vec4<u32>(32u));
    return !(!func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(global0.yyx, !global0.zxx, global0.zwz), vec3<bool>(global0.x != true, false, global0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 523f, -1000f, global1.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1279f, global1.x, 465f, global1.x), vec4<f32>(-342f, 267f, global1.x, global1.x)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(global1.x - -802f), _wgslsmith_f_op_f32(-global1.x)), false && global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(round(1484f)), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x)) + vec4<f32>(1039f, -889f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * global1.x))), vec4<bool>(true, true, global0.x, true))));
    global2 = -(reverseBits(u_input.b.xz) | vec2<i32>(~(-u_input.c), -58297i));
    let var_1 = var_0;
    let var_2 = any(!func_1());
    var var_3 = _wgslsmith_f_op_vec3_f32(-global1.wxz);
    var var_4 = var_0;
    global2 = u_input.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1142f * 2274f))), ~4294967295u);
}

