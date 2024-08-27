struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_sub_i32(reverseBits(-select(2147483647i, u_input.c.x, global1.a) << (~(~u_input.b) % 32u)), -((u_input.c.x | 2147483647i) ^ -1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, reverseBits(u_input.c.x), 2147483647i), min(u_input.c ^ u_input.c, vec3<i32>(1i, u_input.c.x, u_input.c.x) | u_input.c)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 1f));
}

fn func_2() -> i32 {
    global1 = global0[_wgslsmith_index_u32(~((1u ^ u_input.b) << (~max(_wgslsmith_div_u32(4294967295u, u_input.b), ~37525u) % 32u)), 14u)];
    global0 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * vec2<f32>(-1107f, -1099f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, -203f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(159f, -145f) + vec2<f32>(1000f, -566f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-125f, -814f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, -589f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(196f, 829f)))));
    var var_1 = Struct_1(all(vec3<bool>((1u == u_input.b) && !global1.a, global1.a & global1.a, !(global1.a | global1.a))));
    global1 = global0[_wgslsmith_index_u32(~(~reverseBits(19720u)), 14u)];
    return u_input.a | ~countOneBits(-16135i);
}

fn func_1() -> u32 {
    global1 = global0[_wgslsmith_index_u32(0u, 14u)];
    let var_0 = vec2<i32>(-1i, _wgslsmith_div_i32(-abs(6934i ^ u_input.c.x), _wgslsmith_mult_i32(u_input.a, func_2())));
    let var_1 = Struct_1(global1.a);
    var var_2 = vec2<u32>(1u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(firstTrailingBit(u_input.b), u_input.b), 2533u));
    global0 = array<Struct_1, 14>();
    return _wgslsmith_sub_u32(u_input.b, ~var_2.x ^ var_2.x);
}

fn func_4(arg_0: u32) -> Struct_1 {
    global2 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_dot_vec3_u32(max(~firstLeadingBit(max(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(arg_0, u_input.b, arg_0))), vec3<u32>(u_input.b, firstTrailingBit(0u), 12455u)), ~max(~vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(~1u, ~28838u, 0u)));
    var var_1 = _wgslsmith_mod_u32(u_input.b ^ 1u, arg_0);
    return global0[_wgslsmith_index_u32(~(~u_input.b), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~1u, 7u)];
    let var_1 = false;
    let var_2 = func_4(_wgslsmith_sub_u32(func_1(), u_input.b) << (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u));
    var var_3 = vec3<u32>(func_1(), 4294967295u, firstTrailingBit(firstLeadingBit(func_1())));
    var_0 = global2[_wgslsmith_index_u32(~var_3.x, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(218f, 338f), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(-u_input.a, -33325i), abs(~u_input.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-814f, -1315f, true)))), vec4<f32>(_wgslsmith_f_op_f32(931f * -1524f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1094f)) + -1154f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(557f, 433f) + -525f))), _wgslsmith_f_op_f32(f32(-1f) * -321f)));
}

