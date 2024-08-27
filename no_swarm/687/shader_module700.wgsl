struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(1594i, -1i), true, vec4<bool>(true, false, true, true)), vec4<f32>(262f, 1000f, 1000f, 1147f));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), 0i), true, vec4<bool>(true, true, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>) -> bool {
    var var_0 = -934f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
    let var_2 = global1.c.x;
    let var_3 = any(!vec4<bool>(global2.c, false, false, firstTrailingBit(global1.a.x) < ~global1.a.x));
    var var_4 = vec3<bool>(!global0.x, !any(vec2<bool>(var_3, true)), global2.a.x);
    return !any(vec4<bool>(select(var_4.x, true, !global0.x), var_4.x, any(select(global1.b.d, vec4<bool>(true, true, false, var_3), true)), true));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = any(select(arg_1.a.wz, vec2<bool>(arg_1.d.x, 1291f <= _wgslsmith_f_op_f32(global1.c.x - global1.c.x)), global2.a.wy));
    let var_1 = arg_1;
    let var_2 = global1.a.x;
    global0 = vec3<bool>(all(!select(select(vec4<bool>(global0.x, false, true, var_1.c), arg_0.a, vec4<bool>(global1.b.d.x, global1.b.d.x, true, false)), !vec4<bool>(true, arg_1.a.x, true, true), !global2.d)), -375i == _wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(u_input.b, u_input.b)), max(~u_input.b, -vec3<i32>(50472i, arg_1.b.x, u_input.c.x))), var_0);
    var var_3 = ~(~((vec4<u32>(1u, u_input.a, 4294967295u, 24760u) | vec4<u32>(global1.a.x, 1u, global1.a.x, global1.a.x)) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(37500u, global1.a.x, 1u, u_input.a), vec4<u32>(global1.a.x, u_input.a, u_input.a, 15290u)) & reverseBits(vec4<u32>(6505u, global1.a.x, 123164u, global1.a.x))) % vec4<u32>(32u))));
    return true;
}

fn func_2(arg_0: bool) -> i32 {
    global1 = Struct_2(~(global1.a ^ ~vec2<u32>(4294967295u, u_input.a)), Struct_1(select(global1.b.d, !select(vec4<bool>(global1.b.c, global1.b.c, true, true), global2.d, vec4<bool>(true, true, global1.b.d.x, true)), vec4<bool>(global1.b.d.x | false, u_input.a == 30480u, global0.x, global1.c.x <= global1.c.x)), global1.b.b, func_3(global1.b, global1.b, Struct_1(select(global1.b.d, vec4<bool>(false, false, true, false), global2.a), vec2<i32>(30086i, -18492i) & vec2<i32>(-1i, u_input.c.x), !global2.c, vec4<bool>(false, true, true, false))), select(vec4<bool>(all(vec3<bool>(true, arg_0, arg_0)), arg_0, any(vec2<bool>(arg_0, arg_0)), -719f <= global1.c.x), !select(vec4<bool>(false, global1.b.a.x, global0.x, false), vec4<bool>(true, global1.b.a.x, global2.a.x, true), arg_0), select(global2.d, !global2.d, select(global2.a, global1.b.a, false)))), global1.c);
    global1 = Struct_2(global1.a, global1.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.c.x, global1.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, global1.c.x) * _wgslsmith_f_op_f32(1381f * global1.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-227f, _wgslsmith_f_op_f32(f32(-1f) * -197f))))), _wgslsmith_f_op_f32(global1.c.x + global1.c.x)));
    global2 = global1.b;
    global0 = !vec3<bool>(false, global1.b.d.x, global0.x);
    var var_0 = select(global1.b.d.zy, global0.xz, vec2<bool>(true, func_1(vec2<bool>(true, global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(976f, global1.c.x, 1656f)) - _wgslsmith_f_op_vec3_f32(-global1.c.zzx)))));
    return i32(-1i) * -32387i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(abs(vec2<u32>(~u_input.a, 0u)), global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, vec4<f32>(890f, -1000f, global1.c.x, global1.c.x)))));
    let var_1 = !(!func_1(!vec2<bool>(global2.d.x, true), vec3<f32>(-347f, global1.c.x, global1.c.x))) || (countOneBits(~1i ^ (var_0.b.b.x & 0i)) <= max(global2.b.x, global1.b.b.x));
    var var_2 = -u_input.b;
    var_2 = ~(-u_input.b);
    var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(reverseBits(abs(var_0.b.b.x)), global1.b.b.x), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, func_2(global0.x)), _wgslsmith_div_i32(global2.b.x, ~var_2.x), ~(~global1.b.b.x)), ~(-(~0i))), u_input.b);
    var var_3 = Struct_2(~vec2<u32>(~(u_input.a | u_input.a), ~_wgslsmith_clamp_u32(58650u, u_input.a, 1u)), Struct_1(select(!(!vec4<bool>(var_1, true, false, false)), !(!vec4<bool>(var_0.b.a.x, false, var_0.b.d.x, global2.a.x)), !(!global2.a.x)), -(global2.b & vec2<i32>(-31260i, var_0.b.b.x)), !(true || any(vec4<bool>(var_1, false, true, false))), select(vec4<bool>(global0.x, select(global0.x, var_0.b.d.x, true), !global1.b.d.x, global1.b.d.x), select(global2.a, !vec4<bool>(global0.x, var_0.b.a.x, var_1, var_0.b.a.x), any(vec3<bool>(false, true, var_1))), select(select(global2.d, vec4<bool>(true, global0.x, global1.b.c, var_1), global1.b.a.x), select(global2.d, vec4<bool>(global2.d.x, var_1, false, true), vec4<bool>(var_0.b.c, false, var_0.b.d.x, var_0.b.c)), !var_1))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f) - -910f), 1082f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(454f))), _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))))));
    var var_4 = var_0.b;
    var var_5 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.a.x, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a.x), var_3.a | vec2<u32>(var_0.a.x, global1.a.x)), var_3.a.x));
}

