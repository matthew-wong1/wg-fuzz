struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = -(vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -20647i), vec3<i32>(u_input.b, 58632i, 1i), vec3<i32>(u_input.b, -1i, u_input.b)), -vec3<i32>(u_input.b, u_input.b, -2147483647i)), -firstLeadingBit(32773i)) << ((u_input.c.yyx | ~_wgslsmith_clamp_vec3_u32(u_input.c.yxw, vec3<u32>(20919u, u_input.e, 1u), u_input.d.wwy)) % vec3<u32>(32u)));
    var var_1 = arg_0.xyw;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(422f, var_1.x) - -995f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-730f - arg_0.x))) - arg_0.yz));
    let var_3 = !(true & select(_wgslsmith_f_op_f32(f32(-1f) * -885f) >= _wgslsmith_f_op_f32(floor(var_2.x)), true, any(vec2<bool>(true, false)) || any(vec3<bool>(false, true, false))));
    let var_4 = Struct_1(~vec4<i32>(u_input.b, 1i, reverseBits(-1i) ^ _wgslsmith_sub_i32(u_input.b, var_0.x), _wgslsmith_mult_i32(1i, var_0.x >> (4294967295u % 32u))), (firstTrailingBit(var_0.x) ^ u_input.b) > min(~(~14457i), var_0.x), arg_0);
    return var_4.a;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(true, Struct_1(func_3(vec4<f32>(_wgslsmith_f_op_f32(abs(731f)), 1000f, _wgslsmith_div_f32(1034f, 1000f), _wgslsmith_f_op_f32(min(-1183f, 492f)))), arg_2.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-837f, -1601f, 1428f, -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(abs(830f));
    let var_2 = -vec2<i32>(reverseBits(u_input.b), _wgslsmith_clamp_i32(select(var_0.b.a.x, 0i, true) << (~u_input.a.x % 32u), u_input.b, _wgslsmith_mod_i32(arg_0, -arg_0)));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(var_0.b.c));
    var var_4 = var_0.b;
    return Struct_2(true, Struct_1(vec4<i32>(~(var_4.a.x << (4294967295u % 32u)), ~8518i, 12939i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_4.a.x, 1i), -vec2<i32>(-1i, 2147483647i))), any(arg_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(724f, 2196f, 1000f, 1000f) * var_4.c)), _wgslsmith_f_op_vec4_f32(var_0.b.c - vec4<f32>(var_4.c.x, var_3.x, var_0.b.c.x, var_4.c.x)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_div_i32(1i, -u_input.b), _wgslsmith_mod_vec3_u32(u_input.c.zww, _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(u_input.d.zxy, u_input.d.wxx)), abs(u_input.c.wzz) << (u_input.c.wwx % vec3<u32>(32u)), ~(~vec3<u32>(0u, 0u, 76699u)))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), true);
    var_0 = func_2(var_0.b.a.x, vec3<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(15619u, u_input.d.x, u_input.d.x), u_input.c.yyw, var_0.b.b), ~u_input.d.xxw), reverseBits(68645u), ~u_input.c.x), vec2<bool>(false, any(select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, false))) | false), !var_0.b.b);
    let var_1 = ~vec4<u32>(u_input.d.x, 1u, 61877u, firstTrailingBit(4294967295u));
    var var_2 = firstTrailingBit(4294967295u);
    var var_3 = (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(u_input.c, var_1, false), u_input.d), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 12175u)) >> (vec4<u32>(max(~var_1.x, 1u), u_input.c.x, u_input.d.x, var_1.x) % vec4<u32>(32u))) & ~u_input.c;
    return func_2(u_input.b, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(39361u, 15612u), ~u_input.c.x), reverseBits(~u_input.c.wxx)), u_input.c.wwy), vec2<bool>(any(!(!vec4<bool>(false, var_0.b.b, true, false))), ~u_input.c.x <= 42796u), true).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-1478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(648f, -1448f)) + _wgslsmith_f_op_f32(abs(-615f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(424f, -626f) * -1000f) - -432f)));
    let var_1 = _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.e, 22717u, _wgslsmith_sub_u32(~1u, ~u_input.d.x), _wgslsmith_mod_u32(~4294967295u, u_input.c.x)));
    let var_2 = func_1(0i);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.c.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(305f, var_2.c.x) - vec2<f32>(-420f, var_2.c.x))))));
    let var_3 = reverseBits(select(-_wgslsmith_add_vec3_i32(var_2.a.xxw, var_2.a.yzy) | abs(var_2.a.zxx), ~vec3<i32>(1i, func_1(var_2.a.x).a.x, 1i), select(vec3<bool>(false, any(vec3<bool>(true, false, var_2.b)), true), !select(vec3<bool>(true, var_2.b, true), vec3<bool>(true, var_2.b, var_2.b), vec3<bool>(false, var_2.b, true)), select(vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(var_2.b, true, false)))));
    let var_4 = func_1(var_2.a.x >> (~(var_1.x >> (4294967295u % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), var_1.xz)), 1u, _wgslsmith_clamp_u32(select(var_1.x, 4294967295u, false), u_input.d.x, 4294967295u))));
}

