struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.d.x;
    global0 = array<Struct_1, 19>();
    var var_1 = ~arg_1.b.x;
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    return Struct_1(select(arg_1.a, select(!select(arg_1.a, arg_1.a, arg_1.a), arg_1.a, any(!arg_1.a.yz)), !arg_1.a), arg_0.wxw);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = true;
    global0 = array<Struct_1, 19>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(~u_input.c.x, 4294967295u), 4294967295u) | (u_input.e.x << (u_input.a.x % 32u)), 19u)];
    return func_2(_wgslsmith_mod_vec4_u32(min(u_input.e, u_input.b), u_input.e), Struct_1(!(!select(var_1.a, var_1.a, var_1.a.x)), u_input.e.wyy));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.a.x && false;
    global0 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_sub_u32(46527u, 25604u);
    global0 = array<Struct_1, 19>();
    var var_2 = Struct_1(!vec3<bool>(arg_0.x, !(!arg_0.x), true), max(arg_1.b << (u_input.b.wzy % vec3<u32>(32u)), vec3<u32>(var_1, ~0u, 1u >> ((arg_1.b.x & arg_1.b.x) % 32u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(vec3<bool>(false, _wgslsmith_sub_i32(u_input.d.x, -2147483647i) != -(~2147483647i), !var_0.a.x), u_input.b.zxw);
    global0 = array<Struct_1, 19>();
    var var_1 = true || (!all(vec2<bool>(true, var_0.a.x)) & var_0.a.x);
    var var_2 = min(select(select(select(vec4<i32>(-15732i, -66908i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 8706i, u_input.d.x, 1i), true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i), vec4<i32>(14073i, 47264i, -11907i, 1i)) << (~vec4<u32>(var_0.b.x, 1u, var_0.b.x, 1u) % vec4<u32>(32u)), vec4<bool>(func_3(var_0.a.zy, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), var_0.a.x, 1u != var_0.b.x, any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)))), -(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -1i)) ^ vec4<i32>(0i, u_input.d.x & u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x), u_input.d.x), var_0.a.x), -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 31868i, -1i), vec3<i32>(u_input.d.x, u_input.d.x, -4277i)), countOneBits(u_input.d.x)), 0i, -_wgslsmith_div_i32(-1i, u_input.d.x), u_input.d.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(trunc(360f)))))) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) * _wgslsmith_f_op_f32(-973f + 797f))))), 438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 520f) - -613f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_0.b, u_input.e.wxw), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, ~(~1i)), max(vec2<i32>(-77563i, min(u_input.d.x, u_input.d.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(72425i, 28183i) & u_input.d, -u_input.d))), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x)))))));
}

