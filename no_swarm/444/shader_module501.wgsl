struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: vec2<u32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = ~vec4<u32>(abs(0u), u_input.a, ~max(_wgslsmith_clamp_u32(50702u, u_input.b, u_input.b), u_input.b), ~(global2.x << (u_input.b % 32u)) ^ 14621u);
    var_0 = _wgslsmith_add_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, 4294967295u, 1u), ~vec4<u32>(2731u, 10911u, 23836u, 41489u), ~vec4<u32>(global2.x, 1u, global2.x, 20076u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.b, u_input.a, global2.x), vec4<u32>(3618u, global2.x, 1u, var_0.x))), abs(~abs(vec4<u32>(global2.x, var_0.x, 4294967295u, global2.x)))) >> (~_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 47995u, 4294967295u, var_0.x)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 1u, 4294967295u, u_input.a), vec4<u32>(global2.x, 23171u, global2.x, 1u)), ~vec4<u32>(global2.x, 11959u, var_0.x, 95891u))) % vec4<u32>(32u));
    global1 = global0.a.c.xy;
    var var_1 = arg_0;
    let var_2 = 1i;
    return global0.a.b >> (~var_0.zz % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    global2 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.b, 9154u)), ~abs(vec2<u32>(6647u, 8744u))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    let var_0 = global3.x;
    global0 = Struct_2(global0.a, vec2<bool>(true, any(global0.d.a)), vec2<i32>(-1i) * -func_3(Struct_2(Struct_1(vec3<bool>(global0.a.a.x, global0.a.a.x, true), global0.a.b, global0.d.c, global0.d.e, global3.x), vec2<bool>(true, global1.x), global0.d.b, Struct_1(vec3<bool>(true, false, global1.x), global0.c, global0.d.c, global3.x, global3.x))), global0.a);
    global0 = Struct_2(Struct_1(select(select(global0.a.a, !global0.a.c.wzy, select(vec3<bool>(true, true, false), vec3<bool>(global0.d.a.x, true, false), global1.x)), !(!vec3<bool>(true, true, global0.a.c.x)), vec3<bool>(global0.d.e <= global3.x, !global0.a.c.x, global1.x)), vec2<i32>(-1i) * -vec2<i32>(1i, global0.a.b.x), select(!global0.d.c, !select(global0.a.c, vec4<bool>(true, false, global1.x, global1.x), false), (false && global1.x) != (false & global0.d.a.x)), -1062f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.d.a.xy, global0.c, Struct_1(select(select(!global0.d.a, select(global0.a.c.wyx, global0.d.a, true), true), global0.a.c.zxw, true), vec2<i32>(-_wgslsmith_clamp_i32(global0.d.b.x, global0.a.b.x, 45986i), -34950i), global0.d.c, 474f, global0.d.d));
    let var_1 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, ~(u_input.a | global2.x), reverseBits(global2.x) ^ ~global2.x), countOneBits(vec3<u32>(u_input.b, ~87611u, 16459u))));
    return Struct_2(global0.d, global0.a.a.yz, vec2<i32>(global0.d.b.x, select(-_wgslsmith_sub_i32(2147483647i, global0.c.x), global0.a.b.x, all(vec3<bool>(false, global1.x, false)))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.d.b.x, global0.c.x), ~(~global0.c)), !global0.d.c, _wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * 277f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.d, _wgslsmith_f_op_f32(-global0.a.e))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d - -221f)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> vec4<bool> {
    global0 = func_2();
    let var_0 = -2147483647i;
    global0 = Struct_2(Struct_1(!(!global0.a.c.wyz), arg_0, global0.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_div_f32(-224f, 1000f)))), select(vec2<bool>(true, all(select(vec2<bool>(true, true), global0.b, global0.b))), vec2<bool>(false, true), global0.a.c.zx), ~vec2<i32>(-1i, 18070i), func_2().d);
    var var_1 = func_2().d;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.a.e - _wgslsmith_f_op_f32(-global0.a.e)), _wgslsmith_f_op_f32(abs(global3.x)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1998f - _wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-2118f, global3.x)))), global3.x, global0.d.e)));
    return !select(func_2().d.c, func_2().a.c, !var_1.a.x | select(global1.x, global1.x, !var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = global0.a;
    let var_2 = !select(select(global0.a.c, var_1.c, any(!vec2<bool>(false, var_1.a.x))), func_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b.x, global0.a.b.x), -global0.c), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-27452i, -2147483647i, global0.a.b.x, 1i), vec4<i32>(0i, 2085i, 34690i, var_1.b.x), var_0.a.x), ~vec4<i32>(0i, -44547i, 2147483647i, 2147483647i)), 2462f), all(vec4<bool>(var_0.c.x, global0.a.c.x, true, select(false, true, global1.x))));
    let var_3 = firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.a | global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global2.x, global2.x)), 79856u), vec4<u32>(~min(4294967295u, u_input.a), 36936u, 32679u, abs(4294967295u))));
    var var_4 = func_2();
    let var_5 = -498f;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_4.d.e, -798f), vec2<f32>(global0.d.e, 1028f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1267f, var_4.d.e))) - vec2<f32>(global0.a.d, var_4.d.e)))));
    let var_6 = !select(true, true, var_3.x > ~min(u_input.b, u_input.a));
    global0 = Struct_2(global0.a, !vec2<bool>(global0.a.c.x, true), _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(i32(-1i) * -68746i), 0i), vec2<i32>(-1i) * -(~var_4.c)), var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d.e, var_4.d.e) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.a.e, -1364f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1113f)), global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1895f))) * _wgslsmith_f_op_f32(floor(264f))), ~vec4<u32>(~(~global2.x), _wgslsmith_mod_u32(global2.x, firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(var_3.www, vec3<u32>(var_3.x, u_input.a, 4294967295u)) & _wgslsmith_dot_vec4_u32(var_3, var_3), firstLeadingBit(u_input.b)), global0.a.b.x);
}

