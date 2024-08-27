struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-29761i, -1i, 1i, -1301i);

var<private> global1: vec4<i32>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 30>;

var<private> global4: i32 = -1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = firstTrailingBit(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, arg_2), _wgslsmith_mult_i32(arg_2, -1i)))) & arg_3.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1158f, arg_0))))), ~(~max(u_input.b ^ arg_1.x, ~u_input.a)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1569f - arg_2.a.a.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.a.x + -321f), _wgslsmith_f_op_f32(-arg_2.a.a.x))))), -165f));
    var_0 = arg_2;
    var var_2 = -2147483647i;
    let var_3 = global3[_wgslsmith_index_u32(arg_3.a.b, 30u)];
    return 0i <= global0.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    return _wgslsmith_add_u32(arg_0.b, arg_0.b) > ~_wgslsmith_mult_u32(global2.b, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(-413f, vec4<u32>(max(62901u, _wgslsmith_sub_u32(select(global2.b, global2.b, false), ~u_input.a)), ~_wgslsmith_sub_u32(global2.b, _wgslsmith_add_u32(u_input.a, u_input.b)), 51400u, global2.b), _wgslsmith_div_i32(u_input.e, i32(-1i) * -7756i), firstLeadingBit(abs(vec4<i32>(u_input.e ^ u_input.d.x, 0i, reverseBits(1i), ~1i))));
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, -12899i <= global1.x), vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false)), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(false, !any(vec4<bool>(true, false, true, false)), func_2(~vec4<u32>(global2.b, 4294967295u, 0u, global2.b), reverseBits(vec4<i32>(0i, global1.x, global0.x, -1i)), global3[_wgslsmith_index_u32(u_input.b, 30u)], global3[_wgslsmith_index_u32(~global2.b, 30u)])), false), !(func_3(Struct_1(global2.a, global2.b)) | select(true, true, any(vec3<bool>(true, true, false)))));
    global1 = -u_input.d;
    let var_1 = global3[_wgslsmith_index_u32(u_input.a | _wgslsmith_mult_u32(min(select(8578u, min(45532u, global2.b), any(var_0.yz)), u_input.b), 4294967295u), 30u)];
    var var_2 = var_0.x | !(false & !(!var_0.x));
    global0 = firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 2087i, 22630i, global0.x), vec4<i32>(-103i, 2147483647i, u_input.d.x, -3832i))) << ((_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.b, 14850u, 12644u, u_input.a), vec4<u32>(0u, 16337u, u_input.a, 0u)), select(select(vec4<u32>(global2.b, 0u, u_input.b, 4294967295u), vec4<u32>(116304u, 1u, u_input.a, var_1.a.b), vec4<bool>(var_0.x, true, true, false)), vec4<u32>(1u, 1u, 50430u, global2.b) >> (vec4<u32>(var_1.a.b, u_input.c.x, 4294967295u, var_1.a.b) % vec4<u32>(32u)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))) ^ vec4<u32>(~u_input.a & abs(global2.b), ~var_1.a.b, min(u_input.a, 36367u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, var_1.a.b, 76466u), vec3<u32>(var_1.a.b, 42363u, var_1.a.b) & vec3<u32>(1u, 16874u, 50604u)))) % vec4<u32>(32u));
    global4 = _wgslsmith_mult_i32(abs(-_wgslsmith_sub_i32(u_input.d.x | -2147483647i, firstTrailingBit(-1802i))), _wgslsmith_sub_i32(abs(1i), global1.x));
    var var_3 = global3[_wgslsmith_index_u32(~firstLeadingBit(~countOneBits(_wgslsmith_mult_u32(64752u, var_1.a.b))), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.b, var_3.a.b, 38849u, 0u), vec4<u32>(29085u, global2.b, var_3.a.b, 48830u)), ~vec4<u32>(39622u, 4294967295u, var_3.a.b, var_3.a.b)) & min(vec4<u32>(select(global2.b, 12832u, var_0.x), global2.b & 4294967295u, u_input.c.x, ~var_3.a.b), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 70903u, 4294967295u, var_1.a.b), vec4<u32>(u_input.b, 8989u, var_3.a.b, 30700u), vec4<u32>(var_3.a.b, var_3.a.b, var_3.a.b, var_1.a.b)), firstTrailingBit(vec4<u32>(0u, global2.b, var_1.a.b, 2698u)))), 1i);
}

