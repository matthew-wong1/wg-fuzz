struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, true, true, true), 259f, vec4<u32>(49462u, 1u, 0u, 4294967295u), vec3<f32>(-860f, 534f, -666f), Struct_1(vec2<bool>(false, true), vec4<u32>(21547u, 13891u, 4294967295u, 69110u), -968f, vec2<i32>(-17683i, 0i)));

var<private> global3: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    global1 = u_input.a.x;
    let var_0 = !select(global2.a, select(!select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, false), global2.a, global2.a), select(select(global2.a, global2.a, true), !global2.a, vec4<bool>(true, false, true, true)), vec4<bool>(!global2.a.x, true, arg_0.c == -2014f, all(arg_0.a))), false);
    let var_1 = arg_0.b;
    let var_2 = Struct_3(reverseBits(reverseBits(vec2<i32>(firstLeadingBit(global2.e.d.x), select(global2.e.d.x, arg_1.d.x, true)))), global0[_wgslsmith_index_u32(var_1.x, 27u)]);
    global2 = Struct_2(vec4<bool>(false, ~(~arg_0.d.x) > 37949i, true, !global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -961f), min(arg_1.b << (vec4<u32>(arg_0.b.x, 0u, 1u, arg_1.b.x) % vec4<u32>(32u)), var_2.b.e.b) << (select(select(vec4<u32>(arg_0.b.x, 1u, 35106u, arg_1.b.x), var_2.b.e.b, select(var_2.b.a, vec4<bool>(false, arg_1.a.x, true, false), vec4<bool>(arg_0.a.x, var_2.b.a.x, false, false))), ~(~arg_0.b), any(arg_1.a)) % vec4<u32>(32u)), vec3<f32>(arg_1.c, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(507f, arg_1.c))))), arg_1);
    return vec2<i32>(~(_wgslsmith_dot_vec2_i32(global2.e.d, global2.e.d) | -16494i), ~(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, var_2.a.x) | reverseBits(0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_3(-reverseBits(max(func_3(Struct_1(vec2<bool>(arg_1.a.x, false), vec4<u32>(arg_1.b.x, arg_1.b.x, global2.e.b.x, u_input.a.x), global2.b, vec2<i32>(arg_1.d.x, arg_1.d.x)), global2.e), func_3(Struct_1(arg_1.a, arg_0, -523f, vec2<i32>(arg_1.d.x, 0i)), Struct_1(vec2<bool>(arg_1.a.x, true), vec4<u32>(u_input.a.x, arg_1.b.x, 0u, 1u), -970f, vec2<i32>(arg_1.d.x, -48103i))))), global0[_wgslsmith_index_u32(1u, 27u)]);
    let var_1 = ~select(0u, 1u, arg_1.a.x);
    let var_2 = arg_1;
    var var_3 = vec3<u32>(~var_1, var_2.b.x, var_0.b.c.x);
    let var_4 = global2.d.xx;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1251f, arg_2)) * _wgslsmith_f_op_f32(arg_1.c + var_0.b.b)))), _wgslsmith_f_op_f32(abs(490f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    global3 = arg_1.d.x;
    global2 = Struct_2(!vec4<bool>(!arg_1.a.x, ~arg_2.b.e.d.x <= -arg_2.b.e.d.x, false, false & !global2.a.x), -268f, vec4<u32>(22220u, arg_1.b.x, 4294967295u, ~((u_input.a.x & arg_2.b.c.x) << (_wgslsmith_sub_u32(arg_2.b.e.b.x, arg_2.b.e.b.x) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.b))), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1694f + arg_0.x), -396f))), global2.e);
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.d)));
    global3 = 1456i;
    global3 = ~global2.e.d.x | arg_2.a.x;
    return arg_2.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_2 {
    global3 = global2.e.d.x;
    global0 = array<Struct_2, 27>();
    global3 = -32802i;
    var var_0 = false;
    var var_1 = -458f;
    return func_4(_wgslsmith_f_op_vec2_f32(-global2.d.yy), Struct_1(arg_0, _wgslsmith_mult_vec4_u32(global2.e.b, global2.c), _wgslsmith_f_op_f32(func_2(~global2.c, Struct_1(global2.a.wx, _wgslsmith_add_vec4_u32(vec4<u32>(global2.e.b.x, 12788u, 4294967295u, 86531u), vec4<u32>(u_input.a.x, 39303u, 73271u, global2.c.x)), _wgslsmith_f_op_f32(global2.b - 386f), firstTrailingBit(global2.e.d)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(global2.b * global2.b))))), global2.e.d), Struct_3(vec2<i32>(-1i) * -vec2<i32>(global2.e.d.x, global2.e.d.x), Struct_2(select(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true), vec4<bool>(false, global2.e.a.x, true, true), true), global2.e.c, select(global2.e.b, ~global2.e.b, select(vec4<bool>(global2.e.a.x, false, true, true), vec4<bool>(arg_0.x, global2.a.x, arg_0.x, arg_0.x), global2.a)), global2.d, Struct_1(select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true), true), vec4<u32>(global2.c.x, 91789u, 0u, 1u), _wgslsmith_f_op_f32(exp2(global2.b)), vec2<i32>(1i, 9015i) >> (vec2<u32>(1u, arg_1.x) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(!select(global2.e.a, vec2<bool>(true, true), !select(true, true, global2.a.x)), ~vec3<u32>(~4294967295u, abs(~global2.c.x), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.e.b.x, 41452u, u_input.a.x, 0u), global2.c))));
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1587f))), Struct_1(vec2<bool>(false, true), vec4<u32>(~select(35235u, 3919u, global2.a.x), _wgslsmith_mult_u32(global2.c.x, global2.e.b.x), global2.e.b.x, global2.c.x), _wgslsmith_f_op_f32(max(func_1(!global2.a.yx, ~global2.e.b.zzw).b, _wgslsmith_f_op_f32(func_2(global2.c, Struct_1(global2.e.a, vec4<u32>(4294967295u, 65819u, 84098u, global2.c.x), -239f, global2.e.d), -1000f)))), vec2<i32>(global2.e.d.x, _wgslsmith_div_i32(global2.e.d.x, _wgslsmith_mod_i32(global2.e.d.x, global2.e.d.x)))), Struct_3(vec2<i32>(global2.e.d.x, -7097i << (abs(1u) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(27135u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 75864u), select(global2.c, global2.c, true)), _wgslsmith_div_u32(~20332u, ~29018u)), 27u)])).e;
    global0 = array<Struct_2, 27>();
    global2 = Struct_2(!global2.a, 182f, abs(_wgslsmith_div_vec4_u32(global2.c, firstTrailingBit(_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, u_input.a.x, global2.c.x, global2.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(150f, global2.d.x, -1469f), vec3<f32>(-1000f, 546f, 127f))), _wgslsmith_f_op_vec3_f32(ceil(global2.d)), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d))), global2.e);
    global2 = global0[_wgslsmith_index_u32(var_0.b.x, 27u)];
    global3 = -_wgslsmith_sub_i32(countOneBits(-(~global2.e.d.x)), 6234i);
    let var_1 = Struct_3(firstLeadingBit(-select(global2.e.d, ~global2.e.d, var_0.a)), Struct_2(!vec4<bool>(true, !global2.a.x, false != var_0.a.x, global2.e.c <= var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * -2535f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(var_0.b.x, global2.e.b.x, 10434u, 32336u), Struct_1(vec2<bool>(false, true), global2.e.b, 195f, vec2<i32>(var_0.d.x, global2.e.d.x)), var_0.c)))), ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(56117u, u_input.a.x, u_input.a.x, var_0.b.x), global2.e.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.d, global2.d))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global2.d, vec3<f32>(global2.d.x, var_0.c, var_0.c), true)))))), global2.e));
    let var_2 = var_1.b.e;
    var var_3 = Struct_1(vec2<bool>(!var_2.a.x, !(_wgslsmith_f_op_f32(sign(542f)) < global2.e.c)), global2.c, global2.b, vec2<i32>(_wgslsmith_clamp_i32(var_2.d.x ^ 1i, func_1(var_2.a, var_0.b.yyz).e.d.x, abs(var_1.b.e.d.x << (u_input.a.x % 32u))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global2.d), countOneBits(-vec3<i32>(~global2.e.d.x, ~2147483647i, i32(-1i) * -24787i)), vec2<i32>(-32299i, var_3.d.x), -(var_3.d.x & _wgslsmith_dot_vec2_i32(var_2.d, _wgslsmith_div_vec2_i32(vec2<i32>(-37876i, var_3.d.x), var_1.a))), _wgslsmith_mult_vec4_u32(~global2.e.b, ~(~var_0.b)));
}

