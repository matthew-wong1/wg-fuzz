struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-843i, 1000f), Struct_1(2147483647i, 140f), Struct_1(-44413i, -171f), Struct_1(-42134i, 217f), Struct_1(-5579i, -225f), Struct_1(1i, -2263f), Struct_1(i32(-2147483648), -1453f), Struct_1(57632i, 659f), Struct_1(-1i, -1000f), Struct_1(2147483647i, 1000f), Struct_1(-10949i, 250f), Struct_1(-67551i, 763f), Struct_1(-1i, -1000f), Struct_1(0i, 1154f), Struct_1(5440i, -898f), Struct_1(-13959i, -578f), Struct_1(0i, 1717f), Struct_1(41650i, -944f), Struct_1(34987i, 402f), Struct_1(-1i, 1258f), Struct_1(-51059i, 411f), Struct_1(64263i, -912f), Struct_1(-39936i, 826f), Struct_1(i32(-2147483648), -1196f));

var<private> global1: Struct_1 = Struct_1(17831i, -1011f);

var<private> global2: i32;

var<private> global3: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = ~vec4<u32>(firstLeadingBit(abs(u_input.c.x)), ~(~0u), min(u_input.d, _wgslsmith_clamp_u32(4294967295u, arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(21401u, u_input.d, 15636u), arg_1.xwy))), 0u);
    global1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(421f, global1.b))))) - 1439f));
    let var_3 = 2227i;
    return select(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true)))), true), !vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), !vec3<bool>(all(vec4<bool>(true, true, true, true)), ~u_input.c.x != _wgslsmith_div_u32(4294967295u, u_input.c.x), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec2<i32> {
    let var_0 = !select(vec3<bool>(true, true, true), func_3(_wgslsmith_mod_u32(~u_input.c.x, u_input.c.x), ~(~vec4<u32>(u_input.c.x, 0u, 0u, 20808u)), global0[_wgslsmith_index_u32(~reverseBits(6150u), 24u)], Struct_1(u_input.a >> (10542u % 32u), _wgslsmith_f_op_f32(-arg_2.b))), false);
    let var_1 = arg_2.b;
    let var_2 = arg_2;
    let var_3 = arg_2;
    let var_4 = ~86214i;
    return arg_1.yy;
}

fn func_1() -> bool {
    var var_0 = Struct_1(u_input.a, global1.b);
    global3 = min(vec2<i32>(-(i32(-1i) * -1i), _wgslsmith_div_i32(-1i, u_input.a | var_0.a)), u_input.b) & -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(func_2(vec2<f32>(global1.b, 825f), vec3<i32>(var_0.a, -2147483647i, u_input.b.x), Struct_1(2147483647i, 637f), global3.x), vec2<i32>(global3.x, -186i)), abs(firstLeadingBit(u_input.b)));
    var var_1 = Struct_1(2147483647i, global1.b);
    let var_2 = _wgslsmith_div_vec3_u32(select(select(vec3<u32>(abs(4200u), ~0u, ~16776u), vec3<u32>(u_input.c.x, 9739u, u_input.d) >> (~vec3<u32>(1u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), func_3(1u, vec4<u32>(19266u, 39104u, u_input.c.x, 0u), global0[_wgslsmith_index_u32(29195u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]))), ~((vec3<u32>(u_input.c.x, u_input.c.x, u_input.d) ^ vec3<u32>(u_input.d, 20092u, 4294967295u)) ^ vec3<u32>(0u, 9961u, u_input.d)), vec3<bool>(true, all(func_3(u_input.c.x, vec4<u32>(u_input.d, 4294967295u, 0u, 4294967295u), global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]).zz), any(vec3<bool>(true, true, true)))), abs(~select(vec3<u32>(1u, 1u, u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(35428u, 83374u, 4294967295u), vec3<u32>(u_input.d, 22285u, u_input.d)), false)));
    var var_3 = min(8634u, abs(_wgslsmith_div_u32(3986u, 1u)) << (~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 52246u, var_2.x), vec3<u32>(var_2.x, var_2.x, 118542u)) % 32u));
    return all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !func_3(~var_2.x, vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x) ^ vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c.x), Struct_1(15841i, var_0.b), Struct_1(3965i, global1.b)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), func_1()), select(true, false, any(vec3<bool>(false, true, false))))), true, true);
    var var_1 = ~global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<f32>(global1.b, -172f), max(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, u_input.a, 1i), vec3<i32>(global1.a, u_input.b.x, -44205i), false), firstLeadingBit(vec3<i32>(55241i, 10288i, -43466i))), vec3<i32>(-16773i << (1u % 32u), _wgslsmith_div_i32(global3.x, -2147483647i), -2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d | 49781u, u_input.d) & 1u, 24u)], 20718i));
}

