struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = -1886f;
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(min(~(~vec3<u32>(9302u, 4294967295u, u_input.a.x)), vec3<u32>(arg_1.a, ~u_input.a.x, arg_1.a))), reverseBits(12432i), Struct_1(~(~vec3<u32>(92869u, arg_1.a, arg_1.a))));
    var var_3 = var_2.a.a.x;
    let var_4 = Struct_1(~vec3<u32>(1u, ~(u_input.a.x & 4294967295u), arg_1.a >> (select(u_input.a.x, 68056u, arg_0.x) % 32u)));
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.c.x);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), Struct_3(1u, arg_1.b, arg_1.c))), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-940f, _wgslsmith_f_op_f32(abs(arg_1.c.x)))), 914f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) - -1000f), _wgslsmith_f_op_f32(trunc(1196f)))));
    let var_1 = Struct_3(arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(-1590f, 273f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, var_0.c.x), vec2<f32>(584f, 1000f), false)), arg_1.c)))));
    let var_2 = ~reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, arg_0, u_input.b.x), firstLeadingBit(min(vec4<i32>(u_input.b.x, 59681i, arg_0, 1793i), vec4<i32>(1i, 0i, u_input.b.x, u_input.b.x)))));
    let var_3 = Struct_2(arg_2, -(~(u_input.b.x << (arg_2.a.x % 32u))), arg_2);
    let var_4 = reverseBits(-2147483647i);
    return !(!vec3<bool>(any(vec4<bool>(true, true, false, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), select(any(vec4<bool>(true, false, true, false)), select(false, true, true), false)));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = 30935u;
    let var_1 = any(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), func_2(2147483647i, Struct_3(38114u, vec2<f32>(-364f, 704f), vec2<f32>(-663f, 2223f)), Struct_1(vec3<u32>(var_0, 13301u, u_input.a.x))))));
    let var_2 = vec4<u32>(~var_0, ~var_0, ~reverseBits(1u), u_input.a.x);
    var var_3 = reverseBits(vec4<i32>(u_input.b.x, firstLeadingBit(countOneBits(min(u_input.b.x, 6147i))), -26302i, 1i));
    let var_4 = -1i;
    return func_2(u_input.b.x, Struct_3(_wgslsmith_clamp_u32(var_0 | 2494u, _wgslsmith_mult_u32(4294967295u, u_input.a.x), ~u_input.a.x) << (var_2.x % 32u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-777f, _wgslsmith_f_op_f32(1000f - -1056f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1283f, 1000f), vec2<f32>(391f, 1000f), var_1))))))), Struct_1(min(~reverseBits(vec3<u32>(var_2.x, var_0, u_input.a.x)), vec3<u32>(10726u, u_input.a.x, _wgslsmith_dot_vec4_u32(var_2, var_2))))).yx;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = reverseBits(-1i);
    let var_1 = false;
    var var_2 = ~vec3<u32>(~u_input.a.x, select(39662u, u_input.a.x ^ (1u << (u_input.a.x % 32u)), true), 30401u);
    var var_3 = -vec4<i32>(-1i, u_input.b.x, -u_input.b.x, u_input.b.x);
    let var_4 = Struct_2(Struct_1(vec3<u32>(u_input.a.x, ~min(141591u, 0u), 16604u)), -1i, Struct_1(firstLeadingBit(vec3<u32>(1u, 3187u, ~0u))));
    return Struct_1(abs(vec3<u32>(u_input.a.x, var_2.x, 4294967295u & var_2.x) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), var_4.c.a, vec3<u32>(u_input.a.x, var_4.c.a.x, 4294967295u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) >> ((vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) << (vec3<u32>(4294967295u, 51339u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) >> (~vec3<u32>(u_input.a.x >> (u_input.a.x % 32u), firstTrailingBit(18166u), u_input.a.x) % vec3<u32>(32u)));
    var_0 = Struct_1(vec3<u32>(abs(_wgslsmith_add_u32(0u, 85345u)), abs(~countOneBits(var_0.a.x)), ~0u));
    var_0 = func_4(select(vec2<bool>(!all(vec2<bool>(false, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), func_1(u_input.b.x), !func_2(2147483647i, Struct_3(4294967295u, vec2<f32>(340f, -1327f), vec2<f32>(589f, 1014f)), Struct_1(vec3<u32>(39220u, 0u, u_input.a.x))).zz)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1051f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-792f, 1f)));
    var_1 = 559f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, var_0.a.x, 0u) | select(var_0.a, var_0.a, vec3<bool>(false, true, true)), vec3<u32>(35788u, ~var_0.a.x, ~u_input.a.x))), u_input.b.x, Struct_1(_wgslsmith_sub_vec3_u32(~firstLeadingBit(var_0.a), ~func_4(vec2<bool>(true, true)).a)));
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(var_2.c.a, _wgslsmith_div_vec3_u32(vec3<u32>(abs(17532u), 8312u, _wgslsmith_clamp_u32(4294967295u, var_2.a.a.x, var_2.c.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, var_0.a.x), abs(var_2.c.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~8650u, ~46591u), vec3<u32>(_wgslsmith_clamp_u32(40431u, 59776u, 63718u), var_2.c.a.x, var_3.a.x ^ 35374u))));
}

