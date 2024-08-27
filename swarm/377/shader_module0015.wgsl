struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(868f))));
    global0 = Struct_2(Struct_1(58593i < (_wgslsmith_sub_i32(7757i, u_input.b) & reverseBits(arg_1))));
    global1 = Struct_3(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(global1.a.x, global1.a.x), (global1.a.x ^ global1.a.x) & global1.a.x)), vec4<i32>(~_wgslsmith_clamp_i32(firstTrailingBit(39900i), ~arg_1, arg_1 ^ global1.b.x), global1.b.x, _wgslsmith_mult_i32(-(-1i >> (global1.a.x % 32u)), -1i), _wgslsmith_mult_i32(24969i, -_wgslsmith_div_i32(10704i, 34001i))), Struct_1(false), Struct_2(global0.a), select(vec3<bool>(global0.a.a, global1.c.a, true), global1.e, vec3<bool>(!any(vec2<bool>(true, false)), global1.e.x, global1.e.x)));
    global2 = array<Struct_2, 32>();
    let var_1 = global1.c.a;
    return -32871i;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-54010i, func_3(-347f, 2147483647i, global1.c.a | false), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global1.b, global1.b), ~global1.b), -1i)), global1.b);
    let var_1 = Struct_2(Struct_1(all(vec2<bool>(true, true))));
    global0 = Struct_2(global0.a);
    global1 = Struct_3(~vec2<u32>(~_wgslsmith_div_u32(global1.a.x, 45930u), 39304u), -global1.b, Struct_1(any(vec4<bool>(u_input.b < u_input.b, false, true, arg_0))), var_1, !global1.e);
    global1 = Struct_3(global1.a, _wgslsmith_mod_vec4_i32(-global1.b, max(vec4<i32>(3159i, firstLeadingBit(u_input.b), global1.b.x << (global1.a.x % 32u), global1.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, 2147483647i, u_input.b, u_input.a), vec4<i32>(global1.b.x, global1.b.x, u_input.a, -2147483647i) | vec4<i32>(global1.b.x, u_input.a, global1.b.x, -25921i)))), global1.d.a, Struct_2(Struct_1(select(true, any(vec3<bool>(arg_1, false, arg_1)), global1.d.a.a))), vec3<bool>(any(!vec4<bool>(true, global1.c.a, true, global0.a.a)), arg_1, !global0.a.a));
    return vec4<bool>(!((arg_0 || true) && select(true, arg_0, arg_1)) & (global0.a.a & true), any(!vec3<bool>(global1.a.x <= global1.a.x, true, true)), arg_0, arg_0);
}

fn func_1() -> i32 {
    var var_0 = vec4<bool>(true, !(!global0.a.a == global1.c.a), global0.a.a, global1.e.x);
    var_0 = !(!func_2(!any(global1.e), true));
    var_0 = !select(vec4<bool>(!(var_0.x & true), u_input.a <= ~global1.b.x, all(vec4<bool>(false, global1.d.a.a, global1.d.a.a, global0.a.a)), true), !(!(!vec4<bool>(global1.e.x, true, true, false))), true);
    global2 = array<Struct_2, 32>();
    var_0 = !select(vec4<bool>(true, false, false, true | !global0.a.a), select(select(func_2(true, global0.a.a), !vec4<bool>(global1.d.a.a, global0.a.a, true, global1.c.a), select(vec4<bool>(false, false, global1.e.x, true), vec4<bool>(global0.a.a, global1.c.a, true, var_0.x), vec4<bool>(true, global0.a.a, global1.e.x, true))), vec4<bool>(global1.a.x <= 58355u, global0.a.a & var_0.x, true, global0.a.a), vec4<bool>(true, false, any(global1.e.zz), any(vec4<bool>(false, false, false, var_0.x)))), all(var_0.xyw));
    return _wgslsmith_dot_vec3_i32(global1.b.ywy, _wgslsmith_clamp_vec3_i32(global1.b.yww, -(global1.b.yyz ^ vec3<i32>(1i, -2147483647i, -73358i)), _wgslsmith_mult_vec3_i32(-select(global1.b.xzz, global1.b.zxy, vec3<bool>(global1.e.x, global0.a.a, true)), global1.b.xxw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i ^ -select(func_1(), global1.b.x, true & (false | global0.a.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(658f, -508f, 1454f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1727f, 806f, 327f))))) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1678f, 479f, -1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(891f, -807f, 209f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1067f, -1000f, -182f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(688f, -928f, 1814f) - vec3<f32>(-347f, -943f, -856f)))))), any(!global1.e.yy)));
    global0 = Struct_2(global0.a);
    let var_2 = Struct_3(global1.a, global1.b, global1.d.a, global1.d, vec3<bool>(false, false, true));
    let var_3 = func_2(false, false).zww;
    var var_4 = ~firstTrailingBit(_wgslsmith_mult_i32(var_2.b.x & func_1(), var_2.b.x));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, vec3<u32>(~firstTrailingBit(global1.a.x), global1.a.x, countOneBits(~60748u)) >> (_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(53339u, 1u, global1.a.x)), vec3<u32>(firstLeadingBit(global1.a.x), _wgslsmith_div_u32(var_2.a.x, var_2.a.x), 2051u << (global1.a.x % 32u))) % vec3<u32>(32u)), ~vec2<i32>(~(u_input.a << (1u % 32u)), _wgslsmith_clamp_i32(~(-12653i), min(global1.b.x, -2147483647i), firstTrailingBit(var_2.b.x))), var_2.b, _wgslsmith_div_u32(_wgslsmith_div_u32(~var_2.a.x | 66876u, ~(~0u)), var_2.a.x & 0u));
}

