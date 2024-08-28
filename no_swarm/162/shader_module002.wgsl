struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 21>;

var<private> global2: vec4<u32> = vec4<u32>(31185u, 0u, 4294967295u, 86139u);

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(all(!select(vec2<bool>(true, true), arg_3.d, select(vec2<bool>(arg_2.c.d.x, arg_2.b.a), arg_0.d, arg_2.b.a))));
    return _wgslsmith_f_op_vec2_f32(-arg_2.a.c);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1083f, 868f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-609f, -1081f), vec2<f32>(-990f, 379f), true))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-495f)), _wgslsmith_f_op_f32(abs(221f)))), Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(715f, -532f))), vec2<f32>(1f, 1f))), vec2<bool>(true, true)), Struct_1(any(vec4<bool>(true, true, true, true)) && false), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-111f, 346f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1315f, 452f)))), Struct_1(true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2763f, -1678f)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(-978f, -288f), Struct_1(false), vec2<f32>(-387f, 380f), vec2<bool>(true, true)), Struct_2(vec2<f32>(-309f, 672f), Struct_1(true), vec2<f32>(1078f, 360f), vec2<bool>(false, false)), global1[_wgslsmith_index_u32(global2.x, 21u)], Struct_2(vec2<f32>(-517f, -1058f), Struct_1(true), vec2<f32>(-209f, 1000f), vec2<bool>(true, true))))), vec2<bool>(true, true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)) + _wgslsmith_f_op_f32(floor(var_0.a.c.x)))), -1244f, -256f);
    var var_2 = u_input.b.x;
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = select(all(select(vec3<bool>(true, arg_0.a.b.a, true), select(vec3<bool>(false, arg_0.c.d.x, false), !vec3<bool>(arg_0.c.b.a, true, true), false), vec3<bool>(true, any(vec4<bool>(arg_2.x, arg_0.c.d.x, arg_2.x, arg_0.a.b.a)), func_2().a.d.x))), arg_0.b.a, !arg_0.b.a);
    var var_1 = func_2().c.d;
    global2 = ~((vec4<u32>(global2.x, 74422u, u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u)) >> (u_input.b % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(true, arg_2.x, true, var_1.x)) >> (~u_input.b % vec4<u32>(32u)), u_input.b));
    var_0 = arg_0.c.b.a;
    global3 = -(u_input.e.xy << (_wgslsmith_mod_vec2_u32(global2.zy, u_input.b.ww) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_mod_i32(0i, 1369i), _wgslsmith_add_i32(global3.x, -(~global3.x)));
    return func_2();
}

fn func_1() -> f32 {
    let var_0 = func_4(func_2(), ~(-u_input.a), select(select(vec2<bool>(select(true, false, true), true), vec2<bool>(func_2().a.d.x, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec3<bool>(true, true, true)))), vec2<bool>(true, true), !select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    let var_1 = func_4(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~1u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, 64440u), _wgslsmith_sub_u32(0u, 0u))), 21u)], ~((vec4<i32>(-29659i, 1i, -31441i, u_input.c) << (vec4<u32>(global2.x, u_input.d, global2.x, 2996u) % vec4<u32>(32u))) & (-vec4<i32>(-13160i, u_input.c, 1i, -50291i) >> (countOneBits(vec4<u32>(4294967295u, global2.x, 1u, 0u)) % vec4<u32>(32u)))), vec2<bool>(any(select(!var_0.a.d, var_0.c.d, all(vec3<bool>(true, true, var_0.c.d.x)))), !((-1402f > var_0.a.c.x) & var_0.a.b.a)));
    global2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.wx), 100383u), firstTrailingBit(1u), global2.x, global2.x)), ~(~u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global2.x, _wgslsmith_mod_u32(u_input.d, abs(0u))), abs(vec3<u32>(global2.x, ~u_input.d, 41305u))), global2.x);
    let var_2 = 4294967295u;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.c) + vec2<f32>(var_0.a.a.x, var_0.c.a.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.a.x, 1235f))), var_0.c.c)))), Struct_1(var_0.c.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-208f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.a.x, var_1.a.a.x), _wgslsmith_f_op_vec2_f32(-var_1.c.a), true))))), func_2().c.d);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.a.x)) + _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.a.x, var_0.a.a.x) * var_1.a.c.x) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.x;
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(func_1())), 946f)) <= _wgslsmith_f_op_f32(-2432f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f)) + _wgslsmith_f_op_f32(round(-427f))));
    var var_1 = !select(select(!select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(false, var_0, true, true), true), select(vec4<bool>(true, var_0, true, false), !vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, true, var_0, var_0)), 1u <= firstLeadingBit(global2.x)), vec4<bool>(true, var_0, false == any(vec4<bool>(true, var_0, false, var_0)), all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0))), !vec4<bool>(!var_0, var_0, var_0 & var_0, var_0 == var_0));
    global1 = array<Struct_3, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(594f, 804f, 629f, -946f), vec4<f32>(-1668f, -1000f, 166f, 714f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(784f, -523f, -861f, 454f))), vec4<f32>(-1214f, -495f, -210f, -831f), select(vec4<bool>(var_0, false, false, false), vec4<bool>(false, var_0, false, var_1.x), vec4<bool>(true, true, var_1.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(268f, -245f, -1501f, -432f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1619f, -597f, 1823f, -1110f)))))))));
    var var_3 = global1[_wgslsmith_index_u32(44916u, 21u)];
    var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global2.wy, reverseBits(select(_wgslsmith_add_vec2_u32(u_input.b.zw, vec2<u32>(1u, 0u)), vec2<u32>(34723u, u_input.b.x), var_0))), 21u)];
    let var_4 = vec4<bool>(!var_3.a.b.a, !all(select(var_1.xzz, !var_1.zyw, select(vec3<bool>(var_3.a.b.a, var_0, var_1.x), vec3<bool>(var_0, var_0, false), vec3<bool>(var_3.c.d.x, false, true)))), true, !(var_0 && any(vec4<bool>(var_0, var_1.x, false, var_3.c.d.x))));
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 0i, global3.x), abs(vec4<i32>(u_input.a.x, global3.x, global3.x, -22973i)))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-43794i, max(1i, u_input.a.x)), max(global3.x, -1i)), -677i, ~reverseBits(u_input.c)), abs(global3.x), global3.x | ((-53741i | ~global3.x) ^ global3.x), ~(2147483647i ^ u_input.a.x), _wgslsmith_mult_i32((1i ^ global3.x) ^ (i32(-1i) * -global3.x), global3.x));
}

