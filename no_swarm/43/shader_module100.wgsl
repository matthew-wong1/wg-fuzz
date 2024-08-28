struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    return u_input.e.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~(~1u >> ((~u_input.e.x & func_2()) % 32u)), 16u)] << (~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.e.xy, u_input.e.ww), u_input.c.x), firstTrailingBit(u_input.c.x >> (123929u % 32u))) % 32u);
    let var_1 = abs(max(vec4<i32>(1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(81181u, 16u)], -1i), i32(-1i) * -global0[_wgslsmith_index_u32(4294967295u, 16u)], countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 16u)] ^ u_input.d.x)), u_input.b));
    global0 = array<i32, 16>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a.a)));
    let var_3 = firstLeadingBit(_wgslsmith_mod_u32(1u, firstTrailingBit(countOneBits(u_input.e.x))));
    return false;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> bool {
    let var_0 = ~_wgslsmith_mult_i32(select(~countOneBits(-1i), 1i, -u_input.b.x >= 41224i), -2147483647i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -332f));
    var_1 = arg_1;
    var var_2 = Struct_3(Struct_2(arg_1));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))) * -498f)), -1519f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1290f))));
    let var_1 = vec2<bool>(true, any(!vec4<bool>(func_1(Struct_3(Struct_2(Struct_1(-953f))), Struct_3(Struct_2(Struct_1(var_0.x))), Struct_1(1000f)), false, true, func_3(455f, Struct_1(566f), u_input.e.x, u_input.e.wzy))));
    var var_2 = (-(~u_input.b) | vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u ^ u_input.e.x, abs(0u)), 16u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x), 16u)], select(0i, u_input.d.x, var_1.x)), _wgslsmith_add_i32(-36354i, -1i), reverseBits(-25585i ^ global0[_wgslsmith_index_u32(98118u, 16u)]))) & reverseBits(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 16u)], var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(114f)))), var_0, 1u);
}

