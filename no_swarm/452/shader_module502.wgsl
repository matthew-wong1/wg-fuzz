struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: u32 = 65968u;

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> u32 {
    global4 = vec4<bool>(true, global4.x, ((1u >> (firstTrailingBit(arg_3.d.b.a) % 32u)) != ~(arg_1.b.a << (global2.a % 32u))) || true, !arg_3.c.x);
    let var_0 = u_input.c;
    global0 = array<Struct_3, 22>();
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> bool {
    global0 = array<Struct_3, 22>();
    var var_0 = min(vec4<u32>(global2.a << (~u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(arg_2, arg_3.a.b, 25197u, 65851u)) & vec4<u32>(arg_3.a.b, arg_3.b.a, 4294967295u, 4294967295u), u_input.d), _wgslsmith_sub_u32(~func_3(1u, arg_3, global4.x, global0[_wgslsmith_index_u32(4294967295u, 22u)]), firstLeadingBit(~arg_0.x)), _wgslsmith_dot_vec2_u32(~(~arg_0), ~arg_0)), u_input.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, _wgslsmith_f_op_f32(min(-384f, -1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-660f, 464f))), -1099f)));
    var var_2 = Struct_3(arg_3, -392f, global4.yx, arg_3);
    let var_3 = global0[_wgslsmith_index_u32(1u, 22u)];
    return !(var_2.c.x && var_2.c.x);
}

fn func_1() -> Struct_3 {
    global4 = vec4<bool>(select(false, false, !(!global4.x & (global4.x | false))), func_2(u_input.d.zx, -1i, _wgslsmith_add_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.d.x, ~u_input.c, _wgslsmith_sub_u32(u_input.c, 4294967295u))), Struct_2(Struct_1(min(0u, global2.a), global2.b | 1u, ~u_input.c), Struct_1(u_input.d.x, global2.b, 10985u), -(vec3<i32>(u_input.b, u_input.b, -55570i) << (vec3<u32>(0u, 46555u, 4294967295u) % vec3<u32>(32u))))), true, any(vec2<bool>(true, true && !global4.x)));
    var var_0 = u_input.b > u_input.a;
    var_0 = !global4.x;
    var var_1 = u_input.d.xxx;
    let var_2 = false;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(select(~(~u_input.d.zw), select(abs(vec2<u32>(u_input.c, 41393u)), var_1.yy, global4.xy), any(global4.xzy))), firstLeadingBit(var_1.xx)), 22u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = arg_1.a.a;
    global0 = array<Struct_3, 22>();
    global4 = !vec4<bool>(arg_1.c.x && any(select(vec4<bool>(true, global4.x, true, true), vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x), false)), countOneBits(~global2.a) > 0u, !global4.x, func_1().c.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -368f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * -356f) + arg_0.x)))), 298f, 478f);
    var var_2 = Struct_2(func_1().d.a, func_1().a.b, _wgslsmith_mult_vec3_i32(((arg_1.a.c >> (vec3<u32>(1u, u_input.c, 0u) % vec3<u32>(32u))) & -vec3<i32>(14020i, u_input.b, -18168i)) << (reverseBits(u_input.d.wwx) % vec3<u32>(32u)), vec3<i32>(-1i, max(_wgslsmith_mult_i32(arg_1.d.c.x, -1i), -2147483647i >> (global2.b % 32u)), ~0i >> (~arg_1.a.b.a % 32u))));
    return var_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-173f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f - -1080f) - _wgslsmith_f_op_f32(step(-702f, -209f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(413f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(-1000f * -1000f))), (true & global4.x) | (false != global4.x)))));
    global2 = Struct_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(6301u, 18620u, u_input.d.x)), u_input.d.yzy), func_4(vec4<f32>(698f, -3322f, -900f, var_0.x), func_1()), _wgslsmith_dot_vec4_u32(~(u_input.d | vec4<u32>(global2.b, u_input.c, 49510u, 107934u)), ~_wgslsmith_div_vec4_u32(min(u_input.d, u_input.d), ~vec4<u32>(global2.c, u_input.d.x, u_input.d.x, 25728u))));
    let var_1 = select(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.yw, u_input.d.wy), ~abs(u_input.d.yx)), u_input.d.zy, func_1().c);
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 121f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, -1197f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(855f, 666f), vec2<f32>(var_0.x, -619f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-796f, 305f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, global4.x))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1008f))) * vec2<f32>(1f, _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    let var_2 = func_1().d.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec2_i32(select(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, 0i) ^ vec2<i32>(-44540i, u_input.b), !global4.x), func_1().a.c.yz, min(vec2<i32>(2147483647i, 39778i), ~vec2<i32>(-1i, u_input.a))), abs(~min(vec2<i32>(32938i, -2147483647i), vec2<i32>(52852i, 27029i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-223f - var_0.x))) + _wgslsmith_f_op_f32(sign(var_0.x))), vec3<f32>(-1561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(-777f))) * _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(min(var_0.x, -135f))), var_0.x, ~(-(~u_input.a)));
}

