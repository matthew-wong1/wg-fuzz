struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> vec2<u32> {
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    var var_0 = true;
    return vec2<u32>(abs(max(arg_1.x, min(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), arg_1.x))), 1u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -434f);
    global0 = array<vec3<bool>, 22>();
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, countOneBits(arg_1.a.x)), min(vec2<u32>(_wgslsmith_mult_u32(u_input.e.x, arg_0.b.d.a.x), firstLeadingBit(arg_2.x)), _wgslsmith_mod_vec2_u32(arg_1.a, vec2<u32>(arg_1.a.x, arg_3.a.x) & arg_3.a.zx))), false);
    var var_2 = Struct_5(abs(_wgslsmith_clamp_vec4_u32(~arg_3.a, select(abs(vec4<u32>(arg_0.c.a.x, var_1.a.x, u_input.e.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.x, arg_0.c.a.x, arg_2.x), arg_0.b.b), !vec4<bool>(true, true, arg_1.b, true)), countOneBits(arg_0.b.b | arg_0.b.b))));
    global0 = array<vec3<bool>, 22>();
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> bool {
    global0 = array<vec3<bool>, 22>();
    var var_0 = ~(~abs(min(u_input.e.x, max(arg_0.d.a.x, 29336u))));
    var_0 = func_4(Struct_4(Struct_3(vec4<bool>(arg_2, false, !arg_2, all(vec2<bool>(false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f + arg_0.a))), arg_0, arg_0.c, u_input.a != ~select(u_input.b, -62548i, arg_2)), Struct_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), 1875f), u_input.e, -19521i < u_input.d.x, all(select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_0.d.b), vec2<bool>(true, false)))), 219f <= arg_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.e.x), ~1u) >> (vec2<u32>(_wgslsmith_div_u32(arg_0.c.a.x, u_input.e.x), arg_0.c.a.x) % vec2<u32>(32u)), ~u_input.e), Struct_5(~max(_wgslsmith_clamp_vec4_u32(arg_0.b, arg_0.b, vec4<u32>(40807u, 11798u, arg_0.c.a.x, 0u)), arg_0.b)));
    var var_1 = -691f;
    let var_2 = ~(~_wgslsmith_mult_u32(arg_0.c.a.x, ~u_input.e.x << (58219u % 32u)));
    return true;
}

fn func_1() -> vec2<i32> {
    var var_0 = firstLeadingBit(vec3<i32>(-17177i, -(~0i), u_input.b) >> (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, 55443u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 32749u, 0u)), ~u_input.e.x, _wgslsmith_mult_u32(17275u, u_input.e.x)) % vec3<u32>(32u)));
    var var_1 = ~min(~countOneBits(vec4<u32>(0u, 8235u, u_input.e.x, u_input.e.x) >> (vec4<u32>(1u, 4294967295u, 15155u, u_input.e.x) % vec4<u32>(32u))), vec4<u32>(u_input.e.x, u_input.e.x ^ 1u, u_input.e.x << (1u % 32u), u_input.e.x) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(53584u, 4294967295u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 0u, 0u, u_input.e.x)) % vec4<u32>(32u)));
    var_0 = ((~(-vec3<i32>(u_input.c.x, 27209i, u_input.c.x)) << (vec3<u32>(var_1.x, var_1.x, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(var_1.x | max(4294967295u, 34002u), 1u, ~(~81348u)) % vec3<u32>(32u))) | -_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(u_input.c.x, u_input.a, -4745i << (0u % 32u)));
    let var_2 = vec4<bool>(all(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), any(vec4<bool>(false, true, false, false)), false)), false, any(!vec4<bool>(true, false, func_2(Struct_2(-320f, vec4<u32>(var_1.x, 3738u, 23481u, var_1.x), Struct_1(vec2<u32>(u_input.e.x, 4863u), true), Struct_1(var_1.wx, false)), -323f, true), false)), _wgslsmith_f_op_f32(1014f + -1000f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) + _wgslsmith_f_op_f32(-1000f * -478f)))));
    var_1 = ~vec4<u32>(42983u, ~4587u, _wgslsmith_clamp_u32(~(~u_input.e.x), ~0u ^ reverseBits(u_input.e.x), func_4(Struct_4(Struct_3(var_2, 811f, -136f), Struct_2(1000f, vec4<u32>(16526u, 0u, 0u, 1u), Struct_1(vec2<u32>(46113u, 4294967295u), true), Struct_1(vec2<u32>(31016u, var_1.x), false)), Struct_1(var_1.wy, var_2.x), false), Struct_1(var_1.xw, false), ~u_input.e, Struct_5(vec4<u32>(var_1.x, 69344u, 1u, 83115u)))), u_input.e.x);
    return select(max(u_input.c.yz, u_input.c.zy), firstLeadingBit(u_input.c.yz), 0u != ~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 22>();
    let var_0 = func_1();
    global0 = array<vec3<bool>, 22>();
    var var_1 = Struct_3(!vec4<bool>(false, !any(vec2<bool>(true, true)), true, select(true, true, true)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1889f))))) - -263f));
    var_1 = Struct_3(select(select(vec4<bool>(true, true, !var_1.a.x, select(true, var_1.a.x, var_1.a.x)), var_1.a, var_1.a), vec4<bool>(false, (var_0.x << (1u % 32u)) != var_0.x, any(var_1.a.xyy) && true, all(select(var_1.a.xy, var_1.a.xw, vec2<bool>(true, true)))), all(select(var_1.a, vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), all(vec2<bool>(var_1.a.x, true))))), var_1.c, var_1.c);
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_add_u32(1260u, u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(-426f + var_1.c))))), var_3);
}

