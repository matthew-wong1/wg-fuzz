struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), false, -1083f, -453f);

var<private> global1: u32 = 0u;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = u_input.d.x;
    var var_1 = vec3<i32>(-11738i, _wgslsmith_sub_i32(firstTrailingBit(~(0i << (u_input.c % 32u))), u_input.b), _wgslsmith_mult_i32(max(_wgslsmith_mult_i32(u_input.b, 23227i), -31258i), 5038i) | u_input.b);
    var var_2 = global3[_wgslsmith_index_u32(0u, 17u)];
    global2 = global0.a.x;
    var var_3 = select(!global0.a.yww, vec3<bool>(false || global0.a.x, !(var_0 < (60624u & var_0)), !all(vec3<bool>(true, false, global0.a.x))), global0.a.x);
    return select(~_wgslsmith_mod_u32(~(~60816u), firstLeadingBit(16610u)), arg_0, var_3.x);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.c, 17u)];
    global3 = array<Struct_1, 17>();
    var var_1 = 2147483647i <= (0i << ((func_2(~23005u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, global0.d, -675f)), vec4<f32>(var_0.c, 1728f, global0.d, var_0.d)) ^ firstLeadingBit(~64802u)) % 32u));
    return global0.a.zw;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_3.xzx;
    var var_1 = 0u;
    let var_2 = Struct_1(arg_0.a, !global0.b, _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -504f)))), arg_0.d);
    var var_3 = Struct_1(select(global0.a, global0.a, select(global0.a, var_2.a, arg_0.a)), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c))))), var_2.d)), -529f);
    let var_4 = !select(vec3<bool>(all(arg_0.a.yzx), true, arg_0.a.x), !arg_0.a.wzx, all(!var_2.a));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(!vec4<bool>(func_3(Struct_1(vec4<bool>(global0.b, false, global0.b, global0.a.x), false, global0.d, 1523f), func_1(global0.b, 0u, 2854u), u_input.a, firstTrailingBit(vec4<u32>(97814u, 0u, 4594u, u_input.c))), !(!global0.b), !select(true, global0.a.x, global0.b), global0.b), true, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-957f)) + _wgslsmith_f_op_f32(global0.d * global0.d)) + 1030f)), 656f);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec3_i32(~vec3<i32>(-13519i, u_input.b, -15792i), vec3<i32>(u_input.b, -u_input.b, -u_input.b)), abs(vec3<i32>(u_input.b, 0i, ~u_input.b))));
}

