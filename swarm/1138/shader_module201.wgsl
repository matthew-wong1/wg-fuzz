struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: bool = false;

var<private> global3: vec3<u32>;

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, -1985f) + vec2<f32>(-1058f, arg_0.b)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, 697f), vec2<f32>(-2288f, 1203f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1151f, -564f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 782f) - vec2<f32>(-1000f, -496f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-727f, arg_0.b) + vec2<f32>(arg_0.b, -321f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(2864f, arg_0.b))))))));
    global0 = array<vec4<i32>, 23>();
    global2 = arg_0.c;
    let var_1 = 1u;
    var var_2 = -26280i;
    return -5755i;
}

fn func_2() -> i32 {
    global3 = vec3<u32>(0u, ~_wgslsmith_mod_u32(~(~4294967295u), abs(31572u << (1u % 32u))), ~10084u);
    var var_0 = -(~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, u_input.a), vec3<u32>(17164u, 0u, u_input.a)), 23u)]);
    global4 = var_0.yxx;
    global3 = ~max(vec3<u32>(~(~0u), global3.x, select(~11772u, ~global3.x, false)), countOneBits(~(~vec3<u32>(4294967295u, 4294967295u, u_input.a))));
    global1 = !vec3<bool>(~(~(-44859i)) == global4.x, true, false);
    return var_0.x;
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1;
    global4 = -vec3<i32>(global4.x, global4.x, 49467i);
    global2 = true;
    let var_1 = true;
    var var_2 = Struct_3(select(vec4<bool>(true, false, false, true), vec4<bool>(any(vec4<bool>(true, var_1, var_0.b, global1.x)), (u_input.a > global3.x) == any(vec3<bool>(false, global1.x, true)), true, any(select(vec3<bool>(true, true, var_1), vec3<bool>(false, true, var_0.b), global1.x))), vec4<bool>(select(global3.x >= u_input.a, global1.x, true), all(vec2<bool>(true, true)), u_input.a == 31761u, true & (false | global1.x))), _wgslsmith_f_op_f32(ceil(arg_0)), arg_1.b);
    return 9656u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<i32>(global4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(Struct_3(vec4<bool>(global1.x, false, true, global1.x), -691f, global1.x)), _wgslsmith_mult_i32(global4.x, global4.x) ^ (global4.x >> (4294967295u % 32u))), -vec2<i32>(~global4.x, _wgslsmith_add_i32(-34560i, global4.x))), _wgslsmith_add_i32(-18019i, _wgslsmith_sub_i32(func_2(), global4.x)));
    let var_0 = vec3<f32>(-1440f, _wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(-1121f * -1622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f))));
    var var_1 = _wgslsmith_sub_vec3_i32(-(_wgslsmith_mult_vec3_i32(-vec3<i32>(global4.x, global4.x, -1i), ~vec3<i32>(-2147483647i, -29067i, global4.x)) & firstLeadingBit(vec3<i32>(-3472i, -48219i, -1i) | vec3<i32>(global4.x, 1i, 2147483647i))), abs(vec3<i32>(global4.x ^ global4.x, _wgslsmith_div_i32(global4.x, global4.x), countOneBits(2147483647i))) | (vec3<i32>(_wgslsmith_mod_i32(global4.x, -12058i), global4.x, _wgslsmith_mult_i32(global4.x, -51305i)) & vec3<i32>(~global4.x, -global4.x, ~(-2147483647i))));
    let var_2 = -1196f;
    var var_3 = var_1.xz;
    let var_4 = global4.x;
    let var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-990f))) * 1925f)), !global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(-1908f, var_5) ^ global3.x, vec4<u32>(global3.x, u_input.a, 10314u, countOneBits(~4294967295u)), -30843i, ~(vec3<i32>(-1i, ~(-40823i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, -26695i))) << (firstLeadingBit(vec3<u32>(49789u, u_input.a, global3.x)) % vec3<u32>(32u))));
}

