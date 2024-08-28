struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-552f, 121f);

var<private> global1: vec3<f32> = vec3<f32>(1592f, 589f, 867f);

var<private> global2: Struct_3 = Struct_3(Struct_2(396f, vec3<i32>(-1i, 29433i, -9653i), true));

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(491f, _wgslsmith_f_op_f32(f32(-1f) * -102f), !global2.a.c))) + global0.x), _wgslsmith_f_op_f32(global2.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -967f), -1191f, false)) + _wgslsmith_f_op_f32(ceil(291f)))));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(733f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a))))), _wgslsmith_div_f32(global2.a.a, global3.a));
    global1 = vec3<f32>(global3.a, 1703f, global2.a.a);
    let var_1 = Struct_1(!(!(!(!vec2<bool>(true, global3.c)))), vec2<bool>(false & any(!vec4<bool>(global2.a.c, true, false, true)), global3.c), global2.a.b.x, vec3<f32>(_wgslsmith_f_op_f32(select(1f, -1363f, !any(vec4<bool>(global2.a.c, global2.a.c, false, global3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-292f))), global3.a));
    let var_2 = var_1.d.x;
    return ~(-2147483647i);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = ~select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1606u, arg_1, u_input.b.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, u_input.c, 10830u, u_input.d), vec4<u32>(10207u, 1u, u_input.b.x, 4294967295u)), select(vec4<bool>(global3.c, global2.a.c, false, global2.a.c), vec4<bool>(false, true, global3.c, true), global3.c)), _wgslsmith_sub_vec4_u32(~vec4<u32>(10662u, 18985u, 28083u, u_input.d), vec4<u32>(12963u, 4294967295u, arg_1, arg_1) & vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x))), vec4<u32>(arg_1, 4294967295u, ~19717u, ~28993u) << (~(~vec4<u32>(4294967295u, 1u, 41840u, u_input.c)) % vec4<u32>(32u)), global2.a.c);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2289f)), -1174f)))), _wgslsmith_f_op_f32(select(global2.a.a, global2.a.a, any(select(select(vec3<bool>(global3.c, global3.c, true), vec3<bool>(global2.a.c, global3.c, false), vec3<bool>(false, false, global3.c)), vec3<bool>(global2.a.c, global2.a.c, true), vec3<bool>(false, global3.c, global3.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(sign(-1040f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f))))));
    let var_2 = any(vec3<bool>(true, !(!(arg_2.x != 2147483647i)), false));
    var var_3 = any(!vec4<bool>(var_1.x == _wgslsmith_f_op_f32(-global3.a), (arg_2.x << (arg_1 % 32u)) >= arg_0.x, true, global2.a.c | global3.c));
    var_3 = all(vec4<bool>(false, global3.c, false, false));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, -114f) + global1.yx)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(-global2.a.b, arg_1, ~vec3<i32>(i32(-1i) * -2147483647i, func_3(), -24048i))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1491f, global2.a.a), arg_0)), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(u_input.b.x, arg_1))), _wgslsmith_add_u32(u_input.d, ~4294967295u)) != _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, ~1u), ~max(arg_1, u_input.c))));
    let var_1 = Struct_3(global2.a);
    global3 = global2.a;
    return (select(vec4<i32>(2147483647i, u_input.a, 1i, 18556i) ^ vec4<i32>(global3.b.x, 38658i, 456i, 1i), ~countOneBits(vec4<i32>(-30653i, -2147483647i, global3.b.x, 1i)), !(!vec4<bool>(arg_2.c.a.x, true, true, var_1.a.c))) & (-vec4<i32>(-1i, u_input.a, global2.a.b.x, 1i) & _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, 40094i, u_input.a, 2147483647i)), -vec4<i32>(var_1.a.b.x, 0i, var_1.a.b.x, -1i)))) >> (select(firstLeadingBit(~vec4<u32>(106884u, arg_1, 39434u, 0u)), vec4<u32>(_wgslsmith_mult_u32(u_input.d, 14754u) >> (_wgslsmith_mod_u32(46353u, u_input.c) % 32u), u_input.c, abs(_wgslsmith_mod_u32(4294967295u, u_input.d)), 4294967295u), vec4<bool>(global3.c, true, true, true && any(vec2<bool>(var_1.a.c, true)))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global2 = Struct_3(arg_1);
    var var_0 = Struct_1(vec2<bool>(true, all(arg_2.a)), vec2<bool>(global3.c, global3.c), _wgslsmith_dot_vec2_i32(vec2<i32>(-global2.a.b.x, -25981i), _wgslsmith_div_vec2_i32(func_2(vec2<f32>(global0.x, global1.x), u_input.c, Struct_4(vec3<bool>(false, false, arg_1.c), global3.b.x, arg_2, vec4<f32>(-121f, 355f, global2.a.a, -1132f)), arg_2.d.x).zy, abs(global3.b.xy))) & (i32(-1i) * -select(arg_1.b.x, -2147483647i, arg_1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_2.d, vec3<f32>(1379f, 1656f, -669f)), _wgslsmith_div_vec3_f32(arg_2.d, vec3<f32>(-494f, -492f, -943f)), !vec3<bool>(global2.a.c, false, arg_1.c))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + 1000f), -152f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a.a, -1867f, global2.a.a))) - vec3<f32>(683f, 438f, arg_1.a)))));
    let var_1 = ~min(-vec3<i32>(u_input.a, 31772i, -41631i) & _wgslsmith_sub_vec3_i32(global2.a.b, arg_0.xzx), _wgslsmith_add_vec3_i32(-vec3<i32>(-35686i, -2147483647i, u_input.a), vec3<i32>(arg_1.b.x, global3.b.x, arg_2.c))) ^ vec3<i32>(global3.b.x, -2147483647i ^ var_0.c, firstLeadingBit(var_0.c));
    var var_2 = Struct_1(vec2<bool>(global2.a.c, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, global2.a.c), arg_2.b, arg_2.a), vec2<bool>(global2.a.c, false))), ~(~func_3()), arg_2.d);
    var_2 = Struct_1(!(!select(!vec2<bool>(arg_1.c, true), vec2<bool>(var_0.b.x, arg_2.a.x), true)), var_2.b, -1i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(703f - 1250f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.d.x - -1165f), global3.a, true))))));
    return Struct_1(var_0.a, vec2<bool>(false, false), min(1i, abs(~var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, arg_2.d.x, 1184f), vec3<f32>(-1000f, -215f, global0.x)))))));
}

fn func_1(arg_0: f32) -> i32 {
    global3 = Struct_2(global2.a.a, reverseBits(vec3<i32>(firstTrailingBit(-u_input.a), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, -11037i), global2.a.b.x), max(0i, global3.b.x))), all(vec4<bool>(!global2.a.c, true, !any(vec4<bool>(false, global2.a.c, global2.a.c, false)), global3.c)));
    var var_0 = Struct_4(vec3<bool>(global3.c, global2.a.c, true), _wgslsmith_dot_vec3_i32(-global3.b, firstTrailingBit(~global2.a.b << (vec3<u32>(1u, u_input.d, u_input.b.x) % vec3<u32>(32u)))), func_5(~func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 924f) + vec2<f32>(global2.a.a, global1.x)), 1u, Struct_4(vec3<bool>(false, global2.a.c, global2.a.c), 0i, Struct_1(vec2<bool>(global3.c, global2.a.c), vec2<bool>(false, global3.c), 9280i, vec3<f32>(-885f, global2.a.a, global1.x)), vec4<f32>(-251f, -909f, 362f, -282f)), _wgslsmith_f_op_f32(f32(-1f) * -767f)), Struct_2(_wgslsmith_f_op_f32(abs(531f)), vec3<i32>(func_2(global1.xx, 4294967295u, Struct_4(vec3<bool>(global3.c, false, global2.a.c), global3.b.x, Struct_1(vec2<bool>(global2.a.c, global3.c), vec2<bool>(false, global3.c), global3.b.x, vec3<f32>(-385f, arg_0, 1000f)), vec4<f32>(arg_0, global1.x, -309f, 830f)), arg_0).x, u_input.a ^ u_input.a, u_input.a), true), Struct_1(!select(vec2<bool>(global2.a.c, true), vec2<bool>(true, false), vec2<bool>(global3.c, global2.a.c)), !vec2<bool>(global3.c, false), firstLeadingBit(1i), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(arg_0, 638f)), -281f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-375f, _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(-108f - 451f), _wgslsmith_f_op_f32(166f * 467f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 603f, global3.a, global3.a) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1702f, 663f, 1661f, 659f))))))));
    let var_1 = var_0.c;
    var var_2 = Struct_4(select(select(vec3<bool>(any(var_0.a), u_input.b.x >= 1u, all(vec4<bool>(true, false, global3.c, var_1.b.x))), select(!vec3<bool>(global2.a.c, true, global3.c), var_0.a, !var_0.a), vec3<bool>(any(vec3<bool>(global2.a.c, global3.c, true)), global2.a.c, var_1.a.x)), var_0.a, var_1.a.x), (i32(-1i) * -func_5(vec4<i32>(var_0.b, -2147483647i, -11840i, var_0.b), Struct_2(198f, global2.a.b, global2.a.c), Struct_1(vec2<bool>(var_1.b.x, true), var_0.a.xx, -77364i, var_0.d.zxy)).c) << (1u % 32u), Struct_1(var_0.c.b, !(!vec2<bool>(global3.c, false)), (func_5(vec4<i32>(1i, 2147483647i, global2.a.b.x, 2147483647i), Struct_2(global3.a, vec3<i32>(-1i, -30776i, -1i), var_1.b.x), var_0.c).c >> ((1u << (u_input.d % 32u)) % 32u)) >> (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1416f * -1413f), _wgslsmith_f_op_f32(f32(-1f) * -1204f), _wgslsmith_f_op_f32(134f + arg_0)), vec3<f32>(-128f, _wgslsmith_f_op_f32(var_1.d.x - arg_0), global3.a)))), _wgslsmith_f_op_vec4_f32(-var_0.d));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(step(1606f, -284f)), -global2.a.b, var_0.c.b.x == var_0.c.b.x);
    return -(21936i >> (_wgslsmith_div_u32(countOneBits(reverseBits(u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), ~vec2<u32>(u_input.d, 7010u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<i32>(-global2.a.b.x, -3838i, -(reverseBits(global3.b.x) ^ select(-1i, global2.a.b.x, global2.a.c)), ~2147483647i), vec4<i32>(global2.a.b.x & 16661i, _wgslsmith_mult_i32(global2.a.b.x, func_1(global0.x) << (_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xx) % 32u)), global3.b.x, _wgslsmith_mult_i32(0i, 18666i)));
    let var_1 = select(!select(select(!vec4<bool>(false, true, true, global2.a.c), vec4<bool>(true, global2.a.c, global2.a.c, false), select(vec4<bool>(false, global2.a.c, false, true), vec4<bool>(true, global3.c, global2.a.c, global2.a.c), vec4<bool>(false, true, false, global2.a.c))), vec4<bool>(true, global2.a.c == false, !global2.a.c, true && global2.a.c), global2.a.c), select(!select(select(vec4<bool>(true, global2.a.c, true, false), vec4<bool>(global2.a.c, true, global3.c, global2.a.c), false), !vec4<bool>(global3.c, false, global3.c, global3.c), select(true, global2.a.c, false)), select(!vec4<bool>(true, global3.c, global2.a.c, global2.a.c), vec4<bool>(false, true, global2.a.c, false), global2.a.c), vec4<bool>(true, !(global2.a.a < global3.a), (u_input.c > u_input.c) || (true || global2.a.c), u_input.b.x == max(0u, 2356u))), ~min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.d, 0u))) < countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 37276u, u_input.d), u_input.b), 0u)));
    let var_2 = global2.a.a >= _wgslsmith_f_op_f32(-global0.x);
    var var_3 = select(!(!(global1.x >= 1093f)) != !(!var_1.x & true), global3.c, true && any(select(select(vec4<bool>(false, var_1.x, global2.a.c, var_2), vec4<bool>(global3.c, global2.a.c, global3.c, false), false), !var_1, var_1)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_div_f32(1000f, global0.x), var_1.x)) + _wgslsmith_f_op_f32(max(-1219f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-1221f * _wgslsmith_f_op_f32(ceil(-1958f))))), vec3<i32>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.a - -233f) * global3.a)), firstTrailingBit(global3.b.x), -1i), false);
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, global1.x, -552f) * vec3<f32>(943f, 473f, -667f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1175f, var_4.a)))))));
    global0 = global1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~(u_input.b.yx & min(_wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.b.zy), vec2<u32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), 23574i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_5(vec4<i32>(-1i, 31692i, var_0.x, u_input.a), Struct_2(256f, vec3<i32>(global2.a.b.x, global3.b.x, u_input.a), global3.c), Struct_1(vec2<bool>(var_4.c, var_2), vec2<bool>(false, false), global3.b.x, vec3<f32>(var_4.a, -211f, -730f))).d.x)) * -1056f)));
}

