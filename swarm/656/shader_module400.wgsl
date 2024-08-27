struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 46756u, 60804u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = u_input.c;
    var var_1 = Struct_4(Struct_3(false, 1u, select(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), vec2<bool>(global0.x != u_input.a.x, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2389f, -1189f))))), ~(-min(_wgslsmith_div_i32(u_input.b.x, -8484i), i32(-1i) * -1i)), -vec2<i32>(~_wgslsmith_mod_i32(u_input.b.x, 2147483647i), u_input.b.x));
    let var_2 = Struct_2(var_1.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-25152i, u_input.b.x, -var_1.c.x), 1i), -62954i), vec4<bool>(true, var_1.a.c.x, true, _wgslsmith_dot_vec2_u32(~u_input.a.xx, min(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(72812u, u_input.a.x))) >= (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, var_0.x)) | var_0.x)));
    let var_3 = max(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_1.a.b, 53746u, 67494u), vec4<u32>(var_0.x, 1786u, 9639u, 30159u))), abs(~abs(vec4<u32>(u_input.c.x, 4955u, var_1.a.b, 99142u)))) >> (vec4<u32>(max(4294967295u, _wgslsmith_div_u32(global0.x, 0u) ^ u_input.c.x), 6662u, 1u, u_input.a.x) % vec4<u32>(32u));
    var var_4 = Struct_3(var_1.a.c.x, abs(var_0.x), !select(var_1.a.c, vec2<bool>(true, true), var_2.c.x), -704f);
    return _wgslsmith_f_op_f32(min(var_1.a.d, _wgslsmith_f_op_f32(max(var_4.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = vec3<u32>(max(0u, u_input.c.x | reverseBits(1u)), u_input.c.x, 1u);
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_u32(global0.x, global0.x);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())));
    var var_2 = all(select(!vec3<bool>(all(vec4<bool>(false, true, true, true)), true, all(vec3<bool>(false, false, false))), vec3<bool>(22234i == u_input.b.x, false, true), vec3<bool>(true, true, true)));
    return !vec4<bool>(select(true, true, 1f >= _wgslsmith_f_op_f32(arg_0 * -1687f)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) != arg_0, true);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = arg_2;
    global0 = u_input.a ^ _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 4294967295u, 83106u), vec4<u32>(u_input.a.x, arg_2, 1u, global0.x)), ~67482u), ~(~u_input.a)), u_input.c);
    var var_1 = Struct_2(_wgslsmith_add_i32(arg_0.b, ~(~_wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(arg_0.b, u_input.b.x)))), arg_0.b, select(!select(arg_1, func_2(-552f), true), !arg_1, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-347f + -1044f) + _wgslsmith_f_op_f32(trunc(-1152f)))).x));
    let var_2 = 1436i;
    var_1 = Struct_2(0i | select(-var_2 << (arg_2 % 32u), 2147483647i, !func_2(1000f).x), -8452i, var_1.c);
    return Struct_1(~vec2<i32>(-17806i, -1i) << (~_wgslsmith_mod_vec2_u32(u_input.c.yy, global0.zx) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-365f - 1715f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f + -1878f)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(613f, 553f, -438f, -1154f)))))), var_1.c.xwy);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = !arg_1.c | all(func_2(1f).xw);
    var var_1 = 1u;
    var var_2 = true & all(vec3<bool>(all(select(arg_1.e, arg_1.e, false)), !arg_1.e.x, true));
    let var_3 = -2574i;
    let var_4 = arg_1;
    return Struct_2(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-arg_1.a.x, -arg_1.a.x, u_input.b.x), u_input.b.yzw), _wgslsmith_mod_vec3_i32(-(~u_input.b.yzy), -abs(vec3<i32>(var_3, var_3, var_3)))), -2147483647i, select(vec4<bool>(true, false, true, any(var_4.e)), !vec4<bool>(true, var_4.b < arg_1.b, 8845u > u_input.a.x, true), vec4<bool>(arg_0.x, select(true, false & arg_0.x, false), true, 17851i >= arg_1.a.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<u32> {
    global0 = _wgslsmith_mult_vec3_u32(u_input.c, reverseBits(_wgslsmith_mod_vec3_u32(~(vec3<u32>(34242u, global0.x, 4294967295u) & vec3<u32>(global0.x, 7445u, global0.x)), ~(~u_input.a))));
    var var_0 = func_4(vec2<bool>(all(arg_1.c), !(!(!arg_1.c.x))), func_1(func_4(!vec2<bool>(arg_1.c.x, arg_1.c.x), func_1(func_4(arg_1.c.yx, Struct_1(vec2<i32>(arg_0.x, -8713i), -672f, false, vec4<f32>(-276f, -797f, 1495f, 778f), arg_1.c.xyz)), func_2(1000f), u_input.c.x)), select(func_4(func_2(1354f).ww, Struct_1(vec2<i32>(-1i, 15096i), 1470f, arg_1.c.x, vec4<f32>(815f, -1346f, 1475f, 172f), vec3<bool>(false, arg_1.c.x, arg_1.c.x))).c, vec4<bool>(arg_0.x != arg_0.x, true, false && arg_1.c.x, arg_1.c.x | true), !arg_1.c), firstLeadingBit(global0.x)));
    let var_1 = ~max(vec4<u32>(~_wgslsmith_mult_u32(global0.x, 63242u), 24872u, _wgslsmith_dot_vec4_u32(vec4<u32>(22613u, 100482u, 1u, u_input.a.x) << (vec4<u32>(global0.x, global0.x, global0.x, 43650u) % vec4<u32>(32u)), vec4<u32>(9684u, 27710u, 40024u, u_input.c.x)), ~countOneBits(global0.x)), _wgslsmith_mod_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x), vec4<u32>(1287u, 1u, 24983u, global0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global0.x, global0.x, 0u), vec4<u32>(u_input.c.x, 35243u, u_input.a.x, 15385u), vec4<u32>(global0.x, 11119u, 55178u, global0.x)), !var_0.c), vec4<u32>(u_input.a.x, select(u_input.c.x, global0.x, false), 10299u, ~u_input.c.x)));
    var var_2 = var_0.c.xzy;
    let var_3 = Struct_2(~(-var_0.b), u_input.b.x, vec4<bool>(false, func_4(!select(vec2<bool>(true, var_0.c.x), vec2<bool>(arg_1.c.x, true), var_2.x), Struct_1(u_input.b.xx, -1117f, true, vec4<f32>(-376f, 520f, 461f, -422f), func_4(var_0.c.zw, Struct_1(vec2<i32>(arg_0.x, u_input.b.x), 1242f, var_2.x, vec4<f32>(1134f, 750f, -878f, 273f), vec3<bool>(var_2.x, var_2.x, var_2.x))).c.zwy)).c.x, any(select(vec4<bool>(true, var_0.c.x, false, true), var_0.c, arg_0.x > arg_0.x)), !(!func_1(arg_1, var_0.c, 18312u).e.x)));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(1u, firstTrailingBit(4294967295u), 1u) | (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, 39969u), vec3<u32>(4272u, global0.x, global0.x)), ~var_1.xzw) | vec3<u32>(global0.x, reverseBits(u_input.a.x), u_input.c.x ^ 37989u)), firstTrailingBit(vec3<u32>(~_wgslsmith_mod_u32(global0.x, global0.x), global0.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(func_5(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(60582i, 1i, u_input.b.x, 20440i), u_input.b), u_input.b), func_4(select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), func_1(Struct_2(2147483647i, 5375i, vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, false), _wgslsmith_mod_u32(0u, global0.x)))));
    let var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_5(select(vec4<i32>(u_input.b.x, 13803i, -1i, -1i), vec4<i32>(-1i, u_input.b.x, 10541i, u_input.b.x) & vec4<i32>(-33146i, u_input.b.x, -28121i, -2147483647i), true), Struct_2(-1i, -u_input.b.x, vec4<bool>(false, false, true, true))).x, _wgslsmith_div_u32(13955u, u_input.a.x)), vec4<u32>(~var_0, u_input.c.x, ~select(103735u, ~76410u, true), ~78136u), vec4<u32>(~abs(4294967295u), var_0, _wgslsmith_div_u32(~(~u_input.a.x), global0.x), ~(~(~global0.x))));
}

