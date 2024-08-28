struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(20796u, 6879u), vec2<u32>(15870u, 12189u), vec2<u32>(3544u, 5876u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(37972u, 59119u), vec2<u32>(66064u, 81136u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 34161u), vec2<u32>(3461u, 0u), vec2<u32>(35895u, 6086u), vec2<u32>(1u, 39989u), vec2<u32>(0u, 4294967295u), vec2<u32>(46131u, 51225u), vec2<u32>(21427u, 3289u), vec2<u32>(1u, 0u), vec2<u32>(69160u, 1u), vec2<u32>(55096u, 5023u), vec2<u32>(19457u, 4294967295u), vec2<u32>(13594u, 40078u), vec2<u32>(8665u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(72954u, 4294967295u), vec2<u32>(55728u, 1u));

var<private> global2: vec3<u32>;

var<private> global3: Struct_3 = Struct_3(Struct_2(true, true, Struct_1(0i, vec3<f32>(432f, -305f, -814f), 249f, 12128u, vec2<bool>(false, true))), vec4<u32>(49498u, 42291u, 107890u, 0u), Struct_1(i32(-2147483648), vec3<f32>(-1472f, 1171f, 364f), 1312f, 33462u, vec2<bool>(false, true)));

var<private> global4: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(i32(-2147483648), 1u), Struct_5(0i, 0u), Struct_5(64462i, 0u), Struct_5(-27291i, 1u), Struct_5(-1i, 0u), Struct_5(-25750i, 19016u), Struct_5(0i, 1u), Struct_5(1i, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> i32 {
    var var_0 = u_input.b.ww;
    let var_1 = Struct_3(arg_1.b, arg_1.c, Struct_1(-((i32(-1i) * -28689i) & global3.c.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1155f, _wgslsmith_f_op_f32(-143f * arg_1.b.c.b.x), _wgslsmith_f_op_f32(sign(951f))) - _wgslsmith_f_op_vec3_f32(global3.c.b + _wgslsmith_f_op_vec3_f32(-global3.a.c.b))), _wgslsmith_f_op_f32(487f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - -127f))), _wgslsmith_add_u32((34469u ^ var_0.x) & 1u, global2.x), vec2<bool>(all(vec2<bool>(arg_0, arg_0)), true)));
    global3 = var_1;
    global1 = array<vec2<u32>, 30>();
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(var_1.c.a, global3.a.c.a), countOneBits(global3.a.c.a), -1515i), ~(~vec3<i32>(global3.c.a, var_1.a.c.a, global3.a.c.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, -1452f, 1826f) - var_1.a.c.b))) * arg_1.b.c.b), global3.a.c.b.x, _wgslsmith_sub_u32(75473u, var_1.c.d), var_1.a.c.e);
    return ~global3.c.a;
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global4 = array<Struct_5, 8>();
    var var_0 = Struct_4(global0.a, Struct_2(any(!vec4<bool>(arg_0, false, true, global3.c.e.x)) || false, true, global3.c), select(~vec4<u32>(70578u, 94213u, global2.x, global0.b) << (u_input.b % vec4<u32>(32u)), abs(u_input.b), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, arg_0, arg_0), false), !vec4<bool>(false, global3.a.a, true, false), any(global3.c.e))) | u_input.b, global3.c.b.xx);
    let var_1 = vec3<bool>(true, false, _wgslsmith_clamp_u32(11180u, global3.a.c.d, 66593u) >= abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(var_0.b.c.d, global2.x)))));
    let var_2 = all(vec3<bool>(false, true || !var_0.b.b, true));
    var var_3 = Struct_4(countOneBits(var_0.b.c.a), var_0.b, var_0.c >> (vec4<u32>(firstTrailingBit(var_0.b.c.d >> (var_0.b.c.d % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global3.b.zy, vec2<u32>(var_0.c.x, global2.x)), abs(global3.a.c.d), global3.b.x ^ 51648u), var_0.b.c.d, abs(var_0.c.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.c.c + -1903f), _wgslsmith_f_op_f32(abs(-630f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c.c, global3.c.c)), global3.c.b.yx, -254f != var_0.d.x)))));
    return vec2<i32>(9297i, global0.a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> vec3<u32> {
    global1 = array<vec2<u32>, 30>();
    var var_0 = min(vec2<i32>(global0.a >> (countOneBits(arg_1.c.d) % 32u), u_input.a.x << (arg_1.c.d % 32u)), -min(vec2<i32>(global3.a.c.a, func_2(true, Struct_4(global3.a.c.a, Struct_2(true, arg_0.a.c.e.x, arg_0.c), vec4<u32>(1u, 30012u, 25885u, arg_3), arg_1.c.b.yy), arg_1.c.e)), func_3(arg_0.c.e.x)));
    let var_1 = Struct_3(global3.a, arg_0.b, Struct_1(i32(-1i) * -max(arg_1.c.a, 10275i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), global3.c.c, ~(~global0.b), arg_0.c.e));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -140f))) - _wgslsmith_f_op_f32(f32(-1f) * -606f));
    var_0 = vec2<i32>(~(-min(abs(arg_0.c.a), global0.a)), global0.a & 1i);
    return ~max(firstLeadingBit(global3.b.xzw), abs(vec3<u32>(~arg_1.c.d, _wgslsmith_mod_u32(4294967295u, 29920u), arg_0.a.c.d)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(global3.c.e.x, select(any(vec3<bool>(global3.c.e.x, global3.c.e.x, false)), true, true), global3.c), vec4<u32>(45113u, global0.b, global3.a.c.d, ~global0.b >> (1u % 32u)), global3.a.c);
    return Struct_3(global3.a, ~(~vec4<u32>(0u, global2.x, 1u, global0.b)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.a.c.d, global3.a.c.d, 4294967295u, global3.c.d), global3.b), vec4<u32>(global0.b, ~565u, ~global3.c.d, min(var_0.c.d, 1u))) % vec4<u32>(32u)), var_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global3.c.a, global0.b);
    global4 = array<Struct_5, 8>();
    global3 = func_4(~(abs(vec3<i32>(-2147483647i, 11497i, global0.a) | vec3<i32>(global0.a, -1i, 2147483647i)) ^ (firstTrailingBit(vec3<i32>(22992i, -2147483647i, u_input.e)) >> (func_1(Struct_3(Struct_2(false, global3.c.e.x, global3.c), u_input.b, Struct_1(126i, vec3<f32>(-524f, global3.a.c.c, 1000f), -260f, 96536u, global3.c.e)), global3.a, vec3<f32>(global3.a.c.b.x, -1590f, -2190f), 16220u) % vec3<u32>(32u)))), !select(select(select(vec4<bool>(global3.a.c.e.x, global3.c.e.x, global3.a.c.e.x, true), vec4<bool>(true, global3.a.b, global3.a.b, false), true), vec4<bool>(false, global3.a.b, false, true), vec4<bool>(true, true, global3.c.e.x, global3.c.e.x)), select(!vec4<bool>(true, global3.a.c.e.x, false, global3.c.e.x), select(vec4<bool>(global3.c.e.x, global3.a.b, false, global3.a.c.e.x), vec4<bool>(false, global3.c.e.x, true, global3.c.e.x), vec4<bool>(false, global3.c.e.x, false, false)), true & global3.a.b), vec4<bool>(global3.a.c.e.x, global3.c.e.x, any(vec3<bool>(true, global3.c.e.x, global3.c.e.x)), !global3.c.e.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1370f)) * _wgslsmith_f_op_f32(global3.c.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.c.c, -1000f, true)) * _wgslsmith_f_op_f32(global3.c.b.x + global3.a.c.c)))), _wgslsmith_f_op_f32(step(-675f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.c.b.x - global3.a.c.c), global3.a.c.c, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global3.a.c.c))) + global3.c.b.x));
    global3 = func_4(firstTrailingBit(~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.c.a, 12215i, 2147483647i), vec3<i32>(u_input.e, global0.a, global3.c.a), vec3<i32>(-37092i, u_input.e, global0.a)))), !(!vec4<bool>(true, true, true, any(vec4<bool>(true, global3.a.b, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

