struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-1000f, -1122f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    return -67248i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    global0 = array<f32, 2>();
    var var_0 = !(!select(vec4<bool>(-1627f > arg_0.c, all(vec3<bool>(true, true, true)), true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), false)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(sign(-257f))))), arg_1.c)));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), -521f)));
    return ~(~(vec4<i32>(-1i) * -abs(vec4<i32>(38612i, 32849i, 0i, 28447i))));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = max(vec4<i32>(u_input.a, u_input.a, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(64478u, 2u)], 433f, global0[_wgslsmith_index_u32(45853u, 2u)]) - vec3<f32>(1222f, -2223f, global0[_wgslsmith_index_u32(arg_0, 2u)])), Struct_1(vec3<i32>(2147483647i, 1i, u_input.a), global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(21661u, 2u)])), select(~45869i, firstLeadingBit(u_input.a), all(vec2<bool>(true, true)))) & ~(-(vec4<i32>(-1i, 16636i, 33473i, 1i) | vec4<i32>(u_input.a, -2147483647i, -2147483647i, 57396i))), func_3(Struct_1(abs(vec3<i32>(u_input.a, -28330i, 49446i) | vec3<i32>(50021i, -4954i, u_input.a)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 2u)]), -1122f), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1i, 28304i), vec3<i32>(u_input.a, -8333i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-10447i, 48384i, -29951i), vec3<i32>(-57325i, u_input.a, -1i))), -504f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 2u)])))), -u_input.a));
    var var_1 = Struct_1(firstLeadingBit(select(vec3<i32>(1213i, func_3(Struct_1(vec3<i32>(var_0.x, u_input.a, var_0.x), global0[_wgslsmith_index_u32(58721u, 2u)], -771f), Struct_1(vec3<i32>(var_0.x, 2147483647i, var_0.x), global0[_wgslsmith_index_u32(arg_0, 2u)], 709f), 8793i).x, func_3(Struct_1(var_0.ywx, -258f, global0[_wgslsmith_index_u32(0u, 2u)]), Struct_1(var_0.ywz, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), -2147483647i).x), -reverseBits(var_0.wxw), true)), 1218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(~u_input.c, reverseBits(arg_0)), 2u)] * -789f) + 1238f));
    return vec3<i32>(1i, var_1.a.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.a, 1i, u_input.a, -26453i)), countOneBits(select(vec4<i32>(u_input.a, 2147483647i, -8519i, -70466i), vec4<i32>(u_input.a, -16172i, u_input.a, 18821i), true))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-54803i ^ u_input.a, -2147483647i, ~20196i), 1i), -1i));
    var_0 = max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(0i, 0i, u_input.a), vec3<i32>(84736i, -1i, 2147483647i), false) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(0i, var_0.x, u_input.a)), vec3<i32>(-25711i, func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -1431f, global0[_wgslsmith_index_u32(u_input.c, 2u)]), Struct_1(vec3<i32>(u_input.a, var_0.x, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 2u)], -321f)), 31422i)), abs(abs(vec3<i32>(var_0.x, 1i, u_input.a))) & (func_2(0u) | func_2(u_input.b))) << ((vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(15619u, 0u)), 8731u, 4294967295u >> (1u % 32u)) >> (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(371f + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 69421u), 2u)]);
    var_0 = _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(u_input.a, u_input.a, var_0.x)), -vec3<i32>(12859i, 2147483647i, 32905i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(u_input.a, var_0.x, 1i)), vec3<i32>(45582i, ~var_0.x, ~var_0.x))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f + -111f))));
    let var_2 = true;
    let var_3 = var_2;
    var var_4 = -60696i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.a, i32(-1i) * -6602i), _wgslsmith_f_op_f32(190f * global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, u_input.c)), 2u)]));
}

