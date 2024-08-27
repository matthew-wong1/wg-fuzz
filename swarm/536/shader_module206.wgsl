struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = 21973u;
    var_0 = (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, 26994u)), vec2<u32>(4294967295u, min(u_input.b.x, 47235u))) ^ abs(1u)) | u_input.b.x;
    var_0 = 0u;
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    var_1 = !(!(!vec3<bool>(!var_1.x, true, false)));
    return ~7118u;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_3(false, Struct_1(~u_input.a, u_input.b.wyw | u_input.b.wyz, min(~(-vec3<i32>(arg_0, arg_0, u_input.a.x)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-2771i, u_input.a.x, 10582i)), -vec3<i32>(1i, -28736i, arg_0)))), firstLeadingBit(1u) > u_input.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-698f)))));
    let var_1 = ~var_0.b.b.x;
    var var_2 = Struct_3(!all(!vec2<bool>(true, var_0.a)), var_0.b, _wgslsmith_mod_u32(func_3(i32(-1i) * -34979i), var_0.b.b.x) >= min(func_3(firstLeadingBit(18940i)), ~var_1), var_0.d);
    var var_3 = !(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(21196i, var_2.b.c.x)), u_input.a) > -15631i);
    var_2 = Struct_3(firstLeadingBit(select(_wgslsmith_clamp_i32(u_input.a.x, 23905i, -2147483647i), _wgslsmith_div_i32(2147483647i, u_input.a.x), any(vec4<bool>(var_2.a, false, false, false)))) != _wgslsmith_div_i32(abs(var_2.b.a.x), min(var_2.b.a.x, reverseBits(arg_0))), Struct_1(~var_0.b.c.yz, _wgslsmith_clamp_vec3_u32(~(var_0.b.b | u_input.b.zwx), vec3<u32>(1u, 0u, u_input.b.x & var_0.b.b.x), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, var_0.b.b.x, 4294967295u), vec3<u32>(13691u, 28235u, u_input.b.x)))), _wgslsmith_add_vec3_i32(~var_2.b.c, var_0.b.c | vec3<i32>(-85807i, -14690i, var_2.b.c.x))), false, var_0.d);
    return Struct_2(~_wgslsmith_mod_i32(15951i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, -1i), reverseBits(var_0.b.a.x))), !(countOneBits(u_input.a.x) > -38163i), !((min(var_2.b.a.x, u_input.a.x) | var_0.b.c.x) >= var_0.b.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> bool {
    let var_0 = !(!arg_3.b);
    var var_1 = arg_0;
    var_1 = Struct_2(abs(~22126i), false, select(false, var_0.x, all(var_0.zx)));
    let var_2 = Struct_3(all(select(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_0.c, arg_1, true, true), !arg_0.c), vec4<bool>(var_1.b, !var_1.c, arg_3.a >= arg_3.a, true), any(vec2<bool>(false, var_0.x)))), arg_3.d, all(select(select(select(var_0.zy, arg_3.b.zy, vec2<bool>(true, true)), var_0.xx, true), !(!arg_3.b.yy), arg_3.a == _wgslsmith_f_op_f32(f32(-1f) * -346f))), arg_3.a);
    let var_3 = var_2;
    return 20212u == firstLeadingBit(countOneBits(~_wgslsmith_add_u32(39010u, var_3.b.b.x)));
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, u_input.b.yyy, countOneBits(reverseBits(-max(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(-1i, u_input.a.x, -29362i)))));
    let var_1 = select(vec3<bool>(arg_0, !any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)) == arg_0, false), select(select(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, false), arg_0), vec3<bool>(true, true, true), false), vec3<bool>(any(vec4<bool>(true, false, arg_0, false)), all(vec3<bool>(false, arg_0, arg_0)), arg_0), !select(vec3<bool>(false, arg_0, false), vec3<bool>(true, arg_0, true), true)), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0))), false, true), ~func_3(u_input.a.x) >= u_input.b.x), !vec3<bool>(func_2(max(u_input.a.x, 2147483647i)).b, true, false));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1620f))))));
    let var_3 = true;
    let var_4 = Struct_3(!all(vec2<bool>(var_1.x, false)), var_0, !var_3, _wgslsmith_f_op_f32(731f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -672f))) * var_2)));
    return Struct_1(~var_0.a, vec3<u32>(~_wgslsmith_div_u32(var_0.b.x, var_4.b.b.x) << (max(44651u, ~var_0.b.x) % 32u), var_0.b.x, ~(~22056u)), ~(abs(_wgslsmith_div_vec3_i32(var_0.c, var_4.b.c)) | abs(var_4.b.c)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_4 {
    var var_0 = arg_0.x;
    let var_1 = func_5(func_4(func_2(~arg_1), true, arg_1, Struct_4(-2435f, vec3<bool>(true, true, true), _wgslsmith_add_i32(u_input.a.x, func_2(u_input.a.x).a), Struct_1(~u_input.a, select(vec3<u32>(31163u, u_input.b.x, 4294967295u), vec3<u32>(14479u, u_input.b.x, 4294967295u), false), firstTrailingBit(vec3<i32>(arg_1, -2147483647i, -58708i))), true)));
    var_0 = 2775u;
    var var_2 = func_2(0i);
    let var_3 = -765f;
    return Struct_4(var_3, vec3<bool>((abs(arg_0.x) < u_input.b.x) || func_2(_wgslsmith_div_i32(arg_1, var_1.a.x)).c, false, any(!vec2<bool>(var_2.b, var_2.c)) & false), _wgslsmith_sub_i32(-7850i, -func_2(11099i).a), var_1, all(select(vec3<bool>(true, var_2.c | true, true), !select(vec3<bool>(var_2.b, var_2.b, false), vec3<bool>(true, false, var_2.c), vec3<bool>(var_2.b, false, true)), !vec3<bool>(true, var_2.c, var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 855f;
    let var_1 = func_1(abs(abs(u_input.b.wxx)) ^ ~min(~vec3<u32>(10739u, 1u, 20692u), vec3<u32>(1u, u_input.b.x, u_input.b.x)), -_wgslsmith_dot_vec2_i32(~reverseBits(u_input.a), u_input.a));
    var var_2 = Struct_3(var_1.b.x, func_5(func_2(u_input.a.x).b), any(vec4<bool>(var_1.e, var_1.b.x, var_1.e != (u_input.a.x > var_1.d.c.x), !var_1.b.x)), var_1.a);
    let var_3 = var_1.d;
    var_2 = Struct_3(var_1.b.x, Struct_1(firstLeadingBit(abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.c.x, var_3.a.x), vec2<i32>(u_input.a.x, var_3.c.x)))), vec3<u32>(~_wgslsmith_mult_u32(var_1.d.b.x, var_2.b.b.x), 1u, ~0u), vec3<i32>(13589i, -33237i, -34977i)), any(select(vec4<bool>(true, true, !var_2.a, var_1.e || var_2.c), vec4<bool>(u_input.a.x <= 2147483647i, !var_2.c, true, true), !select(vec4<bool>(true, false, var_1.e, var_1.e), vec4<bool>(var_2.c, var_2.c, false, false), var_1.b.x))), -370f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.yz, var_2.b.b.x, -1906f, _wgslsmith_mult_vec3_i32(var_3.c, var_3.c), _wgslsmith_div_vec3_f32(vec3<f32>(func_1(~vec3<u32>(29848u, var_3.b.x, 4294967295u), -2147483647i).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f * 630f) - _wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-667f - var_2.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(904f, var_1.a, 131f), vec3<f32>(var_2.d, var_1.a, var_1.a), true))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, var_1.a, var_2.d), vec3<f32>(var_2.d, 221f, var_2.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, 444f, var_1.a) * vec3<f32>(1000f, -110f, 132f))))));
}

