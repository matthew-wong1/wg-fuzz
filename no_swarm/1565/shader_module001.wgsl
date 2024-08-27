struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, vec3<u32>(61362u, 35911u, 45593u));

var<private> global1: array<f32, 18>;

var<private> global2: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    global0 = Struct_4(-u_input.d.x, global0.b);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31038u, 18u)] + global1[_wgslsmith_index_u32(global0.b.x, 18u)]) + _wgslsmith_f_op_f32(sign(698f))))));
    global1 = array<f32, 18>();
    global0 = Struct_4(i32(-1i) * -1i, min(global0.b, ~vec3<u32>(~global0.b.x, u_input.c.x, ~global0.b.x)));
    let var_0 = arg_2.a.a.xy;
    return arg_3.a.yxx;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    var var_0 = func_2(select(vec2<u32>(arg_3.x, max(1u, 0u)), u_input.c & ~(~global0.b.xx), arg_1.zz), ~global0.b.x, Struct_2(Struct_1(arg_1), arg_1, select(vec4<i32>(arg_2, ~(-43495i), _wgslsmith_div_i32(-32171i, 1i), ~u_input.b), select(abs(vec4<i32>(-8158i, arg_2, global0.a, -62411i)), -vec4<i32>(arg_2, 2147483647i, 0i, arg_2), vec4<bool>(arg_1.x, arg_1.x, true, true)), (arg_1.x || arg_1.x) & (arg_1.x | false)), Struct_1(select(vec4<bool>(true, arg_1.x, arg_1.x, true), arg_1, vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)))), Struct_1(!vec4<bool>(!arg_1.x, false & arg_1.x, arg_1.x, 0u != u_input.a)));
    global1 = array<f32, 18>();
    var var_1 = _wgslsmith_mult_vec4_u32(arg_3, max(arg_3, arg_3));
    return ~(~(~31332u) ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(~6507u, arg_0), ~max(0u, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(0u, abs(~(~u_input.a)), _wgslsmith_div_u32(func_1(4294967295u, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), 0i, ~vec4<u32>(28895u, 41710u, global0.b.x, global0.b.x)), ~_wgslsmith_sub_u32(76042u, 39101u))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-15248i, global0.a) << (~(50357u << (global0.b.x % 32u)) % 32u), 20341i);
    let var_2 = ~4294967295u;
    let var_3 = !vec2<bool>(any(func_2(var_0.yx, global0.b.x, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, true), vec4<i32>(u_input.d.x, 0i, global0.a, u_input.d.x), Struct_1(vec4<bool>(true, false, false, true))), Struct_1(vec4<bool>(true, true, true, true)))), select(true, false, true));
    var_1 = 1i;
    var var_4 = _wgslsmith_mult_vec3_i32(~firstTrailingBit(abs(-u_input.d)), ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-28177i, -1i, 1i), ~vec2<i32>(0i, ~var_4.x));
}

