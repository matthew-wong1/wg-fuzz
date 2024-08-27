struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(81485u, 0i, 8333u), Struct_1(38542u, i32(-2147483648), 0u), Struct_1(46258u, i32(-2147483648), 4294967295u), Struct_1(52131u, 1i, 0u), Struct_1(0u, -4641i, 89781u), Struct_1(10418u, 17196i, 66206u), Struct_1(60927u, 37347i, 0u), Struct_1(117022u, -2255i, 4294967295u));

var<private> global1: array<i32, 24> = array<i32, 24>(2147483647i, -18157i, 46246i, -11238i, 2147483647i, 3230i, -78904i, 1i, 2147483647i, 29041i, i32(-2147483648), 1i, 33845i, 2147483647i, -1i, i32(-2147483648), -16388i, 0i, 0i, -1i, 6757i, -1i, 0i, -47570i);

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 8u)];
    var var_1 = true;
    var_1 = true;
    var var_2 = Struct_1(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.c, arg_2.a, 4294967295u)), ~u_input.c), ~(-(~u_input.d.x) << (max(54985u, arg_1.a) % 32u)), arg_2.c);
    global1 = array<i32, 24>();
    return arg_1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(31987u, 1u, u_input.a.x), u_input.c) | firstLeadingBit(u_input.c), vec3<u32>(u_input.c.x, 4294967295u, 1u)), u_input.d.x, func_3(countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -28283i, 2147483647i, 1i), vec4<i32>(u_input.d.x, 0i, 13983i, u_input.d.x))), Struct_1(_wgslsmith_mult_u32(u_input.c.x, 10224u), ~26664i, u_input.a.x), Struct_1((1u << (u_input.b % 32u)) | 10109u, reverseBits(~u_input.d.x), u_input.a.x & (u_input.c.x ^ u_input.b))));
    let var_1 = Struct_1(u_input.b, 2147483647i, ~4294967295u);
    return Struct_1(u_input.b, -select(-var_0.b | 2705i, ~var_0.b, true), var_0.a);
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    let var_0 = false || (((i32(-1i) * -1i) | abs(u_input.d.x & arg_0.x)) >= 28358i);
    let var_1 = func_2();
    return -41605i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(abs(~(~0u)), 8u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(591f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1672f))))));
    let var_2 = firstTrailingBit(vec4<i32>(((u_input.d.x << (u_input.b % 32u)) | _wgslsmith_sub_i32(u_input.d.x, var_0.b)) | 13753i, var_0.b, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(reverseBits(abs(1u)), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(45753u, u_input.a.x)), 24u)]), ~func_1(~vec4<i32>(var_0.b, var_0.b, 2641i, 2147483647i))));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_4 = vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(840f, 694f)), -1000f, all(var_4.zy) == (var_4.x == false))) * -130f), vec4<i32>(var_0.b, u_input.d.x, var_2.x, _wgslsmith_mult_i32(u_input.d.x, 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(select(-1000f, -2606f, var_4.x)), true))), -1876f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -524f)));
}

