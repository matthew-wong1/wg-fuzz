struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(true);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.a)))))), var_0.a));
    let var_2 = vec2<bool>(true, false);
    var var_3 = arg_2.x;
    let var_4 = vec2<bool>(1504f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(158f + _wgslsmith_f_op_f32(arg_0.a * arg_0.a)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 29648u, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(73294u, 0u, 52462u), vec3<u32>(u_input.a, 0u, 10415u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 37096u, u_input.c), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.a, 4294967295u)) % vec3<u32>(32u))) != min(22817u & _wgslsmith_dot_vec3_u32(vec3<u32>(21113u, 33523u, u_input.c), vec3<u32>(62535u, 33570u, u_input.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 54294u), vec4<u32>(u_input.c, u_input.c, u_input.a, 27624u)), ~23647u)));
    return -(~arg_2);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = func_2((~(~vec2<u32>(0u, 29318u)) | ~(u_input.b << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))) & vec2<u32>(~(~34516u), u_input.b.x));
    var var_1 = Struct_3(max(arg_1.x, _wgslsmith_dot_vec4_i32(~arg_1 >> (vec4<u32>(5975u, 1u, 16857u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(0i, 2147483647i, -2147483647i, arg_1.x) >> (abs(vec4<u32>(u_input.c, u_input.c, 4294967295u, 1u)) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(arg_1), firstLeadingBit(vec4<i32>(arg_1.x, 14813i, arg_1.x, -12377i))), _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-1i), _wgslsmith_sub_i32(arg_1.x, arg_1.x), arg_1.x, min(arg_1.x, -33002i)), countOneBits(-arg_1))));
    let var_2 = countOneBits(~(vec4<u32>(4294967295u | u_input.c, 1u, ~46512u, _wgslsmith_mult_u32(u_input.a, u_input.b.x)) | ((vec4<u32>(u_input.a, u_input.c, 52583u, 69657u) ^ vec4<u32>(82771u, u_input.a, u_input.c, u_input.c)) & abs(vec4<u32>(43231u, u_input.c, 0u, 4294967295u)))));
    let var_3 = !arg_0.a;
    var_1 = Struct_3(1i, arg_1);
    return _wgslsmith_sub_i32(var_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -2147483647i, var_1.a), vec3<i32>(var_1.a, -2147483647i, 0i)), var_1.b.x, arg_1.x, func_3(Struct_2(1000f, Struct_1(false)), Struct_2(1000f, Struct_1(false)), vec4<i32>(2147483647i, var_1.b.x, var_1.a, 47879i)).x), var_1.b));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_2(arg_2.b.x, func_2(~_wgslsmith_mod_vec2_u32(abs(u_input.b), vec2<u32>(u_input.a, 1u))));
    var_0 = Struct_2(var_0.a, Struct_1(var_0.b.a));
    var_0 = Struct_2(2077f, func_2(_wgslsmith_mult_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(arg_0, 0u) >> (u_input.b % vec2<u32>(32u))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))), Struct_1(any(!arg_1.zz)));
    let var_1 = vec4<i32>(func_4(Struct_1(all(vec2<bool>(false, arg_1.x))), _wgslsmith_add_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(2147483647i, 40550i, 0i, -2147483647i))), func_3(Struct_2(var_0.a, var_0.b), Struct_2(var_0.a, Struct_1(false)), ~vec4<i32>(-2147483647i, -1i, 5320i, -2147483647i))), arg_1.yz), abs(~1i), -2147483647i | _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 2147483647i)), func_3(Struct_2(1000f, Struct_1(false)), Struct_2(1000f, Struct_1(arg_1.x)), vec4<i32>(1i, -14231i, 0i, 0i)).zx), 1i);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(4294967295u, ~u_input.a), ~1u, 0u), vec4<u32>(u_input.a, ~(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, reverseBits(u_input.c), select(1u, u_input.b.x, false)), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.c)), u_input.b.x));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32((firstTrailingBit(-18793i) & 1i) << (1u % 32u), firstLeadingBit(max(~2147483647i, -2147483647i))), ~(_wgslsmith_mult_i32(countOneBits(31937i), 15933i) << (u_input.b.x % 32u)));
    let var_2 = firstLeadingBit(~29776u);
    var var_3 = Struct_3(0i, vec4<i32>(func_1(~countOneBits(u_input.c), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), Struct_4(_wgslsmith_f_op_f32(1800f + -989f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(769f, 290f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(15581i, -1i), 1i), vec3<i32>(firstTrailingBit(15215i), ~4237i, _wgslsmith_dot_vec4_i32(vec4<i32>(37061i, -2147483647i, 2147483647i, -48762i), vec4<i32>(-55157i, -1i, 2147483647i, 1i)))), _wgslsmith_mod_i32(44788i, func_1(43408u, vec3<bool>(true, true, true), Struct_4(1191f, vec2<f32>(1177f, 2056f)))) << (~u_input.a % 32u), max(~func_4(Struct_1(true), vec4<i32>(-20269i, 11121i, 2555i, -68328i), vec2<bool>(false, true)), -func_1(var_2, vec3<bool>(true, false, false), Struct_4(1645f, vec2<f32>(776f, -455f))))));
    var_1 = var_3.a;
    var var_4 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1351f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2214f, -1823f)))))), var_3.a, ~_wgslsmith_add_vec3_u32(var_0.yxx, vec3<u32>(~30712u, countOneBits(0u), var_2)));
}

