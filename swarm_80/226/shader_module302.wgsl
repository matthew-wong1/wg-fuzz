struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), 29978i), Struct_2(false, vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 56066u, 63391u, 19703u), true, 0u, vec3<f32>(-1636f, 1123f, -113f))), 704f);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    global2 = Struct_2(false, u_input.c.www, Struct_1(u_input.c, true, 60214u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(557f, global1.c.c.d.x, global2.c.d.x), arg_0.d, true)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.c.c.d), _wgslsmith_div_vec3_f32(arg_2.c.d, arg_2.c.d), vec3<bool>(false, arg_0.b, true))))));
    global2 = global1.c;
    let var_0 = Struct_3(~global1.a, _wgslsmith_add_vec2_i32(global1.b, vec2<i32>(_wgslsmith_clamp_i32(42106i, global1.b.x >> (global2.c.c % 32u), _wgslsmith_dot_vec2_i32(u_input.b, global1.b)), -31728i << (arg_0.c % 32u))), Struct_2(!(!global2.a), (u_input.c.xyy | arg_2.b) << (~(vec3<u32>(86031u, arg_0.a.x, arg_2.b.x) ^ vec3<u32>(50949u, 25129u, 0u)) % vec3<u32>(32u)), global2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_0.d.x));
    var var_1 = Struct_1(~abs(firstTrailingBit(_wgslsmith_add_vec4_u32(global1.c.c.a, var_0.c.c.a))), !all(!arg_3) & true, ~(firstTrailingBit(~global2.b.x) >> (u_input.c.x % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.d)), var_0.c.c.d.x, _wgslsmith_f_op_f32(677f + global2.c.d.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-908f + _wgslsmith_f_op_f32(abs(global1.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.c.c.d.x, arg_2.c.d.x, false)))), _wgslsmith_f_op_f32(floor(-467f)))));
    let var_2 = Struct_2(false, firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(arg_0.a.x, 4294967295u, var_1.c), firstLeadingBit(global2.b.x), global2.b.x)) ^ abs(vec3<u32>(50102u, min(arg_2.c.c, 1u), 1u)), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.c.a, vec4<u32>(1u, var_0.c.b.x, u_input.c.x, 4294967295u)) << (~u_input.c % vec4<u32>(32u)), global1.c.c.a), all(vec3<bool>(arg_3.x, var_1.b, any(vec4<bool>(false, arg_2.c.b, false, global1.c.a)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(0u, 0u)) | global1.a.x, firstLeadingBit(52934u)), global1.c.c.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(138f, _wgslsmith_f_op_f32(-arg_2.c.d.x))), -700f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(arg_3, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.c, true, 4294967295u, vec3<f32>(arg_3.x, 1498f, -1132f)), vec3<u32>(u_input.c.x, 11100u, arg_0.a.x), Struct_2(true, vec3<u32>(33122u, global1.a.x, arg_0.a.x), arg_0), vec2<bool>(arg_2.a, true))), 569f) * arg_3.x), arg_2.c.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.d.x)))), _wgslsmith_f_op_f32(abs(arg_2.c.d.x))), _wgslsmith_f_op_f32(-592f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false || select(true, !(global1.b.x >= u_input.a), global1.c.c.b || all(vec3<bool>(arg_1.b, global0.x, true)))));
    var var_1 = Struct_3(min((arg_1.a.zww << (select(vec3<u32>(u_input.c.x, 4294967295u, global1.c.c.c), vec3<u32>(arg_2.b.x, 41451u, arg_0.c), vec3<bool>(global1.c.a, global0.x, true)) % vec3<u32>(32u))) >> (firstLeadingBit(~global1.c.c.a.xxz) % vec3<u32>(32u)), arg_2.c.a.zww >> (arg_1.a.zyw % vec3<u32>(32u))), global1.b | (min(u_input.b, countOneBits(vec2<i32>(-2147483647i, 17508i))) << (vec2<u32>(~424u, _wgslsmith_mult_u32(25970u, 24271u)) % vec2<u32>(32u))), Struct_2(global0.x || true, arg_0.a.wyy >> (~(vec3<u32>(arg_0.a.x, arg_0.c, arg_0.a.x) >> (vec3<u32>(50040u, 0u, global1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(vec4<u32>(countOneBits(1u), global2.b.x, 4294967295u, arg_1.a.x), true, ~_wgslsmith_add_u32(1u, 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - global1.c.c.d))), var_0.x);
    let var_2 = !(!(-1321f < _wgslsmith_f_op_f32(-arg_3.x)));
    global1 = Struct_3(arg_0.a.yxx, vec2<i32>(-1i, u_input.a), Struct_2(true, min(~(~u_input.c.zzx), vec3<u32>(~0u, countOneBits(12983u), arg_2.b.x)), Struct_1(~arg_2.c.a << (~vec4<u32>(global2.c.c, arg_1.a.x, var_1.c.b.x, 32403u) % vec4<u32>(32u)), global0.x, arg_0.a.x, _wgslsmith_f_op_vec3_f32(sign(var_1.c.c.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    global0 = !vec2<bool>(arg_1.b || global2.c.b, false);
    return global1.c;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = func_2(global2.c, global1.c.c, global1.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global1.d * global1.d), global1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.c.d.x), _wgslsmith_f_op_f32(-global1.d))), -1417f))));
    global1 = Struct_3(select(vec3<u32>(arg_0, ~_wgslsmith_mult_u32(global2.c.c, 1u), ~(~41233u)), ~vec3<u32>(global2.c.c ^ global1.c.c.a.x, ~var_0.c.a.x, 15133u), false), vec2<i32>(global1.b.x, u_input.a) ^ firstTrailingBit(u_input.b), global1.c, global2.c.d.x);
    let var_1 = _wgslsmith_clamp_u32(firstTrailingBit(0u), global1.c.c.a.x, ~(arg_0 & var_0.c.a.x) & ~arg_0);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-(~vec2<i32>(-33940i, arg_1.x)), vec2<i32>(~0i, countOneBits(arg_1.x))), global1.b, vec2<i32>(u_input.a, ~_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(-35504i, 2147483647i)))), _wgslsmith_mod_vec2_i32(global1.b >> (min(abs(vec2<u32>(1u, 4294967295u)), ~arg_2) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.x) ^ select(vec2<i32>(global1.b.x, u_input.b.x), vec2<i32>(-2147483647i, u_input.a), vec2<bool>(false, true)), ~u_input.b >> (global2.b.xy % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -max(-62987i, _wgslsmith_div_i32(func_1(~global2.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(-876i, u_input.b.x, global1.b.x, -22938i), vec4<i32>(52468i, u_input.a, -1i, global1.b.x)), vec2<u32>(u_input.c.x, 38927u)), ~max(2147483647i, -2147483647i)));
    let var_1 = ~1798u;
    global1 = Struct_3(vec3<u32>(~func_2(Struct_1(vec4<u32>(17030u, 67730u, global1.a.x, var_1), global1.c.a, 106556u, vec3<f32>(-191f, global2.c.d.x, global2.c.d.x)), Struct_1(vec4<u32>(4294967295u, 66732u, var_1, 44721u), global1.c.a, var_1, global2.c.d), global1.c, vec4<f32>(global1.c.c.d.x, global1.d, 698f, global1.d)).c.a.x ^ (24070u ^ global1.a.x), _wgslsmith_div_u32(47437u, ~var_1), 1u), u_input.b, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f))) * 309f));
    var_0 = -2147483647i;
    global0 = vec2<bool>(all(!(!select(vec3<bool>(global1.c.a, global2.c.b, global2.a), vec3<bool>(global2.a, false, true), global0.x))), global2.c.b | (!global0.x | global1.c.a));
    let var_2 = global1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(43843i, 1i, -7735i) << (vec3<u32>(u_input.c.x, global2.c.a.x, global1.c.b.x) % vec3<u32>(32u))) & firstLeadingBit(vec3<i32>(u_input.d, global1.b.x, global1.b.x)), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, 67133i), vec3<i32>(-40157i, -43753i, global1.b.x)))), -1i, 4294967295u);
}

