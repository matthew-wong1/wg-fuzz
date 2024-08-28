struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<i32>, 3>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    global2 = array<vec4<i32>, 3>();
    var var_0 = u_input.b.x;
    let var_1 = (-(~u_input.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 20194i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, 52455i, 1i))) << (42709u % 32u)) & countOneBits(-u_input.b.x);
    var var_2 = false;
    var_2 = ((-22154i < abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b.xy))) | !any(vec3<bool>(false, true, false))) | false;
    return ~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x), global1.a.a.xwy), 1u, _wgslsmith_clamp_u32(22143u, 12122u, 4294967295u) >> (~5702u % 32u)) | ~vec3<u32>(~abs(1u), 55640u, ~26872u);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(arg_2.a, ~u_input.c), 17596u, 50939u), global1.a.a, vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.c.xwx, vec3<u32>(global1.a.a.x, 30909u, 1u)), arg_1.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.a.x, global1.a.a.x), arg_2.a.x), _wgslsmith_mult_u32(~arg_1.x, ~arg_2.a.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = -118f;
    global2 = array<vec4<i32>, 3>();
    let var_1 = _wgslsmith_add_vec4_u32(func_4(-194f, func_3(~abs(vec3<u32>(17442u, 4294967295u, u_input.a))), global0[_wgslsmith_index_u32(u_input.a | 4294967295u, 25u)]), global1.a.a);
    var var_2 = Struct_3(Struct_1(vec4<u32>(~abs(4294967295u), 20742u, global1.a.a.x, firstTrailingBit(4294967295u))));
    var var_3 = !any(select(vec3<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), true)));
    return Struct_2(u_input.c.x, u_input.b.x);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !(!vec4<bool>(true, (arg_1.x >> (arg_2.a % 32u)) == firstLeadingBit(arg_1.x), 26630u != _wgslsmith_dot_vec4_u32(global1.a.a, u_input.c), countOneBits(global1.a.a.x) >= (u_input.c.x ^ u_input.c.x)));
    global2 = array<vec4<i32>, 3>();
    let var_1 = global1.a.a;
    global2 = array<vec4<i32>, 3>();
    var var_2 = ~global1.a.a.zx;
    return Struct_2(var_2.x, 55185i);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = func_5(2147483647i, _wgslsmith_add_vec2_i32(~(-vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec2_i32(~(u_input.b.zy << (vec2<u32>(4294967295u, 10699u) % vec2<u32>(32u))), vec2<i32>(~u_input.b.x, u_input.b.x))), func_2());
    let var_1 = firstLeadingBit(min(~select(var_0.b, _wgslsmith_sub_i32(8999i, var_0.b), false), 1i));
    let var_2 = min(func_3((~u_input.c.wxz ^ global1.a.a.ywy) >> (firstTrailingBit(vec3<u32>(58197u, arg_1, global1.a.a.x)) % vec3<u32>(32u))).zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(firstTrailingBit(var_0.a)), arg_0.a.x), min(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_0.a.x), vec2<u32>(28176u, global1.a.a.x))), _wgslsmith_mult_vec2_u32(global1.a.a.xy, arg_0.a.yy) << (global1.a.a.xz % vec2<u32>(32u))), (global1.a.a.wy >> (~u_input.c.zx % vec2<u32>(32u))) << (vec2<u32>(0u | arg_0.a.x, _wgslsmith_add_u32(1u, 34860u)) % vec2<u32>(32u))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2304f + -1241f) + _wgslsmith_f_op_f32(max(630f, 1231f))), _wgslsmith_f_op_f32(f32(-1f) * -919f)))), _wgslsmith_f_op_f32(-1655f + 129f), _wgslsmith_f_op_f32(sign(-179f)));
    global1 = Struct_3(global0[_wgslsmith_index_u32(~reverseBits(0u), 25u)]);
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = vec4<i32>(func_2().b, abs(_wgslsmith_sub_i32(-22737i, -26806i | u_input.b.x)), 41540i, 1i) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 61288u, 11563u, 28502u)), vec4<u32>(min(global1.a.a.x, func_4(-930f, vec3<u32>(arg_0.a.x, 0u, u_input.c.x), Struct_1(arg_0.a)).x), global1.a.a.x, ~max(u_input.a, global1.a.a.x), 0u)) % vec4<u32>(32u));
    global0 = array<Struct_1, 25>();
    var var_1 = Struct_2(arg_0.a.x, _wgslsmith_sub_i32(countOneBits(i32(-1i) * -3789i), u_input.b.x));
    var_1 = func_5(u_input.b.x, u_input.b.yx, Struct_2(var_1.a, abs(max(_wgslsmith_dot_vec3_i32(var_0.yyw, var_0.yxx), var_0.x >> (2495u % 32u)))));
    global0 = array<Struct_1, 25>();
    return _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(arg_2.x, global1.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~u_input.b.x, u_input.b.x);
    global1 = Struct_3(global1.a);
    var var_1 = true;
    let var_2 = u_input.c.x;
    var var_3 = ~vec2<u32>(52624u, func_6(Struct_1(~vec4<u32>(32861u, var_2, 0u, var_2)), vec3<bool>(true, func_1(global0[_wgslsmith_index_u32(global1.a.a.x, 25u)], global1.a.a.x), true), ~u_input.c.xxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1180f - 1715f) * _wgslsmith_f_op_f32(sign(502f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-133f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-720f, _wgslsmith_f_op_f32(max(-856f, 438f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1691f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2697f, -1364f))))))), max(1i, 1i));
}

