struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<i32>(2147483647i, -2138i, 7050i, 77580i), vec4<f32>(598f, -780f, 1840f, -1825f));

var<private> global1: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false));

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<f32>, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(global0.a, vec4<f32>(-1091f, _wgslsmith_f_op_f32(-673f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x), global0.b.x));
    let var_1 = Struct_1(vec4<i32>(var_0.a.x, _wgslsmith_clamp_i32(~global0.a.x, firstTrailingBit(1i), i32(-1i) * -11284i), ~(-47678i), -abs(_wgslsmith_div_i32(0i, u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(global0.b.x, var_0.b.x, -873f, 1185f))))) * vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-364f * 2868f), _wgslsmith_f_op_f32(-global0.b.x))), 778f, -170f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.x)));
    let var_3 = firstTrailingBit(max(var_0.a, -global3.a));
    let var_4 = all(!select(select(select(global1[_wgslsmith_index_u32(25671u, 14u)], global1[_wgslsmith_index_u32(16040u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), select(vec4<bool>(true, true, true, false), global1[_wgslsmith_index_u32(u_input.c.x, 14u)], false), vec4<bool>(false, false, true, true)), global1[_wgslsmith_index_u32(41569u, 14u)], select(vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(select(1u, u_input.d.x, false), 14u)], true)));
    return (vec4<i32>(_wgslsmith_sub_i32(~u_input.e.x, 1i), _wgslsmith_add_i32(global3.a.x, _wgslsmith_mult_i32(var_0.a.x, var_3.x)), 1i, global3.a.x) ^ vec4<i32>(max(u_input.e.x, ~global0.a.x), 7633i, ~1i, -26534i)) & global3.a;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = func_3() & (~(-min(vec4<i32>(-20887i, -35799i, arg_1.x, global3.a.x), vec4<i32>(global3.a.x, arg_1.x, -34066i, 11014i))) << ((select(u_input.d, ~u_input.d, global1[_wgslsmith_index_u32(~21936u, 14u)]) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = global3.b.wx;
    var var_2 = _wgslsmith_dot_vec4_u32(~min(u_input.d, vec4<u32>(u_input.c.x, u_input.a, 61283u, 16778u) | ~u_input.d), ~select(firstTrailingBit(~u_input.d), reverseBits(u_input.d << (u_input.d % vec4<u32>(32u))), select(global1[_wgslsmith_index_u32(~1u, 14u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.d.x), 14u)], global1[_wgslsmith_index_u32(select(u_input.d.x, 1u, true), 14u)])));
    global0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, 0i, -32969i) | vec3<i32>(-1i, u_input.e.x, -1i)), var_0.wzw ^ _wgslsmith_sub_vec3_i32(global0.a.wyz, var_0.xyw)), -6145i, 1i, global3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.x, global3.b.x), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(floor(-433f))) + global0.b)));
    return Struct_1(~global0.a, vec4<f32>(506f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-global3.b.x)), arg_0), 146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * global3.b.x)));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, 1f) - 2243f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1233f)), _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(step(1344f, 306f))))), _wgslsmith_f_op_f32(ceil(-1000f))));
    global3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), vec2<i32>(2147483647i, select(arg_1, 28289i, true)));
    global0 = Struct_1(vec4<i32>(func_3().x, -1i ^ _wgslsmith_mod_i32(global3.a.x, global3.a.x), arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(22036i ^ global3.a.x, 0i, func_2(var_0.x, vec2<i32>(u_input.e.x, 37907i)).a.x, arg_1), func_2(var_0.x, u_input.e).a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(global0.b.x, ~vec2<i32>(3211i, global3.a.x)).b.x, global0.b.x, -1028f, global0.b.x) * _wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(floor(global3.b))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0)));
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.x)))))) - 1f), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), var_1.x)), u_input.e).a.yx | (select(vec2<i32>(u_input.e.x, arg_0), u_input.e, true) | vec2<i32>(global0.a.x, _wgslsmith_mod_i32(global0.a.x, 437i))));
    return _wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(max(139f, -294f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global3.b.x)), -334f, global0.b.x) * vec4<f32>(global3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f), -616f), -540f, _wgslsmith_f_op_f32(max(650f, 1063f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = global0.b.xy;
    var var_2 = _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_1(25589i, global3.a.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_3.zyz * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b.x, global3.b.x, var_1.x), vec3<f32>(var_3.x, global0.b.x, var_3.x))) + _wgslsmith_f_op_vec3_f32(select(global4[_wgslsmith_index_u32(u_input.d.x, 12u)], vec3<f32>(1346f, var_1.x, global0.b.x), vec3<bool>(false, false, true)))))))));
    let var_5 = 30803i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-4854i, u_input.b >> (_wgslsmith_add_u32(141u, ~u_input.c.x) % 32u), func_3().x), 37823i, abs(1u));
}

