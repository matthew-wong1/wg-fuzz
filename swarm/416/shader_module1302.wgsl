struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35209u;

var<private> global1: f32 = -341f;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(987f, 436f, -1481f, -1514f), vec3<bool>(false, true, true), vec3<bool>(true, true, false), Struct_1(vec2<u32>(38453u, 49248u), vec3<i32>(48764i, 1i, 5268i), vec3<f32>(-3377f, 898f, -155f), 1988f, i32(-2147483648)));

var<private> global3: array<i32, 8> = array<i32, 8>(-13604i, 0i, -1i, -44112i, -42440i, 57099i, 0i, -3210i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = any(vec3<bool>(true, !(!global2.b.x), !global2.b.x));
    global0 = ~4294967295u;
    var var_1 = !any(select(!select(vec4<bool>(true, global2.b.x, global2.b.x, false), vec4<bool>(true, global2.c.x, false, true), vec4<bool>(false, global2.b.x, true, false)), vec4<bool>(global2.a.x <= -1056f, var_0, global2.b.x, var_0), var_0));
    var_1 = var_0;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2033f)));
    return Struct_2(global2.a, vec3<bool>(any(!vec3<bool>(global2.c.x, global2.b.x, global2.b.x)), true, true), vec3<bool>(~(arg_0.x << (global2.d.a.x % 32u)) > _wgslsmith_sub_i32(abs(global2.d.b.x), min(-18384i, u_input.a.x)), true, true), global2.d);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = -2147483647i;
    var var_1 = arg_0.d;
    let var_2 = abs(var_1.e << (~global2.d.a.x % 32u));
    global3 = array<i32, 8>();
    global0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.a.x, 45329u, max(~_wgslsmith_mod_u32(global2.d.a.x, arg_0.d.a.x), (1u >> (arg_0.d.a.x % 32u)) >> (u_input.c.x % 32u))), firstTrailingBit(5605u));
    return func_2(vec2<i32>(-11271i, firstTrailingBit(_wgslsmith_mult_i32(u_input.d.x, 6087i ^ global3[_wgslsmith_index_u32(0u, 8u)]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(global2.a, vec3<bool>(true, !arg_0.x, any(func_2(_wgslsmith_mult_vec2_i32(u_input.a, u_input.d)).b.zy)), !global2.c, Struct_1(firstTrailingBit(abs(vec2<u32>(15068u, arg_3.a.x)) ^ vec2<u32>(0u, arg_3.a.x)), func_2(u_input.a).d.b, vec3<f32>(-578f, _wgslsmith_f_op_f32(-1782f * -1205f), _wgslsmith_f_op_f32(-global2.a.x)), arg_3.d, global3[_wgslsmith_index_u32(arg_3.a.x, 8u)]));
    let var_1 = ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.x, arg_3.a.x & arg_2.a.x, func_2(vec2<i32>(u_input.a.x, var_0.d.e)).d.a.x), vec3<u32>(~1u, min(u_input.c.x, 5479u), 104817u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~4294967295u, _wgslsmith_mod_u32(arg_3.a.x, u_input.c.x)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 93631u, global2.d.a.x), vec3<u32>(var_0.d.a.x, arg_2.a.x, 41041u)))), var_0.c.x);
    let var_2 = -1000f;
    var var_3 = func_1(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)), global2.c, !vec3<bool>(arg_0.x, arg_2.c.x > arg_3.d, arg_0.x), func_2(var_0.d.b.zy).d), -arg_3.b.xz ^ select(_wgslsmith_div_vec2_i32(vec2<i32>(11870i, -18604i) & arg_3.b.yz, arg_2.b.yz), vec2<i32>(-2147483647i, arg_3.b.x) ^ _wgslsmith_mod_vec2_i32(var_0.d.b.yy, arg_2.b.xx), -1000f < global2.d.c.x), Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~var_1.xy, ~global2.d.a), ~(~u_input.c)), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1416f, global2.d.c.x, arg_3.c.x, -2219f)), vec3<bool>(true, true, true), !var_0.b, global2.d), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(global2.d.e, -32209i)), vec2<i32>(arg_3.e, var_0.d.b.x)), Struct_1(_wgslsmith_add_vec2_u32(global2.d.a, arg_3.a), vec3<i32>(2147483647i, -2147483647i, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1594f, global2.a.x, 500f)), 1010f, -11824i)).d.b, arg_2.c, -314f, global2.d.e)).d.e;
    return firstTrailingBit(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.c.x, 110455u, u_input.c.x, arg_2.a.x)), vec4<u32>(25455u, abs(u_input.c.x), arg_2.a.x, ~4294967295u), ~vec4<u32>(23574u, u_input.c.x, arg_2.a.x, arg_3.a.x) | ~vec4<u32>(global2.d.a.x, 1u, 4294967295u, 1u))) ^ vec4<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(~var_0.d.a, vec2<u32>(arg_3.a.x, 33383u) | arg_3.a), ~1u, ~(37409u << (_wgslsmith_mod_u32(4294967295u, global2.d.a.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(Struct_2(global2.a, select(global2.c, !vec3<bool>(true, true, global2.c.x), global2.b.x), vec3<bool>(_wgslsmith_f_op_f32(-780f * -1877f) < _wgslsmith_f_op_f32(step(254f, -453f)), false, global2.b.x), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(20062u, global2.d.a.x), u_input.c), global2.d.a), vec3<i32>(1i, -17418i, max(global2.d.e, u_input.d.x)), vec3<f32>(global2.d.d, _wgslsmith_f_op_f32(step(136f, global2.a.x)), -368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2612f, 1336f))), global2.d.b.x)), ~vec2<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(23952i, 1i, 1i), vec3<i32>(global3[_wgslsmith_index_u32(16809u, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.d.x)), abs(3240i)), global2.d.b.x), global2.d);
    let var_0 = global2.d.a.x;
    let var_1 = vec2<u32>(_wgslsmith_add_u32(global2.d.a.x, ~global2.d.a.x), global2.d.a.x);
    global3 = array<i32, 8>();
    let var_2 = !vec3<bool>(global2.b.x, global2.b.x, !(true | !global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 0u), 8u)], _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(var_1.x, 8u)], -2147483647i, 2147483647i) << (~global2.d.a.x % 32u), u_input.a.x, u_input.a.x) >> (min(func_3(select(vec4<bool>(true, true, global2.b.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, global2.b.x), vec4<bool>(true, global2.c.x, global2.c.x, global2.b.x)), true, global2.d, func_1(Struct_2(vec4<f32>(374f, global2.a.x, global2.d.c.x, 1141f), vec3<bool>(true, false, false), vec3<bool>(global2.c.x, false, false), global2.d), global2.d.b.zx, Struct_1(vec2<u32>(64279u, u_input.c.x), vec3<i32>(31510i, u_input.a.x, 7372i), vec3<f32>(-403f, 1565f, 393f), global2.a.x, global2.d.b.x)).d), vec4<u32>(~7474u, max(35703u, u_input.c.x), ~4294967295u, ~4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(global2.d.a.x, _wgslsmith_add_u32(83998u | global2.d.a.x, _wgslsmith_mult_u32(global2.d.a.x, 60177u))), 4294967295u), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, 0i), _wgslsmith_sub_i32(1i, u_input.a.x), max(i32(-1i) * -8704i, -global3[_wgslsmith_index_u32(global2.d.a.x, 8u)])), global2.d.b));
}

