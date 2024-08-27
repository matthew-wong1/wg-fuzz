struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
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

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(2147483647i, 0i, 35022i), Struct_1(vec2<u32>(28732u, 4294967295u)), vec4<f32>(-423f, -491f, -641f, -453f), Struct_1(vec2<u32>(1u, 1u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_5 {
    var var_0 = (~(vec4<i32>(0i, -26810i, global1.a.x, global1.a.x) & abs(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))) ^ _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, global1.a.x, global1.a.x), global0[_wgslsmith_index_u32(1u, 6u)]), reverseBits(~vec4<i32>(global1.a.x, -2147483647i, -1i, global1.a.x)))) & vec4<i32>(global1.a.x, ~global1.a.x, ~(~global1.a.x), _wgslsmith_div_i32(1i >> (1u % 32u), global1.a.x));
    global1 = Struct_2(vec3<i32>(-1i) * -global1.a, global1.b, _wgslsmith_f_op_vec4_f32(select(global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.c.x, 1441f, global1.c.x)) - _wgslsmith_f_op_vec4_f32(ceil(global1.c)))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))), Struct_1(select(~(global1.d.a >> (vec2<u32>(global1.d.a.x, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c.x), global1.d.a), false)));
    let var_1 = all(vec4<bool>(false, true, true, !(!any(vec3<bool>(false, false, false)))));
    let var_2 = max(~u_input.c, ~vec4<u32>(1u, u_input.a, _wgslsmith_add_u32(63098u, abs(1u)), u_input.b.x));
    let var_3 = vec3<u32>(~(~(~(4294967295u << (0u % 32u)))), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, global1.d.a.x), 0u), u_input.a ^ var_2.x);
    return Struct_5(var_1, false, Struct_4(157f, _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(-1664f - _wgslsmith_f_op_f32(floor(393f))), all(!vec2<bool>(var_1, false)))), !all(vec3<bool>(var_1, false, true)), Struct_3(Struct_2(vec3<i32>(var_0.x, global1.a.x, var_0.x), Struct_1(global1.b.a), vec4<f32>(1000f, -307f, 1000f, 671f), Struct_1(vec2<u32>(global1.d.a.x, var_2.x))), select(!var_1, var_1, !var_1), _wgslsmith_clamp_u32(~u_input.c.x, ~74592u, _wgslsmith_mod_u32(global1.d.a.x, global1.b.a.x))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c.x), 6u)] >> (vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(var_2.x, u_input.c.x), ~1u, var_3.x << (u_input.b.x % 32u)) % vec4<u32>(32u))), firstLeadingBit(abs(_wgslsmith_sub_u32(reverseBits(26222u), _wgslsmith_div_u32(4294967295u, 35644u)))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -(~func_2().c.d.a.a), global1.a, min(_wgslsmith_sub_vec3_i32(-arg_1.d.a.a >> (vec3<u32>(1u, 17097u, 38409u) % vec3<u32>(32u)), vec3<i32>(abs(-2147483647i), 1i, arg_0.c.e.x)), abs(vec3<i32>(select(-1i, 4669i, true), -arg_0.c.d.a.a.x, ~global1.a.x))));
    let var_1 = func_2().c.d.a.d;
    let var_2 = arg_1.d;
    var var_3 = vec2<i32>(countOneBits(i32(-1i) * -1i), ~1640i);
    global0 = array<vec4<i32>, 6>();
    return 1u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_5) -> vec2<u32> {
    global0 = array<vec4<i32>, 6>();
    var var_0 = func_2();
    return ~vec2<u32>(max(4294967295u, _wgslsmith_mod_u32(9659u ^ var_0.c.d.a.b.a.x, func_3(arg_3, Struct_4(1656f, 405f, arg_3.b, Struct_3(Struct_2(vec3<i32>(-1i, -4056i, 1i), var_0.c.d.a.b, arg_3.c.d.a.c, arg_3.c.d.a.b), arg_1.x, u_input.a), vec4<i32>(1i, -2147483647i, 2147483647i, 17561i))))), 8833u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    global1 = Struct_2(~_wgslsmith_clamp_vec3_i32(global1.a, global1.a, global1.a), Struct_1(~func_1(Struct_2(vec3<i32>(-1i, var_0.x, var_0.x), global1.b, vec4<f32>(global1.c.x, global1.c.x, -700f, global1.c.x), global1.b), vec3<bool>(true, true, false), 0i, Struct_5(true, true, Struct_4(global1.c.x, -309f, true, Struct_3(Struct_2(global1.a, global1.d, global1.c, global1.b), false, 4294967295u), global0[_wgslsmith_index_u32(global1.d.a.x, 6u)]), global1.d.a.x)) >> (max(~u_input.c.zy, ~global1.d.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(999f)), 550f, _wgslsmith_f_op_f32(global1.c.x + global1.c.x), global1.c.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, global1.c.x, global1.c.x, 694f)))))), func_2().c.d.a.b);
    var var_1 = func_2();
    var var_2 = !all(!(!vec3<bool>(false, true, var_1.c.d.b)));
    global0 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_mult_i32(7823i, var_0.x), _wgslsmith_mod_i32(var_1.c.e.x, ~var_1.c.e.x), min(~(-2147483647i), select(global1.a.x, global1.a.x, false))));
}

