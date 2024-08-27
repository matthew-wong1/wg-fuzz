struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1043f)))))));
    let var_2 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f + arg_0)))))));
    let var_3 = _wgslsmith_dot_vec3_u32(min(max(abs(~vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(u_input.b, 0u, ~u_input.b)), vec3<u32>(_wgslsmith_clamp_u32(34007u ^ u_input.b, u_input.b, ~u_input.b), _wgslsmith_sub_u32(firstLeadingBit(0u), ~u_input.b), abs(~u_input.b))), _wgslsmith_mult_vec3_u32(select(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(72195u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), reverseBits(firstTrailingBit(vec3<u32>(42415u, u_input.b, u_input.b))), any(vec3<bool>(true, true, false))), abs(~(~vec3<u32>(4294967295u, 26132u, u_input.b)))));
    let var_4 = Struct_1(true, u_input.a.zx, _wgslsmith_mod_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(-29803i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)))));
    return ~reverseBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, var_4.b.x), select(-var_4.b, vec2<i32>(var_4.c.x, -32891i) & u_input.a.wz, var_4.a), ~(~var_4.c)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~abs(vec3<u32>(_wgslsmith_clamp_u32(76168u, u_input.b, u_input.b), abs(u_input.b), 1u) | vec3<u32>(firstTrailingBit(u_input.b), 46090u >> (1u % 32u), u_input.b));
    let var_1 = vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(14043i, arg_0.b.x)), 0i, ~(~arg_0.c.x));
    let var_2 = vec2<f32>(-959f, -565f);
    let var_3 = max(countOneBits(~abs(1u)), 7517u);
    var_0 = vec3<u32>(var_3, 89418u, 66983u);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(firstTrailingBit(vec4<u32>(13757u, 43513u, 1u, 44004u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(42762u, var_3, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, var_3, var_3, 1049u))), max(vec4<u32>(1u, reverseBits(0u), ~u_input.b, firstTrailingBit(1u)), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3, 0u, 53470u, var_3), vec4<u32>(var_0.x, var_3, 36003u, var_3))))), ~(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(107607u, var_0.x, var_0.x, var_0.x), vec4<u32>(var_3, 17387u, 4294967295u, 87203u), vec4<u32>(7164u, u_input.b, var_0.x, 22998u))) ^ vec4<u32>(var_0.x, var_3 >> (4294967295u % 32u), ~1u, ~4294967295u)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<u32>(func_4(Struct_1(true, func_3(_wgslsmith_f_op_f32(f32(-1f) * -334f)), ~vec2<i32>(-1i, u_input.a.x))), _wgslsmith_add_u32(min(_wgslsmith_clamp_u32(23979u, u_input.b, u_input.b), 13480u), min(_wgslsmith_mult_u32(4294967295u, u_input.b), u_input.b)) | 12298u);
    var var_1 = select(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, any(vec3<bool>(false, true, true)) == !any(vec4<bool>(false, false, false, true)), true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true), select(true, true, true)));
    var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(min(u_input.b, 1u), ~4294967295u), ~(~51124u)), 22258u);
    var var_2 = vec4<u32>(39734u, _wgslsmith_mod_u32(~var_0.x, var_0.x), 30651u, countOneBits(var_0.x));
    var var_3 = Struct_1(true, -u_input.a.zz, _wgslsmith_add_vec2_i32(((vec2<i32>(u_input.a.x, 7319i) >> (vec2<u32>(var_2.x, u_input.b) % vec2<u32>(32u))) ^ vec2<i32>(u_input.a.x, u_input.a.x)) ^ firstLeadingBit(abs(vec2<i32>(u_input.a.x, -1i))), max(firstLeadingBit(max(u_input.a.xz, vec2<i32>(1i, 10840i))), abs(~vec2<i32>(u_input.a.x, -2147483647i)))));
    return Struct_1(var_1.x && (true | !var_1.x), vec2<i32>(u_input.a.x, var_3.b.x & reverseBits(~8593i)), firstLeadingBit(reverseBits(vec2<i32>(-2147483647i, u_input.a.x) & u_input.a.xy)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !select(arg_1.zy, !(!arg_1.xx), arg_0.a);
    var_0 = vec2<bool>(arg_1.x, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(284f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(363f, 890f))))), _wgslsmith_f_op_f32(ceil(-474f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(242f))))) + -1223f));
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 38012u), 1u, 1354u) | (_wgslsmith_mult_u32(u_input.b, min(16853u, _wgslsmith_mult_u32(u_input.b, 39465u))) >> (45885u % 32u));
    var_0 = select(!vec2<bool>(arg_1.x & func_2().a, any(!vec3<bool>(true, arg_0.a, true))), vec2<bool>(true, true), arg_1.xz);
    return Struct_1(true, -(vec2<i32>(-1i) * -u_input.a.xz), -func_2().c);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = arg_0 >= _wgslsmith_f_op_f32(-arg_0);
    var var_1 = arg_0;
    var var_2 = Struct_1(false, u_input.a.xz, -(~select(u_input.a.zw & u_input.a.wx, ~u_input.a.zz, false)));
    var var_3 = func_5(Struct_1(var_2.a, _wgslsmith_div_vec2_i32(abs(vec2<i32>(0i, var_2.b.x)), vec2<i32>(0i, 2147483647i)), u_input.a.xy), !vec3<bool>(true, var_2.a, true), func_2());
    var_2 = Struct_1(var_3.a, -vec2<i32>(-var_2.c.x, func_5(func_5(Struct_1(true, vec2<i32>(-2147483647i, -78274i), u_input.a.ww), vec3<bool>(false, var_2.a, false), Struct_1(false, vec2<i32>(var_3.b.x, var_3.b.x), vec2<i32>(-2147483647i, var_3.c.x))), vec3<bool>(false, true, false), Struct_1(var_3.a, u_input.a.xx, vec2<i32>(0i, 0i))).c.x), u_input.a.wy);
    return Struct_1(-2147483647i == _wgslsmith_sub_i32(0i << (~u_input.b % 32u), ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), vec2<i32>(-1i) * -(~(vec2<i32>(-2147483647i, var_3.c.x) >> (vec2<u32>(19023u, 44536u) % vec2<u32>(32u)))), u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(264f)), 835f)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(-346f))) * 1f)))));
    var var_2 = var_0.c.x;
    var var_3 = select(select(select(select(!vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, false, false), vec3<bool>(false, true, var_0.a)), vec3<bool>(var_0.a, false, !var_0.a), var_0.a), vec3<bool>(func_1(_wgslsmith_f_op_f32(-948f + var_1)).a, var_0.a, var_0.a), vec3<bool>(false, !var_0.a, var_0.a)), !(!select(!vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), true), !vec3<bool>(false, false, var_0.a))), false);
    let var_4 = func_5(Struct_1(all(vec4<bool>(true != var_0.a, var_3.x, true, true | var_3.x)), ~func_3(1000f), var_0.b), vec3<bool>(any(vec2<bool>(false, !var_3.x)), var_0.a, all(select(vec2<bool>(var_3.x, true), !var_3.xz, var_3.yz))), Struct_1(select(!any(vec3<bool>(false, true, true)), var_0.a, 382f <= _wgslsmith_f_op_f32(-var_1)), reverseBits(-(~var_0.b)), (min(u_input.a.ww, vec2<i32>(29495i, u_input.a.x)) << (countOneBits(vec2<u32>(7730u, 0u)) % vec2<u32>(32u))) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
    var_2 = reverseBits(-func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f))).x);
    let x = u_input.a;
    s_output = StorageBuffer(~(((vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u))) & vec2<u32>(23113u, 0u)));
}

