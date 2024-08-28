struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(33010u, 8241u), vec2<f32>(-453f, -197f), true), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 43037u), vec2<f32>(-1000f, 720f), false), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(8716u, 20673u), vec2<f32>(-1132f, 275f), false), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(34918u, 90738u), vec2<f32>(-514f, -1120f), true));

var<private> global2: vec3<f32> = vec3<f32>(316f, 1387f, -705f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = arg_3.a;
    var var_1 = Struct_1(arg_3.c, reverseBits(~vec2<u32>(~u_input.a.x, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.xy))), all(vec3<bool>(!(!arg_3.b), arg_2 && true, all(arg_3.c.xy))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, -1000f))))), global2.xx, var_1.a.zy)));
    let var_3 = Struct_2(Struct_1(arg_3.c, ~arg_3.d.zy, var_1.c, !(!var_1.a.x)), 1i, select(arg_3.d.zx, u_input.a, var_1.a.wz), !(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(15176i, arg_0.x, arg_3.a, arg_3.a), vec4<i32>(arg_3.a, 52906i, arg_0.x, 9960i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -1i, arg_0.x, arg_0.x), vec4<i32>(arg_3.a, -9632i, 734i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_3.a))) == -1i));
    var var_4 = false;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(~1u, var_1.b.x >> (1u % 32u)), arg_1), ~vec2<u32>(_wgslsmith_clamp_u32(46535u, abs(arg_3.d.x), max(46977u, u_input.c)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(4294967295u, var_3.a.b.x))));
}

fn func_2() -> vec4<i32> {
    return ~(-(~firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -39098i))) << (~vec4<u32>(38577u, func_3(vec2<i32>(0i, 1i), u_input.c, false, Struct_4(44833i, false, vec4<bool>(false, true, true, true), vec4<u32>(1u, 0u, 0u, 4294967295u))), _wgslsmith_div_u32(u_input.c, 1u), u_input.a.x) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = vec2<u32>(select(u_input.a.x, arg_0.b.x & arg_0.b.x, ((-321f < arg_0.c.x) != true) || (true || any(vec2<bool>(arg_0.a.x, true)))), 17548u);
    var_0 = firstTrailingBit(~vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~54581u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, 842f)))))), true)));
    let var_2 = !vec4<bool>(arg_0.a.x, true, 12937u > ~u_input.a.x, true);
    let var_3 = countOneBits(10705i);
    return !var_2;
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(Struct_1(!vec4<bool>(true, true, global2.x < 1637f, true), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(5291u, 12531u)) >> (~u_input.a % vec2<u32>(32u)), reverseBits(firstLeadingBit(u_input.a))), _wgslsmith_f_op_vec2_f32(global2.yx - vec2<f32>(global2.x, _wgslsmith_div_f32(global2.x, 1037f))), true), func_2(), global2.yx);
    var var_1 = firstTrailingBit(countOneBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 67949u), u_input.c >> (30716u % 32u), _wgslsmith_mod_u32(29599u, firstLeadingBit(0u)))));
    var var_2 = ~vec2<u32>(_wgslsmith_mod_u32(var_1.x, 47299u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, ~34316u, 51168u >> (u_input.a.x % 32u)), ~vec3<u32>(u_input.c, 37281u, 64096u) << (vec3<u32>(u_input.a.x, 14130u, var_1.x) % vec3<u32>(32u))));
    global0 = var_0.x;
    var var_3 = 7967i;
    return Struct_4(-(i32(-1i) * -53503i), any(!vec3<bool>(var_0.x, true, any(vec2<bool>(false, false)))), !(!vec4<bool>(true, global2.x <= -752f, var_0.x, true)), ~vec4<u32>(var_1.x ^ var_2.x, 23658u, 26772u, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c, u_input.c, 34357u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.c))), vec4<u32>(~0u, 0u, ~50372u, reverseBits(0u))), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.b, 20763u, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.a.x, 4294967295u), vec4<u32>(64626u, 7141u, u_input.b, 42269u)))) ^ ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.a.x) & firstTrailingBit(vec4<u32>(u_input.c, 4294967295u, 0u, u_input.b)), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.b), vec4<u32>(13381u, ~u_input.b, select(4294967295u, u_input.b, true), ~u_input.c));
    var var_1 = func_1();
    var var_2 = Struct_2(Struct_1(var_1.c, vec2<u32>(1u, ~4294967295u >> (~u_input.a.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1484f, global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1094f)), (!var_1.b && false) & var_1.c.x), var_1.a, var_1.d.yx, func_1().b);
    var var_3 = Struct_1(select(!select(vec4<bool>(var_1.c.x, var_1.b, false, var_1.b), !var_1.c, vec4<bool>(true, var_1.c.x, true, false)), var_2.a.a, var_1.b), vec2<u32>(4294967295u, _wgslsmith_div_u32(79967u, ~u_input.b >> (var_2.c.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.c)), var_2.a.d);
    global0 = true || var_2.d;
    global0 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c.x), var_2.a.c.x, var_1.b))), func_1().d, var_2.a.c);
}

