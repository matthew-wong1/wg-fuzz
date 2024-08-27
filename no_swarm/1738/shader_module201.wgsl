struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
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

var<private> global0: array<vec2<f32>, 9>;

var<private> global1: vec2<i32> = vec2<i32>(-23959i, -1i);

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: vec3<bool>) -> vec3<i32> {
    global1 = -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -8683i, 48906i), vec3<i32>(global1.x, global1.x, global1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-27025i, 15560i, 18210i), vec3<i32>(-2147483647i, -14181i, global1.x))), -2147483647i), reverseBits(vec2<i32>(global1.x, -1i) >> (~vec2<u32>(u_input.a.x, global2.x) % vec2<u32>(32u))));
    let var_0 = Struct_3(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.b.x), -1000f))))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global1.x, arg_1, global1.x), vec3<i32>(arg_1, 20600i, arg_1) & vec3<i32>(-70534i, arg_1, 47575i)) ^ vec3<i32>(global1.x, _wgslsmith_div_i32(-2147483647i, global1.x), _wgslsmith_mult_i32(global1.x, 1i)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, arg_1, global1.x), vec3<i32>(global1.x, 18360i, global1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, -47558i), vec3<i32>(arg_1, arg_1, 2147483647i), vec3<i32>(0i, arg_1, arg_1)), abs(vec3<i32>(-10445i, 32089i, 18432i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-24937i, global1.x, global1.x), vec3<i32>(2147483647i, arg_1, 30435i), vec3<i32>(1i, global1.x, global1.x)) | (vec3<i32>(global1.x, arg_1, global1.x) << (u_input.b.wzz % vec3<u32>(32u))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(~arg_0.c.a, select(~vec2<u32>(arg_0.c.a.x, global2.x), var_0.a.a << (vec2<u32>(4294967295u, 18517u) % vec2<u32>(32u)), vec2<bool>(arg_2.x, arg_0.b.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.a.b.x, 1528f) * var_0.a.b) * vec4<f32>(var_0.b, var_0.b, arg_0.c.b.x, -307f))))));
    let var_2 = u_input.b;
    global0 = array<vec2<f32>, 9>();
    return firstTrailingBit(vec3<i32>(-27524i ^ min(_wgslsmith_add_i32(var_0.c.x, global1.x), i32(-1i) * -2147483647i), var_0.c.x, abs(var_0.c.x)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_4 {
    return Struct_4(true || all(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_5 {
    global2 = u_input.a;
    let var_0 = _wgslsmith_dot_vec2_u32(global2.zx, firstLeadingBit(~_wgslsmith_mult_vec2_u32(abs(arg_0), vec2<u32>(62085u, arg_0.x) >> (vec2<u32>(48659u, 31614u) % vec2<u32>(32u)))));
    let var_1 = func_3(_wgslsmith_add_vec2_i32(-(~vec2<i32>(global1.x, global1.x)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, global1.x), global1.x), reverseBits(-global1.x))), _wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(func_2(Struct_5(0u, Struct_4(true), Struct_1(arg_1, vec4<f32>(-499f, 2051f, 198f, 696f))), global1.x, vec3<bool>(true, false, true)), _wgslsmith_div_vec3_i32(vec3<i32>(global1.x, global1.x, 19905i), vec3<i32>(global1.x, global1.x, 0i))), vec3<i32>(-global1.x, max(_wgslsmith_add_i32(global1.x, global1.x), global1.x), _wgslsmith_sub_i32(global1.x & global1.x, max(-1i, global1.x)))));
    global1 = vec2<i32>(select(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-40967i, global1.x, 0i, -4497i), vec4<i32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-8047i, -24998i, -1i, global1.x), vec4<i32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(34851i, global1.x)), -vec2<i32>(global1.x, global1.x)), false) >> (abs(15349u) % 32u), firstLeadingBit(0i));
    let var_2 = ~(arg_1.x >> (~arg_1.x % 32u));
    return Struct_5(var_0, func_3(vec2<i32>(~global1.x, -61001i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, global2.x), max(u_input.b.zz, vec2<u32>(var_2, global2.x))) % vec2<u32>(32u)), vec3<i32>(1i, global1.x | -global1.x, min(-2147483647i, firstTrailingBit(global1.x)))), Struct_1(~(~vec2<u32>(u_input.b.x, 6679u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_1(vec2<u32>(1u, 36543u), arg_3.a.a).b.a;
    return func_1(_wgslsmith_div_vec2_u32(~u_input.a.zy, arg_1.c.a), arg_1.c.a).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, -1i) << (abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 86597u), ~u_input.b.yx)) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(37997i, _wgslsmith_clamp_i32(2147483647i, reverseBits(-1i), 4690i))));
    let var_0 = vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, any(select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))));
    var var_1 = Struct_2(func_4(_wgslsmith_mod_u32(~(~u_input.a.x), u_input.b.x), func_1(min(~global2.xz, _wgslsmith_sub_vec2_u32(global2.zz, vec2<u32>(u_input.b.x, u_input.b.x))), select(select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, global2.x), true), global2.xy, select(vec2<bool>(false, false), vec2<bool>(var_0.x, false), var_0.x))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-5405i, 1i, global1.x)), vec3<i32>(global1.x, i32(-1i) * -2147483647i, ~global1.x)), Struct_3(Struct_1(abs(vec2<u32>(1u, 27641u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-861f, -709f, 433f, 740f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(637f, -498f) - _wgslsmith_f_op_f32(1012f - -2927f)), -reverseBits(vec3<i32>(-2147483647i, 45458i, -35183i)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(firstTrailingBit(u_input.a.yx), ~(~vec2<u32>(global2.x, 51380u))).c.b.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.a.b * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.a.b.x)), var_1.a.b.x, 617f, var_1.a.b.x), vec4<f32>(-1966f, -536f, -774f, _wgslsmith_f_op_f32(exp2(var_1.a.b.x))), var_0.x))), _wgslsmith_f_op_vec4_f32(var_1.a.b + func_4(1u, Struct_5(u_input.a.x, Struct_4(var_0.x), func_4(global2.x, Struct_5(var_1.a.a.x, Struct_4(true), Struct_1(vec2<u32>(64679u, 4294967295u), var_1.a.b)), vec3<i32>(1i, -2147483647i, global1.x), Struct_3(Struct_1(u_input.b.wx, var_1.a.b), -830f, vec3<i32>(-1i, -59058i, global1.x)))), ~vec3<i32>(2147483647i, -2147483647i, 15995i) | (vec3<i32>(1i, 1i, 0i) | vec3<i32>(global1.x, -2147483647i, 18621i)), Struct_3(var_1.a, _wgslsmith_f_op_f32(ceil(var_1.a.b.x)), func_2(Struct_5(59511u, Struct_4(var_0.x), var_1.a), 6316i, var_0.wwy))).b), var_0.x));
    var_2 = -402f;
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f * var_1.a.b.x)))));
}

