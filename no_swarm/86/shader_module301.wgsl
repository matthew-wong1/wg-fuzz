struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: array<i32, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, arg_1.e, 1u, arg_1.e), vec4<u32>(arg_3.a, 79165u, 1u, arg_3.e)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a, arg_1.a, arg_3.a, var_0.e) & vec4<u32>(arg_1.e, arg_1.a, 0u, arg_3.a), firstLeadingBit(vec4<u32>(var_0.e, arg_1.a, 4294967295u, 0u)))) ^ abs(vec4<u32>(u_input.c, ~arg_3.e, ~22382u, 1u));
    let var_2 = ~u_input.b;
    global1 = array<vec2<u32>, 2>();
    var_0 = Struct_1(_wgslsmith_mult_u32(22565u, min(_wgslsmith_mult_u32(u_input.b, reverseBits(5809u)), 1u)), arg_1.b, _wgslsmith_f_op_f32(max(125f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-454f, _wgslsmith_f_op_f32(trunc(arg_3.c)), all(vec3<bool>(true, true, false)))))))), _wgslsmith_div_u32(var_1.x, ~(~34337u)) == firstTrailingBit(~(~var_2)), ~arg_3.e);
    return _wgslsmith_dot_vec4_u32(var_1 << (~var_1 % vec4<u32>(32u)), var_1);
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.yz;
    var var_1 = Struct_1(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), _wgslsmith_div_u32(func_3(false, Struct_1(u_input.c, vec4<i32>(u_input.a.x, 56554i, 2147483647i, 1i), 936f, false, 81617u), 25156i, Struct_1(u_input.b, u_input.a, -981f, true, u_input.c)), ~4294967295u))), _wgslsmith_mult_vec4_i32(vec4<i32>(-var_0.x & (var_0.x << (u_input.c % 32u)), var_0.x, 1i, _wgslsmith_add_i32(-3473i, ~0i)), _wgslsmith_clamp_vec4_i32(u_input.a, abs(u_input.a) | (u_input.a & vec4<i32>(0i, var_0.x, global2[_wgslsmith_index_u32(0u, 15u)], var_0.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -26563i, -87477i, var_0.x))))), _wgslsmith_f_op_f32(-1f), firstTrailingBit(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) > global2[_wgslsmith_index_u32(u_input.b, 15u)], max(~u_input.c ^ countOneBits(0u), _wgslsmith_mult_u32(~u_input.c, 52124u)) & 8510u);
    global2 = array<i32, 15>();
    global1 = array<vec2<u32>, 2>();
    let var_2 = Struct_1(23521u, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(max(var_1.b << (vec4<u32>(1u, var_1.e, var_1.a, var_1.e) % vec4<u32>(32u)), var_1.b), vec4<i32>(-1i, abs(0i), -48003i, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, var_0.x, -58252i, 0i), ~vec4<i32>(-1i, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 15u)], -1i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(min(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, var_0.x)), var_1.b), vec4<i32>(select(-62580i, 5034i, var_1.d), _wgslsmith_add_i32(var_1.b.x, 0i), global2[_wgslsmith_index_u32(4294967295u, 15u)] ^ global2[_wgslsmith_index_u32(46167u, 15u)], var_0.x & u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1533f))) * 1226f), var_1.d, 0u);
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<i32, 15>();
    let var_0 = func_2();
    global0 = func_2().d;
    global2 = array<i32, 15>();
    var var_1 = var_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(44280u);
    let var_1 = Struct_1(_wgslsmith_clamp_u32(var_0.e, _wgslsmith_clamp_u32(u_input.b, 0u, _wgslsmith_clamp_u32(1u, ~112705u, _wgslsmith_add_u32(u_input.b, 0u))), ~(~(~3414u))), abs(-(~var_0.b ^ u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * var_0.c), 275f)), !(!select(all(vec3<bool>(false, var_0.d, var_0.d)), true, func_2().d)), 31021u | abs(u_input.b));
    var var_2 = var_1.c;
    var var_3 = func_2();
    let var_4 = var_0;
    var_2 = func_1(var_1.a).c;
    var_3 = Struct_1(_wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 4294967295u), global1[_wgslsmith_index_u32(var_0.a, 2u)]), 1u) & min(var_1.a, _wgslsmith_div_u32(~var_3.a, var_4.e)), -_wgslsmith_add_vec4_i32(var_4.b, u_input.a), var_3.c, all(select(select(vec3<bool>(var_3.d, var_0.d, var_0.d), vec3<bool>(var_1.d, false, false), !var_1.d), !select(vec3<bool>(true, var_4.d, false), vec3<bool>(true, false, true), vec3<bool>(false, var_0.d, false)), select(select(vec3<bool>(var_0.d, false, true), vec3<bool>(true, var_0.d, var_4.d), vec3<bool>(true, true, var_0.d)), select(vec3<bool>(var_0.d, false, var_4.d), vec3<bool>(true, var_0.d, var_4.d), vec3<bool>(true, var_0.d, true)), true))), ~(_wgslsmith_mult_u32(_wgslsmith_sub_u32(122u, var_0.a), 1u) | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a, var_3.e), 4294967295u, _wgslsmith_add_u32(35780u, var_3.a))));
    let var_5 = var_0;
    let var_6 = min(vec4<i32>(i32(-1i) * -firstLeadingBit(var_4.b.x), abs(var_1.b.x), u_input.a.x, u_input.a.x), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(20470u, 21216u, var_0.a)), min(vec3<u32>(14790u, var_3.a, var_4.a), vec3<u32>(u_input.b, var_5.e, var_3.a))) >> (~vec3<u32>(74008u, 4294967295u, 41761u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, var_5.e, u_input.b), ~vec3<u32>(var_4.a, var_1.a, 11661u)), ~(vec3<u32>(96222u, 4294967295u, var_3.e) & vec3<u32>(1u, 1u, 0u))), !(!select(vec3<bool>(var_3.d, var_1.d, var_5.d), vec3<bool>(var_4.d, var_5.d, false), vec3<bool>(var_1.d, true, true)))), ~(select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, var_3.e, u_input.b, u_input.b), vec4<u32>(4294967295u, 6617u, 44585u, var_5.a)), vec4<u32>(1u, var_5.a, 38688u, 36024u), !var_5.d) | ((vec4<u32>(79615u, 4294967295u, u_input.b, 20266u) | vec4<u32>(1u, u_input.b, var_0.e, var_3.a)) | ~vec4<u32>(var_3.e, var_3.a, 4294967295u, 0u))));
}

