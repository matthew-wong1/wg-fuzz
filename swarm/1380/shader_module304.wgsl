struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 23267u, 19651u, 113096u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(43190i, -36829i), 98575u, vec4<i32>(2147483647i, 28053i, -11839i, 2147483647i), vec2<u32>(4294967295u, 74819u), true);

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(-8416i, vec2<i32>(28020i, -13352i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    global0 = vec4<u32>(global2.d.x, global2.b, global0.x, ~(~(4294967295u ^ min(global0.x, global0.x))));
    var var_0 = -30559i;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1167f, 893f) + vec2<f32>(-1789f, 1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-347f, 1194f), vec2<f32>(1000f, 115f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, -1161f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 184f) - vec2<f32>(-238f, -320f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, -178f)), _wgslsmith_div_vec2_f32(vec2<f32>(-2775f, -479f), vec2<f32>(459f, 629f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(341f, 1099f)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1042f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f))))))), global2.e));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -181f)) - _wgslsmith_f_op_f32(floor(531f))), _wgslsmith_f_op_f32(var_1.x + var_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(770f, var_1.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, 1209f)))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1845f)) + _wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(1689f + var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(813f, var_1.x, 414f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(948f, 1328f, -1112f), vec3<f32>(var_1.x, var_1.x, var_1.x), global2.e)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 942f))))), vec3<f32>(var_1.x, var_1.x, -588f));
    return vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1219f * 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -604f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(vec2<u32>(4294967295u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_1.x) + _wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_vec2_f32(func_3(reverseBits(0i))).x, _wgslsmith_f_op_vec2_f32(func_3(-18049i)).x)));
    let var_1 = arg_0;
    var var_2 = Struct_2(14584i, ~(~vec2<i32>(arg_0.a, _wgslsmith_dot_vec2_i32(global2.c.xz, vec2<i32>(u_input.a.x, u_input.a.x)))));
    var var_3 = global2.d.x;
    global1 = _wgslsmith_mod_i32(var_2.a, 2147483647i);
    return _wgslsmith_mod_vec2_u32(firstTrailingBit(~_wgslsmith_add_vec2_u32(global2.d, ~global0.wy)), global2.d);
}

fn func_2() -> vec4<u32> {
    global2 = Struct_1(~(-vec2<i32>(0i, u_input.a.x) & -(~vec2<i32>(19696i, 40349i))), 27024u, global2.c ^ global2.c, func_4(Struct_2(i32(-1i) * -2147483647i, global4.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1099f, -241f) - vec2<f32>(210f, -317f)) * _wgslsmith_f_op_vec2_f32(func_3(2147483647i))), Struct_2(global4.b.x, -global4.b)) >> (global2.d % vec2<u32>(32u)), global2.e);
    var var_0 = min(~(~firstLeadingBit(_wgslsmith_mult_u32(global2.d.x, 123551u))), global2.b);
    var var_1 = reverseBits(firstLeadingBit(global2.b)) | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x ^ 1u, global0.x, firstLeadingBit(global2.d.x) & (80691u ^ global2.b)), _wgslsmith_mod_vec3_u32(global0.xyw, ~select(vec3<u32>(8389u, 4294967295u, 0u), global0.yww, false)));
    var var_2 = Struct_4(0u, false, ~(min(~vec4<u32>(24732u, global2.d.x, 45796u, global2.d.x), vec4<u32>(global2.d.x, global0.x, global0.x, 1u)) & vec4<u32>(6570u, global2.d.x, abs(1u), _wgslsmith_dot_vec2_u32(global2.d, global2.d))));
    global3 = Struct_2(-2147483647i, min(-vec2<i32>(global3.b.x, global4.a), vec2<i32>(-1i) * -global4.b) & firstLeadingBit(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, global3.b.x), global2.c))));
    return _wgslsmith_div_vec4_u32(var_2.c, select(vec4<u32>(countOneBits(1u), reverseBits(_wgslsmith_mod_u32(80755u, 1u)), min(func_4(Struct_2(-2147483647i, vec2<i32>(-2147483647i, 0i)), vec2<f32>(515f, -1905f), Struct_2(global2.c.x, vec2<i32>(u_input.a.x, global4.b.x))).x, global0.x), ~abs(global0.x)), vec4<u32>(~(~1u), var_2.a, ~1u, 1u), global2.e));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = max(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, 6958u, global2.d.x), vec4<u32>(4294967295u, global2.d.x, global2.b, global2.b)) & func_2(), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, global0.x, countOneBits(global0.x), 0u), vec4<u32>(~1u, global2.d.x, global2.b, global0.x | 65695u)), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.wz, vec2<u32>(global0.x, 0u) << (vec2<u32>(0u, global0.x) % vec2<u32>(32u))), 99070u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.x, global0.x), 1u), 0u)));
    global3 = Struct_2(_wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(2147483647i, global2.a.x, 1i), vec3<i32>(u_input.a.x, 11821i, global2.c.x), arg_0)), ~_wgslsmith_mod_vec3_i32(global2.c.zyw, vec3<i32>(global4.a, -51053i, global4.b.x))) >> (_wgslsmith_mult_u32(0u, min(~4294967295u, 60826u)) % 32u), min(select(_wgslsmith_add_vec2_i32(u_input.a & u_input.a, _wgslsmith_mult_vec2_i32(global3.b, global4.b)), global4.b & -vec2<i32>(u_input.a.x, global4.a), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), global2.e), true)), vec2<i32>(global3.a, 1i)));
    global0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.b, 0u, 26435u), ~(countOneBits(vec4<u32>(global2.b, 26768u, global0.x, global2.b)) << (func_2() % vec4<u32>(32u))));
    let var_0 = min(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(global3.a, 1i, global4.a, global3.b.x), -global2.c >> (~vec4<u32>(39462u, global0.x, 0u, 28224u) % vec4<u32>(32u))), ~(-vec4<i32>(global3.a, -33693i, 2147483647i, u_input.a.x))), 1i);
    let var_1 = -1055f;
    return Struct_1(global3.b, global0.x, global2.c, global2.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(select(!(!any(vec3<bool>(global2.e, true, false))), all(vec2<bool>(true, true)), all(!select(vec2<bool>(global2.e, global2.e), vec2<bool>(global2.e, global2.e), true))));
    var var_0 = ~global2.b;
    global2 = Struct_1(global4.b, 110956u, abs(~vec4<i32>(-23064i, firstTrailingBit(-22941i), _wgslsmith_mod_i32(global2.c.x, -2147483647i), global3.a)), _wgslsmith_mod_vec2_u32(~global2.d, func_1(func_1(true).e).d), any(vec2<bool>(global2.e, false)));
    var var_1 = vec3<i32>(0i, 12125i, -min(21077i, -34719i << (global0.x % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(var_1.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + 1504f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-2147483647i, _wgslsmith_add_i32(firstLeadingBit(0i), global3.b.x)));
}

