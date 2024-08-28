struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(~arg_1.wyz, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(41326i, u_input.b, arg_2.c.b, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a.b, u_input.b, arg_2.a.b, arg_2.a.b), vec4<i32>(-43368i, arg_2.a.b, 1i, arg_2.a.b))), ~min(vec4<i32>(u_input.b, arg_2.a.b, u_input.b, u_input.b), vec4<i32>(0i, 0i, arg_2.c.b, u_input.b))), ~(4294967295u & _wgslsmith_sub_u32(arg_1.x, arg_0.x)), vec3<bool>(!all(arg_2.b), any(vec2<bool>(true, arg_2.b.x)), true)), arg_2.b, arg_2.a, arg_2.d);
    let var_1 = select(vec4<bool>(_wgslsmith_sub_u32(0u, u_input.a) == _wgslsmith_div_u32(u_input.a, arg_1.x), true, true, true), select(!select(vec4<bool>(true, arg_2.c.d.x, true, arg_2.a.d.x), select(vec4<bool>(false, arg_2.b.x, true, true), vec4<bool>(var_0.a.d.x, false, arg_2.a.d.x, true), var_0.a.d.x), true | var_0.c.d.x), select(!select(vec4<bool>(false, arg_2.a.d.x, arg_2.a.d.x, var_0.c.d.x), vec4<bool>(arg_2.c.d.x, var_0.b.x, arg_2.c.d.x, false), false), select(!vec4<bool>(var_0.c.d.x, var_0.c.d.x, var_0.a.d.x, var_0.b.x), vec4<bool>(false, arg_2.a.d.x, arg_2.a.d.x, true), true), select(!vec4<bool>(arg_2.b.x, arg_2.b.x, var_0.b.x, var_0.a.d.x), vec4<bool>(false, true, var_0.a.d.x, var_0.b.x), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + -119f) * -1000f) != -1189f), !(!vec4<bool>(any(vec4<bool>(arg_2.a.d.x, arg_2.a.d.x, var_0.b.x, false)), true, arg_2.c.d.x, true)));
    let var_2 = var_0;
    var var_3 = firstTrailingBit(select(vec2<i32>(_wgslsmith_sub_i32(1i, 0i), firstLeadingBit(11048i | var_0.a.b)), ~(~vec2<i32>(arg_2.a.b, -1086i)) | _wgslsmith_sub_vec2_i32(min(vec2<i32>(15447i, -16655i), vec2<i32>(-25598i, var_0.a.b)), -vec2<i32>(-59711i, 2320i)), true));
    var var_4 = abs(firstTrailingBit(min(vec2<i32>(3475i, -34128i), vec2<i32>(1i, u_input.b)) >> (arg_1.yw % vec2<u32>(32u))));
    return select(select(var_2.b, vec2<bool>(true, arg_2.a.d.x), vec2<bool>(var_0.a.d.x, true)), vec2<bool>(!var_0.a.d.x, arg_2.b.x), !all(!(!vec3<bool>(false, var_1.x, arg_2.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    let var_0 = min(i32(-1i) * -u_input.b, -9395i);
    var var_1 = vec3<f32>(arg_3.x, arg_3.x, -926f);
    let var_2 = Struct_2(Struct_1(~(~arg_0.a), ~abs(_wgslsmith_mult_i32(arg_2.b, 2147483647i)), 0u, vec3<bool>(true, !(true & arg_0.d.x), arg_2.d.x || arg_1)), select(vec2<bool>(false, all(!arg_0.d)), select(arg_0.d.xy, arg_0.d.xy, any(vec2<bool>(true, arg_2.d.x))), select(arg_2.d.xz, !(!vec2<bool>(arg_0.d.x, true)), func_3(vec2<u32>(u_input.a, 4294967295u), vec4<u32>(10246u, 0u, arg_2.c, 18595u) >> (vec4<u32>(73788u, 76161u, 4294967295u, arg_2.c) % vec4<u32>(32u)), Struct_2(Struct_1(vec3<u32>(59172u, 0u, 27337u), -1i, 2974u, vec3<bool>(true, arg_2.d.x, arg_2.d.x)), vec2<bool>(arg_2.d.x, true), arg_2, -882f)))), Struct_1(~_wgslsmith_mod_vec3_u32(arg_2.a, arg_0.a) ^ arg_2.a, -arg_0.b, firstTrailingBit(~(4294967295u ^ arg_2.c)), arg_2.d), 2683f);
    var var_3 = var_2;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(1000f));
    var var_1 = Struct_2(Struct_1(arg_3.a, -3089i, ~4294967295u, arg_0.d), !vec2<bool>(_wgslsmith_f_op_f32(sign(309f)) >= _wgslsmith_f_op_f32(-var_0), !func_2(arg_1.a, arg_0.d.x, Struct_1(vec3<u32>(95559u, 7883u, arg_2), arg_0.b, arg_1.c.a.x, arg_3.d), vec2<f32>(var_0, arg_1.d))), arg_0, 397f);
    var var_2 = _wgslsmith_div_u32(reverseBits(1u), 33609u);
    var_1 = arg_1;
    var var_3 = 219f;
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, (all(vec3<bool>(false, false, false)) | true) || func_1(Struct_1(vec3<u32>(1u, u_input.a, 55042u), u_input.b, u_input.a, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), 0i, u_input.a, vec3<bool>(true, false, false)), vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 0u, u_input.a), 1i, 4294967295u, vec3<bool>(false, false, false)), -1207f), 50233u, Struct_1(vec3<u32>(1u, u_input.a, u_input.a), -31257i, 17317u, vec3<bool>(true, true, false))), all(vec3<bool>(true, true, true))), vec3<bool>(false, true, true), func_3(~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), max(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, u_input.a))), vec4<u32>(4294967295u, (u_input.a & u_input.a) | u_input.a, u_input.a >> (u_input.a % 32u), abs(countOneBits(u_input.a))), Struct_2(Struct_1(countOneBits(vec3<u32>(u_input.a, u_input.a, 36068u)), 2147483647i, _wgslsmith_sub_u32(u_input.a, u_input.a), vec3<bool>(true, false, true)), vec2<bool>(true, true), Struct_1(~vec3<u32>(u_input.a, u_input.a, 49746u), i32(-1i) * -12472i, u_input.a, vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-218f, 509f, true)), _wgslsmith_f_op_f32(round(-935f)), true)))).x);
    var var_1 = Struct_1(abs(vec3<u32>(u_input.a, 0u, firstLeadingBit(_wgslsmith_mult_u32(0u, u_input.a)))), u_input.b, min(u_input.a, u_input.a), !(!vec3<bool>(false, all(var_0.xy), true)));
    var_1 = Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.a.x ^ u_input.a, ~63130u), reverseBits(vec3<u32>(0u, 13073u, u_input.a)) >> (var_1.a % vec3<u32>(32u))), u_input.b, var_1.c, select(var_1.d, !var_0, vec3<bool>(false, var_1.d.x, false)));
    let var_2 = Struct_1(vec3<u32>(u_input.a, abs(1u), u_input.a), -7860i, _wgslsmith_mod_u32(min(u_input.a, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.c, 1u, 4294967295u), var_1.a, vec3<bool>(var_1.d.x, var_0.x, false)), _wgslsmith_add_vec3_u32(var_1.a, var_1.a))), ~(~select(var_1.a.x, 1u, var_0.x))), !select(vec3<bool>(any(vec4<bool>(var_1.d.x, var_0.x, var_1.d.x, true)), false, false), select(select(var_0, vec3<bool>(var_0.x, var_1.d.x, false), true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, true)), var_0));
    let var_3 = var_2;
    var_1 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, var_2.a.x) | (16438u << (1u % 32u)), ~3466u), var_1.c, abs(countOneBits(1u))), var_1.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(u_input.a, var_2.c)), 55004u), max(0u & _wgslsmith_clamp_u32(4294967295u, 4294967295u, 27317u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 36777u, 48430u), abs(var_2.a))), 1u), select(var_3.d, vec3<bool>((-5875i ^ u_input.b) <= (0i & var_3.b), !(!var_3.d.x), var_0.x), !vec3<bool>(all(vec4<bool>(true, var_2.d.x, false, false)), !var_3.d.x, func_3(var_1.a.zx, vec4<u32>(var_3.a.x, var_1.a.x, var_1.a.x, 15393u), Struct_2(Struct_1(vec3<u32>(u_input.a, 4294967295u, var_1.a.x), 17846i, 1u, vec3<bool>(var_1.d.x, true, var_0.x)), vec2<bool>(false, true), Struct_1(var_1.a, var_3.b, 16940u, vec3<bool>(true, false, var_0.x)), -761f)).x)));
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_3.a.zy, var_1.a.xz), ~var_1.a.zx)), _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(0u) >> (~63034u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(69453u, var_2.a.x, 4294967295u), vec3<u32>(1u, var_2.c, 4294967295u))), var_3.a.zx));
    var_1 = var_2;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b | -var_1.b);
}

