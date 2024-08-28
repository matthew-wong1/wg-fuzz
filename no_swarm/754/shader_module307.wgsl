struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<bool>;

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(1524f, 459f, -546f), Struct_1(1u, -15624i, false, vec3<bool>(true, true, false)), 4294967295u, vec3<u32>(0u, 2540u, 8724u), vec4<bool>(true, false, true, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = firstLeadingBit(global0.b.d.xx);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1250f - -1104f) + _wgslsmith_f_op_f32(min(global0.b.b, 491f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.b, 1000f))) - _wgslsmith_f_op_f32(select(562f, _wgslsmith_f_op_f32(f32(-1f) * -1291f), all(vec2<bool>(true, true))))))));
    var var_2 = -(-(global0.a.a.b ^ -2147483647i) >> (~(~(~u_input.c)) % 32u));
    var var_3 = vec4<bool>(false, any(!vec4<bool>(true, true, any(global0.b.c.yz), all(vec3<bool>(global0.b.a.c, false, false)))), global0.a.c.x, global1.x);
    var_3 = select(!vec4<bool>(true, global3.b.c, true, all(vec3<bool>(global3.e.x, global0.b.a.d.x, var_3.x))), global3.e, !var_3.x);
    return vec3<f32>(_wgslsmith_f_op_f32(global3.a.x + global0.a.b), 235f, -255f);
}

fn func_2() -> bool {
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(global3.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec3_f32(func_3())))), global0.b.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, ~global0.b.d.x, 4294967295u), _wgslsmith_mult_vec3_u32(abs(~global0.b.d), (vec3<u32>(u_input.a, 4294967295u, 0u) >> (global0.a.d % vec3<u32>(32u))) >> (vec3<u32>(global3.c, u_input.c, u_input.c) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(~(~u_input.b), vec3<u32>(global0.c.x, global0.b.a.a, ~(~u_input.a))), !vec4<bool>(global3.e.x, all(vec4<bool>(true, global3.b.c, global3.e.x, true)), all(vec2<bool>(true, true)), !(global3.c < 0u)));
    global3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global3.a - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.x, -1134f, 1488f), global3.a))))), global3.a), global3.b, abs(1u), max(vec3<u32>(~(~0u), _wgslsmith_clamp_u32(u_input.a, 33592u, global0.b.d.x ^ global0.a.d.x), select(17882u, select(1u, 0u, global0.b.c.x), true)), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(global0.c.x >> (u_input.c % 32u), 35515u, max(1u, 6803u)))), global3.e);
    global0 = Struct_4(global0.a, global0.b, global3.d.zy);
    let var_0 = Struct_5(reverseBits(~vec2<i32>(global3.b.b, 21765i)), global0.a.a, 516f, !vec3<bool>(any(vec2<bool>(global0.a.c.x, true)), true, !(global1.x | global0.a.a.d.x)), Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-881f, global0.a.b, -2982f) - vec3<f32>(856f, -783f, global3.a.x)))))), Struct_1(~u_input.c, ~global0.a.a.b ^ global0.b.a.b, false, select(vec3<bool>(global3.b.d.x, true, global0.a.c.x), select(vec3<bool>(global0.b.a.c, global0.b.c.x, global3.b.d.x), vec3<bool>(global1.x, global0.a.a.d.x, true), vec3<bool>(true, global3.e.x, global3.e.x)), global0.a.d.x >= global3.b.a)), (u_input.c << (_wgslsmith_sub_u32(global0.a.a.a, global3.d.x) % 32u)) | (u_input.b.x << (_wgslsmith_mult_u32(global0.c.x, 52005u) % 32u)), global0.a.d, !vec4<bool>(global3.e.x, all(global3.b.d.xx), any(vec4<bool>(false, global1.x, global0.b.a.d.x, global3.e.x)), false)));
    var var_1 = firstLeadingBit(-_wgslsmith_mult_i32(countOneBits(~(-26255i)), _wgslsmith_mult_i32(-39254i, 0i)));
    return global1.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_4 {
    global2 = arg_1.d.x;
    let var_0 = global0.a.e;
    var var_1 = 55803u;
    var var_2 = func_2();
    let var_3 = !select(arg_0, vec3<bool>((false | arg_1.d.x) | global1.x, !arg_0.x, (arg_1.b <= global3.b.b) && arg_0.x), true);
    return Struct_4(global0.a, global0.b, _wgslsmith_mult_vec2_u32(arg_2.xx, vec2<u32>(firstTrailingBit(max(25044u, u_input.a)), 0u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    let var_0 = func_4(!(!global3.b.d), Struct_1(~max(~26292u, u_input.c), 1i, func_2(), select(select(!vec3<bool>(global1.x, true, global3.b.c), vec3<bool>(false, true, false), all(vec3<bool>(false, arg_0.x, global1.x))), !vec3<bool>(global3.e.x, true, true), !(!arg_0.x))), firstTrailingBit(vec3<u32>(global0.c.x, 4294967295u, 1u)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1041f, _wgslsmith_f_op_f32(arg_2 + 759f))), arg_2, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-960f))))), arg_1.ywz);
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(arg_1.wxz));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global3.a.x, arg_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-619f, var_1.x, var_0.b.b))) + vec3<f32>(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) + -1461f), arg_1.x)), Struct_1(global0.a.d.x | global3.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(min(var_0.a.a.b, global3.b.b), var_0.b.a.b), abs(-vec2<i32>(0i, 13051i))), func_2(), global3.e.yxx), _wgslsmith_mult_u32(firstTrailingBit(var_0.a.a.a), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.d.x, global3.b.a, 1u), vec4<u32>(73823u, global0.a.d.x, u_input.b.x, global3.b.a)), 4294967295u)), ~var_0.b.d, global3.e);
    var var_3 = u_input.b;
    return _wgslsmith_f_op_f32(ceil(-458f));
}

fn func_5(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = ~select(arg_0.d, vec3<u32>(28059u, ~39615u, _wgslsmith_clamp_u32(~arg_0.d.x, select(arg_0.a.a, 4294967295u, global1.x), ~54865u)), vec3<bool>(global1.x & false, !global3.b.c, select(!global0.b.a.d.x, any(global3.e), global1.x)));
    let var_1 = arg_0.a.d.yz;
    global2 = arg_0.c.x;
    return vec4<f32>(-267f, global3.a.x, 1000f, arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_2(Struct_1(39495u, global3.b.b, !global3.e.x, select(!global3.e.yzw, vec3<bool>(global0.a.a.c, global1.x, false), vec3<bool>(false, true, global0.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!global3.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, 1630f, global3.a.x, -333f) + vec4<f32>(global0.b.e, global3.a.x, -844f, -1000f)), _wgslsmith_f_op_f32(-global0.b.b)))), func_4(func_4(select(vec3<bool>(global3.e.x, false, false), vec3<bool>(true, false, global1.x), global0.b.a.d.x), global0.b.a, countOneBits(vec3<u32>(u_input.c, 0u, 0u))).b.a.d, func_4(select(vec3<bool>(global0.b.c.x, false, global3.e.x), global3.b.d, vec3<bool>(false, global1.x, global0.a.c.x)), func_4(vec3<bool>(false, global0.b.c.x, global0.a.c.x), Struct_1(1u, -1i, true, global3.e.zxz), vec3<u32>(global0.c.x, 30984u, 69122u)).a.a, ~vec3<u32>(global0.c.x, 4294967295u, u_input.c)).b.a, u_input.b).a.a.d, abs(u_input.b), global3.a.x)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, !global0.b.a.d.x, global0.a.a.d.x, !(!global3.e.x)), vec4<f32>(_wgslsmith_f_op_f32(global0.a.e - _wgslsmith_f_op_f32(floor(-1949f))), -746f, _wgslsmith_f_op_f32(-617f * global3.a.x), 581f), _wgslsmith_f_op_f32(-global0.a.e))), -1096f, _wgslsmith_f_op_f32(func_1(global3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a.x, -1150f, var_0.x, global3.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) - _wgslsmith_f_op_f32(-1592f + 863f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 1000f);
    global1 = select(vec2<bool>(global3.b.c, global3.e.x), func_4(vec3<bool>(global3.e.x, true, !(1u == u_input.c)), global0.b.a, _wgslsmith_mod_vec3_u32(global0.a.d, select(global0.b.d, vec3<u32>(u_input.a, 39611u, 22844u), !global3.b.d))).a.a.d.yz, !(!(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(global0.b.a, 1021f, vec3<bool>(true, global1.x, true), global3.d, global3.a.x))).x <= _wgslsmith_f_op_f32(func_1(vec4<bool>(global3.e.x, global1.x, true, true), vec4<f32>(global0.b.b, global0.b.e, global0.b.b, var_0.x), 1458f)))));
    global2 = all(func_4(global0.b.c, func_4(func_4(global3.b.d, func_4(vec3<bool>(false, true, true), global0.a.a, vec3<u32>(1u, u_input.a, global3.b.a)).b.a, global3.d ^ vec3<u32>(global0.c.x, global3.c, 2319u)).a.c, global0.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 5553u, global3.b.a), max(vec3<u32>(global0.c.x, 5633u, u_input.a), vec3<u32>(u_input.b.x, global0.b.d.x, global3.b.a)))).b.a, _wgslsmith_mult_vec3_u32(global0.a.d, countOneBits(~global3.d))).a.a.d);
    global2 = any(select(!global0.a.c, select(global0.b.a.d, global0.b.a.d, vec3<bool>(false, false, true)), global3.e.x));
    var var_1 = _wgslsmith_f_op_f32(-1290f - -1661f);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(f32(-1f) * -118f)) + _wgslsmith_div_f32(-146f, _wgslsmith_f_op_f32(step(var_0.x, global0.a.b)))), -158f) + global3.a.zx);
    let var_3 = 1239f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(14066i), -25565i, i32(-1i) * -1i, -func_4(vec3<bool>(false, global3.b.d.x, global0.a.c.x), global3.b, u_input.b).a.a.b) | vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-31412i, global3.b.b), vec2<i32>(global0.b.a.b, global3.b.b)), -46389i, global3.b.b >> (global3.b.a % 32u)), global0.a.a.b, global3.b.b), global3.a.x, ~(~vec3<i32>(1i, _wgslsmith_sub_i32(-39226i, 37446i), -9797i)));
}

