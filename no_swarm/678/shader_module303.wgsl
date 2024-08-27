struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<i32, 24>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = array<vec2<f32>, 31>();
    global1 = array<i32, 24>();
    let var_0 = arg_0.a == _wgslsmith_sub_u32(arg_1.a, ~arg_1.a);
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.a, firstTrailingBit(4294967295u)), reverseBits(u_input.a));
    var var_2 = Struct_1(min(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_1.a, 5317u, var_1.x), vec4<u32>(4294967295u, 31817u, 0u, 0u))), u_input.d), _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mult_vec3_i32(-arg_1.b, max(arg_1.b, arg_1.b))), _wgslsmith_mult_vec3_i32(arg_0.b, -min(u_input.c, arg_0.b))), arg_1.c, !var_0);
    return _wgslsmith_f_op_f32(arg_2 - 112f);
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(~1i, u_input.b, -2147483647i), vec3<i32>(-2147483647i, 25627i, _wgslsmith_dot_vec3_i32(u_input.c, ~vec3<i32>(u_input.b, 62159i, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.a.x, 59982u)), 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 988f))), true);
    global0 = array<vec2<f32>, 31>();
    var var_2 = select(vec2<bool>(!all(select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_1.d, true, var_1.d), false)), var_1.d), !vec2<bool>(!(!var_1.d), var_1.d), false);
    global2 = array<Struct_1, 16>();
    return Struct_1(~u_input.d, abs(-u_input.c), _wgslsmith_f_op_f32(-var_1.c), (-7271i < ~firstTrailingBit(0i)) && (u_input.b >= _wgslsmith_div_i32(7348i, 11779i << (var_1.a % 32u))));
}

fn func_1() -> f32 {
    var var_0 = any(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, false))));
    var_0 = true;
    global0 = array<vec2<f32>, 31>();
    let var_1 = func_2();
    var var_2 = !(!var_1.d && (~(~44040u) >= var_1.a));
    return _wgslsmith_f_op_f32(var_1.c - 522f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f))), true & !(!any(vec3<bool>(true, true, false))));
    var var_1 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, var_0.a), ~0u) ^ ~(~u_input.a.xx), u_input.a.zz);
    global2 = array<Struct_1, 16>();
    let var_2 = var_0.d;
    let var_3 = var_0;
    var var_4 = global2[_wgslsmith_index_u32(~(~max(min(35764u, 1u), ~var_3.a) & var_0.a), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(496f + func_2().c), var_4.b.zz);
}

