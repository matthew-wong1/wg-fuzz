struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 34803u), vec2<u32>(44214u, 57539u), vec2<u32>(42308u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(35824u, 63916u), vec2<u32>(1u, 0u), vec2<u32>(0u, 9623u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 21458u), vec2<u32>(3749u, 0u), vec2<u32>(4294967295u, 60978u), vec2<u32>(1u, 0u), vec2<u32>(18399u, 0u), vec2<u32>(9660u, 0u), vec2<u32>(80796u, 1u), vec2<u32>(46373u, 26194u), vec2<u32>(1u, 38406u), vec2<u32>(25676u, 0u), vec2<u32>(41575u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 3615u), vec2<u32>(8628u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(60391u, 2678u), vec2<u32>(4294967295u, 0u), vec2<u32>(2501u, 4294967295u), vec2<u32>(0u, 61435u), vec2<u32>(1u, 1u));

var<private> global3: array<vec2<i32>, 13>;

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    return global4[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, ~47077u), 1u)), 10u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = vec2<i32>(1i, arg_0.a.x);
    global1 = select(vec3<bool>(select(41798u, _wgslsmith_div_u32(u_input.a, arg_0.b), var_0.x != 30682i) < 57435u, any(!select(vec4<bool>(arg_2.x, arg_3.x, arg_2.x, arg_2.x), vec4<bool>(false, arg_0.c, arg_2.x, true), true)), arg_0.c), select(vec3<bool>(any(!vec3<bool>(false, false, arg_3.x)), !global1.x, true), !(!select(vec3<bool>(false, false, global1.x), vec3<bool>(true, arg_2.x, true), true)), vec3<bool>(!(!global1.x), !(!arg_3.x), func_1().a.c)), vec3<bool>(arg_0.c, func_1().a.c, !(!any(vec2<bool>(arg_0.c, arg_0.c)))));
    global2 = array<vec2<u32>, 28>();
    global1 = !select(vec3<bool>(all(vec2<bool>(true, true)), true, arg_0.c), select(!select(vec3<bool>(false, true, arg_0.c), vec3<bool>(true, global1.x, global1.x), false), !vec3<bool>(global1.x, true, arg_0.c), true), vec3<bool>(arg_0.c, arg_2.x, all(global1.yy)));
    var var_1 = ~vec2<u32>((arg_0.b >> (max(u_input.a, 0u) % 32u)) >> (arg_0.b % 32u), 0u);
    return ~(~(_wgslsmith_div_vec3_u32(func_1().b, _wgslsmith_mult_vec3_u32(vec3<u32>(7635u, 0u, 4294967295u), vec3<u32>(var_1.x, u_input.a, var_1.x))) >> (vec3<u32>(_wgslsmith_sub_u32(arg_0.b, var_1.x), ~u_input.a, arg_0.b ^ 0u) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = func_3(func_1().a, countOneBits(arg_0.a.a.yz), !(!vec2<bool>(global1.x, arg_0.a.c)), select(!vec2<bool>(any(vec3<bool>(true, true, false)), true), vec2<bool>(func_1().a.c, true), global1.zy));
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_1 = func_1();
    let var_2 = global0[_wgslsmith_index_u32(func_1().a.b, 15u)];
    return -(~arg_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -min(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i))) & vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -19416i), u_input.b.x & 5539i, u_input.b.x, ~u_input.b.x), vec4<i32>(_wgslsmith_add_i32(u_input.b.x | u_input.b.x, ~1i), u_input.b.x, i32(-1i) * -2147483647i, func_2(func_1(), _wgslsmith_f_op_f32(trunc(-1527f)))));
    let var_1 = 2075f;
    let var_2 = vec4<bool>(false, all(vec4<bool>(all(vec3<bool>(true, global1.x, false)), any(vec3<bool>(global1.x, global1.x, global1.x)), !global1.x, true)) != false, any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, global1.x)), select(vec2<bool>(false, true), vec2<bool>(global1.x, false), true), global1.xx), !select(vec2<bool>(global1.x, true), global1.yy, global1.x), true)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-66189i, firstTrailingBit(select(-25196i, u_input.b.x, !var_2.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, var_0.x), u_input.b.x & -22106i) & ((1i | var_0.x) | -18114i)), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(183f, var_1, var_1))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, 943f, 1001f)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -300f), -132f, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, -1213f, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)))))));
}

