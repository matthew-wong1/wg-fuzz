struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_0.a, _wgslsmith_div_vec3_f32(arg_0.b, global0.b), vec2<bool>(arg_0.c.x, true));
    return Struct_1(_wgslsmith_sub_vec3_i32(-global0.a, _wgslsmith_sub_vec3_i32(arg_0.a, arg_0.a)) ^ ~arg_0.a, global0.b, arg_0.c);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_2(!arg_1, vec4<bool>(any(select(arg_0.b.b.zyw, arg_0.b.b.zzy, arg_0.b.b.x)) & ((arg_0.c == 1146f) != all(arg_0.b.b.wxw)), true, global0.c.x, false));
    global1 = array<vec2<i32>, 17>();
    var var_1 = Struct_4(!select(vec3<bool>(global0.c.x, !var_0.b.x, arg_0.b.b.x), select(select(vec3<bool>(true, true, global0.c.x), var_0.b.ywx, true), select(arg_0.b.b.yyy, arg_0.b.b.zwz, arg_1), var_0.b.yyz), !all(arg_0.b.b.zyx)), ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_0.a, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 1u), vec2<u32>(1u, 8600u)) | select(vec2<u32>(4294967295u, arg_0.a), vec2<u32>(arg_0.a, u_input.a), true)));
    var var_2 = !(!select(select(!vec3<bool>(false, arg_1, true), vec3<bool>(var_0.b.x, arg_0.b.a, false), select(var_1.a, vec3<bool>(global0.c.x, arg_0.b.a, false), var_1.a)), vec3<bool>(true, false, true), select(vec3<bool>(false, arg_0.b.a, false), select(vec3<bool>(global0.c.x, false, false), var_1.a, var_1.a), any(var_0.b.zw))));
    var var_3 = func_1(func_1(func_1(Struct_1(u_input.c ^ vec3<i32>(global0.a.x, global0.a.x, -31705i), global0.b, vec2<bool>(arg_1, arg_1)))));
    return ~_wgslsmith_div_vec4_u32(vec4<u32>(~var_1.b.x, firstTrailingBit(4294967295u), arg_0.a, firstTrailingBit(0u)), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(var_1.b.x, var_1.b.x, 16780u, 4294967295u)), vec4<u32>(29254u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(7690u, 0u, arg_0.a, 1u), vec4<u32>(u_input.a, var_1.b.x, arg_0.a, 4294967295u)), arg_0.a)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3) -> i32 {
    var var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(23853u, u_input.a, 1u, arg_2.a)), max(func_3(Struct_3(arg_2.a, arg_2.b, arg_2.c), true, global0.b.zy, vec2<f32>(529f, global0.b.x)), ~vec4<u32>(45995u, arg_2.a, 1u, arg_2.a))), 0u, arg_2.a, ~max(838u, 1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(ceil(-540f)), _wgslsmith_f_op_f32(f32(-1f) * -1110f), func_1(Struct_1(vec3<i32>(u_input.b.x, 87678i, -14920i), global0.b, arg_2.b.b.wy)).b.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(-443f)), _wgslsmith_f_op_f32(-480f + -458f), _wgslsmith_f_op_f32(-1293f * global0.b.x), arg_2.c), vec4<f32>(_wgslsmith_f_op_f32(arg_2.c - global0.b.x), _wgslsmith_f_op_f32(min(-1329f, -449f)), _wgslsmith_f_op_f32(min(arg_2.c, -994f)), 1142f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1184f, _wgslsmith_f_op_f32(trunc(global0.b.x)), -856f))), arg_1));
    var var_2 = 2147483647i;
    var var_3 = func_3(arg_2, arg_2.b.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-109f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(arg_2.c - var_1.x)))))), _wgslsmith_div_vec2_f32(func_1(Struct_1(global0.a, _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 1000f, -756f), var_1.wwy), !global0.c)).b.zy, _wgslsmith_f_op_vec2_f32(var_1.xx + vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_2.c))))).wy;
    let var_4 = Struct_2(true, arg_2.b.b);
    return min(-1i, 1i);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: f32) -> StorageBuffer {
    let var_0 = vec3<bool>(false, func_1(Struct_1(_wgslsmith_clamp_vec3_i32(u_input.b.wzy, vec3<i32>(u_input.b.x, 0i, -4747i), u_input.b.zyy), vec3<f32>(1184f, -325f, global0.b.x), vec2<bool>(false, true))).a.x == 2147483647i, arg_1 != arg_1);
    let var_1 = Struct_4(select(!(!var_0), !select(!vec3<bool>(false, global0.c.x, false), var_0, true), global0.c.x), _wgslsmith_add_vec2_u32((vec2<u32>(4294967295u, 87001u) ^ vec2<u32>(arg_1, u_input.a)) >> (select(vec2<u32>(69557u, 79739u), vec2<u32>(u_input.a, arg_1), false) % vec2<u32>(32u)), vec2<u32>(min(u_input.a, u_input.a), 16517u)) | _wgslsmith_mult_vec2_u32(~vec2<u32>(11407u, u_input.a), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1, u_input.a), ~vec2<u32>(24022u, u_input.a))));
    let var_2 = Struct_2(true, !(!select(select(vec4<bool>(var_1.a.x, var_0.x, global0.c.x, global0.c.x), vec4<bool>(false, var_0.x, false, false), global0.c.x), select(vec4<bool>(var_0.x, true, global0.c.x, false), vec4<bool>(var_1.a.x, false, true, false), vec4<bool>(false, global0.c.x, var_1.a.x, true)), vec4<bool>(global0.c.x, true, false, var_1.a.x))));
    let var_3 = vec3<u32>(~_wgslsmith_clamp_u32(var_1.b.x, u_input.a, ~4294967295u & (arg_1 << (7266u % 32u))), u_input.a, var_1.b.x);
    global1 = array<vec2<i32>, 17>();
    return StorageBuffer(var_3.x, vec2<u32>(~abs(_wgslsmith_sub_u32(var_1.b.x, var_1.b.x)), var_1.b.x), global0.b.x, global0.b, func_1(func_1(func_1(Struct_1(u_input.b.xww, vec3<f32>(534f, 1000f, arg_0), global0.c)))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 17>();
    global0 = func_1(Struct_1(-(countOneBits(vec3<i32>(-25266i, u_input.c.x, u_input.c.x)) & _wgslsmith_mult_vec3_i32(global0.a, global0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.b))), vec2<bool>(_wgslsmith_div_u32(u_input.a, 4294967295u) < 759u, global0.c.x)));
    var var_0 = Struct_4(!select(select(!vec3<bool>(global0.c.x, false, true), !vec3<bool>(global0.c.x, true, false), global0.c.x), select(select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), vec3<bool>(true, global0.c.x, false), vec3<bool>(false, false, true)), vec3<bool>(global0.c.x, global0.c.x, global0.c.x), !vec3<bool>(global0.c.x, false, global0.c.x)), global0.c.x), reverseBits(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), max(vec2<u32>(u_input.a, 94860u), vec2<u32>(70689u, u_input.a)))));
    let var_1 = vec2<f32>(1f, global0.b.x);
    let var_2 = _wgslsmith_mod_i32(1i, global0.a.x);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + global0.b.x) - global0.b.x)), var_0.b.x, -_wgslsmith_mult_i32(~func_2(true, vec4<bool>(true, var_0.a.x, global0.c.x, true), Struct_3(3445u, Struct_2(true, vec4<bool>(true, false, true, false)), var_1.x)), _wgslsmith_sub_i32(-global0.a.x, i32(-1i) * -18934i)), global0.b.x);
}

