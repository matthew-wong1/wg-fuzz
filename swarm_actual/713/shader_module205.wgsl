struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<vec4<u32>, 32>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1383f, 826f, 1198f)))), vec3<f32>(-1427f, _wgslsmith_f_op_f32(step(-1000f, 396f)), _wgslsmith_div_f32(127f, 1000f))) * vec3<f32>(-748f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) - 1806f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) - _wgslsmith_f_op_f32(-300f * -268f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(137f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1983f * 930f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(325f, 1135f))) * -1434f)), !vec3<bool>(!global3.a.a.x && global3.a.a.x, all(global3.a.a.xy), !global3.a.a.x || all(vec3<bool>(false, global3.a.a.x, global3.a.a.x)))));
    var var_1 = Struct_2(global3.a);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), 1522f, _wgslsmith_f_op_f32(-var_0.x));
    global1 = array<vec4<f32>, 19>();
    let var_2 = var_0.x <= var_0.x;
    return var_0.x;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(-1000f + -996f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-348f * 477f)))), true, all(select(select(vec4<bool>(true, global3.a.b, global3.a.a.x, true), !vec4<bool>(global3.a.b, true, global3.a.a.x, false), !global3.a.a.x), !(!vec4<bool>(global3.a.b, global3.a.a.x, global3.a.a.x, true)), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(-193f, 467f, var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(global3.a.d)), _wgslsmith_f_op_f32(-1186f * 1069f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-412f, 940f))))))));
    global3 = Struct_2(Struct_1(global3.a.a, _wgslsmith_f_op_f32(739f + _wgslsmith_f_op_f32(-var_1.x)) >= var_1.x, abs(~(~u_input.a.x)), vec4<u32>(~20329u, global3.a.d.x, _wgslsmith_dot_vec3_u32(u_input.c.wyz, select(u_input.c.yzw, u_input.c.xyy, global3.a.b)), u_input.d)));
    var_0 = global3.a.a;
    let var_2 = !all(var_0.yx) & true;
    return var_1.x;
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<f32>, 19>();
    global0 = array<Struct_2, 29>();
    let var_0 = true;
    let var_1 = Struct_1(vec3<bool>(true, !(!(!var_0)), !(_wgslsmith_f_op_f32(func_2(u_input.c)) != -295f)), all(!global3.a.a.yx), 0i, max(~vec4<u32>(4294967295u, ~1u, global3.a.d.x, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(12931u, 32u)], global3.a.d)), reverseBits(abs(vec4<u32>(u_input.c.x, 0u, global3.a.d.x, 1u)) & ~global3.a.d)));
    global0 = array<Struct_2, 29>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yy;
    var var_1 = global3.a.d.x;
    global3 = Struct_2(func_1());
    var var_2 = global0[_wgslsmith_index_u32(11872u, 29u)];
    var var_3 = firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(var_0.x, var_2.a.c), abs(-59616i), _wgslsmith_mult_i32(0i, -global3.a.c), -var_0.x), vec4<i32>(var_2.a.c, -(~u_input.a.x), -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x)));
    var var_4 = true;
    var var_5 = global3.a;
    var_2 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d, global1[_wgslsmith_index_u32(~func_1().d.x >> (func_1().d.x % 32u), 19u)], vec4<i32>(_wgslsmith_mod_i32(-56239i, -2147483647i), ~_wgslsmith_clamp_i32(firstLeadingBit(global3.a.c), 1i, var_0.x), 21980i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.c, 1i, global3.a.c, var_2.a.c), vec4<i32>(u_input.b.x, -1i, 0i, var_0.x)) & 0i), -312f, 2147483647i);
}

