struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = -abs(-(~(~vec4<i32>(-1i, 8932i, -1i, -2147483647i))));
    var_0 = ~(-(firstLeadingBit(vec4<i32>(1i, var_0.x, var_0.x, -2147483647i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.x, 2147483647i, -2147483647i), vec4<i32>(-16862i, var_0.x, var_0.x, 34252i))) ^ firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.zwz, vec3<i32>(28902i, var_0.x, var_0.x)), 18490i >> (1u % 32u), firstTrailingBit(10795i), -var_0.x)));
    let var_1 = Struct_1((~vec4<i32>(-1915i, var_0.x, 12611i, -2147483647i) & ~vec4<i32>(var_0.x, var_0.x, var_0.x, 10816i)) ^ _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(38039i, var_0.x, 2147483647i, 17524i), vec4<i32>(-3415i, -2147483647i, 71734i, 7855i))), ~vec4<i32>(-1i, 43524i, -34716i, 1i) << ((vec4<u32>(1u, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))));
    var var_2 = vec4<bool>(all(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true, true);
    var_0 = var_1.a;
    return 16141i;
}

fn func_2() -> vec4<i32> {
    var var_0 = true;
    let var_1 = true;
    var_0 = !var_1;
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-7195i, max(_wgslsmith_sub_i32(-31200i, _wgslsmith_mod_i32(2147483647i, 6343i)), firstTrailingBit(~(-2147483647i))), 0i, ~(_wgslsmith_div_i32(-2147483647i, -1i) >> ((u_input.a ^ u_input.a) % 32u))), vec4<i32>(func_3(), -11626i, ~2147483647i, i32(-1i) * -min(-15713i, 9425i)));
    var_0 = true;
    return vec4<i32>(-2147483647i, ~countOneBits(reverseBits(-23186i)), var_2.x, var_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec2_i32(~arg_3.d.xy, -arg_0.a.yz);
    var var_1 = arg_1;
    let var_2 = Struct_4(0u);
    var_0 = arg_0.a.x;
    var var_3 = arg_3.d.x;
    return Struct_4(~u_input.a);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = 412f;
    let var_1 = func_4(Struct_1(_wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_2, -6791i, arg_2, arg_2)) << (reverseBits(vec4<u32>(0u, u_input.a, 0u, 0u)) % vec4<u32>(32u)), func_2())), _wgslsmith_mult_i32(select(arg_2, ~min(arg_2, arg_2), false), arg_2), vec3<u32>(1u, arg_0, u_input.a), Struct_2(Struct_1(firstTrailingBit(vec4<i32>(2147483647i, -4377i, -2147483647i, arg_2) ^ vec4<i32>(arg_2, -1i, -3450i, arg_2))), !select(select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(arg_1, false), true), any(vec3<bool>(false, false, true))), Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, -2147483647i, 1i, arg_2), vec4<i32>(2147483647i, -8204i, arg_2, 2147483647i))), vec3<i32>(abs(func_2().x), reverseBits(~arg_2), ~(-4418i) >> (u_input.a % 32u)), true));
    let var_2 = max(~(~u_input.a), 1u);
    var var_3 = Struct_2(Struct_1(vec4<i32>(arg_2 ^ arg_2, abs(arg_2) | -1i, firstTrailingBit(-66979i), -(i32(-1i) * -1i))), vec2<bool>(arg_1, arg_1 & (any(vec3<bool>(arg_1, true, true)) || !arg_1)), Struct_1(min(firstLeadingBit(vec4<i32>(-1i, -1i, 1i, 2147483647i)), -vec4<i32>(1i, 12766i, 0i, 1i) & reverseBits(vec4<i32>(2147483647i, arg_2, arg_2, -1i)))), vec3<i32>((i32(-1i) * -arg_2) << (var_1.a % 32u), max(_wgslsmith_add_i32(arg_2, arg_2), arg_2), 1i), !arg_1);
    var var_4 = Struct_3(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0)))) * var_0), var_1.a, var_3.a, vec4<bool>(any(var_3.b), select(select(true, arg_1, var_3.d.x >= -6444i), any(select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(false, var_3.e, false, var_3.e), vec4<bool>(true, false, var_3.e, var_3.b.x))), 1i == _wgslsmith_clamp_i32(arg_2, 33507i, 40733i)), any(select(vec2<bool>(false, false), var_3.b, vec2<bool>(false, false))), var_3.e));
    return any(vec3<bool>(any(select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, var_4.e.x, arg_1), var_4.e.x)) || all(var_4.e), false, !arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(func_1(~37699u, true, ~47130i) & true, true, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true);
    var_0 = select(!(!select(!vec4<bool>(true, var_0.x, false, var_0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, false)), true)), vec4<bool>(!any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, var_0.x, false, var_0.x))), !(!(!var_0.x)), !all(!vec4<bool>(false, var_0.x, true, false)), false), true);
    var_0 = select(select(select(vec4<bool>(any(vec4<bool>(true, var_0.x, true, var_0.x)), true, var_0.x, !var_0.x), vec4<bool>(var_0.x, all(vec4<bool>(true, var_0.x, var_0.x, true)), u_input.a < 0u, var_0.x), vec4<bool>(false, var_0.x && var_0.x, false, true)), select(vec4<bool>(any(vec2<bool>(true, true)), u_input.a <= u_input.a, all(vec4<bool>(var_0.x, false, true, true)), any(vec2<bool>(false, var_0.x))), !vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), vec4<bool>(!all(var_0.zx), all(var_0.xw), all(var_0.yx), true)), vec4<bool>(var_0.x, all(select(select(var_0.xy, var_0.wy, var_0.x), !var_0.xw, vec2<bool>(var_0.x, var_0.x))), select(false, true, false), true & var_0.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f + -625f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))));
    let var_1 = min(firstLeadingBit(-1i), 35031i) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 0u, 0u)), vec3<u32>(u_input.a, 17922u, u_input.a))), firstLeadingBit(0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 85451u, u_input.a, 4294967295u)) % 32u)) % 32u);
    var_0 = select(vec4<bool>(false, any(vec2<bool>(false, select(var_0.x, var_0.x, true))), true, false), vec4<bool>(any(var_0.yz), var_0.x, all(!var_0.yzw), var_0.x), !all(select(vec4<bool>(true, false, false, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, true, var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer((-(~vec2<i32>(24672i, 1i)) ^ min(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, -20131i), vec2<i32>(var_1, 1i)), vec2<i32>(1i, 1i))) | _wgslsmith_mod_vec2_i32(max(vec2<i32>(-26505i, -24279i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1, 2147483647i), vec2<i32>(1i, var_1))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, 3408i), vec2<i32>(var_1, var_1), vec2<i32>(-28082i, var_1))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-538f, 1111f))));
}

