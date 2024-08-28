struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 0u, 1u, 30325u);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1000f, -162f, -419f), 465f, -1i);

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(global1.a.x, false || !all(global1.a.xz), global1.b.x > 838f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) * _wgslsmith_f_op_f32(floor(-928f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_div_f32(1043f, -696f))), global1.b.x, -128f), global1.c, u_input.a ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, 12239i, 9017i, u_input.a), vec4<i32>(-1554i, 1i, 0i, global1.d)), vec4<i32>(~u_input.a, -2147483647i, 83153i, ~(-45136i))));
    var var_1 = Struct_1(select(vec3<bool>(all(!vec4<bool>(var_0.a.x, false, false, var_0.a.x)), all(vec4<bool>(false, var_0.a.x, true, true)), true), !var_0.a, all(!(!global1.a))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1588f, -1126f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -449f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c - var_0.c))))), var_0.b.x, ~(-2147483647i));
    return Struct_1(vec3<bool>(var_0.a.x, true, global1.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-164f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-153f - var_1.b.x))), global1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(614f - -1388f), -892f, var_0.c)), !var_0.a.x)), -442f, var_0.d);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = abs(select(select(-vec4<i32>(1i, 2147483647i, -55816i, -1i) << (~vec4<u32>(37656u, 4294967295u, global0.x, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, -19605i, 0i, arg_0.d), -vec4<i32>(-3679i, -1i, u_input.a, global1.d), vec4<i32>(-8547i, -28201i, -41720i, global1.d) >> (vec4<u32>(global0.x, 0u, 1u, 0u) % vec4<u32>(32u))), true), abs(vec4<i32>(i32(-1i) * -26673i, arg_0.d, 1i, u_input.a)), !arg_0.a.x));
    global2 = global1.a.x;
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(533f, -890f, -1900f)))), _wgslsmith_f_op_f32(max(-813f, func_1().c)), arg_0.d);
    global0 = min(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), global0.x >> (global0.x % 32u)), 27402u >> (1u % 32u)), 0u, ~3450u, reverseBits(1u)), min(~vec4<u32>(_wgslsmith_mod_u32(44694u, global0.x), ~global0.x, 24886u & global0.x, global0.x), vec4<u32>(global0.x, (16491u & global0.x) | countOneBits(global0.x), 59573u, global0.x)));
    global2 = _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))) - _wgslsmith_f_op_f32(f32(-1f) * -462f))) < _wgslsmith_f_op_f32(-var_1.b.x);
    return global1.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = arg_1;
    let var_1 = -28098i;
    var var_2 = ~_wgslsmith_mult_u32(4294967295u, firstLeadingBit(global0.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_1)), 1309f);
    var_0 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.b.x, 537f)), func_1().b.x, _wgslsmith_f_op_f32(var_0.c * arg_3.c)))), _wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(f32(-1f) * -432f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -353f) < _wgslsmith_f_op_f32(505f + global1.b.x);
    global0 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(max(global0.x, global0.x), ~1u, max(global0.x, global0.x), global0.x) >> (~(~vec4<u32>(38985u, 4294967295u, 0u, 85833u)) % vec4<u32>(32u))), ~vec4<u32>(reverseBits(17623u), ~1u, 55243u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 1u), global0.zyw)));
    var var_1 = !select(vec3<bool>(true, any(global1.a), any(select(vec4<bool>(true, var_0, global1.a.x, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, true), global1.a.x))), global1.a, !any(select(global1.a, vec3<bool>(false, global1.a.x, global1.a.x), true)));
    var_1 = !global1.a;
    let var_2 = func_1();
    global0 = ~(~countOneBits(~vec4<u32>(global0.x, global0.x, global0.x, 0u)) ^ vec4<u32>(~_wgslsmith_clamp_u32(76164u, global0.x, 12927u), global0.x, ~0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(61953u, global0.x, 1720u, 74849u), vec4<u32>(28919u, 33500u, 23024u, 25213u)))));
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-37388i, u_input.a, ~u_input.a, _wgslsmith_sub_i32(~2147483647i, var_2.d)), (_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 48005i, global1.d, u_input.a), select(vec4<i32>(var_2.d, u_input.a, var_2.d, 1i), vec4<i32>(var_2.d, -1i, global1.d, 17451i), vec4<bool>(var_1.x, global1.a.x, false, var_1.x)), vec4<i32>(var_2.d, 0i, 3998i, global1.d)) | countOneBits(vec4<i32>(var_2.d, -50393i, -33454i, var_2.d) ^ vec4<i32>(-45100i, var_2.d, u_input.a, u_input.a))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(60590i, u_input.a), global1.d, _wgslsmith_div_i32(2317i, global1.d), _wgslsmith_clamp_i32(-1i, var_2.d, global1.d)), abs(vec4<i32>(-2147483647i, -9189i, global1.d, var_2.d))));
    var var_4 = -494f;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = func_2(vec2<i32>(global1.d, var_3.x), Struct_1(!vec3<bool>(var_2.a.x, true, var_2.a.x), vec3<f32>(_wgslsmith_f_op_f32(1138f * 1390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.x)), var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(407f, 349f) + func_1().b.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1099f - 341f), global1.b.x))), -1i), 2147483647i, func_1());
}

