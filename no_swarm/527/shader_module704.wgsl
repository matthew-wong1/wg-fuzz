struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(true != select(true, false, false), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, arg_3), select(u_input.a.zx, vec2<u32>(arg_2.x, arg_1), vec2<bool>(true, true))), _wgslsmith_f_op_f32(f32(-1f) * -102f), 0u), arg_1), Struct_1((any(vec4<bool>(false, false, true, false)) != true) & false, vec2<u32>(86349u, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-814f)))) + -1217f), 6046u));
    let var_1 = Struct_4(!select(!select(vec2<bool>(false, false), vec2<bool>(var_0.a.a.a, var_0.b.a), var_0.a.a.a), select(!vec2<bool>(true, var_0.b.a), select(vec2<bool>(var_0.b.a, var_0.a.a.a), vec2<bool>(var_0.b.a, var_0.b.a), true), var_0.b.c > var_0.a.a.c), vec2<bool>(true, !var_0.a.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, var_0.b.c, var_0.a.a.c, var_0.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, 2244f, -418f, 618f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(235f, var_0.a.a.c, -181f, var_0.a.a.c) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.a.c, var_0.a.a.c, -1000f, var_0.a.a.c))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-653f, var_0.a.a.c, -748f, var_0.a.a.c)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, 153f, 1150f, -2500f) * vec4<f32>(var_0.a.a.c, -1034f, var_0.a.a.c, -438f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1348f, -145f, var_0.a.a.c, -184f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.c)))) + -773f), u_input.e.zy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(210f, _wgslsmith_div_f32(867f, var_0.a.a.c))));
    global1 = u_input.a.x;
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, ~var_0.b.d ^ arg_3, ~(~u_input.a.x)), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), arg_2.xzy) & reverseBits(vec3<u32>(arg_3, 0u, 4294967295u)))) >> (33998u % 32u);
    global1 = ~_wgslsmith_mod_u32(firstLeadingBit(~abs(44387u)), arg_2.x);
    return var_1.a;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = vec2<bool>(true, false);
    var_1 = select(select(!vec2<bool>(true, arg_0), vec2<bool>(true, !arg_0 && var_1.x), !(u_input.d < -14423i)), select(!vec2<bool>(var_1.x, true), func_3(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, -48506i), u_input.c.xz), u_input.b, ~u_input.a, u_input.a.x), any(!select(vec3<bool>(var_1.x, false, false), vec3<bool>(false, false, var_1.x), vec3<bool>(false, true, arg_0)))), func_3(-vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.d), vec2<i32>(6046i, -2147483647i))), ~_wgslsmith_sub_u32(u_input.b, u_input.a.x), ~(~(vec4<u32>(u_input.a.x, 1u, 49013u, 85045u) >> (u_input.a % vec4<u32>(32u)))), ~countOneBits(_wgslsmith_mod_u32(u_input.a.x, 11163u))));
    var_1 = vec2<bool>(var_1.x, select(arg_0, true, true));
    var var_2 = Struct_4(func_3(abs(abs(u_input.c.wy)), 58354u, u_input.a, u_input.a.x), vec4<f32>(arg_1, -262f, 895f, -1000f), arg_1, _wgslsmith_mult_vec2_i32(~(~vec2<i32>(-2147483647i, -14211i)), u_input.c.xz), _wgslsmith_f_op_f32(exp2(arg_1)));
    return Struct_1((_wgslsmith_f_op_f32(step(var_2.e, var_2.e)) > _wgslsmith_f_op_f32(var_2.c * -1094f)) == (var_2.a.x & arg_0), ~((_wgslsmith_mod_vec2_u32(u_input.a.xw, u_input.a.yy) & u_input.a.zy) | _wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(1u, u_input.a.x), u_input.a.zz)), 1000f, u_input.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3) -> f32 {
    var var_0 = !vec2<bool>(((u_input.a.x | arg_1) <= 28300u) != arg_0.x, !(!arg_0.x));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = !vec2<bool>(arg_2.b.a, arg_2.a.a.a);
    let var_3 = func_2(0i > _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(58921i, -33575i), reverseBits(vec2<i32>(-16568i, -24949i))), u_input.c.yy), -1211f);
    return -827f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = Struct_2(Struct_1(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))), ~((u_input.a.yy >> (u_input.a.zw % vec2<u32>(32u))) | vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, false), 61756u, Struct_3(Struct_2(Struct_1(true, u_input.a.zx, 1966f, u_input.a.x), 4294967295u), Struct_1(false, vec2<u32>(u_input.b, u_input.a.x), -162f, 1u)))))), _wgslsmith_f_op_f32(ceil(403f))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(u_input.a.x, 1u, false), u_input.b), 11070u)), min(u_input.b, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(50245u, u_input.b))));
    var var_1 = false;
    var var_2 = Struct_2(func_2(var_0.a.a, var_0.a.c), select(select(_wgslsmith_div_u32(1u, u_input.a.x), var_0.a.d, true) ^ ~u_input.a.x, u_input.b, select(false, var_0.a.a, all(vec2<bool>(var_0.a.a, true)))));
    var var_3 = Struct_2(func_2(select(!all(vec2<bool>(var_2.a.a, true)), !func_2(true, var_2.a.c).a, all(!vec2<bool>(var_2.a.a, var_2.a.a))), 1163f), _wgslsmith_add_u32(~var_0.b, _wgslsmith_sub_u32(~func_2(false, -891f).b.x, abs(14858u))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(u_input.a.yzw, u_input.a.zwz), func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c - 833f)) + -1043f)).d, ~_wgslsmith_sub_u32(33773u, select(max(27467u, var_3.b), ~u_input.a.x, var_0.b < var_0.b)));
}

