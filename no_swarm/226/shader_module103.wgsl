struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 23>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<f32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 436f, arg_3.x, arg_1.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, arg_3.x, arg_3.x, -187f)))))));
    let var_0 = Struct_1(!(!vec4<bool>(all(vec3<bool>(true, true, false)), true, false, all(vec2<bool>(false, false)))));
    global1 = array<Struct_2, 23>();
    var var_1 = Struct_1(select(var_0.a, select(select(vec4<bool>(false, false, true, var_0.a.x), !vec4<bool>(false, true, var_0.a.x, var_0.a.x), var_0.a), !(!var_0.a), all(!var_0.a)), var_0.a));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    return any(!(!vec3<bool>(var_1.a.x, true, !var_0.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0.zxz;
    global1 = array<Struct_2, 23>();
    var var_1 = global0.x;
    global1 = array<Struct_2, 23>();
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_1(select(vec4<bool>(all(vec3<bool>(true, false, false)) == func_3(global1[_wgslsmith_index_u32(var_0.x, 23u)], vec4<f32>(arg_1, arg_1, arg_1, arg_1), 1u, vec3<f32>(global0.x, arg_1, -377f)), !select(false, false, true), false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), vec4<bool>(var_0.x != 0u, true, any(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, false, false))), false), (_wgslsmith_f_op_f32(-global0.x) > -204f) && false));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 23u)];
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(0u, u_input.b) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 18431u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))), countOneBits(firstLeadingBit(~firstTrailingBit(vec2<u32>(u_input.b, 0u)))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 26661u), vec4<u32>(51684u, u_input.b, u_input.b, u_input.b)) & vec4<u32>(0u, u_input.b, 0u, u_input.b)), _wgslsmith_f_op_f32(select(global0.x, 1102f, !any(vec3<bool>(true, true, false)))), reverseBits(u_input.b)));
    var var_1 = ~(u_input.c.x | select(u_input.a << (0u % 32u), -33501i, var_0.a.x)) <= u_input.c.x;
    var var_2 = Struct_1(var_0.a);
    var var_3 = Struct_2(_wgslsmith_mult_vec4_i32(-(-vec4<i32>(-2147483647i, -13329i, u_input.c.x, u_input.c.x) & (vec4<i32>(0i, -8877i, 5705i, 3608i) | vec4<i32>(u_input.a, 15455i, u_input.c.x, 1i))), countOneBits(-vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.a))));
    var var_4 = ~var_3.a.zy;
    return func_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(4294967295u, 42717u), 1u), reverseBits(~vec4<u32>(u_input.b, 11120u, 19896u, u_input.b))), abs(u_input.b), 4294967295u, u_input.b), _wgslsmith_f_op_f32(abs(1f)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    var var_0 = !(!(!(u_input.b == u_input.b)) | select(false, true, true));
    var var_1 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 1000f, _wgslsmith_f_op_f32(round(global0.x)));
    let var_2 = func_1();
    let var_3 = var_2.a.x;
    var var_4 = u_input.b;
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 17118u), vec4<u32>(43092u, u_input.b, 9577u, u_input.b) ^ vec4<u32>(4294967295u, u_input.b, 1u, 0u)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 16995u), vec4<u32>(1151u, u_input.b, 72720u, 0u)), vec4<u32>(u_input.b >> (1364u % 32u), max(_wgslsmith_sub_u32(u_input.b, 14570u), 0u), ~_wgslsmith_clamp_u32(u_input.b, 0u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 17382u, 11831u, u_input.b), vec4<u32>(64390u, u_input.b, 57897u, 107190u)) >> (4294967295u % 32u))));
}

