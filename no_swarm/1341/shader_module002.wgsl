struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.a.c.x;
    return countOneBits(u_input.b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<bool> {
    global0 = array<vec4<i32>, 10>();
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = arg_1.x;
    let var_3 = true;
    return var_0.e;
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    global0 = array<vec4<i32>, 10>();
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(1u, 34025u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 36639u) % vec3<u32>(32u))) | vec3<u32>(~u_input.b, u_input.b, ~u_input.b), _wgslsmith_mult_vec3_u32(select(vec3<u32>(16717u, 20821u, u_input.b), ~vec3<u32>(4673u, u_input.b, u_input.b), true), vec3<u32>(~u_input.b, u_input.b, u_input.b))), global0[_wgslsmith_index_u32(select(0u, u_input.b, any(vec3<bool>(any(vec2<bool>(false, false)), false, u_input.b == 55154u))), 10u)], !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), (1u & u_input.b) > abs(0u)), global0[_wgslsmith_index_u32(u_input.b, 10u)], select(!vec3<bool>(0i <= u_input.c.x, arg_0 >= arg_0, false), !vec3<bool>(false, false, u_input.b == u_input.b), !func_3(Struct_1(vec3<u32>(12139u, u_input.b, 49355u), global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<bool>(false, false, false, false), vec4<i32>(u_input.c.x, -18511i, arg_1, 18294i), vec3<bool>(true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))));
    let var_1 = Struct_2(Struct_1(var_0.a, firstLeadingBit(vec4<i32>(var_0.b.x, arg_1, 0i, u_input.c.x) >> (~vec4<u32>(75177u, 4294967295u, 4294967295u, var_0.a.x) % vec4<u32>(32u))), select(var_0.c, var_0.c, select(select(vec4<bool>(true, false, false, var_0.c.x), vec4<bool>(var_0.e.x, var_0.c.x, true, var_0.e.x), var_0.e.x), var_0.c, var_0.c.x || var_0.e.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(max(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], vec4<i32>(var_0.b.x, arg_1, 1i, var_0.d.x)), vec4<i32>(u_input.c.x, u_input.a.x, -1i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 0i), var_0.b) ^ vec4<i32>(arg_1, var_0.b.x, arg_1, 0i)), select(var_0.c.zyw, func_3(Struct_1(vec3<u32>(u_input.b, 2487u, u_input.b), vec4<i32>(-7190i, arg_1, arg_1, 0i), vec4<bool>(false, false, true, var_0.c.x), var_0.d, vec3<bool>(false, false, var_0.c.x)), vec4<bool>(var_0.e.x, false, false, true)), select(func_3(Struct_1(var_0.a, var_0.d, var_0.c, var_0.b, var_0.e), vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x)), vec3<bool>(false, var_0.e.x, true), false))), _wgslsmith_mult_i32(arg_1, ~(i32(-1i) * -46728i)), Struct_1(~abs(vec3<u32>(1u, var_0.a.x, 1u)), _wgslsmith_mod_vec4_i32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, 0u), 10u)], abs(_wgslsmith_sub_vec4_i32(var_0.b, global0[_wgslsmith_index_u32(u_input.b, 10u)]))), var_0.c, ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, -28002i, var_0.b.x, arg_1), vec4<i32>(29587i, -11753i, 0i, 0i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5367u, 0u), vec2<u32>(0u, u_input.b)), 10u)]), select(var_0.e, !var_0.e, true)));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_u32(var_0.a, _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, 26149u)), var_1.c.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-14147i, -2147483647i, -15797i, -6035i), var_0.d) << (reverseBits(countOneBits(var_1.c.a.x)) % 32u), (i32(-1i) * -6056i) >> (u_input.b % 32u), 1i << (reverseBits(var_1.a.a.x >> (4294967295u % 32u)) % 32u), u_input.c.x), !(!select(select(var_1.c.c, var_0.c, var_0.c), !var_0.c, true)), max(var_1.c.b, vec4<i32>(arg_1, -arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -31087i), u_input.c), -2147483647i) ^ ~vec4<i32>(1264i, 0i, 6765i, var_1.a.b.x)), !vec3<bool>(all(select(vec4<bool>(var_1.a.c.x, false, false, var_1.c.c.x), vec4<bool>(false, false, true, var_0.c.x), false)), (var_1.a.d.x <= arg_1) == !var_1.a.e.x, true));
    global0 = array<vec4<i32>, 10>();
    return abs(~abs(var_1.c.a.x ^ u_input.b)) | (_wgslsmith_mod_u32(_wgslsmith_add_u32(56156u, var_0.a.x), max(_wgslsmith_mod_u32(var_2.a.x, 1u), var_2.a.x)) & firstLeadingBit(_wgslsmith_div_u32(25968u, var_2.a.x & 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(func_1(165f, Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), global0[_wgslsmith_index_u32(u_input.b, 10u)], vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(u_input.b, 10u)], vec3<bool>(false, true, false)), 1i, Struct_1(vec3<u32>(4294967295u, 32471u, 19417u), vec4<i32>(29317i, 2147483647i, -15333i, 2147483647i), vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(u_input.b, 10u)], vec3<bool>(true, true, true)))), 70199u, u_input.b)), vec3<u32>(59214u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f + -548f)), ~0i), firstLeadingBit(max(19022u, ~20941u))));
}

