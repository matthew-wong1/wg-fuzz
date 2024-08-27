struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    var var_0 = arg_1.c;
    var_0 = abs(vec4<i32>(0i | _wgslsmith_dot_vec3_i32(countOneBits(arg_1.c.wwz), -arg_2), u_input.a, max(_wgslsmith_mod_i32(47009i, 5443i), 0i) >> (_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x) % 32u), -2147483647i));
    var_0 = arg_1.c;
    global0 = array<vec2<bool>, 18>();
    let var_1 = vec2<u32>(~(~(~7618u)), _wgslsmith_div_u32(abs(40170u), _wgslsmith_div_u32(u_input.c, u_input.c)) << (~min(u_input.b.x, u_input.c) % 32u)) >> ((~select(~vec2<u32>(1u, 1u), vec2<u32>(0u, 5088u), !global0[_wgslsmith_index_u32(u_input.c, 18u)]) << (u_input.b.xx % vec2<u32>(32u))) % vec2<u32>(32u));
    return arg_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-670f, -1000f, _wgslsmith_f_op_f32(func_2(arg_0, Struct_3(1000f, Struct_2(Struct_1(true), Struct_1(arg_0.a), Struct_1(arg_1.x), vec2<i32>(u_input.a, u_input.a)), vec4<i32>(u_input.a, 1i, u_input.a, -30851i), arg_1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, 2147483647i)), _wgslsmith_clamp_i32(27945i, 0i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f - 2096f))))));
    global0 = array<vec2<bool>, 18>();
    var var_1 = !vec4<bool>(!arg_1.x, !arg_1.x, false, arg_1.x);
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1539f))) - _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)))));
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(48728i, 13973i, -7703i), vec3<i32>(2147483647i, 9027i, -1i), vec3<i32>(u_input.a, -2147483647i, var_2)), ~vec3<i32>(var_2, u_input.a, 5603i)) == 1i), arg_0, Struct_1(all(var_1.zx)), firstLeadingBit(-(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-41473i, var_2)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = ~u_input.b.xx;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(946f))), arg_0, firstLeadingBit(~(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, 1u, 0u), vec4<u32>(76771u, var_1.x, u_input.c, var_1.x)) % vec4<u32>(32u)))), arg_0.a.a);
    return Struct_2(Struct_1(arg_0.a.a), func_1(arg_0.a, !vec4<bool>(true, false || arg_1.a, true | arg_0.c.a, select(arg_0.c.a, true, arg_0.c.a))).b, arg_1, -firstLeadingBit(vec2<i32>(64715i, ~arg_0.d.x)));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = arg_0;
    global0 = array<vec2<bool>, 18>();
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-982f, _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(910f, _wgslsmith_f_op_f32(-arg_1))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(round(-365f)), Struct_2(arg_0.b.b, Struct_1(all(select(vec4<bool>(var_0.b.b.a, arg_0.d, true, false), vec4<bool>(false, false, false, true), var_0.b.a.a))), Struct_1(true), arg_0.c.wz), arg_0.c, arg_0.b.a.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(118f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(235f)) - -924f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(232f, 1011f) * -546f))));
    let var_1 = func_4(Struct_3(953f, func_3(func_1(Struct_1(false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true)), Struct_1(true)), ~(~(~vec4<i32>(-2147483647i, u_input.a, u_input.a, 9951i))), true), -935f);
    var var_2 = func_1(Struct_1(var_1.d), vec4<bool>((_wgslsmith_f_op_f32(sign(var_0.x)) < var_0.x) & true, -u_input.a >= 1i, var_1.b.b.a, true));
    global0 = array<vec2<bool>, 18>();
    var_2 = var_1.b;
    var var_3 = vec2<i32>(var_2.d.x, _wgslsmith_div_i32(~(-2147483647i), u_input.a));
    var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

