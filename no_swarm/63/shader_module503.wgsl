struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, -1i, vec3<u32>(0u, 1380u, 54982u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_f32(arg_1.a.a.x, arg_1.a.a.x);
    var_0 = arg_1.a.a.x;
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-930f, -298f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.a.x))))), _wgslsmith_f_op_f32(step(var_1.a.x, 343f)), abs(2147483647i) >= arg_1.e)));
    var var_3 = -909f;
    return _wgslsmith_f_op_f32(sign(153f));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f * -373f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(539f, 643f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 237f)) + -395f)), _wgslsmith_f_op_f32(select(1759f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1158f))), _wgslsmith_div_u32(global0.c.x, global0.c.x) != global0.c.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1925f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-973f, -1793f)), -635f))))) * -1118f);
    let var_1 = select(vec2<bool>(global0.a, global0.a && (global0.a && select(false, global0.a, false))), select(!(!(!vec2<bool>(global0.a, global0.a))), !(!select(vec2<bool>(true, false), vec2<bool>(false, global0.a), true)), select(vec2<bool>(true, global0.a), !vec2<bool>(global0.a, true), select(select(vec2<bool>(false, false), vec2<bool>(global0.a, global0.a), global0.a), vec2<bool>(global0.a, false), vec2<bool>(true, global0.a)))), select(!(!vec2<bool>(global0.a, global0.a)), vec2<bool>(all(!vec3<bool>(global0.a, global0.a, global0.a)), any(!vec3<bool>(true, global0.a, global0.a))), all(!select(vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(false, global0.a, global0.a, global0.a), vec4<bool>(global0.a, true, true, global0.a)))));
    var var_2 = !global0.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(852f * -2496f), -727f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(824f, 731f, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -364f))))));
    return firstLeadingBit(~1u);
}

fn func_2() -> vec2<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(-27683i, abs(global0.b)), _wgslsmith_sub_vec2_i32(-vec2<i32>(~u_input.a, global0.b), ~(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, global0.b), vec2<i32>(u_input.d, global0.b)) << (~vec2<u32>(global0.c.x, 0u) % vec2<u32>(32u)))));
    global0 = Struct_3(true, abs(_wgslsmith_div_i32(-22090i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2927i, -62793i, global0.b), vec4<i32>(-1i, 20587i, -2147483647i, u_input.a)))) << (~global0.c.x % 32u), vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(6605u), func_3(), 4294967295u), _wgslsmith_sub_u32(global0.c.x, ~abs(global0.c.x)), _wgslsmith_mod_u32(abs(max(global0.c.x, 0u)), ~abs(1u))));
    global0 = Struct_3(!(-firstTrailingBit(global0.b) >= -global0.b), _wgslsmith_add_i32(_wgslsmith_sub_i32(select(select(u_input.d, -2147483647i, global0.a), u_input.c & var_1.x, any(vec2<bool>(true, global0.a))), 323i), firstLeadingBit(0i)), ~global0.c);
    var var_2 = _wgslsmith_div_vec3_i32(~(~firstLeadingBit(vec3<i32>(-369i, var_1.x, 0i))), min(countOneBits(abs(vec3<i32>(-41647i, global0.b, global0.b))), vec3<i32>(-2147483647i, u_input.b, var_1.x) & vec3<i32>(var_1.x, 56354i, 66122i))) ^ select(vec3<i32>(-2147483647i, global0.b, ~0i) << (global0.c % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(25213i, -59582i, 30288i), vec3<i32>(global0.b, u_input.d, -31939i)) << (max(global0.c, vec3<u32>(4294967295u, 26692u, global0.c.x)) % vec3<u32>(32u)), all(vec4<bool>(global0.a, global0.a, true, true)));
    return vec2<bool>(true, u_input.a > (_wgslsmith_clamp_i32(2147483647i, max(var_1.x, var_2.x), -12134i) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33039u, 1u, global0.c.x, 83482u), vec4<u32>(0u, global0.c.x, global0.c.x, global0.c.x)), global0.c.x) % 32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    var var_0 = vec3<bool>(any(vec2<bool>(select(global0.a & arg_1.x, true, false), true | select(false, arg_1.x, false))), global0.a, !(true && (arg_1.x && global0.a)));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(7110u, ~(~global0.c.x)), 42902u);
    global0 = Struct_3(true, max(_wgslsmith_sub_i32(0i, firstTrailingBit(global0.b) >> (~var_1.x % 32u)), _wgslsmith_mult_i32(5079i, -1i)), ~max(global0.c, global0.c ^ _wgslsmith_div_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, var_1.x), vec3<u32>(global0.c.x, 4294967295u, 45813u))));
    var_0 = vec3<bool>(true, false, false);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, -761f, -708f) - vec3<f32>(1000f, 1000f, -842f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1636f + -201f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-880f, -2134f)), _wgslsmith_f_op_f32(1442f - -2294f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-751f)), _wgslsmith_f_op_f32(ceil(-628f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-904f, -377f, -700f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-759f, -628f, 200f) - _wgslsmith_div_vec3_f32(vec3<f32>(-1706f, 1068f, 1452f), vec3<f32>(1000f, -972f, -1006f))))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_f32(func_1(!select(vec4<bool>(global0.a, false, false, global0.a), vec4<bool>(false, true, false, global0.a), vec4<bool>(global0.a, global0.a, false, global0.a)), Struct_2(Struct_1(vec2<f32>(-1000f, 518f)), global0.a, 37820u, false, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, 2147483647i), vec2<i32>(u_input.a, u_input.d))))) <= 782f, -(~func_4(-vec2<i32>(-10510i, -58553i), func_2(), vec2<i32>(u_input.a, u_input.c), global0.a)), ~vec3<u32>(func_3(), global0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, global0.c.x, global0.c.x), vec4<u32>(1219u, global0.c.x, global0.c.x, global0.c.x))) ^ ((vec3<u32>(global0.c.x, global0.c.x, 1u) << (~vec3<u32>(52778u, global0.c.x, global0.c.x) % vec3<u32>(32u))) ^ (countOneBits(global0.c) | vec3<u32>(4294967295u, global0.c.x, global0.c.x))));
    global0 = Struct_3(true, _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, global0.b)) ^ reverseBits(vec2<i32>(global0.b, -23429i) << (global0.c.yz % vec2<u32>(32u))), min(vec2<i32>(2147483647i, -8285i), vec2<i32>(u_input.a, u_input.a)) >> (global0.c.xx % vec2<u32>(32u))), ~select(select(vec3<u32>(global0.c.x, global0.c.x, global0.c.x), global0.c, false), firstLeadingBit(vec3<u32>(global0.c.x, global0.c.x, global0.c.x)), vec3<bool>(false, global0.a, global0.a)) >> (~global0.c % vec3<u32>(32u)));
    global0 = Struct_3(global0.a, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, global0.b), vec3<i32>(global0.b, global0.b, global0.b)), vec3<i32>(-1i, -1i, -23924i)), vec3<i32>(u_input.a, 15265i, _wgslsmith_mod_i32(u_input.a & 5201i, 0i))), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, global0.c.x), global0.c));
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-559f, -509f)))) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1576f, -586f, global0.a)) + _wgslsmith_f_op_f32(func_1(vec4<bool>(global0.a, false, false, false), Struct_2(Struct_1(vec2<f32>(828f, 774f)), true, 38455u, global0.a, 7754i)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-612f * -157f) + _wgslsmith_f_op_f32(f32(-1f) * -152f)))));
    let var_1 = global0.a;
    let var_2 = vec4<u32>(abs(51105u) << (global0.c.x % 32u), global0.c.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.x, 44578u, global0.c.x, 0u), ~vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 40494u)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(16390u, global0.c.x, 4294967295u, 0u), vec4<u32>(88472u, 60813u, 4294967295u, global0.c.x)), vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 77365u) & vec4<u32>(33390u, global0.c.x, 25039u, global0.c.x), vec4<u32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x) ^ vec4<u32>(6128u, 37700u, global0.c.x, global0.c.x))), ~(~_wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(global0.c.x, 47809u, 0u))));
    var var_3 = _wgslsmith_f_op_f32(select(-643f, var_0.a.x, global0.a));
    global0 = Struct_3(!global0.a, u_input.a, ~abs(~(~vec3<u32>(var_2.x, var_2.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~95154u << (global0.c.x % 32u)), vec2<u32>(0u, ~global0.c.x), var_0.a.x);
}

