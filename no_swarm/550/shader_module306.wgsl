struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-983f, -374f, 482f, 294f), vec4<f32>(132f, 247f, 245f, 156f), vec4<f32>(1022f, -1280f, 1260f, -937f), vec4<f32>(-455f, -1781f, 1129f, 576f), vec4<f32>(1562f, -781f, 205f, 495f), vec4<f32>(-748f, -1910f, -2356f, -705f), vec4<f32>(-498f, 578f, -945f, 774f), vec4<f32>(-737f, 1000f, -696f, -929f), vec4<f32>(-532f, 1520f, -1431f, -409f), vec4<f32>(163f, 207f, -941f, 211f), vec4<f32>(-1778f, 147f, 1200f, -449f), vec4<f32>(633f, 176f, 902f, -354f), vec4<f32>(-1000f, 1439f, -1677f, 442f), vec4<f32>(-785f, -1673f, 2525f, 903f), vec4<f32>(-1625f, -971f, -992f, -202f), vec4<f32>(535f, -854f, 494f, 1103f));

var<private> global3: array<u32, 3>;

var<private> global4: Struct_2 = Struct_2(18529u, vec3<i32>(2147483647i, -15419i, -1i), vec2<f32>(-489f, -1512f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = true;
    var var_1 = var_0;
    let var_2 = abs(select(firstTrailingBit(arg_2) << (~_wgslsmith_add_vec2_u32(arg_2, vec2<u32>(0u, global4.a)) % vec2<u32>(32u)), abs(~select(vec2<u32>(global4.a, global4.a), arg_2, global0.x)), var_0));
    global2 = array<vec4<f32>, 16>();
    var var_3 = !(!(!select(!vec4<bool>(true, true, false, arg_3.a.x), !vec4<bool>(arg_3.a.x, arg_3.c.x, arg_3.c.x, var_0), global0.x)));
    return !(!var_3.yyw);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * arg_1.x)) - _wgslsmith_f_op_f32(max(global4.c.x, arg_1.x)));
    let var_1 = Struct_1(global0.xz, 724f, global0.xz, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, abs(1i)), u_input.a.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.ww & vec2<i32>(-35190i, global4.b.x))), ~35477i);
    let var_2 = arg_0.x;
    let var_3 = var_1;
    var var_4 = Struct_2(~77530u, ~firstTrailingBit(u_input.a.yxw), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - -227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1516f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(948f)), _wgslsmith_f_op_f32(exp2(var_3.b))), 1200f), var_3.c)));
    return var_3.c;
}

fn func_2() -> vec2<i32> {
    let var_0 = global4.c;
    let var_1 = Struct_1(func_1(global4.b.zz, ~vec4<u32>(global3[_wgslsmith_index_u32(8571u, 3u)], 28428u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], _wgslsmith_mod_u32(30856u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57325u, 3u)], 3u)], 3u)])), _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, global3[_wgslsmith_index_u32(0u, 3u)]) << (firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27837u, 3u)], 3u)], global4.a)) % vec2<u32>(32u)), ~max(vec2<u32>(1u, global4.a), vec2<u32>(73218u, global4.a))), Struct_1(select(!global0.zz, func_3(vec2<u32>(18595u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(74538u, 3u)], 3u)]), global4.c, -57564i), global0.xz), 2645f, vec2<bool>(false && global0.x, true), _wgslsmith_add_i32(global4.b.x, -65616i) | _wgslsmith_add_i32(u_input.a.x, 2147483647i), firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, -1i, 40287i)))).zy, -1360f, vec2<bool>(!(!global0.x), global0.x), _wgslsmith_mod_i32(u_input.a.x, -(min(-57222i, 1i) >> (global4.a % 32u))), _wgslsmith_add_i32(u_input.a.x, min(-38452i, max(u_input.a.x, -22920i))) & _wgslsmith_mult_i32(-2147483647i, global4.b.x));
    global3 = array<u32, 3>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(773f + _wgslsmith_f_op_f32(f32(-1f) * -462f)), var_0.x)), _wgslsmith_f_op_f32(global4.c.x * 1f), var_1.b);
    global1 = array<Struct_2, 24>();
    return -(-select(u_input.a.zy, ~global4.b.yz, all(vec2<bool>(true, global0.x))) & u_input.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.zz, global4.c.x, vec2<bool>(all(func_1(vec2<i32>(61517i, 0i), ~vec4<u32>(global4.a, 1u, global3[_wgslsmith_index_u32(0u, 3u)], global4.a), _wgslsmith_sub_vec2_u32(vec2<u32>(4116u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64060u, 3u)], 3u)]), vec2<u32>(86260u, 1u)), Struct_1(vec2<bool>(global0.x, global0.x), global4.c.x, global0.yz, global4.b.x, global4.b.x))), any(vec4<bool>(true, any(global0.xx), all(vec3<bool>(global0.x, false, false)), global0.x))), global4.b.x, global4.b.x);
    global3 = array<u32, 3>();
    global2 = array<vec4<f32>, 16>();
    global3 = array<u32, 3>();
    let var_1 = 0u;
    var var_2 = var_0;
    global3 = array<u32, 3>();
    var var_3 = vec4<i32>(global4.b.x, 29240i, 0i, 6242i);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(-1i, var_3.x & var_2.d) | _wgslsmith_add_vec2_i32(func_2(), global4.b.xz), select(abs(-vec2<i32>(var_2.e, var_0.e)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, global4.b.x), global4.b.zz), !global0.yx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) + -185f), global4.c.x, var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-268f, 706f)))));
}

