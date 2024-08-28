struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(u_input.e != -25323i, true), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false))), min(~vec3<i32>(u_input.c.x, u_input.c.x, -1i), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.e, 2147483647i, u_input.e), u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_1, arg_0.x, arg_0.x, 412f))))), -2147483647i), arg_1, !(!(true | any(vec3<bool>(true, true, false)))), Struct_1(vec2<bool>((u_input.c.x | u_input.e) > u_input.c.x, (i32(-1i) * -50035i) >= max(u_input.e, 2147483647i)), -vec3<i32>(-19649i, -10117i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.c.x), u_input.c.xy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + -1348f), _wgslsmith_f_op_f32(f32(-1f) * -131f), arg_0.x)), u_input.e), arg_0);
    let var_1 = _wgslsmith_div_vec3_i32(-vec3<i32>(i32(-1i) * -u_input.c.x, u_input.e, -_wgslsmith_sub_i32(0i, -1i)), _wgslsmith_add_vec3_i32(u_input.c, countOneBits(select(var_0.d.b, u_input.c, vec3<bool>(false, true, true))) >> (~abs(vec3<u32>(1u, 4294967295u, 0u)) % vec3<u32>(32u))));
    let var_2 = var_0;
    let var_3 = Struct_2(var_2.d, _wgslsmith_f_op_f32(round(arg_0.x)), false, var_2.d, var_0.a.c);
    var var_4 = Struct_2(var_3.d, 827f, !all(select(select(vec4<bool>(var_3.c, false, false, false), vec4<bool>(true, false, var_2.a.a.x, var_3.c), vec4<bool>(true, false, true, var_0.c)), vec4<bool>(false, var_3.d.a.x, var_3.c, var_0.c), vec4<bool>(var_3.d.a.x, true, true, true))), Struct_1(var_2.d.a, -(~(-vec3<i32>(28861i, 54576i, 2147483647i))), _wgslsmith_f_op_vec4_f32(exp2(arg_0)), _wgslsmith_sub_i32(~abs(-14356i), var_3.d.b.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), var_0.e)));
    return vec2<bool>(select(var_3.a.a.x | var_2.a.a.x, arg_0.x < _wgslsmith_f_op_f32(var_3.e.x + var_3.d.c.x), var_3.d.a.x) == true, var_3.d.a.x);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(select(vec2<bool>(false, arg_0.x != _wgslsmith_mult_u32(arg_0.x, 45222u)), vec2<bool>(true, true), !select(func_3(vec4<f32>(-104f, 1158f, -2384f, -405f), -1579f), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 2045f, -757f, -2666f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-220f, -1049f, -980f, -1851f))))))))), u_input.c.x);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(u_input.a.zx);
    let var_1 = var_0;
    return Struct_2(Struct_1(!(!var_0.a), u_input.c, _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c), var_0.b.x), 899f, true, Struct_1(var_0.a, func_2(~u_input.d).b >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x + 527f), var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -445f))), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1233f - var_0.c.x), _wgslsmith_f_op_f32(ceil(-1576f)), var_1.c.x, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, 489f, -471f, 452f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0.a.d;
    let var_1 = all(select(select(!vec4<bool>(true, true, arg_0.d.a.x, false), !select(vec4<bool>(arg_0.a.a.x, arg_0.c, arg_0.d.a.x, true), vec4<bool>(arg_0.d.a.x, false, false, false), true), !(!vec4<bool>(false, false, arg_0.d.a.x, arg_0.a.a.x))), !(!vec4<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.c, arg_0.d.a.x)), func_2(vec2<u32>(u_input.d.x, u_input.a.x)).a.x | false));
    let var_2 = func_2(~vec2<u32>(u_input.b & 34387u, ~u_input.b));
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = !(!select(vec2<bool>(false, true), select(arg_1.a, arg_2.wz, vec2<bool>(false, true)), vec2<bool>(arg_1.a.x, true)));
    var var_1 = func_4(Struct_2(func_1().d, _wgslsmith_f_op_f32(-arg_3.e.x), !var_0.x, func_2(~select(u_input.a.xy, vec2<u32>(18053u, u_input.d.x), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1.c)))), abs(abs(vec4<i32>(arg_1.d, u_input.c.x, 1i, u_input.c.x)) | vec4<i32>(arg_3.d.b.x, -44108i, reverseBits(-36358i), arg_3.a.b.x))).b;
    let var_2 = func_4(func_4(func_4(func_1(), abs(vec4<i32>(1i, -38054i, arg_1.d, 2147483647i))), vec4<i32>(~18782i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 79293i, -2147483647i, -24009i), vec4<i32>(arg_3.d.b.x, 36987i, arg_3.d.b.x, 59671i)), ~u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 948i, arg_3.d.d, -23648i), vec4<i32>(arg_3.a.b.x, 1i, 20287i, arg_3.d.b.x))) & ~(-vec4<i32>(arg_1.b.x, u_input.e, arg_3.d.b.x, arg_1.b.x))), vec4<i32>(_wgslsmith_mod_i32(-27813i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, u_input.c.x) ^ -7217i), -max(-1i, arg_1.b.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.b.x, u_input.c.x, 1i, arg_1.b.x)), ~vec4<i32>(arg_3.a.d, u_input.e, 21830i, arg_1.b.x)) << (4294967295u % 32u), arg_1.d));
    let var_3 = func_1();
    var var_4 = vec3<u32>(u_input.d.x, reverseBits(~(~1u)), abs(1u));
    return _wgslsmith_div_u32(firstLeadingBit(min(u_input.b ^ 0u, _wgslsmith_add_u32(var_4.x, var_4.x))) >> (~37607u % 32u), ~(18548u & (select(u_input.d.x, u_input.a.x, false) & (40971u << (var_4.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | (u_input.d.x >= ~firstTrailingBit(abs(0u)));
    var_0 = all(vec2<bool>(select(false, true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), false));
    let var_1 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.e, u_input.e, u_input.e, ~u_input.e), countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c.x, 0i, -29491i), vec4<i32>(u_input.c.x, 2451i, u_input.c.x, u_input.c.x)))), vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(u_input.e, u_input.e), 14214i, -67130i, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, -2981i) << (1u % 32u), abs(u_input.c.x))), vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, (u_input.c.x ^ u_input.e) >> (~0u % 32u)));
    let var_2 = vec2<u32>(u_input.b, _wgslsmith_add_u32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-260f))), Struct_1(vec2<bool>(true, true), ~var_1.yzw, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 229f, 101f, 746f))), i32(-1i) * -5328i), vec4<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, false, false)), true), func_4(func_1(), var_1)), u_input.b));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(408f, 119f, 753f, -1000f) - vec4<f32>(1164f, 176f, 2247f, 1297f)))))), 37869u);
}

