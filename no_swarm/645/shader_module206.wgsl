struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-345f, -332f);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(56952i, 2337u), Struct_1(0i, 16286u), Struct_1(1i, 14600u), Struct_1(727i, 42057u), Struct_1(-63350i, 57851u), Struct_1(0i, 36993u), Struct_1(39862i, 5009u), Struct_1(1i, 4294967295u), Struct_1(19664i, 4294967295u), Struct_1(2147483647i, 145483u), Struct_1(-23598i, 0u), Struct_1(-1i, 37839u), Struct_1(2147483647i, 74284u), Struct_1(0i, 1u), Struct_1(78557i, 53598u), Struct_1(-62418i, 50507u), Struct_1(19411i, 31550u), Struct_1(i32(-2147483648), 0u), Struct_1(3738i, 35990u), Struct_1(-12959i, 58810u), Struct_1(1i, 28924u), Struct_1(30016i, 100264u), Struct_1(-2706i, 1u), Struct_1(1i, 74384u));

var<private> global2: bool = true;

var<private> global3: i32 = 1i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(firstTrailingBit(u_input.a), arg_0), ~4294967295u) ^ vec3<u32>(max(u_input.a, arg_0), _wgslsmith_mod_u32(~arg_0, ~26557u), u_input.a), vec3<u32>(26758u, _wgslsmith_mult_u32(u_input.a, 14876u), min(u_input.a, abs(abs(4294967295u)))));
    let var_1 = firstTrailingBit(~(-select(firstLeadingBit(1i), i32(-1i) * -42139i, true)));
    global2 = _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0, 16932u, 7340u), vec4<u32>(1162u, 94693u, arg_0, 31042u)), vec4<u32>(u_input.a, arg_0, 4294967295u, 4294967295u) | vec4<u32>(0u, 4294967295u, u_input.b, 16663u)) ^ abs(abs(2769u))) <= _wgslsmith_add_u32(_wgslsmith_div_u32(38063u, 4294967295u ^ countOneBits(arg_0)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4986u, 0u, arg_0), vec3<u32>(59439u, u_input.a, 4294967295u) & vec3<u32>(arg_0, arg_0, arg_0))));
    var var_2 = global1[_wgslsmith_index_u32(~(~43670u), 24u)];
    var var_3 = 31571u;
    return (-1i << (u_input.b % 32u)) < var_1;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    global3 = -_wgslsmith_add_i32(countOneBits(-1i), -(~_wgslsmith_add_i32(1i, -7295i)));
    let var_0 = abs(arg_1.zw);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(626f))), _wgslsmith_f_op_f32(-global0.x));
    global2 = !func_3(0u);
    var var_2 = Struct_4(Struct_3(select(arg_0, ~firstTrailingBit(-1i), 734f > _wgslsmith_f_op_f32(global0.x * global0.x)), Struct_1(-19514i, 27415u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1083f, global0.x))), u_input.b | _wgslsmith_add_u32(~4294967295u, 1u)), Struct_2(1u, Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(arg_0, 40580i))), 4499u), ~(-20706i)), firstTrailingBit(arg_0));
    return var_2.b.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_5(vec2<u32>(~(~arg_0.b.b), ~(~arg_0.b.b)), func_2(arg_2.x, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.b.b, 10054u, 27057u), vec4<u32>(48907u, arg_0.b.b, arg_0.a, arg_0.a)), select(select(vec4<u32>(7530u, 1u, arg_0.b.b, 51978u), vec4<u32>(4294967295u, 6731u, 4294967295u, 1u), true), ~vec4<u32>(arg_0.b.b, arg_0.b.b, 4294967295u, u_input.a), vec4<bool>(true, true, true, true)))), vec3<u32>(~arg_1.a, u_input.a, 4294967295u));
    var var_1 = -287f;
    var var_2 = all(!vec3<bool>(32773i > _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, arg_2.x), vec4<i32>(arg_2.x, arg_0.b.a, -2895i, arg_2.x)), select(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), all(vec4<bool>(false, true, true, false))));
    var var_3 = 71398u;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1911f, global0.x)))))) * vec2<f32>(-1226f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -1256f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 968f), true)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1312f, 921f))))))));
    return select(vec3<bool>(!all(vec3<bool>(true, true, true)), select(all(vec4<bool>(true, true, true, true)), true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 103f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1641f, 466f) + vec2<f32>(global0.x, 1308f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 582f) - vec2<f32>(global0.x, 1189f)))))));
    global2 = !any(select(func_1(Struct_2(4294967295u, Struct_1(1i, 107613u), 63973i), Struct_2(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 24u)], -1i), vec3<i32>(-2147483647i, 2668i, 17570i)), func_1(Struct_2(u_input.b, Struct_1(-9351i, 19449u), 17061i), Struct_2(u_input.a, global1[_wgslsmith_index_u32(36912u, 24u)], 1i), vec3<i32>(-2147483647i, -11254i, -1i)), true));
    var var_0 = ~_wgslsmith_add_u32(abs(_wgslsmith_add_u32(u_input.a, ~u_input.a)), 0u);
    let var_1 = ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(117103u, 4294967295u), vec2<u32>(u_input.a, u_input.b) << (vec2<u32>(0u, 9939u) % vec2<u32>(32u)))));
    let var_2 = Struct_3(-28943i, func_2(i32(-1i) * -2147483647i, min(min(~vec4<u32>(var_1.x, var_1.x, 59101u, 1u), vec4<u32>(4294967295u, u_input.a, var_1.x, u_input.b) & vec4<u32>(var_1.x, 0u, 1u, 0u)), ~select(vec4<u32>(25391u, 4735u, 1u, 1u), vec4<u32>(4294967295u, 132080u, u_input.b, u_input.a), vec4<bool>(true, true, false, true)))), global0.x, ~(~4294967295u));
    let var_3 = var_2.b.a;
    let var_4 = any(select(vec4<bool>(false, -1893f >= var_2.c, true, true), !vec4<bool>(false, true, var_2.d <= u_input.b, any(vec4<bool>(false, true, false, true))), vec4<bool>(false, func_1(Struct_2(1u, global1[_wgslsmith_index_u32(var_2.d, 24u)], var_3), Struct_2(var_2.b.b, var_2.b, -28882i), vec3<i32>(var_3, 1i, var_3)).x, true, true)));
    let var_5 = _wgslsmith_f_op_f32(-global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_sub_u32(1u, var_1.x), 0u, ~2908u), vec3<u32>(min(30901u >> (1u % 32u), ~4294967295u), ~u_input.b, var_2.b.b), true));
}

