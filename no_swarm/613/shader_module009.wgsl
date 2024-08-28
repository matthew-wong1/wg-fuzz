struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_2(vec2<bool>(true, false), 96050i), false), Struct_5(Struct_2(vec2<bool>(false, true), 41355i), true), Struct_5(Struct_2(vec2<bool>(true, true), 2147483647i), true), Struct_5(Struct_2(vec2<bool>(true, true), 58750i), true), Struct_5(Struct_2(vec2<bool>(false, false), 0i), true), Struct_5(Struct_2(vec2<bool>(false, false), -3412i), true), Struct_5(Struct_2(vec2<bool>(false, true), -16241i), false), Struct_5(Struct_2(vec2<bool>(false, true), 36689i), true), Struct_5(Struct_2(vec2<bool>(false, false), -4633i), true), Struct_5(Struct_2(vec2<bool>(true, true), -325i), true), Struct_5(Struct_2(vec2<bool>(true, true), 1i), false), Struct_5(Struct_2(vec2<bool>(true, true), -7802i), true), Struct_5(Struct_2(vec2<bool>(false, false), i32(-2147483648)), false), Struct_5(Struct_2(vec2<bool>(false, true), -26773i), true), Struct_5(Struct_2(vec2<bool>(true, false), 21149i), false));

var<private> global2: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = ~global0.wzy;
    global1 = array<Struct_5, 15>();
    global1 = array<Struct_5, 15>();
    var var_1 = Struct_2(!select(select(select(vec2<bool>(global2.a.a, false), vec2<bool>(true, global2.a.d), vec2<bool>(false, global2.a.a)), vec2<bool>(true, arg_0.b), true), vec2<bool>(arg_0.b, arg_0.c != 1u), vec2<bool>(!arg_0.a, any(vec3<bool>(arg_0.d, arg_0.d, true)))), ~global0.x);
    var var_2 = select(vec4<bool>(false, any(!vec3<bool>(false, global2.a.a, var_1.a.x)), true, arg_0.c >= 1u), !select(vec4<bool>(all(vec4<bool>(true, global2.a.a, global2.a.b, arg_0.b)), !global2.a.a, all(vec3<bool>(global2.a.b, true, arg_0.b)), true || global2.a.b), select(!vec4<bool>(false, global2.a.a, true, arg_0.b), select(vec4<bool>(false, true, false, var_1.a.x), vec4<bool>(false, false, arg_0.b, var_1.a.x), arg_0.b), vec4<bool>(false, false, arg_0.d, true)), vec4<bool>(var_1.a.x, false, true, false)), select(vec4<bool>(true, (4294967295u | global2.a.c) == global2.a.c, var_1.a.x, true), vec4<bool>(any(var_1.a), var_1.a.x, all(!vec4<bool>(false, global2.a.d, false, false)), any(!vec3<bool>(true, var_1.a.x, global2.a.a))), vec4<bool>(arg_0.d, var_1.a.x, true, true)));
    return _wgslsmith_add_u32(_wgslsmith_div_u32(38653u, (countOneBits(arg_0.c) << (_wgslsmith_mult_u32(arg_0.c, 0u) % 32u)) << (abs(firstLeadingBit(arg_0.c)) % 32u)), 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_3(global2.a);
    global2 = Struct_3(global2.a);
    global1 = array<Struct_5, 15>();
    var_0 = Struct_3(Struct_1(all(vec2<bool>(true, var_0.a.d)) && (any(vec3<bool>(true, var_0.a.b, true)) && true), var_0.a.a, _wgslsmith_clamp_u32(~49094u, 1u, func_3(Struct_1(var_0.a.b, false, 3827u, false))), 1u > var_0.a.c));
    var var_1 = Struct_3(Struct_1(any(select(select(vec4<bool>(global2.a.a, false, false, false), vec4<bool>(true, true, global2.a.d, global2.a.a), var_0.a.b), !vec4<bool>(false, var_0.a.d, false, false), true)), global2.a.b, ~72898u, !all(vec4<bool>(false, false, global2.a.d, true))));
    return !(!(!vec3<bool>(all(vec4<bool>(var_1.a.d, var_0.a.b, false, var_1.a.a)), false, all(vec4<bool>(false, false, global2.a.a, var_0.a.b)))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = vec4<i32>(~max(u_input.a.x & (-22205i ^ u_input.a.x), u_input.a.x), u_input.b.x, -1i, arg_2);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.x)), arg_3.x, arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1257f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(610f, arg_3.x, 275f, -758f)) + vec4<f32>(_wgslsmith_f_op_f32(-311f * arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(round(arg_3.x))))));
    global1 = array<Struct_5, 15>();
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(max(~4294967295u, 77793u), 1u, ~34701u, 32985u), ~_wgslsmith_mult_vec4_u32(arg_1, ~arg_1)) & arg_1;
    let var_3 = !select(!(!vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_2 < arg_2, global2.a.d, true), vec3<bool>(arg_0 && global2.a.b, true, all(vec3<bool>(global2.a.b, global2.a.b, false))), !(!vec3<bool>(global2.a.d, true, true))), !func_2(u_input.a.xwz, var_1.xwx));
    return Struct_3(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(true, func_1(global2.a.a, firstLeadingBit(vec4<u32>(global2.a.c, 1u, global2.a.c, 0u) >> (select(vec4<u32>(35590u, global2.a.c, 4294967295u, 1u), vec4<u32>(global2.a.c, 26200u, global2.a.c, global2.a.c), global2.a.d) % vec4<u32>(32u))), -_wgslsmith_add_i32(u_input.a.x, reverseBits(global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(613f, -1597f, 463f)), vec3<f32>(_wgslsmith_div_f32(1689f, -970f), _wgslsmith_f_op_f32(f32(-1f) * -214f), -1105f))), ~select(countOneBits(global0.zz), abs(_wgslsmith_mult_vec2_i32(u_input.b.yy, vec2<i32>(1i, global0.x))), global2.a.d), true);
    var var_1 = Struct_2(select(!(!select(vec2<bool>(global2.a.d, false), vec2<bool>(true, true), vec2<bool>(global2.a.b, var_0.d))), vec2<bool>(all(vec2<bool>(true, global2.a.d)), select(any(vec4<bool>(global2.a.a, var_0.b.a.b, false, true)), true, true)), select(!select(vec2<bool>(var_0.a, global2.a.a), vec2<bool>(global2.a.b, global2.a.a), var_0.d), vec2<bool>(true, true), false)), ~var_0.c.x);
    global1 = array<Struct_5, 15>();
    global1 = array<Struct_5, 15>();
    var var_2 = select(var_0.c, ~vec2<i32>(var_0.c.x << (4294967295u % 32u), u_input.a.x), vec2<bool>(!var_0.b.a.a, true));
    var_0 = Struct_4(!global2.a.d, func_1(reverseBits(18741i >> (global2.a.c % 32u)) == -_wgslsmith_mod_i32(-49901i, var_0.c.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.c, var_0.b.a.c, global2.a.c, var_0.b.a.c), vec4<u32>(4294967295u, var_0.b.a.c, 1u, 7110u)) >> (countOneBits(~vec4<u32>(4294967295u, var_0.b.a.c, var_0.b.a.c, var_0.b.a.c)) % vec4<u32>(32u)), _wgslsmith_clamp_i32(-var_0.c.x, 34696i, 69971i | max(2147483647i, var_1.b)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(327f, -672f))), -322f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -977f))))), -(var_0.c >> ((max(vec2<u32>(global2.a.c, global2.a.c), vec2<u32>(70186u, 4294967295u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.b.a.c), vec2<u32>(23764u, global2.a.c)) % vec2<u32>(32u))) % vec2<u32>(32u))), false);
    var var_3 = true;
    let var_4 = var_0.b.a.b;
    var var_5 = select(select(vec3<bool>(-2147483647i < -var_0.c.x, all(!var_1.a), global2.a.d), !(!func_2(vec3<i32>(-2147483647i, -22863i, var_1.b), vec3<f32>(812f, -468f, -835f))), select(!var_0.d || any(vec4<bool>(true, var_1.a.x, global2.a.a, var_1.a.x)), !var_0.d & (false && global2.a.a), all(vec3<bool>(false, false, true)))), func_2(select(~firstTrailingBit(vec3<i32>(0i, -29032i, 1i)), vec3<i32>(-31675i, var_2.x, 10482i) ^ vec3<i32>(30069i, 0i, var_1.b), var_0.b.a.d), vec3<f32>(1f, 1f, 1f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1119f + -2205f), _wgslsmith_f_op_f32(abs(1189f)), true))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1000f))))))), 8155i, vec4<i32>(select(var_2.x, 30817i, var_0.a) >> (max(reverseBits(33239u), select(37142u, 1u, true)) % 32u), 0i, 1i, max(1i, _wgslsmith_add_i32(~var_1.b, _wgslsmith_clamp_i32(var_2.x, var_1.b, -3752i)))));
}

