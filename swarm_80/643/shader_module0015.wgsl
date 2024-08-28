struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<u32>(4294967295u, 52947u, 56414u, 1u), vec2<bool>(false, true)), vec2<i32>(31730i, -36060i), 1514f, Struct_1(vec4<u32>(1u, 1u, 0u, 0u), vec2<bool>(true, true)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    var var_0 = !arg_0.b.x;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(arg_0.a.x, 2u)], Struct_1(arg_0.a, !select(vec2<bool>(global2.d.b.x, arg_0.b.x), global2.d.b, select(arg_0.b, global2.d.b, vec2<bool>(arg_0.b.x, arg_0.b.x)))), reverseBits(~firstTrailingBit(-2147483647i)) & -8603i);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-516f)))), _wgslsmith_f_op_f32(floor(-1908f)), _wgslsmith_f_op_f32(step(849f, _wgslsmith_f_op_f32(-239f * _wgslsmith_f_op_f32(f32(-1f) * -1184f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global2.c, 1000f, var_1.b.b.x)), -304f, -1091f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, global2.c, global2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -260f, global2.c))))));
    let var_4 = _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))));
    return var_1.a.b;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = 4294967295u;
    global0 = vec2<u32>(~var_0, ~(~4294967295u));
    var var_1 = false;
    global0 = global2.d.a.zx;
    var_1 = false && all(select(vec3<bool>(u_input.d.x <= -2147483647i, true, false), !vec3<bool>(global2.a.b.x, false, true), !select(vec3<bool>(true, true, global2.a.b.x), vec3<bool>(global2.a.b.x, global2.d.b.x, global2.a.b.x), vec3<bool>(arg_1, arg_1, global2.d.b.x))));
    return Struct_3(Struct_1(vec4<u32>(7043u, _wgslsmith_mult_u32(arg_0.a.a.x, 48287u) | (global2.d.a.x >> (4294967295u % 32u)), 27841u, arg_0.a.a.x), global2.d.b), vec2<i32>(-1i) * -vec2<i32>(reverseBits(arg_0.c), -104764i), _wgslsmith_f_op_f32(global2.c - global2.c), Struct_1(~abs(min(vec4<u32>(global0.x, var_0, global0.x, 1u), vec4<u32>(17996u, u_input.c.x, global2.a.a.x, u_input.c.x))), select(vec2<bool>(true, true), select(arg_0.a.b, !global2.d.b, func_3(global1[_wgslsmith_index_u32(global0.x, 2u)], arg_1)), false)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> bool {
    global2 = func_2(Struct_2(func_2(Struct_2(arg_2.a, func_2(Struct_2(Struct_1(arg_2.a.a, vec2<bool>(arg_1.d.b.x, arg_2.d.b.x)), arg_1.a, u_input.d.x), global2.a.b.x).a, arg_2.b.x), !arg_2.d.b.x).a, arg_1.a, _wgslsmith_add_i32(6788i, ~(~22399i))), !func_3(func_2(Struct_2(arg_2.d, global1[_wgslsmith_index_u32(0u, 2u)], arg_1.b.x), !global2.d.b.x).a, !all(vec2<bool>(true, false))).x);
    let var_0 = !select(select(!(!vec4<bool>(true, false, arg_1.d.b.x, arg_2.d.b.x)), vec4<bool>(true, arg_1.a.b.x | true, func_2(Struct_2(Struct_1(global2.d.a, vec2<bool>(true, arg_2.a.b.x)), arg_1.a, -1i), arg_2.d.b.x).d.b.x, any(vec4<bool>(arg_1.d.b.x, false, arg_1.a.b.x, false))), func_2(Struct_2(Struct_1(arg_1.a.a, vec2<bool>(arg_2.a.b.x, global2.a.b.x)), global2.a, 46373i), false).c != 533f), vec4<bool>(global2.d.b.x, !arg_2.d.b.x, false, arg_2.d.b.x), global2.d.b.x);
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(arg_1.d.a.x), 2u)], vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.b.x, 0i, arg_1.b.x, global2.b.x), vec4<i32>(i32(-1i) * -2147483647i, 0i, _wgslsmith_mult_i32(u_input.b.x, 0i), u_input.d.x | u_input.b.x)), -u_input.b.x), arg_0, arg_2.a);
    var var_2 = global0.x;
    let var_3 = arg_1;
    return true;
}

fn func_1() -> Struct_2 {
    let var_0 = !(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -693f) <= _wgslsmith_f_op_f32(select(global2.c, -411f, true)), func_4(_wgslsmith_f_op_f32(-1921f * global2.c), Struct_3(Struct_1(global2.d.a, global2.a.b), u_input.d.zy, global2.c, global1[_wgslsmith_index_u32(2525u, 2u)]), func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], Struct_1(global2.d.a, vec2<bool>(false, global2.d.b.x)), global2.b.x), true), max(1u, global2.a.a.x)), true));
    global2 = Struct_3(global1[_wgslsmith_index_u32(1u, 2u)], global2.b, _wgslsmith_f_op_f32(round(global2.c)), global1[_wgslsmith_index_u32(global0.x, 2u)]);
    global0 = global2.d.a.wz;
    global1 = array<Struct_1, 2>();
    var var_1 = Struct_3(func_2(Struct_2(func_2(Struct_2(global1[_wgslsmith_index_u32(37316u, 2u)], Struct_1(global2.d.a, var_0.zy), 2147483647i), var_0.x).a, Struct_1(vec4<u32>(1u, 20693u, global0.x, global0.x), global2.a.b), u_input.b.x), !global2.d.b.x).d, u_input.d.zx, _wgslsmith_f_op_f32(max(795f, 441f)), global2.d);
    return Struct_2(Struct_1(firstLeadingBit(~vec4<u32>(u_input.c.x, 7368u, global2.a.a.x, global0.x) | _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 5333u, 0u), var_1.d.a)), vec2<bool>(true, all(var_1.a.b))), Struct_1(global2.a.a, var_1.a.b), 0i);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_2(arg_2, true);
    global2 = var_0;
    var var_1 = vec2<bool>(all(!global2.d.b), true);
    let var_2 = func_1().a.a.x;
    global2 = Struct_3(var_0.a, vec2<i32>(min(u_input.d.x, ~16842i), u_input.d.x) ^ vec2<i32>(-1i | ~arg_0.x, var_0.b.x), _wgslsmith_f_op_f32(-var_0.c), global2.d);
    return Struct_1(global2.a.a, select(arg_2.a.b, vec2<bool>(false, false), vec2<bool>(func_3(global1[_wgslsmith_index_u32(select(global2.a.a.x, var_2, true), 2u)], false).x, all(arg_2.a.b) || (var_0.c > arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(Struct_1(global2.d.a, global2.d.b), u_input.b.yx, _wgslsmith_f_op_f32(sign(global2.c)), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x) ^ 1u, 2u)]);
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, -global2.b.x), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, ~u_input.d.x, -42957i & u_input.d.x, firstLeadingBit(u_input.d.x)), -vec4<i32>(0i, -1i, 13986i, u_input.b.x)) ^ -1i);
    let var_1 = func_5(select(vec2<i32>(max(9558i, i32(-1i) * -68338i), 2147483647i), vec2<i32>(1i ^ global2.b.x, _wgslsmith_clamp_i32(i32(-1i) * -16878i, 1i << (1u % 32u), abs(global2.b.x))), global2.d.b), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2689f, -612f, global2.c), vec3<f32>(global2.c, 117f, -825f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(204f, 1000f, global2.c), vec3<f32>(-1442f, global2.c, global2.c), global2.d.b.x)))), vec3<f32>(2516f, 641f, _wgslsmith_f_op_f32(-global2.c))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(global2.c, global2.c, global2.c))), func_1());
    var_0 = _wgslsmith_mod_i32(1i, ~(~38192i));
    global1 = array<Struct_1, 2>();
    var var_2 = ~u_input.b;
    var var_3 = vec4<f32>(global2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -614f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1802f));
    var_0 = -(~(~(~var_2.x)));
    var_0 = ~var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.a.x), var_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1971f, 125f, -828f, global2.c)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -1282f, -1000f, global2.c), vec4<f32>(global2.c, -2095f, -270f, var_3.x))), select(vec4<bool>(global2.a.b.x, global2.d.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, global2.a.b.x, true, true), vec4<bool>(false, global2.d.b.x, var_1.b.x, var_1.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(499f, -366f, global2.c, 1728f), vec4<f32>(var_3.x, global2.c, 1137f, -1335f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-1171f * -644f), 1f)))), -37609i, select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, 2147483647i), -vec3<i32>(global2.b.x, var_2.x, 0i)), ~(~u_input.d), select(vec3<bool>(global2.a.b.x, var_1.b.x, true), select(vec3<bool>(true, global2.a.b.x, global2.a.b.x), vec3<bool>(var_1.b.x, var_1.b.x, global2.a.b.x), vec3<bool>(global2.a.b.x, true, global2.d.b.x)), vec3<bool>(true, true, true))) << (var_1.a.xzy % vec3<u32>(32u)));
}

