struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    global1 = vec2<i32>(~(-(~(-global0.a))), 0i);
    var var_0 = Struct_1(u_input.b);
    var var_1 = reverseBits(_wgslsmith_add_i32(-25655i, _wgslsmith_sub_i32(u_input.b, 1i) >> (firstTrailingBit(u_input.a) % 32u))) << (~_wgslsmith_dot_vec3_u32(~vec3<u32>(31891u, u_input.a, 8330u), vec3<u32>(u_input.a, 54905u, u_input.a)) % 32u);
    var var_2 = u_input.a;
    var_0 = Struct_1(-1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(634f))) + _wgslsmith_div_f32(-1553f, -514f)), _wgslsmith_f_op_f32(-1713f - 604f))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), 1027f)) * 823f))) - -792f);
    var var_1 = Struct_1(global0.a);
    var var_2 = ~vec4<u32>(~firstLeadingBit(~u_input.a), abs(abs(0u)), ~(u_input.a ^ select(u_input.a, 4294967295u, true)), ~_wgslsmith_add_u32(0u, u_input.a) ^ _wgslsmith_div_u32(1u, u_input.a));
    let var_3 = vec4<bool>(true, false, var_1.a < var_1.a, all(vec2<bool>(true, true)) || false);
    var var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), 481f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -1607f, var_0), vec3<f32>(587f, 541f, 1256f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 895f, var_0) + vec3<f32>(var_0, var_0, 357f))))))));
    return -global0.a;
}

fn func_1() -> vec2<i32> {
    global1 = (vec2<i32>(55767i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(552u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % 32u), func_2()) & select(_wgslsmith_mult_vec2_i32(vec2<i32>(-83388i, -589i) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), vec2<i32>(1i, -29821i)), -vec2<i32>(global1.x, -79595i), vec2<bool>(true, true))) & _wgslsmith_mod_vec2_i32(abs(countOneBits(vec2<i32>(0i, global0.a))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -50783i, -40800i, global1.x), vec4<i32>(global0.a, global0.a, 19612i, -345i)), 2147483647i), vec2<i32>(u_input.b | global1.x, ~1i)));
    var var_0 = ~_wgslsmith_add_u32(31579u, 1u);
    return -(~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(1i, global1.x) >> (vec2<u32>(7401u, 0u) % vec2<u32>(32u))), ~(-vec2<i32>(global0.a, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -vec2<i32>(select(global0.a | 0i, global0.a, true), countOneBits(-_wgslsmith_sub_i32(global1.x, -1i)));
    var var_0 = Struct_1(-18582i);
    global1 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, global0.a, -38685i), vec3<i32>(-50120i, 56141i, 26599i)), ~(-1i)), u_input.b), _wgslsmith_clamp_vec2_i32(~(vec2<i32>(global0.a, global0.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), func_1(), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, u_input.b), -vec2<i32>(-2147483647i, 1i))), -57329i > countOneBits(var_0.a)), ~select(reverseBits(~vec2<i32>(var_0.a, -18840i)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_0.a), vec2<i32>(u_input.b, -50152i))), vec2<bool>(true, true)));
    var_0 = Struct_1(global0.a);
    global0 = Struct_1(1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(1099f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1223f, 321f, 136f) * vec3<f32>(-1697f, -861f, 803f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1770f, -783f, 925f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(-1000f, var_1.x, select(true, true, all(vec2<bool>(false, true)))))));
}

