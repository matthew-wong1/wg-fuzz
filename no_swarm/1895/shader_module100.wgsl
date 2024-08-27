struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = Struct_4(Struct_1(all(vec3<bool>(global1.x || true, global1.x & global1.x, true))), Struct_3(abs(u_input.b)), u_input.a > ~(107767u ^ abs(u_input.a)), Struct_1(false), Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 46885i, 42163i), u_input.b & vec3<i32>(u_input.b.x, arg_0.x, -40207i), vec3<i32>(u_input.c, arg_0.x, 2147483647i)) & -(vec3<i32>(23171i, -10i, -5269i) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))));
    let var_1 = any(vec3<bool>(any(global1.yxw), any(global1.xxx) | any(vec4<bool>(var_0.d.a, true, true, false)), !(all(vec3<bool>(true, var_0.a.a, global1.x)) && var_0.d.a)));
    let var_2 = vec4<i32>(~(~min(~2147483647i, 1i)), ~arg_0.x, u_input.c, var_0.e.a.x);
    var var_3 = Struct_3(arg_0.ywz);
    let var_4 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 610f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-541f, 503f, arg_2))))))), max(reverseBits(reverseBits(vec3<u32>(21907u, u_input.a, 48411u))), firstLeadingBit(abs(vec3<u32>(0u, 16386u, 63415u)))) & firstTrailingBit(~firstTrailingBit(vec3<u32>(global0.x, u_input.a, 4294967295u))), vec4<i32>(~max(-2147483647i, u_input.c >> (global0.x % 32u)), var_0.b.a.x, -2147483647i, _wgslsmith_sub_i32(62245i, -26036i)));
    return all(select(select(select(!vec4<bool>(global1.x, var_1, false, var_1), !vec4<bool>(false, global1.x, global1.x, false), !vec4<bool>(global1.x, var_0.d.a, var_1, var_1)), vec4<bool>(false && var_1, select(false, false, var_0.c), true, false), false), select(vec4<bool>(!var_0.c, any(vec2<bool>(var_1, var_1)), all(vec3<bool>(true, var_1, true)), true), select(vec4<bool>(true, global1.x, true, var_0.d.a), !vec4<bool>(var_1, true, global1.x, true), true), select(!vec4<bool>(var_1, true, global1.x, var_0.c), vec4<bool>(global1.x, false, false, var_0.c), all(vec4<bool>(true, false, var_1, var_1)))), vec4<bool>(!global1.x, var_4.c.x > (u_input.b.x ^ 46422i), var_1, min(u_input.a, 4294967295u) >= firstTrailingBit(u_input.a))));
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec3<u32> {
    global0 = _wgslsmith_mult_vec2_u32(~(~(~(vec2<u32>(u_input.a, 18074u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))), vec2<u32>(4294967295u, u_input.a));
    var var_0 = arg_1.b;
    global1 = !(!vec4<bool>(all(select(global1.xyw, vec3<bool>(false, false, arg_1.c), global1.x)), true, true, select(0u, u_input.a, arg_1.d.a) != ~global0.x));
    global1 = vec4<bool>(any(vec3<bool>(global1.x, true, (global0.x != u_input.a) || true)), global1.x, !func_3(~(vec4<i32>(arg_1.b.a.x, -5238i, 1i, -2147483647i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 30550u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1600f)), _wgslsmith_f_op_f32(-2182f + -671f)), select(global1.x, true, all(!global1.zy)) | ((9015i != firstTrailingBit(arg_1.e.a.x)) & all(vec2<bool>(global1.x, true))));
    global1 = !select(!vec4<bool>(all(vec2<bool>(arg_1.c, arg_1.c)), true, true, true), !(!select(vec4<bool>(false, arg_1.a.a, arg_1.d.a, false), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(true, false, true, false))), vec4<bool>(arg_1.a.a, global1.x, arg_1.c, global1.x));
    return vec3<u32>(~global0.x, _wgslsmith_mult_u32(~abs(~u_input.a), ~reverseBits(~global0.x)), 38175u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(global1.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x), 400f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(702f, 1167f, -122f, arg_2.a.x) * vec4<f32>(arg_2.a.x, -1142f, arg_1.a.x, -363f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_1.a.x, arg_2.a.x, arg_2.a.x) - vec4<f32>(arg_1.a.x, arg_1.a.x, 1312f, 1330f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(510f))), _wgslsmith_f_op_f32(-arg_1.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1398f))), _wgslsmith_f_op_f32(step(-606f, -1313f)), arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(519f - arg_2.a.x), _wgslsmith_f_op_f32(max(2208f, -1129f))))), false));
    global1 = vec4<bool>(arg_2.a.x != _wgslsmith_f_op_f32(sign(-2169f)), !var_0.a && !(!var_0.a), true, u_input.a > 49388u);
    let var_2 = arg_1.a.zy;
    let var_3 = Struct_1(var_0.a);
    return Struct_1(all(!vec2<bool>(var_3.a & false, global0.x <= global0.x)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_4(func_4(-49939i, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(-1608f, 725f)), -436f, -445f), ~vec3<u32>(u_input.a, 0u, u_input.a), vec4<i32>(-1i) * -vec4<i32>(u_input.c, 6626i, arg_0, -16501i)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(574f, -439f, 1030f) * vec3<f32>(299f, -1296f, -1328f)), vec3<bool>(global1.x, global1.x, global1.x))), func_2(-2147483647i, Struct_4(Struct_1(false), Struct_3(vec3<i32>(arg_0, arg_0, arg_0)), true, Struct_1(global1.x), Struct_3(u_input.b))), ~(vec4<i32>(0i, u_input.b.x, arg_0, -56008i) ^ vec4<i32>(-29118i, arg_0, -1i, arg_0)))), Struct_3(vec3<i32>(-2147483647i, u_input.b.x, arg_0) & u_input.b), true, Struct_1((any(vec4<bool>(true, global1.x, global1.x, true)) & true) | true), Struct_3(u_input.b));
    var var_1 = _wgslsmith_f_op_f32(-1032f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1739f * -2087f) * _wgslsmith_div_f32(366f, -823f)) * 1f)));
    var var_2 = 8103i;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1712f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(2157f, -1000f))))))), -456f));
    let var_1 = u_input.c;
    var var_2 = global1.x;
    var var_3 = u_input.b.yy;
    var var_4 = func_1(35389i);
    let var_5 = firstLeadingBit(u_input.a) <= global0.x;
    let var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_0)), var_0, vec2<f32>(var_0, _wgslsmith_f_op_f32(ceil(304f))), vec3<u32>(~19621u, reverseBits(u_input.a), ~abs(0u)));
}

