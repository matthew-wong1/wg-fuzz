struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    return _wgslsmith_add_u32(firstLeadingBit(arg_3.x), firstTrailingBit(14850u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32) -> vec2<i32> {
    var var_0 = ~min(~(~(~vec4<u32>(arg_0, arg_0, arg_0, 0u))), select(~vec4<u32>(0u, 23072u, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1772u, u_input.a, 1u, 0u), vec4<u32>(0u, arg_0, 14735u, u_input.b)) ^ (vec4<u32>(u_input.a, arg_0, 24482u, u_input.a) | vec4<u32>(u_input.b, u_input.c, 4294967295u, u_input.c)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)));
    let var_1 = vec3<i32>(2147483647i, -1i, countOneBits(~1i)) ^ _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(arg_2, -2147483647i, -2147483647i)), countOneBits(vec3<i32>(1i, arg_2, arg_2)))), ~vec3<i32>(arg_2, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(18612i, arg_2, arg_2, arg_2), vec4<i32>(-17726i, arg_2, arg_2, arg_2))));
    var var_2 = vec4<u32>(3742u, min(var_0.x, _wgslsmith_mult_u32(4294967295u, ~(~var_0.x))), arg_0 >> ((_wgslsmith_div_u32(~0u, var_0.x) << (~_wgslsmith_mod_u32(1u, arg_0) % 32u)) % 32u), countOneBits(1u >> (var_0.x % 32u)));
    let var_3 = Struct_2(1u, -vec2<i32>(2147483647i, -var_1.x));
    var var_4 = min(firstLeadingBit(var_0.wzw >> (~vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))), firstTrailingBit(~(~var_0.yxy) ^ ~_wgslsmith_clamp_vec3_u32(var_2.yzz, var_0.xwx, var_0.zzw)));
    return vec2<i32>(countOneBits(var_3.b.x), 1i);
}

fn func_2() -> Struct_1 {
    let var_0 = 7318u >> ((~1u << ((u_input.b >> (u_input.a % 32u)) % 32u)) % 32u);
    var var_1 = Struct_2(~_wgslsmith_div_u32(0u, ~var_0), reverseBits(_wgslsmith_div_vec2_i32(firstLeadingBit(max(vec2<i32>(-30442i, -2147483647i), vec2<i32>(0i, 1i))), _wgslsmith_mult_vec2_i32(func_3(0u, 1452f, 0i), -vec2<i32>(-2147483647i, -2147483647i)))));
    var_1 = Struct_2(var_0, _wgslsmith_mod_vec2_i32(var_1.b, _wgslsmith_mod_vec2_i32(select(abs(vec2<i32>(var_1.b.x, 0i)), vec2<i32>(var_1.b.x, 1608i), vec2<bool>(true, false)), vec2<i32>(1i, -34571i) | ~vec2<i32>(0i, var_1.b.x))));
    var_1 = Struct_2(4294967295u, countOneBits(vec2<i32>(-1i) * -(~vec2<i32>(var_1.b.x, 20555i))));
    var_1 = Struct_2(~(~43586u), var_1.b >> (vec2<u32>(~u_input.b, _wgslsmith_add_u32(firstLeadingBit(35277u), _wgslsmith_dot_vec2_u32(vec2<u32>(43215u, 0u), vec2<u32>(var_0, var_0)))) % vec2<u32>(32u)));
    return Struct_1(reverseBits(0u), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = 0u;
    return Struct_3(2147483647i, !(!(!vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1295f, _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1625f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(u_input.a), 26368u), vec2<u32>(1u, countOneBits(0u))), true), vec3<u32>(min(min(1u, u_input.b), _wgslsmith_div_u32(~u_input.c, u_input.b)), func_1(1i, ~firstTrailingBit(vec3<u32>(u_input.c, u_input.a, 28447u)), 35751i, vec3<u32>(firstLeadingBit(62159u), u_input.a, u_input.a)), _wgslsmith_div_u32(103982u, u_input.a)), func_2());
    let var_1 = _wgslsmith_div_i32(25481i, (countOneBits(2147483647i) << (~_wgslsmith_mult_u32(u_input.a, u_input.c) % 32u)) | (i32(-1i) * -min(2147483647i, var_0.a)));
    var var_2 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(730f, 495f, var_0.c, 117f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -793f, var_0.c)))) + vec4<f32>(-1014f, _wgslsmith_f_op_f32(-819f + var_0.c), _wgslsmith_f_op_f32(var_0.c + var_0.c), _wgslsmith_f_op_f32(floor(var_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f - -1000f)), _wgslsmith_f_op_f32(floor(-436f)))));
}

