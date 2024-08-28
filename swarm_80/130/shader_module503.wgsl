struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    global1 = Struct_1(global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, ~(~(-2234i)), ~(~2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(18475i, u_input.a, ~0i), reverseBits(abs(vec3<i32>(0i, u_input.a, u_input.a))))), vec3<u32>(global0[_wgslsmith_index_u32(global1.c.x, 22u)], abs(_wgslsmith_mult_u32(u_input.e, ~44742u)), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 22u)]), global1.d);
    global0 = array<u32, 22>();
    return u_input.a;
}

fn func_3() -> vec3<u32> {
    global1 = Struct_1(false, _wgslsmith_mod_i32(i32(-1i) * -countOneBits(u_input.a), ~(-(~u_input.a))), ~countOneBits(vec3<u32>(52798u, global1.c.x, 0u)) >> (abs(~vec3<u32>(u_input.d.x, 10303u, u_input.b) << (global1.c % vec3<u32>(32u))) % vec3<u32>(32u)), false);
    global0 = array<u32, 22>();
    var var_0 = false;
    let var_1 = Struct_1(true, -1188i, select(select(u_input.d.wzw >> (~vec3<u32>(global1.c.x, 1u, 10784u) % vec3<u32>(32u)), u_input.d.zzz, all(select(vec2<bool>(false, false), vec2<bool>(global1.d, false), vec2<bool>(false, true)))), global1.c, true), true);
    return abs(var_1.c);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    var var_1 = global1.c.x;
    global1 = Struct_1(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-170f, 1266f, 290f, -933f)) - vec4<f32>(238f, 222f, 851f, -1295f))) <= global1.b, global1.b, global1.c, false);
    global1 = Struct_1(!any(vec4<bool>(false, !global1.a, arg_0.x, global1.d)), -60594i, func_3(), false);
    let var_2 = false;
    return Struct_1(false, ~(-(i32(-1i) * -19455i)), global1.c, !global1.d || (true | global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-134f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -580f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(236f, -1823f, global1.d))))));
    global0 = array<u32, 22>();
    global1 = func_1(select(!select(vec3<bool>(false, global1.d, true), vec3<bool>(global1.d, true, global1.a), vec3<bool>(global1.d, global1.a, true)), vec3<bool>(true, ~0u > u_input.c, global1.a), false));
    var var_1 = Struct_1(!(global0[_wgslsmith_index_u32(global1.c.x, 22u)] <= (func_3().x ^ global0[_wgslsmith_index_u32(5103u ^ global1.c.x, 22u)])), 7044i, ~global1.c, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global1.c.x, abs(reverseBits(func_3().x)), func_3().x, var_1.c.x), vec4<i32>(_wgslsmith_mult_i32(~global1.b, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, var_1.b, u_input.a), vec3<i32>(2147483647i, u_input.a, 0i)))), abs(max(2147483647i, ~u_input.a)), _wgslsmith_clamp_i32(0i, 1i, -2147483647i & _wgslsmith_div_i32(global1.b, global1.b)), var_1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), func_1(!vec3<bool>(var_1.a, true, any(vec2<bool>(var_1.a, true)))).c);
}

