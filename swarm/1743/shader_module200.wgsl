struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(351f, vec4<bool>(false, false, false, true), vec3<i32>(1i, 0i, 2147483647i), vec4<u32>(0u, 1u, 0u, 0u), 989f);

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_1(global1.a, vec4<bool>(!(!all(global1.b.zy)), any(vec4<bool>(global1.b.x, arg_0.x || true, true, true)), !((2147483647i | u_input.c.x) <= -55455i), false), _wgslsmith_sub_vec3_i32(~u_input.c.xww, u_input.c.yyw), global1.d, global1.a);
    var var_1 = Struct_1(global1.a, vec4<bool>(any(var_0.b.zzx), true & global1.b.x, any(select(vec4<bool>(global1.b.x, arg_0.x, arg_0.x, false), !var_0.b, true)), !any(var_0.b)), ~(-select(var_0.c, var_0.c, false)) | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -40067i, u_input.a.x) | vec3<i32>(var_0.c.x, u_input.c.x, global0.x), var_0.c), _wgslsmith_mod_i32(-1i, global1.c.x), 27873i), _wgslsmith_sub_vec4_u32(global1.d, ~_wgslsmith_mod_vec4_u32(var_0.d, ~vec4<u32>(u_input.b.x, 4294967295u, 21326u, var_0.d.x))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(sign(global1.a))));
    global2 = array<Struct_1, 3>();
    let var_2 = -(~(var_1.c.x | -26201i));
    let var_3 = !vec4<bool>(true & (~1u != firstLeadingBit(var_0.d.x)), true, var_0.b.x, true);
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(vec4<bool>(global1.b.x & all(!global1.b.wy), func_3(global1.b.xw), !(all(vec2<bool>(true, global1.b.x)) && !global1.b.x), all(global1.b.zxw)), global1.b, global2[_wgslsmith_index_u32(~abs(u_input.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, global1.d.x, u_input.d.x), u_input.e)), 3u)], (((global1.d.x >> (u_input.d.x % 32u)) & ~u_input.e.x) > u_input.d.x) || true);
    var var_1 = !func_3(select(vec2<bool>(true, true), !vec2<bool>(var_0.b.x, global1.b.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.c.b.x), !var_0.a.yw, any(vec3<bool>(false, global1.b.x, false)))));
    let var_2 = 2147483647i;
    var var_3 = var_0;
    var var_4 = var_0.c;
    return var_3.c;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> i32 {
    let var_0 = func_2();
    var var_1 = vec4<u32>(global1.d.x, func_2().d.x, ~var_0.d.x, (var_0.d.x ^ arg_2) & (_wgslsmith_add_u32(countOneBits(1u), ~global1.d.x) << (var_0.d.x % 32u)));
    var var_2 = var_0.b.yw;
    let var_3 = Struct_2(select(select(global1.b, !(!vec4<bool>(var_2.x, global1.b.x, false, true)), func_2().b.x), var_0.b, !global1.b), vec4<bool>(true, !(true == !global1.b.x), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, 4294967295u), global1.d.wyw)) == (min(global1.d.x, 102591u) | _wgslsmith_clamp_u32(arg_1, arg_1, global1.d.x)), var_0.b.x), func_2(), var_2.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_3.c.a)))) + -799f), var_3.c.a)), vec4<bool>(true && any(!vec3<bool>(var_3.c.b.x, var_0.b.x, var_2.x)), any(select(!vec3<bool>(var_2.x, global1.b.x, true), func_2().b.wzw, select(vec3<bool>(var_3.d, true, var_3.b.x), var_3.b.wxw, var_3.b.yyw))), !select(any(var_3.b), 3542u < var_1.x, true), ~1u >= ~firstLeadingBit(var_0.d.x)), var_0.c, _wgslsmith_add_vec4_u32(~(~abs(var_0.d)), _wgslsmith_mult_vec4_u32(var_0.d, var_0.d)), _wgslsmith_f_op_f32(floor(-977f)));
    return func_2().c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(abs(~firstTrailingBit(49733u)), 3u)];
    global2 = array<Struct_1, 3>();
    global0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(19886i, 1i ^ global0.x), _wgslsmith_mod_vec2_i32(firstLeadingBit(global1.c.zx), -global1.c.yx)), _wgslsmith_mod_i32(~0i, ~u_input.a.x)), _wgslsmith_add_i32(func_1(0u, ~22107u & _wgslsmith_div_u32(global1.d.x, global1.d.x), 1304u), global0.x), 2147483647i);
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-761f * -1000f) + global1.a)) + _wgslsmith_f_op_f32(abs(1393f)))));
    var var_1 = global2[_wgslsmith_index_u32(0u << (u_input.d.x % 32u), 3u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-func_2().a), vec4<bool>(any(select(!global1.b.zw, !var_1.b.wx, var_1.b.yx)), var_1.d.x >= global1.d.x, true, all(vec2<bool>(global1.b.x, any(global1.b.wz)))), var_1.c, vec4<u32>(~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, global1.d.x), min(u_input.d, vec3<u32>(35813u, 59710u, 3293u))), u_input.e.x, _wgslsmith_sub_u32(var_1.d.x, abs(0u))), var_0);
    var var_3 = 63363u;
    global0 = vec3<i32>(-(~(-13430i)) << (_wgslsmith_div_u32(1022u, firstTrailingBit(4294967295u) & select(global1.d.x, global1.d.x, false)) % 32u), ~(~24637i), 0i);
    let var_4 = Struct_1(3275f, !var_2.b, u_input.c.ywy, vec4<u32>(0u, 0u, 93727u, countOneBits(~global1.d.x) & _wgslsmith_sub_u32(~var_1.d.x, ~1u)), global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e, _wgslsmith_add_i32(var_1.c.x, 22017i) & -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.a, var_4.a), vec2<f32>(-1424f, global1.e)) + _wgslsmith_div_vec2_f32(vec2<f32>(1052f, var_1.e), vec2<f32>(-608f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4.e, 689f)))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_4.e)))))), reverseBits(global1.c.x));
}

