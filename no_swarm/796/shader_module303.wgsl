struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(288f, -344f)), _wgslsmith_f_op_f32(f32(-1f) * -519f))), firstTrailingBit(u_input.b.x), vec3<i32>(-1i) * -select(vec3<i32>(33305i, -35011i, -37427i), vec3<i32>(33504i, 48769i, 46164i), true)), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~reverseBits(u_input.d)), max(u_input.b.x, _wgslsmith_mult_u32(29110u, u_input.b.x) | max(35921u, u_input.d))), true, vec3<i32>(-44119i << (~(u_input.c << (u_input.c % 32u)) % 32u), firstLeadingBit(8466i), 1i));
    var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-844f - var_0.a.a), abs(abs(~u_input.c)), vec3<i32>(-var_0.a.c.x, var_0.d.x, min(~var_0.d.x, -30979i))), _wgslsmith_sub_u32(var_0.a.b, u_input.b.x), true, vec3<i32>(0i, var_0.d.x, var_0.d.x) | firstLeadingBit(reverseBits(~vec3<i32>(var_0.a.c.x, 21416i, var_0.d.x))));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(1u << (u_input.b.x % 32u)), ~(~1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, firstTrailingBit(9700u), ~u_input.a.x), reverseBits(vec3<u32>(var_0.a.b, 0u, u_input.a.x)))));
    let var_2 = select(!select(select(!vec2<bool>(false, var_0.c), select(vec2<bool>(true, arg_0.x), arg_0, true), arg_1), vec2<bool>(all(vec3<bool>(true, var_0.c, false)), var_0.a.a < var_0.a.a), false), arg_0, !(!arg_0));
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(-374f * -1276f))));
}

fn func_2() -> u32 {
    let var_0 = true;
    let var_1 = Struct_4(Struct_1(-481f, u_input.a.x, vec3<i32>(1i, -1i, 49034i)), Struct_2(false, Struct_1(-1078f, u_input.b.x, vec3<i32>(-67546i, max(-1622i, -1i), max(6748i, 26717i)))), Struct_2(_wgslsmith_mult_u32(u_input.a.x, 7551u) >= countOneBits(1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2093f))), ~_wgslsmith_sub_u32(u_input.c, 0u), abs(~vec3<i32>(40058i, 269i, -2147483647i)))));
    let var_2 = Struct_3(var_1.b, var_1.b);
    var var_3 = _wgslsmith_f_op_f32(func_3(vec2<bool>(true, var_0), false));
    var_3 = 2003f;
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(1u, 1u)), 78460u), _wgslsmith_mult_u32(74830u << (_wgslsmith_div_u32(~var_2.b.b.b, var_1.b.b.b) % 32u), firstLeadingBit(0u)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> StorageBuffer {
    var var_0 = min(_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -4341i, 40704i, 10068i), vec4<i32>(2147483647i, -2147483647i, 55581i, 61828i)), vec4<i32>(60939i, 1i, 0i, 0i)), ~vec4<i32>(50539i, 1i, -21769i, _wgslsmith_sub_i32(1i, 3696i))), vec4<i32>(~2147483647i, abs(i32(-1i) * -48518i) >> (func_2() % 32u), max(0i, ~(-2147483647i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(49500i, 2147483647i, 2147483647i, -26826i), _wgslsmith_div_vec4_i32(vec4<i32>(72524i, -1i, 1i, 72680i), vec4<i32>(-1i, -2147483647i, -32916i, 1i))), 0i));
    var var_1 = ~(-1i);
    var_1 = _wgslsmith_div_i32(var_0.x, 1i);
    var var_2 = ~(-7487i);
    var var_3 = Struct_3(Struct_2(any(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + 1655f))), 1u, abs(var_0.yyw) << (select(u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), vec3<bool>(arg_0, false, false)) % vec3<u32>(32u)))), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)), _wgslsmith_div_u32(1u, u_input.b.x), var_0.zxy)));
    return StorageBuffer(abs(vec2<u32>(var_3.b.b.b << (1u % 32u), ~48687u)) & ~(vec2<u32>(u_input.b.x, 0u) | _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(53206u, u_input.b.x))), ~vec4<i32>(reverseBits(var_0.x ^ 0i), _wgslsmith_sub_i32(var_3.a.b.c.x | -9270i, 15454i), var_3.a.b.c.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2022f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1509f + 208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1241f * -1000f)), _wgslsmith_f_op_f32(-416f + -441f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 110f, 1426f, -337f), vec4<f32>(436f, -1152f, -1478f, -1097f), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-648f, -889f, -703f, -320f), vec4<f32>(369f, 1235f, -1281f, 779f), true)) + vec4<f32>(-359f, -1451f, 2963f, -125f))))), true);
}

