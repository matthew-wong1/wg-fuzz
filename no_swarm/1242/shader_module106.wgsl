struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_5(Struct_1((_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.x, arg_1.b.x), vec2<u32>(69737u, 46864u), u_input.b.yy) | vec2<u32>(u_input.b.x, u_input.b.x)) << (vec2<u32>(_wgslsmith_add_u32(arg_1.b.x, arg_1.b.x), countOneBits(arg_1.b.x)) % vec2<u32>(32u))));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(max(~(~u_input.b), vec4<u32>(min(u_input.a.x, 1u), ~0u, ~17434u, _wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.zy))), u_input.b, ~(~vec4<u32>(4294967295u, 13851u, u_input.a.x, u_input.b.x)));
    global0 = Struct_4(global0.a);
    let var_2 = Struct_3(var_0.a, !(~_wgslsmith_add_i32(arg_1.a, -2147483647i) > abs(-19001i)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.x, min(0u, 1u), max(var_0.a.a.x, arg_1.b.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.b.x, var_1.x, var_0.a.a.x), ~vec3<u32>(var_0.a.a.x, 1u, u_input.b.x))), reverseBits(abs(u_input.b.zxx))), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), Struct_1(u_input.b.zw));
    var_1 = ~(~vec4<u32>(~(u_input.b.x & 40150u), ~arg_1.b.x, var_1.x, 9893u ^ (0u & arg_1.b.x)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) + _wgslsmith_f_op_f32(floor(arg_1.c.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(219f)), _wgslsmith_f_op_f32(sign(-290f)))))));
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1410f))));
    let var_0 = global0.a;
    global0 = Struct_4(_wgslsmith_f_op_f32(-508f + _wgslsmith_f_op_f32(select(-243f, _wgslsmith_f_op_f32(func_3(-u_input.c, Struct_2(1i, u_input.b.zyy, vec4<f32>(global0.a, global0.a, 589f, -616f), vec2<bool>(false, true), vec3<i32>(2147483647i, arg_1, arg_0)))), true))));
    let var_1 = reverseBits(~min(vec3<i32>(-17589i, 1i, arg_0 >> (u_input.b.x % 32u)), vec3<i32>(-7851i, _wgslsmith_mult_i32(arg_1, 27311i), _wgslsmith_add_i32(u_input.c, 0i))));
    global0 = Struct_4(global0.a);
    return 24972u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_5) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i << (1u % 32u), 0i << (arg_3.a.a.x % 32u)) ^ u_input.c, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, 1i), 32412i)), vec3<u32>(reverseBits(1u | ~arg_0.a.x), func_2(u_input.c, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, u_input.c, 0i, -29208i)), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c))), 58265u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), global0.a, _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a)))), arg_1.yz, select(vec3<i32>(~(-19489i), u_input.c << (arg_3.a.a.x % 32u), -u_input.c) & min(firstTrailingBit(vec3<i32>(u_input.c, -1i, u_input.c)), vec3<i32>(-18565i, -1i, -20885i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(20489i, 0i, -1i), vec3<i32>(16389i, 0i, u_input.c)), ~(~vec3<i32>(u_input.c, u_input.c, u_input.c))), false));
    var var_1 = arg_3;
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0i, Struct_2(2641i, _wgslsmith_add_vec3_u32(var_0.b, u_input.b.zyy), var_0.c, !vec2<bool>(var_0.d.x, false), var_0.e)))));
    var var_2 = arg_1;
    let var_3 = Struct_2(u_input.c, vec3<u32>(23058u, var_0.b.x, 0u), var_0.c, vec2<bool>(_wgslsmith_dot_vec2_i32(var_0.e.zx, var_0.e.zx) > -1i, false), vec3<i32>(-(~(~u_input.c)), -((var_0.a ^ -14454i) ^ min(var_0.e.x, var_0.a)), min(u_input.c, var_0.e.x)));
    return Struct_4(-139f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_f32(-598f + global0.a));
    global0 = func_1(Struct_1(u_input.a), vec3<bool>(-47263i <= u_input.c, -49035i > _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 5099i, u_input.c, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -19451i, 31899i, u_input.c), vec4<i32>(0i, 0i, -2147483647i, u_input.c), vec4<i32>(2147483647i, 29227i, u_input.c, u_input.c))), false), true, Struct_5(Struct_1(countOneBits(u_input.b.wz))));
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(653f, -739f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(223f, 1737f))))) + vec2<f32>(-1607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c, Struct_2(9714i, u_input.b.zyy, vec4<f32>(2956f, global0.a, global0.a, 1000f), vec2<bool>(false, false), vec3<i32>(u_input.c, u_input.c, u_input.c)))))))));
    var var_1 = Struct_1(~(~vec2<u32>(0u, 66721u)));
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1011f, -1362f)))) - var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(454f, 715f, -1025f, 644f), ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 4294967295u)), ~u_input.b)));
}

