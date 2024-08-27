struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
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

var<private> global0: array<vec2<u32>, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(u_input.d.x, vec4<bool>(false == all(select(arg_1.b.xx, vec2<bool>(arg_1.b.x, false), true)), false, !(!all(arg_1.b.ww)), any(select(!vec2<bool>(arg_0.x, false), select(vec2<bool>(true, false), arg_1.b.yw, arg_1.b.zy), !arg_1.b.x))));
    var_0 = Struct_1(firstTrailingBit(min(u_input.d.x, 1u)), select(vec4<bool>(!var_0.b.x || any(vec4<bool>(false, false, arg_0.x, var_0.b.x)), false, any(!vec4<bool>(var_0.b.x, arg_1.b.x, arg_0.x, true)), !arg_0.x), arg_1.b, var_0.b.x));
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    let var_1 = _wgslsmith_mod_u32(u_input.d.x, 1u);
    return var_0.b.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<i32>(31751i, ~(~46057i), u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, ~u_input.b, _wgslsmith_mult_i32(0i, 51236i), min(u_input.a.x, u_input.b)), ~(vec4<i32>(u_input.c.x, -42643i, -2147483647i, 0i) << (u_input.d % vec4<u32>(32u)))), u_input.a));
    global0 = array<vec2<u32>, 30>();
    var_0 = ~u_input.a;
    let var_1 = Struct_1(~arg_0.x, !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), !func_3(vec4<bool>(true, false, true, false), Struct_1(4294967295u, vec4<bool>(false, false, true, false)))));
    var_0 = firstLeadingBit(select(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.ywz | u_input.a.zwz, u_input.a.wzw), var_0.x, _wgslsmith_sub_i32(u_input.c.x & var_0.x, var_0.x), _wgslsmith_mod_i32(var_0.x, 0i)), u_input.a, false));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(~((_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 19103u) << (countOneBits(arg_1.a) % 32u)) << (0u % 32u)), arg_1.b);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = func_4(func_2(abs(vec4<u32>(u_input.d.x, u_input.d.x | arg_0, arg_0, _wgslsmith_mult_u32(1169u, 1u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(2201f, 703f, 544f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(282f, 1000f, -807f))))))), func_2(u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1498f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -773f)))), Struct_1(83449u, select(select(func_2(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u), vec3<f32>(-553f, -1282f, -348f)).b, vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(~arg_0, !func_2(vec4<u32>(18104u, arg_0, 5579u, 0u), vec3<f32>(-2519f, -365f, 154f)).b));
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    let var_1 = ~abs(~vec3<i32>(-5278i, _wgslsmith_div_i32(u_input.b, u_input.a.x), u_input.a.x & u_input.b));
    return select(var_0.b, select(var_0.b, vec4<bool>(true, var_0.b.x, true, func_2(u_input.d, vec3<f32>(-1555f, -343f, 1086f)).b.x), func_4(var_0, func_4(func_4(Struct_1(4294967295u, vec4<bool>(true, true, false, var_0.b.x)), var_0, Struct_1(u_input.d.x, var_0.b), var_0), var_0, var_0, var_0), func_4(func_4(Struct_1(0u, var_0.b), var_0, Struct_1(u_input.d.x, vec4<bool>(false, var_0.b.x, true, var_0.b.x)), var_0), func_4(Struct_1(arg_0, vec4<bool>(false, var_0.b.x, var_0.b.x, true)), var_0, Struct_1(11765u, var_0.b), Struct_1(1u, var_0.b)), var_0, Struct_1(1u, var_0.b)), var_0).b), vec4<bool>(all(var_0.b), true, !(!all(var_0.b)), false));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    let var_0 = func_4(func_2(abs(u_input.d), vec3<f32>(_wgslsmith_f_op_f32(sign(-933f)), 105f, _wgslsmith_f_op_f32(f32(-1f) * -1509f))), Struct_1(0u, select(vec4<bool>(arg_0 < 33660i, true, any(arg_1.zx), arg_1.x || arg_1.x), arg_1, arg_1)), Struct_1(func_2(u_input.d, vec3<f32>(1f, 1f, 1f)).a, !arg_1), func_4(func_4(Struct_1(abs(u_input.d.x), vec4<bool>(true, true, true, true)), func_4(Struct_1(u_input.d.x, arg_1), Struct_1(0u, vec4<bool>(arg_1.x, false, arg_1.x, false)), Struct_1(4402u, vec4<bool>(arg_1.x, arg_1.x, false, false)), func_4(Struct_1(4294967295u, arg_1), Struct_1(16804u, vec4<bool>(arg_1.x, false, true, false)), Struct_1(15489u, arg_1), Struct_1(64773u, arg_1))), func_2(vec4<u32>(u_input.d.x, 43774u, 41206u, u_input.d.x), _wgslsmith_div_vec3_f32(vec3<f32>(1815f, 1000f, 1000f), vec3<f32>(1463f, -363f, 686f))), func_4(func_4(Struct_1(23605u, vec4<bool>(true, true, false, arg_1.x)), Struct_1(4294967295u, arg_1), Struct_1(u_input.d.x, arg_1), Struct_1(1u, vec4<bool>(arg_1.x, true, true, true))), func_4(Struct_1(u_input.d.x, arg_1), Struct_1(u_input.d.x, arg_1), Struct_1(u_input.d.x, arg_1), Struct_1(u_input.d.x, arg_1)), Struct_1(41490u, arg_1), func_2(u_input.d, vec3<f32>(697f, 1075f, -359f)))), func_2(_wgslsmith_sub_vec4_u32(~u_input.d, u_input.d), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-542f, -652f, -220f))))), Struct_1(select(1u, u_input.d.x, func_1(u_input.d.x).x), arg_1), Struct_1(min(4294967295u, 11844u), vec4<bool>(all(arg_1.zx), any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true, arg_1.x))));
    var var_1 = var_0;
    var var_2 = vec2<bool>(arg_1.x, arg_1.x);
    var var_3 = countOneBits(global0[_wgslsmith_index_u32(select(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.d.www, u_input.d.wyx), 4294967295u)), firstTrailingBit(25622u), true), 30u)]);
    var var_4 = Struct_1(1u, !(!(!select(vec4<bool>(false, false, var_0.b.x, arg_1.x), var_1.b, var_2.x))));
    return ~firstLeadingBit(var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_5(19145i, func_1(45890u)));
}

