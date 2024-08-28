struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 21> = array<f32, 21>(377f, -412f, 1108f, 1536f, 633f, -1000f, 320f, 642f, 2110f, 627f, -1298f, 472f, -738f, -807f, 262f, -1021f, 377f, 656f, -239f, -588f, 1696f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global2 = array<f32, 21>();
    let var_0 = abs(_wgslsmith_mod_u32(reverseBits(arg_0.b.d.x), 0u));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(516f * 459f))) > global2[_wgslsmith_index_u32(1u, 21u)];
    global2 = array<f32, 21>();
    var var_2 = true;
    return !vec2<bool>(arg_0.b.d.x >= _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0, 24338u), _wgslsmith_add_u32(arg_0.b.d.x, 23288u)), var_1);
}

fn func_2() -> i32 {
    var var_0 = Struct_5(Struct_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(all(vec4<bool>(false, true, true, true)), true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(25713u, 21u)] * 1850f), 379f) * vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(20997u, 21u)])), -1498f)), global1.x, any(vec3<bool>(false, true, true)) & !any(vec2<bool>(true, true))), 68051i, select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), func_3(Struct_3(u_input.a.x, global0[_wgslsmith_index_u32(12075u, 24u)], u_input.a, Struct_1(u_input.a), Struct_1(u_input.a))), true)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 37684u) << (vec3<u32>(u_input.b.x, u_input.b.x, 62157u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, u_input.b.x, 0u) | vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) & 4294967295u, _wgslsmith_sub_u32(u_input.b.x, ~(u_input.b.x | u_input.b.x))), 1u);
    global1 = u_input.a;
    global1 = u_input.a;
    var var_1 = Struct_4(!var_0.a.a, vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(46760u, _wgslsmith_div_u32(var_0.e, ~var_0.e)), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-972f - global2[_wgslsmith_index_u32(u_input.b.x, 21u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1329f * -251f)))), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.a.x ^ var_0.a.c, _wgslsmith_add_i32(-1i, 2147483647i)), 42036i), _wgslsmith_sub_i32(0i, var_0.b) == max(21269i, var_0.b));
    let var_2 = var_0.a;
    return var_1.c & (_wgslsmith_dot_vec2_i32(u_input.a | vec2<i32>(1i, 0i), -(~u_input.a)) & -2147483647i);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_1 {
    global1 = ~((countOneBits(vec2<i32>(u_input.a.x, 2147483647i)) >> (u_input.b % vec2<u32>(32u))) >> (vec2<u32>(max(_wgslsmith_clamp_u32(0u, u_input.b.x, 68717u), u_input.b.x), u_input.b.x) % vec2<u32>(32u)));
    global1 = u_input.a;
    var var_0 = global0[_wgslsmith_index_u32(select(u_input.b.x, abs(1u) & u_input.b.x, true), 24u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f + global2[_wgslsmith_index_u32(arg_2.x, 21u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 1358f), vec2<f32>(global2[_wgslsmith_index_u32(arg_2.x, 21u)], -238f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(29063u, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)])))))));
    let var_2 = !any(select(select(!vec3<bool>(var_0.b.x, arg_1.b.a.x, var_0.a.x), vec3<bool>(arg_1.b.a.x, false, var_0.b.x), !vec3<bool>(false, var_0.a.x, var_0.b.x)), arg_1.b.a, any(vec2<bool>(true, var_0.b.x))));
    return var_0.c;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = select(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(!(u_input.b.x < 1u), !(u_input.b.x <= 4294967295u), !(73182i < u_input.a.x), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), u_input.b.x <= u_input.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false))))), !(!vec4<bool>(true, any(vec2<bool>(true, false)), true, true)), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)] - 302f), _wgslsmith_f_op_f32(-631f - global2[_wgslsmith_index_u32(u_input.b.x, 21u)])) >= -840f, true || select(true, arg_0.a.x == global1.x, true), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), select(-410f <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), any(vec4<bool>(true, true, true, true)), true)));
    return global0[_wgslsmith_index_u32(52654u, 24u)];
}

fn func_1() -> i32 {
    let var_0 = 399f;
    global2 = array<f32, 21>();
    let var_1 = Struct_3(-countOneBits(~global1.x), func_5(func_4(func_2(), Struct_3(-2147483647i, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 24u)], vec2<i32>(u_input.a.x, global1.x), Struct_1(u_input.a), Struct_1(vec2<i32>(u_input.a.x, 2147483647i))), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 23675u, 12038u)) | ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_add_vec2_i32(u_input.a, min(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(global1.x, u_input.a.x, u_input.a.x))), ~countOneBits(u_input.a))), Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(global1.x, 2147483647i) | vec2<i32>(u_input.a.x, 2147483647i), u_input.a)), func_5(func_4(global1.x, Struct_3(global1.x >> (1u % 32u), func_5(Struct_1(u_input.a)), u_input.a >> (u_input.b % vec2<u32>(32u)), func_5(Struct_1(u_input.a)).c, func_5(Struct_1(u_input.a)).c), select(vec4<u32>(u_input.b.x, 29338u, 8581u, 50350u) << (vec4<u32>(59765u, 35805u, 63788u, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), true))).c);
    global1 = ~vec2<i32>(reverseBits(var_1.b.c.a.x), u_input.a.x);
    global0 = array<Struct_2, 24>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~vec4<i32>(global1.x, -1i, u_input.a.x, min(_wgslsmith_sub_i32(global1.x, u_input.a.x), ~u_input.a.x)), vec4<i32>(global1.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-41859i, reverseBits(u_input.a.x)), global1.x), 2147483647i, global1.x));
    var_0 = ~countOneBits(vec4<i32>(var_0.x, func_1(), max(1i, _wgslsmith_add_i32(u_input.a.x, var_0.x)), -1i));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(127f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(abs(u_input.b.x), 21u)], -340f))))));
    let var_2 = countOneBits(~func_5(Struct_1(func_5(Struct_1(vec2<i32>(39113i, u_input.a.x))).c.a)).d.zxx);
    global2 = array<f32, 21>();
    var var_3 = _wgslsmith_sub_vec4_i32(~(-max(vec4<i32>(u_input.a.x, global1.x, global1.x, var_0.x), vec4<i32>(global1.x, u_input.a.x, var_0.x, -1i))), ~(~(-vec4<i32>(global1.x, 4593i, -38055i, -50065i))));
    var var_4 = u_input.b.x;
    let var_5 = vec4<bool>(_wgslsmith_f_op_f32(step(1f, 110f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 21u)], -883f))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i) | (vec2<i32>(u_input.a.x, var_3.x) | var_3.ww), vec2<i32>(1i, ~global1.x)) > var_3.x, true | (all(vec2<bool>(false, false)) || (true & func_5(Struct_1(var_3.wz)).a.x)), false);
    global1 = max(var_0.wy >> (~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 53700u), vec2<u32>(u_input.b.x, 1u))) % vec2<u32>(32u)), firstTrailingBit(-min(-var_0.ww, -var_0.wx)));
    let x = u_input.a;
    s_output = StorageBuffer(135f);
}

