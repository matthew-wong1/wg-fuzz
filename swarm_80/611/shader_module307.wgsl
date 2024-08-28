struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<f32, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<u32> {
    global0 = array<Struct_3, 9>();
    let var_0 = -181f;
    return ~(~(firstTrailingBit(vec3<u32>(15068u, u_input.a, 56593u)) | vec3<u32>(~1u, 51602u >> (u_input.a % 32u), ~u_input.a)));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    global0 = array<Struct_3, 9>();
    var var_0 = _wgslsmith_div_u32(~(~(~u_input.a)) << (~u_input.a % 32u), u_input.a);
    let var_1 = vec2<i32>(_wgslsmith_add_i32(-9000i, -46093i), 1209i);
    let var_2 = Struct_1(vec3<bool>(select(arg_0.a & true, arg_0.a, !arg_0.a), any(!(!vec2<bool>(arg_0.a, false))), arg_0.a), _wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.x, 1i, ~var_1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -37225i, var_1.x), vec3<i32>(var_1.x, -1i, -41010i))));
    let var_3 = true;
    return reverseBits(abs(func_3(-830f, _wgslsmith_sub_i32(var_1.x, var_1.x))) << (abs(vec3<u32>(_wgslsmith_mult_u32(1u, 0u), ~26680u, ~1u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global1 = array<f32, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(843f, 567f)))))), global1[_wgslsmith_index_u32(u_input.a, 28u)]));
    global0 = array<Struct_3, 9>();
    let var_1 = func_2(Struct_3(!(!any(arg_0.c)), vec3<f32>(-182f, _wgslsmith_f_op_f32(1f - -906f), global1[_wgslsmith_index_u32(22852u, 28u)])));
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~(firstLeadingBit(vec4<i32>(arg_0.b.x, arg_0.b.x, -1i, -1i)) | ~vec4<i32>(arg_1.b.x, arg_1.b.x, -51727i, arg_0.b.x)), countOneBits(min(vec4<i32>(-1i, arg_1.b.x, -1140i, 2147483647i), vec4<i32>(0i, arg_1.b.x, arg_1.b.x, -2147483647i) >> (vec4<u32>(12752u, var_1.x, var_1.x, 0u) % vec4<u32>(32u))))), vec4<i32>(-1i) * -vec4<i32>(-43869i, arg_2.b.x, 2147483647i, ~arg_1.b.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(-_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, 1i), -48192i)));
    let var_1 = !(!vec3<bool>(select(any(vec2<bool>(true, true)), false, true), !func_1(Struct_2(vec2<bool>(true, false), vec2<i32>(-45938i, -16316i), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(-9134i, 2147483647i, 26694i)), Struct_2(vec2<bool>(false, true), vec2<i32>(12264i, -59911i), vec3<bool>(false, true, true))), any(vec2<bool>(false, true))));
    let var_2 = 39478u;
    global1 = array<f32, 28>();
    global0 = array<Struct_3, 9>();
    let var_3 = Struct_1(var_1, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, 16909i), 1i), 3213i, -19866i) >> (~(~(~vec3<u32>(u_input.a, u_input.a, 0u))) % vec3<u32>(32u)));
    var var_4 = Struct_2(vec2<bool>(!var_3.a.x, !all(!vec2<bool>(var_3.a.x, var_3.a.x))), -vec2<i32>(var_3.b.x, 19602i) ^ ~min(vec2<i32>(40473i, -1i), var_3.b.xz), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f + global1[_wgslsmith_index_u32(u_input.a, 28u)])), func_1(Struct_2(var_1.yz, var_3.b.yz, var_3.a), Struct_1(var_1, min(var_3.b, vec3<i32>(var_3.b.x, var_3.b.x, 2147483647i))), Struct_2(!vec2<bool>(false, var_3.a.x), vec2<i32>(-10801i, var_3.b.x), var_1)), false));
    let x = u_input.a;
    s_output = StorageBuffer(-5464i);
}

