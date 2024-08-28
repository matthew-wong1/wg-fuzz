struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
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

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: u32) -> vec3<u32> {
    global0 = 1i;
    return vec3<u32>(1u, ~arg_0.e.a, arg_0.e.b.x);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_1 = Struct_3(arg_1, arg_1.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-206f, arg_1.c, arg_1.a.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, arg_1.c, 622f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.x, arg_1.c, arg_1.d.x))))))));
    var var_2 = false;
    var var_3 = Struct_2(var_1.a.d, Struct_1(105042u, firstTrailingBit(reverseBits(func_3(Struct_2(vec2<f32>(var_1.c.x, -1179f), Struct_1(4294967295u, vec3<u32>(4294967295u, 1u, 19445u)), arg_1.a.x, arg_1.a, arg_1.b), var_1.a.d.x, 4294967295u, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(ceil(-1190f)))) - -1014f), var_1.a.d, arg_1.e);
    let var_4 = _wgslsmith_add_vec3_i32(abs(u_input.c.wxy), vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-41035i, u_input.c.x), firstLeadingBit(1i)), u_input.c.x, 1i));
    return _wgslsmith_f_op_f32(floor(1573f));
}

fn func_1() -> u32 {
    global0 = -u_input.c.x;
    global0 = 14587i;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(29157u, Struct_2(vec2<f32>(1000f, -100f), Struct_1(1u, u_input.b.wxw), 881f, vec2<f32>(-1420f, -356f), Struct_1(4294967295u, u_input.b.wwz)))), _wgslsmith_f_op_f32(abs(797f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + 1215f))) + 1152f)), -1146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-972f)) * -988f), 247f);
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec2_i32(-u_input.c.wz, u_input.c.zx)), reverseBits(-2147483647i) >> ((53274u & func_3(Struct_2(var_0.zw, Struct_1(u_input.a, u_input.b.yxw), var_0.x, vec2<f32>(var_0.x, 728f), Struct_1(u_input.b.x, vec3<u32>(47870u, 14181u, 5091u))), 1433f, 24916u, u_input.d.x).x) % 32u)), u_input.c.x);
    global0 = 2147483647i;
    return abs(_wgslsmith_add_u32(~(4294967295u >> (u_input.d.x % 32u)) << (4294967295u % 32u), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = -1i;
    var var_1 = max(u_input.d.x, u_input.d.x) >> (u_input.d.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1053f))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(-334f)), 1256f);
    var_1 = ~func_1();
    global0 = ~(u_input.c.x << (abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(u_input.b.x, u_input.b.x))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.c.x, ~u_input.c.x) | firstTrailingBit(u_input.c.x << (u_input.a % 32u)), _wgslsmith_mod_i32(-17584i, u_input.c.x)));
}

