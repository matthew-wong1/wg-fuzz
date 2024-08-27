struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3) -> u32 {
    return u_input.a.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_2(!all(vec2<bool>(false, arg_1.x | arg_1.x)), _wgslsmith_sub_i32(firstLeadingBit(arg_0.x), arg_0.x), Struct_1(-firstLeadingBit(_wgslsmith_sub_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -120f), arg_1.x, _wgslsmith_mod_i32(arg_0.x, arg_0.x)), vec4<bool>(true, false, any(select(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, true, false), vec4<bool>(arg_1.x, true, true, arg_1.x)), all(vec4<bool>(arg_1.x, arg_1.x, false, true)))), 4294967295u != _wgslsmith_sub_u32(u_input.a.x, ~19845u)));
    let var_1 = arg_0;
    var var_2 = vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(-44107i, _wgslsmith_sub_i32(firstLeadingBit(var_0.b), i32(-1i) * -53787i))), max(_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-1i, -2147483647i, 2147483647i) << (u_input.a.zzw % vec3<u32>(32u))) >> (max(u_input.b, 8673u) % 32u), ~firstTrailingBit(2147483647i)));
    var_0 = Struct_2(true, var_2.x, var_0.c, vec4<bool>(false, select(true, true, all(select(arg_1, vec3<bool>(true, false, true), var_0.d.wyy))), false, any(!vec2<bool>(arg_1.x, true))));
    var_0 = Struct_2(all(select(var_0.d.yw, var_0.d.ww, false)), var_2.x, Struct_1(~(vec2<i32>(-1i) * -arg_0.xx), 1093f, any(!(!var_0.d.yx)), 47969i), var_0.d);
    return -2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: i32) -> StorageBuffer {
    var var_0 = Struct_2(false, _wgslsmith_dot_vec3_i32(-vec3<i32>(-7824i, arg_2, arg_2) | _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, arg_2, 3732i), vec3<i32>(-1i, -56662i, 1i)), vec3<i32>(arg_2, 1i, arg_2)), -((vec3<i32>(1i, -28447i, arg_2) << (vec3<u32>(u_input.a.x, 658u, u_input.b) % vec3<u32>(32u))) << (~vec3<u32>(11221u, 15638u, 66921u) % vec3<u32>(32u)))), Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, -7014i, arg_2), vec3<i32>(arg_2, arg_2, 1i))) << (~vec2<u32>(41911u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1490f)))), true, func_3(vec3<i32>(arg_2, -arg_2, arg_2), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), !vec4<bool>(false, true, true, -41028i < (1i | arg_2)));
    var var_1 = Struct_3(Struct_2(all(select(select(var_0.d, vec4<bool>(var_0.d.x, false, var_0.c.c, var_0.a), true), var_0.d, vec4<bool>(true, false, var_0.d.x, var_0.d.x))), 6908i, Struct_1((var_0.c.a | vec2<i32>(var_0.c.d, arg_2)) & vec2<i32>(-15932i, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b - var_0.c.b)), any(var_0.d.zzz) && (var_0.c.b < -837f), var_0.b), !(!var_0.d)));
    var_1 = Struct_3(var_1.a);
    var_0 = Struct_2(!select(all(var_0.d.wzx), false, var_1.a.c.c), -2147483647i, var_1.a.c, select(select(var_0.d, !select(vec4<bool>(true, var_0.c.c, var_1.a.d.x, var_1.a.d.x), var_0.d, vec4<bool>(var_0.d.x, var_1.a.c.c, var_1.a.c.c, true)), var_1.a.a), !(!var_1.a.d), var_1.a.a));
    return StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(~68081u | _wgslsmith_mult_u32(arg_0.x, arg_0.x), u_input.a.x, (27401u | u_input.a.x) << (~arg_1.a.x % 32u)), min(arg_1.a, abs(arg_1.a)) | (reverseBits(vec3<u32>(arg_1.a.x, 0u, arg_1.a.x)) ^ ~vec3<u32>(1u, 27188u, arg_0.x)), vec3<u32>(max(61548u, ~arg_0.x), ~15592u, 19574u)), vec3<i32>(~(-25151i), -2147483647i, 1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(724f, var_0.c.b) + -690f), ~abs(vec4<i32>(~(-58626i), var_1.a.b, var_1.a.c.d, var_1.a.c.a.x)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18787u, u_input.a.x), ~u_input.a.wxw), min(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.b)), ~func_1(Struct_3(Struct_2(true, -49073i, Struct_1(vec2<i32>(0i, -4259i), -1451f, false, -27190i), vec4<bool>(true, false, false, false))))));
    let x = u_input.a;
    s_output = func_2(vec4<u32>(var_0.a.x, countOneBits(u_input.a.x) & ~27523u, 1347u, var_0.a.x) & u_input.a, Struct_4(_wgslsmith_mult_vec3_u32(abs(countOneBits(var_0.a)), vec3<u32>(~var_0.a.x, 4294967295u, 1u))), -3576i);
}

