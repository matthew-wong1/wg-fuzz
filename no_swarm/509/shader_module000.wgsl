struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4;

var<private> global2: u32;

var<private> global3: u32;

var<private> global4: Struct_3 = Struct_3(vec4<i32>(-4859i, -42735i, 44469i, -1i), Struct_1(vec2<bool>(false, false), 42463i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> f32 {
    var var_0 = ~countOneBits(u_input.a >> (59343u % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) + 451f), arg_0.a.a) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.a, arg_2.a.a) * vec2<f32>(global0.a.a, -177f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a, arg_1) + vec2<f32>(arg_0.a.a, arg_0.a.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, _wgslsmith_div_f32(global0.a.a, arg_1)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(614f, 1597f), vec2<f32>(259f, 470f), global4.b.a.x)))), true)));
    let var_2 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.c, u_input.a, global1.a.c.x, 4294967295u)), global0.a.b), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(108859u, 3988u, global0.c, 125u)), arg_0.a.b)));
    let var_3 = vec3<bool>(false, arg_3, global4.b.a.x || !(!(!arg_3)));
    global2 = 71431u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -2274f));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global4 = Struct_3(global4.a, Struct_1(select(global4.b.a, arg_0.zz, arg_0.xz), ~u_input.b));
    let var_0 = select(vec2<bool>(false, !(_wgslsmith_div_f32(global0.a.a, global1.a.a) < _wgslsmith_f_op_f32(f32(-1f) * -641f))), vec2<bool>(any(arg_0), !(1544f != global1.a.a)), arg_0.yx);
    let var_1 = !select(!vec4<bool>(any(vec3<bool>(true, var_0.x, arg_1)), all(vec4<bool>(false, false, true, false)), !global4.b.a.x, any(vec4<bool>(false, arg_0.x, true, true))), !(!select(vec4<bool>(arg_1, arg_0.x, false, false), vec4<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x, false), vec4<bool>(global4.b.a.x, false, false, arg_1))), false);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(global1.a.a, global1.a.b, vec4<u32>(1u, 1u, 28253u, u_input.a)), 24035i, 37488u, global1.d), _wgslsmith_f_op_f32(-global0.a.a), Struct_4(global1.a, u_input.b, u_input.a, global4.a.xzy), global1.b <= 1i)), _wgslsmith_div_f32(global0.a.a, global0.a.a))), 1339f))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1137f), 838f, arg_0.x | any(vec4<bool>(arg_1, arg_0.x, var_1.x, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f * global1.a.a) - _wgslsmith_f_op_f32(1158f + 273f)))))), ~(vec4<u32>(global1.a.b.x, 4294967295u, 4294967295u, ~1u) | global1.a.c), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 10695u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(78454u, 0u), vec2<u32>(4294967295u, u_input.a), global0.a.c.wx)), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mult_u32(global1.c, global0.a.c.x)), global0.c, firstLeadingBit(1u)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1582f)) + _wgslsmith_f_op_f32(trunc(var_3.a))), -1110f, all(vec2<bool>(true, true))))))));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-global0.a.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!(!vec3<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x)), !(-257f < global1.a.a)))));
    var var_1 = global1.c;
    let var_2 = !any(select(select(vec3<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x), !vec3<bool>(global4.b.a.x, global4.b.a.x, true), false), select(select(vec3<bool>(global4.b.a.x, true, global4.b.a.x), vec3<bool>(global4.b.a.x, global4.b.a.x, false), global4.b.a.x), !vec3<bool>(false, global4.b.a.x, global4.b.a.x), false), select(vec3<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x), select(vec3<bool>(false, true, global4.b.a.x), vec3<bool>(false, global4.b.a.x, false), global4.b.a.x), vec3<bool>(true, true, true))));
    let var_3 = Struct_4(global0.a, ~global1.b, abs(~reverseBits(~1u)), vec3<i32>(~_wgslsmith_clamp_i32(u_input.b, -1i, -22659i >> (u_input.a % 32u)), global4.b.b, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -1i), vec2<i32>(u_input.b, 1i) >> (vec2<u32>(64533u, global1.a.b.x) % vec2<u32>(32u))), ~u_input.b)));
    return firstTrailingBit(select(min(vec4<u32>(4294967295u, global1.c, 21869u, global0.a.b.x) ^ var_3.a.c, vec4<u32>(15087u, global1.a.b.x, 104011u, 43386u)), select(reverseBits(var_3.a.c), global0.a.c, true), vec4<bool>(var_2, 1u == global1.c, any(vec3<bool>(global4.b.a.x, false, var_2)), !var_2))) << (select(vec4<u32>(~max(global1.c, 13069u), 1u, ~(~u_input.a), ~countOneBits(global0.a.c.x)), countOneBits(vec4<u32>(u_input.a ^ 4294967295u, ~global1.c, _wgslsmith_mult_u32(116894u, var_3.c), ~global1.a.c.x)), vec4<bool>(false, all(vec3<bool>(global4.b.a.x, var_2, false)), true, false)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(880f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.a)) + -497f)), func_1(), firstLeadingBit(~(~vec4<u32>(0u, 1192u, global0.a.c.x, u_input.a)))), -_wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global0.d.x), global0.d.zy), select(vec2<i32>(-1i, 2147483647i), ~vec2<i32>(-6296i, global1.b), true)), _wgslsmith_mod_u32(global0.c, ~global0.c), select(vec3<i32>((global4.a.x & global1.d.x) & -56402i, _wgslsmith_mod_i32(-1592i, firstTrailingBit(1i)), -global4.b.b | 0i), global0.d, select(select(vec3<bool>(false, true, false), !vec3<bool>(global4.b.a.x, true, true), select(vec3<bool>(true, global4.b.a.x, false), vec3<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x), false)), select(select(vec3<bool>(global4.b.a.x, global4.b.a.x, false), vec3<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x), vec3<bool>(true, false, global4.b.a.x)), select(vec3<bool>(true, false, global4.b.a.x), vec3<bool>(global4.b.a.x, false, false), vec3<bool>(true, true, true)), false), all(global4.b.a))));
    var var_1 = global4.b;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_4(global1.a, _wgslsmith_div_i32(var_1.b, 2147483647i) | -2147483647i, 20636u, vec3<i32>(-7913i, global4.a.x, u_input.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c, global0.c, 1u), vec3<u32>(22370u, global0.a.b.x, 65462u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(var_0.a.a + -1603f)) + _wgslsmith_f_op_f32(f32(-1f) * -106f)), Struct_4(Struct_2(591f, ~global1.a.b, var_0.a.c), max(_wgslsmith_add_i32(u_input.b, 1i), -2496i), ~global1.c, _wgslsmith_add_vec3_i32(vec3<i32>(-11858i, global4.a.x, 2147483647i), vec3<i32>(u_input.b, global1.d.x, -25145i)) << (~vec3<u32>(global0.c, 0u, 9937u) % vec3<u32>(32u))), ((var_1.a.x || global4.b.a.x) | any(var_1.a)) == (_wgslsmith_f_op_f32(-global1.a.a) >= _wgslsmith_div_f32(-874f, global1.a.a)))), ~var_0.a.c, countOneBits(vec4<u32>(~select(42352u, 1u, true), _wgslsmith_mult_u32(~1u, u_input.a), 51453u, var_0.a.b.x)));
    global3 = ((_wgslsmith_div_u32(~42860u, ~65234u) | _wgslsmith_dot_vec2_u32(global0.a.c.ww >> (var_2.b.wy % vec2<u32>(32u)), ~global1.a.c.yx)) >> (u_input.a % 32u)) << (~(~23325u) % 32u);
    var var_3 = global4.a.yw;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.b.xw, var_0.a.b);
}

