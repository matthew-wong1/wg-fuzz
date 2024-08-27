struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1084f, 1239f, -241f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(select(vec3<i32>(-52393i, arg_1.x, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(52717i, u_input.c, 10033i), vec3<i32>(u_input.a, 2147483647i, u_input.c)), arg_0.b.x), countOneBits(-vec3<i32>(-1i, arg_1.x, u_input.a)), arg_0.b.x), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c, 21541i), vec3<i32>(u_input.c, -40312i, -315i)), 1i, -(~2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_1.x, 6575i), _wgslsmith_mod_vec3_i32(vec3<i32>(30290i, u_input.c, u_input.c) >> (u_input.b % vec3<u32>(32u)), -vec3<i32>(arg_1.x, 0i, -28885i))) & min(vec3<i32>(1i, ~arg_1.x, arg_1.x), vec3<i32>(arg_1.x, -6565i, 27934i | arg_1.x)));
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a, arg_2.a, 1223f))))))));
    let var_1 = ~(-select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 2147483647i, -2147483647i), vec4<i32>(2147483647i, -15214i, -33481i, arg_1.x) ^ vec4<i32>(u_input.a, 2834i, u_input.a, arg_1.x), vec4<i32>(u_input.a, -2147483647i, -74354i, -13143i) >> (vec4<u32>(20777u, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(~u_input.a, firstTrailingBit(u_input.c), -37506i, -arg_1.x), !(!arg_0.b.x)));
    let var_2 = !(!(!(arg_2.a != 819f)));
    let var_3 = -7166i;
    return -2467f;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = countOneBits(~max(~0i, arg_0 | arg_0)) << (1u % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f - global0.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - -288f), -176f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1561f + -1832f) + _wgslsmith_f_op_f32(f32(-1f) * -239f)), 908f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.x, vec4<bool>(true, true, false, false)), ~vec2<i32>(u_input.c, u_input.a), Struct_2(var_1.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1299f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-987f))));
    var var_3 = (firstLeadingBit(u_input.b.x) >= ~firstLeadingBit(u_input.b.x)) & true;
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(645f, var_2.x, 1000f)))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x * 388f), 151f))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(491f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1065f)), _wgslsmith_f_op_f32(step(-992f, var_1.x)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(-1324f, 580f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(ceil(531f)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(arg_1.a);
    let var_1 = ~(~u_input.b.zx);
    var_0 = arg_1;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(1i | _wgslsmith_div_i32(u_input.c, u_input.a))).x, 645f, !select(true, any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, 521f))), 559f);
    let var_2 = u_input.b.yz & vec2<u32>(_wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(27404u, var_1.x, 32763u, 4294967295u)), vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, 0u) >> (vec4<u32>(32943u, 0u, u_input.b.x, 4294967295u) % vec4<u32>(32u)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), ~vec4<u32>(70237u, 103388u, 4294967295u, u_input.b.x)), firstLeadingBit(var_1.x));
    return arg_1.a;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec4<i32>(u_input.c, ~(~34311i), _wgslsmith_dot_vec4_i32(min(~(~vec4<i32>(8779i, u_input.c, 46105i, u_input.c)), -(vec4<i32>(u_input.a, u_input.a, -1i, 5502i) ^ vec4<i32>(-23545i, -1i, u_input.c, u_input.a))), ~(vec4<i32>(u_input.c, -37142i, u_input.a, 0i) ^ vec4<i32>(42958i, u_input.a, 0i, 11055i)) ^ vec4<i32>(8702i & u_input.c, 9231i >> (0u % 32u), u_input.a, ~(-1i))), 12249i);
    var var_1 = -_wgslsmith_sub_i32(-(~4024i) ^ (32086i & u_input.c), var_0.x);
    var var_2 = arg_0;
    var var_3 = countOneBits(firstLeadingBit(_wgslsmith_mult_vec2_i32(-var_0.yw, -_wgslsmith_mult_vec2_i32(var_0.xy, vec2<i32>(1i, 25703i)))));
    var var_4 = abs(-u_input.a);
    return func_4(_wgslsmith_f_op_f32(-1168f - _wgslsmith_f_op_f32(-arg_0.a)), Struct_3(Struct_2(1100f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1621f, _wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, -344f, 1557f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-331f, global0.x, -1000f, var_2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, arg_0.a, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_2.a, global0.x, 1078f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a, 372f, -686f, arg_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -2243f)))), _wgslsmith_f_op_f32(-809f * _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-196f)) + -1000f))) - vec3<f32>(310f, global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -255f)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1563f + -311f), _wgslsmith_f_op_f32(f32(-1f) * -1414f), _wgslsmith_f_op_f32(-global0.x)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(sign(1114f))))));
    let var_0 = u_input.a;
    let var_1 = Struct_3(func_1(Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(-423f, global0.x), _wgslsmith_div_f32(916f, global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-843f, -1182f, 1140f)))));
    var var_2 = Struct_4(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(140f + _wgslsmith_f_op_f32(floor(global0.x))) + 502f), var_1, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_1(var_1.a).a, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1000f, 404f), var_1.a.a)))), ~(vec4<i32>(-var_0, -u_input.c, _wgslsmith_mult_i32(var_0, 2487i), 1i) & (-vec4<i32>(var_0, u_input.a, var_0, var_0) & countOneBits(vec4<i32>(2147483647i, -51407i, u_input.c, var_0)))), Struct_1(46321u, vec4<bool>(~u_input.b.x <= ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) > 10938u, ~u_input.b.x <= ~0u, -4737i < u_input.a)), vec3<i32>(-12083i, 1i, firstTrailingBit(~abs(38065i))));
    var var_3 = Struct_2(-1397f);
    var_2 = Struct_4(var_1.a, _wgslsmith_sub_vec4_i32(var_2.b, var_2.b), var_2.c, _wgslsmith_sub_vec3_i32(var_2.b.xxy, max(max(vec3<i32>(1i, u_input.c, 75542i), reverseBits(vec3<i32>(39281i, -17079i, var_2.d.x))), var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(min(vec2<u32>(0u, u_input.b.x), vec2<u32>(20559u, 17103u)) >> (u_input.b.yx % vec2<u32>(32u)), ~(~u_input.b.xz)), 1i, var_2.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, abs(0i), _wgslsmith_div_i32(var_2.d.x, u_input.c)), abs(vec3<i32>(0i, 14904i, -4510i))), u_input.c & u_input.a, var_2.d.x));
}

