struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: Struct_4,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<bool>(false, true), 1u, Struct_4(27984u, Struct_1(-1689f, -1000f, i32(-2147483648))), Struct_2(Struct_1(1154f, -264f, -6164i)), vec3<u32>(29098u, 1u, 51516u));

var<private> global1: Struct_1 = Struct_1(280f, -162f, 2147483647i);

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = -210f;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-27621i, u_input.b.x, global0.c.b.c)), u_input.b) << (~4294967295u % 32u), 13442i);
    var var_2 = arg_2.x;
    var var_3 = _wgslsmith_add_u32(~68767u, 1u);
    var var_4 = arg_2.xx;
    return -arg_2;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> vec2<u32> {
    global2 = vec4<bool>(all(arg_3.a), !(~(~u_input.a) <= _wgslsmith_div_u32(~global0.b, 47704u)), false, false);
    var var_0 = _wgslsmith_add_u32(~arg_3.c.a ^ _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 44528u)), countOneBits(arg_3.e.xy))), ~arg_3.b);
    let var_1 = global0.c.b.c;
    let var_2 = vec3<f32>(146f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -252f))), global1.b);
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.a.b + _wgslsmith_f_op_f32(arg_1.a.a + 539f))), vec4<bool>(false, any(arg_3.a) && false, true, arg_3.a.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1185f)) * _wgslsmith_f_op_f32(round(arg_2))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, global2.x, false, global0.a.x), false), select(vec4<bool>(global2.x, arg_0, true, global0.a.x), vec4<bool>(arg_3.a.x, arg_0, false, arg_3.a.x), vec4<bool>(global0.a.x, global0.a.x, true, arg_3.a.x)), vec4<bool>(true, arg_3.a.x, true, global2.x)), vec4<i32>(-70038i, _wgslsmith_sub_i32(global0.d.a.c, u_input.b.x), _wgslsmith_add_i32(-10291i, -25216i), i32(-1i) * -1i))).zz << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8336u, global0.c.a, arg_3.b, u_input.a), vec4<u32>(arg_3.e.x, global0.e.x, u_input.a, arg_3.b)), arg_3.c.a), ~abs(vec2<u32>(arg_3.c.a, u_input.a)), select(!global2.ww, vec2<bool>(false, global2.x), arg_3.a))) % vec2<u32>(32u));
    return vec2<u32>(~arg_3.b, arg_3.c.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> Struct_5 {
    global0 = Struct_5(global2.zw, ~reverseBits(~(~arg_1)), Struct_4(countOneBits(0u), global0.c.b), global0.d, vec3<u32>(12106u | arg_3, min(_wgslsmith_mult_u32(4294967295u | arg_3, _wgslsmith_dot_vec3_u32(arg_0, arg_0)), ~arg_3), arg_1));
    global2 = select(select(vec4<bool>(true, _wgslsmith_f_op_f32(global1.b * -1785f) <= global1.a, global2.x, global2.x), vec4<bool>(false, global0.a.x, !(global1.c < global0.c.b.c), true), vec4<bool>(true & any(global2.wzz), global0.a.x, all(select(vec4<bool>(true, true, global0.a.x, false), vec4<bool>(true, global0.a.x, true, global2.x), true)), true)), !select(!(!vec4<bool>(true, global2.x, global2.x, false)), select(!vec4<bool>(global2.x, true, true, false), select(vec4<bool>(true, global0.a.x, true, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(true, global2.x, global2.x, global0.a.x)), vec4<bool>(false, false, false, global0.a.x)), any(vec2<bool>(global2.x, true)) && !global0.a.x), !vec4<bool>(false, true, ~u_input.b.x <= -1i, !global0.a.x));
    return Struct_5(select(vec2<bool>(global0.a.x, true), !select(select(global0.a, vec2<bool>(false, global0.a.x), false), vec2<bool>(global0.a.x, global2.x), global0.a), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), global0.a.x))), global0.c.a, global0.c, global0.d, arg_0);
}

fn func_1(arg_0: vec3<u32>) -> Struct_5 {
    var var_0 = -1110f;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.c.b.a), _wgslsmith_f_op_f32(-global0.d.a.b))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(387f, global1.a, global2.x)), -1018f), global0.d.a.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(546f, global1.a))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.b.b, -759f), vec2<f32>(-1000f, global1.a))))))));
    let var_2 = global0.a.x;
    global0 = func_4(global0.e, _wgslsmith_dot_vec3_u32(select(global0.e, ~arg_0, any(vec2<bool>(true, false))), ~(~global0.e) & global0.e), abs(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), !select(vec4<bool>(true, global0.a.x, global2.x, true), vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(false, true, global0.a.x, true)), vec4<i32>(-1i) * -vec4<i32>(-7597i, global1.c, -2147483647i, -22629i))), _wgslsmith_div_u32(~abs(arg_0.x), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.zz), func_3(false, global0.d, var_1.x, Struct_5(vec2<bool>(global0.a.x, true), 0u, global0.c, Struct_2(Struct_1(global0.c.b.b, var_1.x, u_input.b.x)), vec3<u32>(11224u, u_input.a, 48035u))))));
    let var_3 = _wgslsmith_div_vec2_i32(~(~(u_input.b.xx | countOneBits(u_input.b.zx))), abs(u_input.b.xy) ^ ~(~_wgslsmith_mod_vec2_i32(u_input.b.yx, u_input.b.zx)));
    return Struct_5(!select(!select(vec2<bool>(global0.a.x, true), global2.wx, global0.a), global2.xx, select(global0.a, !global0.a, true)), global0.c.a, Struct_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), global0.e), arg_0), ~1u), func_4(~(~global0.e), u_input.a, vec4<i32>(-46035i, -11011i, global0.d.a.c, _wgslsmith_mult_i32(global1.c, -18272i)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, arg_0.x, arg_0.x))).d.a), global0.d, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.c;
    var_0 = ~1i;
    var var_1 = func_1(global0.e);
    var var_2 = global0.c.a >> (global0.e.x % 32u);
    var_1 = Struct_5(func_1(firstTrailingBit(~firstTrailingBit(var_1.e))).a, 1u, var_1.c, Struct_2(var_1.c.b), vec3<u32>(4294967295u, 4294967295u ^ ~(~var_1.c.a), 65321u));
    var_2 = u_input.a;
    let var_3 = Struct_3(func_1(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.a, 26983u, 96905u) & vec3<u32>(33281u, var_1.c.a, global0.e.x), ~global0.e))).e, global0.c.a, _wgslsmith_dot_vec2_i32(u_input.b.yz, max(vec2<i32>(reverseBits(u_input.b.x), -13427i), u_input.b.xy)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -818f), 821f, _wgslsmith_clamp_i32(var_1.d.a.c, abs(2147483647i), 1i)), var_1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -659f), global1.c ^ (global0.c.b.c & 1i), var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) - -891f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-378f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * -1049f) + 1880f), _wgslsmith_f_op_f32(round(global1.b)))));
}

