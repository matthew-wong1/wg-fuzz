struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 26> = array<f32, 26>(-428f, -1735f, -1000f, -139f, -516f, 1060f, 802f, -1689f, -163f, 2639f, -345f, 2078f, 451f, -1780f, 537f, -1554f, 237f, 1577f, -1803f, -852f, -1885f, -618f, 1108f, 403f, 707f, -668f);

var<private> global2: vec3<f32> = vec3<f32>(887f, -942f, 1473f);

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<f32>, 3>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_3 {
    let var_0 = false;
    let var_1 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(var_0, true), vec2<bool>(var_0, false)), !vec2<bool>(var_0, true), global2.x == global2.x)));
    global4 = array<vec2<f32>, 3>();
    var var_2 = ~abs(vec2<u32>(1u, max(global0.x, 17112u))) >> (vec2<u32>(0u, 19914u) % vec2<u32>(32u));
    let var_3 = Struct_3(vec4<f32>(883f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f * -344f) * _wgslsmith_div_f32(1202f, global2.x))), 1736f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, _wgslsmith_f_op_f32(trunc(1236f)), global1[_wgslsmith_index_u32(0u, 26u)])));
    return var_3;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, global2.x, arg_2.a.x) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(638f, global1[_wgslsmith_index_u32(1u, 26u)], 1118f) - vec3<f32>(global2.x, 1294f, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(-arg_2.a.yyy), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.a.zyy)) + _wgslsmith_f_op_vec3_f32(ceil(arg_2.a.zyy)))))));
    let var_1 = arg_2;
    var var_2 = select(firstLeadingBit(-abs(vec4<i32>(u_input.b, 2147483647i, global3.x, -1i))), ~(min(vec4<i32>(0i, -2147483647i, u_input.b, 0i), -vec4<i32>(u_input.b, 29000i, -41723i, 1i)) & min(-vec4<i32>(u_input.b, u_input.b, 30229i, 7096i), vec4<i32>(-1677i, -2147483647i, global3.x, u_input.b))), !vec4<bool>(true, true, -378f < var_1.b.x, true));
    let var_3 = arg_1;
    return Struct_2(1u, (-13552i | (u_input.b ^ (global3.x | -1i))) != ~(-23079i), Struct_1(!(!var_3.a)), arg_0);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(595f, -1486f, global2.x), vec3<f32>(-1620f, -1038f, global1[_wgslsmith_index_u32(global0.x, 26u)]), vec3<bool>(arg_1.d.a, true, arg_0)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1384f)))));
    var var_0 = global0.x;
    let var_1 = func_3(Struct_1(select(!(arg_0 & arg_1.b), select(-297f >= global2.x, 2770i == global3.x, true & arg_0), arg_0)), arg_1.d, func_2(), true);
    global4 = array<vec2<f32>, 3>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(global2.x, -356f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2627u, 26u)] - global2.x))) + global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(29380u, _wgslsmith_mod_u32(1u, u_input.a.x)), 26u)]));
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_2(global0.x, all(!vec2<bool>(arg_0.x, all(arg_0))), Struct_1(true), func_3(Struct_1(arg_1), Struct_1(-global3.x < 1i), var_0, arg_2).c);
    global4 = array<vec2<f32>, 3>();
    let var_2 = vec3<i32>(firstTrailingBit(reverseBits(u_input.b)), reverseBits(34631i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~global3.yx, global3.yy << (global0.xx % vec2<u32>(32u))), vec2<i32>(global3.x & 0i, -global3.x)));
    var var_3 = arg_0.xwx;
    return func_3(func_3(var_1.c, var_1.c, func_2(), true | arg_0.x).d, var_1.d, func_2(), true).c;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    let var_0 = global0.x;
    global2 = vec3<f32>(1576f, global1[_wgslsmith_index_u32(global0.x, 26u)], global1[_wgslsmith_index_u32(~select(reverseBits(_wgslsmith_sub_u32(arg_0.c, 1u)), max(~0u, 1u), false), 26u)]);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26392u, 26u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(f32(-1f) * -568f))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -774f, global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, global2.x, global2.x, global2.x))))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2().b) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, -227f, global2.x), vec3<f32>(1010f, -141f, -1119f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 163f, 255f)))))));
    var var_3 = 120229u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~u_input.b);
    let var_1 = func_5(Struct_4(Struct_1(false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, select(false, true, true))), global0.x, Struct_1(abs(88736u) > u_input.a.x)), func_4(select(vec4<bool>(true, any(vec3<bool>(false, true, true)), false, any(vec2<bool>(false, false))), vec4<bool>(func_1(false, Struct_2(u_input.a.x, true, Struct_1(true), Struct_1(false))), true, true, false), true), true, true));
    var var_2 = var_1.d;
    var var_3 = global2.x;
    let var_4 = abs(global3.x) < abs(global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-564f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-759f, -399f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(192f, global1[_wgslsmith_index_u32(global0.x, 26u)]), vec2<f32>(global2.x, -524f), vec2<bool>(var_1.d.a, false))) * _wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(u_input.a.x, 3u)] - vec2<f32>(global2.x, global1[_wgslsmith_index_u32(var_1.c, 26u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.xx)) * func_2().b.yx)), countOneBits(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(global0.zy, u_input.a, u_input.a))) | u_input.a, 68302u, 45209u);
}

