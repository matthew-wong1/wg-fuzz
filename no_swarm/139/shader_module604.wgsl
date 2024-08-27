struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(true, false), -44056i));

var<private> global1: array<f32, 16>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), i32(-2147483648));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: bool) -> vec3<u32> {
    global1 = array<f32, 16>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_f32(floor(arg_1.x)));
    let var_1 = arg_0;
    global0 = array<Struct_1, 1>();
    global1 = array<f32, 16>();
    return vec3<u32>(_wgslsmith_add_u32(~1u, ~(~var_1.c.b)) >> (select(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.c.b, 1u), ~arg_0.c.b), 61921u, !all(arg_0.d.zy)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.c.b, ~(~31156u), var_1.c.b), vec3<u32>(1u, _wgslsmith_mult_u32(var_1.c.b, 1u), _wgslsmith_mult_u32(arg_0.c.b, var_1.c.b))), reverseBits(var_1.c.b << (4294967295u % 32u)) >> (1u % 32u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<f32, 16>();
    let var_0 = _wgslsmith_div_vec3_u32(reverseBits(~(vec3<u32>(0u, 53597u, 0u) & func_3(Struct_3(1i, -2147483647i, Struct_2(0i, 0u), vec4<bool>(false, true, false, true)), vec4<f32>(1291f, -303f, arg_0, 102f), vec3<bool>(false, global2.a.x, false), true))), ~vec3<u32>(~_wgslsmith_mod_u32(57849u, 4294967295u), 41013u << (1u % 32u), ~52716u));
    global2 = Struct_1(global2.a, -abs(-firstLeadingBit(arg_1)));
    var var_1 = Struct_3(u_input.b, min(23896i, _wgslsmith_dot_vec4_i32(vec4<i32>(27359i, -1i, ~46795i, arg_2.x), abs(~vec4<i32>(1i, 25346i, -1i, u_input.a)))), Struct_2(arg_2.x, 70711u), vec4<bool>(false, any(!select(vec4<bool>(false, global2.a.x, false, global2.a.x), vec4<bool>(false, global2.a.x, true, false), global2.a.x)), (_wgslsmith_mult_u32(88461u, 8553u) >= var_0.x) == all(select(vec3<bool>(false, global2.a.x, global2.a.x), vec3<bool>(false, false, false), global2.a.x)), any(select(!vec3<bool>(false, global2.a.x, false), vec3<bool>(global2.a.x, global2.a.x, global2.a.x), select(vec3<bool>(global2.a.x, true, global2.a.x), vec3<bool>(global2.a.x, global2.a.x, global2.a.x), vec3<bool>(false, global2.a.x, global2.a.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 16u)], -943f, global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(0u, 16u)])))))));
    return Struct_1(select(select(!(!var_1.d.zz), !(!vec2<bool>(global2.a.x, false)), var_1.d.x), !global2.a, var_1.d.xx), var_1.a);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(_wgslsmith_clamp_u32(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(50340u, 120891u, 75021u, 0u), ~vec4<u32>(62380u, 60089u, 11254u, 4294967295u)), ~4294967295u), ~4294967295u, false), 1u), 16u)];
    let var_1 = func_2(_wgslsmith_f_op_f32(ceil(-509f)), arg_0, vec2<i32>(~0i, -_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, global2.b), arg_0)));
    return -global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    var var_1 = !(!vec3<bool>(any(global2.a), true, var_0.x));
    var var_2 = Struct_3(~_wgslsmith_clamp_i32(min(_wgslsmith_mod_i32(global2.b, global2.b), _wgslsmith_sub_i32(0i, global2.b)), func_1(-11464i), abs(~u_input.a)), countOneBits(-_wgslsmith_add_i32(1i, 3864i)), Struct_2(-global2.b, 297u), select(select(!select(vec4<bool>(var_0.x, true, true, global2.a.x), vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, false, false, var_1.x)), !select(vec4<bool>(global2.a.x, var_1.x, global2.a.x, false), vec4<bool>(false, var_1.x, var_1.x, true), global2.a.x), select(vec4<bool>(false, global2.a.x, true, global2.a.x), vec4<bool>(true, var_0.x, var_0.x, global2.a.x), vec4<bool>(false, global2.a.x, var_1.x, false))), select(select(select(vec4<bool>(false, global2.a.x, true, true), vec4<bool>(var_1.x, var_1.x, global2.a.x, global2.a.x), true), !vec4<bool>(var_0.x, true, false, false), !var_1.x), !select(vec4<bool>(true, global2.a.x, true, false), vec4<bool>(true, global2.a.x, true, var_0.x), vec4<bool>(global2.a.x, var_1.x, global2.a.x, var_1.x)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(global2.a.x, false, var_0.x, false), vec4<bool>(var_1.x, true, true, var_1.x)), !vec4<bool>(true, var_1.x, var_1.x, global2.a.x), !var_0.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(40210u, 16u)]))), i32(-1i) * -9305i, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.c, 47932i))).a.x));
    var var_3 = global0[_wgslsmith_index_u32(19107u, 1u)];
    let var_4 = global1[_wgslsmith_index_u32(11113u, 16u)];
    var var_5 = _wgslsmith_dot_vec4_u32(~min(abs(vec4<u32>(var_2.c.b, 22316u, var_2.c.b, 11950u) | vec4<u32>(var_2.c.b, var_2.c.b, var_2.c.b, var_2.c.b)), ~(~vec4<u32>(var_2.c.b, 21220u, var_2.c.b, 0u))), ~(~(~vec4<u32>(53541u, 0u, var_2.c.b, 60750u))) ^ min(max(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c.b, var_2.c.b, 2986u, 15676u), vec4<u32>(var_2.c.b, var_2.c.b, var_2.c.b, var_2.c.b)), vec4<u32>(var_2.c.b, 4294967295u, var_2.c.b, 22120u)), vec4<u32>(max(11583u, 0u), abs(var_2.c.b), var_2.c.b, firstLeadingBit(var_2.c.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(countOneBits(select(abs(vec4<u32>(44772u, var_2.c.b, var_2.c.b, var_2.c.b)), vec4<u32>(1u, 40031u, 38295u, 0u), vec4<bool>(true, var_1.x, true, var_3.a.x))), vec4<u32>(var_2.c.b, select(min(var_2.c.b, var_2.c.b), _wgslsmith_div_u32(4294967295u, 28004u), 16170i != var_2.c.a), 1u, ~(var_2.c.b & var_2.c.b))), ~4294967295u);
}

