struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<f32, 28> = array<f32, 28>(778f, 1037f, 849f, 535f, -304f, -412f, -545f, 1786f, 1137f, -767f, -503f, 1025f, 285f, -650f, 312f, 1314f, -318f, 1357f, 1508f, 1041f, -1000f, 968f, -745f, 1883f, -188f, -1207f, -1021f, 1119f);

var<private> global2: array<Struct_1, 32>;

var<private> global3: Struct_4;

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    let var_0 = !any(vec2<bool>(true, 0u <= select(u_input.c.x, 1u, false)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-365f, -1000f))))))), any(select(vec3<bool>(global3.b.e.x != 4294967295u, true, any(vec3<bool>(true, global3.d.d, var_0))), !vec3<bool>(var_0, true, var_0), !select(vec3<bool>(true, true, var_0), vec3<bool>(false, global3.d.d, global0[_wgslsmith_index_u32(arg_0, 20u)]), false))), _wgslsmith_div_vec4_f32(global3.a.b.c, global3.a.b.c), Struct_1(0u, -2147483647i, _wgslsmith_sub_i32(-firstTrailingBit(global3.a.c.c), -_wgslsmith_sub_i32(u_input.a.x, -2147483647i)), global3.c.e.d, select(~(vec3<u32>(arg_0, arg_0, 4294967295u) & global3.d.e), vec3<u32>(_wgslsmith_dot_vec3_u32(global3.a.b.d.e, vec3<u32>(59516u, u_input.c.x, 1u)), global3.c.e.a << (u_input.c.x % 32u), min(u_input.c.x, 0u)), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], false)))), global2[_wgslsmith_index_u32(~4294967295u, 32u)]);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(564f + var_1.c.x) - _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(abs(~0u), 28u)]))), !global3.b.d, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.b.a))))), 827f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -399f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f + var_1.a)))), Struct_1(~global3.a.b.e.a, -var_1.e.c, -2147483647i, !select(true, u_input.c.x == 0u, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global3.b.d))), firstTrailingBit(abs(global3.b.e & var_1.d.e))), var_1.e);
    var var_3 = u_input.b.xx;
    global3 = Struct_4(Struct_3(vec4<u32>(firstLeadingBit(firstTrailingBit(65061u)), arg_0, ~39221u | var_2.d.e.x, 58849u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), true, global3.c.c, Struct_1(4294967295u, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-12684i, var_3.x)), abs(global3.b.b), false, global3.c.e.e), var_1.e), Struct_1(64448u, ~(-3519i) & _wgslsmith_div_i32(var_3.x, var_1.e.c), ~abs(u_input.b.x), false, _wgslsmith_clamp_vec3_u32(vec3<u32>(13357u, arg_0, var_1.d.e.x), vec3<u32>(global3.a.b.d.e.x, u_input.c.x, 1880u), vec3<u32>(0u, var_2.d.a, arg_0))), 0i), Struct_1(~_wgslsmith_div_u32(140u, ~97521u), _wgslsmith_mult_i32(-5533i, 2147483647i << (u_input.c.x % 32u)) | max(~var_1.e.b, _wgslsmith_clamp_i32(u_input.a.x, 1i, 2147483647i)), var_2.d.b, var_0, firstTrailingBit(vec3<u32>(10344u, global3.a.c.e.x, var_1.e.e.x)) >> (var_1.d.e % vec3<u32>(32u))), global4[_wgslsmith_index_u32(arg_0, 30u)], var_1.e, _wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(46754u, global3.d.a, global3.e.x, 36740u)), _wgslsmith_sub_vec4_u32(global3.a.a, ~vec4<u32>(var_2.e.a, u_input.c.x, 0u, 1u))) >> (global3.a.a % vec4<u32>(32u)));
    return abs(0u);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(global3.e.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global3.b.a, 4294967295u, 32203u), vec4<u32>(global3.e.x, 47652u, global3.c.d.a, global3.a.c.a))) >> (~global3.e.xwy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global3.a.a.yxz, global3.b.e), vec3<u32>(1u, global3.c.d.a, ~u_input.c.x), global3.e.zww | global3.a.b.d.e));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.b.c.x + _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(global3.c.a - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 287f, false))))), !((true && global0[_wgslsmith_index_u32(~16396u, 20u)]) | any(vec2<bool>(global3.d.d, false))), true, !global3.a.b.d.d);
    global4 = array<Struct_2, 30>();
    let var_2 = ~vec2<u32>(func_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, global3.e.x), _wgslsmith_mod_u32(27780u, global3.d.e.x)), global3.c.c.yx), ~global3.a.c.e.x);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_mult_u32((~u_input.c.x << ((24272u >> (var_2.x % 32u)) % 32u)) >> (~global3.a.b.d.e.x % 32u), abs(4294967295u)), 1u ^ var_2.x);
    return global4[_wgslsmith_index_u32(18319u, 30u)];
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_4 {
    global3 = Struct_4(global3.a, global3.c.e, func_2(_wgslsmith_f_op_f32(f32(-1f) * -759f)), Struct_1(global3.a.b.e.a, u_input.a.x, max(-41362i, global3.d.c), func_2(-385f).e.d, max(select(global3.b.e, vec3<u32>(1u, 2175u, u_input.c.x), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(2068u, 20u)]), vec3<bool>(false, false, false), true)), ~vec3<u32>(81032u, arg_1, 0u))), vec4<u32>(36341u, select(~0u, u_input.c.x, global3.d.d), global3.a.c.a, arg_1 << (1u % 32u)));
    global3 = Struct_4(Struct_3(max(~firstTrailingBit(global3.e), _wgslsmith_sub_vec4_u32(abs(global3.e), vec4<u32>(86352u, arg_1, global3.c.d.e.x, 1u))), func_2(_wgslsmith_f_op_f32(max(-334f, global1[_wgslsmith_index_u32(~global3.a.c.e.x, 28u)]))), global2[_wgslsmith_index_u32(abs(~4294967295u), 32u)], _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, 11066i, -2147483647i) | (-1i | u_input.a.x), -global3.a.c.b)), func_2(-767f).e, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f + 1265f) * _wgslsmith_f_op_f32(global3.c.a - 1000f))))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(select(25532u, 103948u, global0[_wgslsmith_index_u32(arg_1, 20u)]), 0u), 1u), 28u)]).d, ~global3.e);
    global0 = array<bool, 20>();
    var var_0 = global3.a;
    var var_1 = firstTrailingBit(-firstTrailingBit(firstTrailingBit(countOneBits(0i))));
    return Struct_4(Struct_3(vec4<u32>(6414u, firstTrailingBit(~global3.a.c.a), ~global3.e.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.b.a, 31608u, 0u, var_0.c.a), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 16457u, 0u, 65117u), var_0.a))), Struct_2(_wgslsmith_div_f32(global3.c.c.x, _wgslsmith_f_op_f32(arg_0 + global3.a.b.a)), global3.d.d, _wgslsmith_f_op_vec4_f32(trunc(var_0.b.c)), Struct_1(~u_input.c.x, 0i >> (arg_1 % 32u), _wgslsmith_sub_i32(12705i, u_input.b.x), var_0.c.d, _wgslsmith_mod_vec3_u32(var_0.b.e.e, global3.c.d.e)), global2[_wgslsmith_index_u32(firstLeadingBit(44606u), 32u)]), func_2(global1[_wgslsmith_index_u32(19482u, 28u)]).e, (global3.d.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), var_0.b.d.e.yx) % 32u)) ^ select(-25043i, ~var_0.c.c, false)), global2[_wgslsmith_index_u32(u_input.c.x, 32u)], func_2(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1952f + -460f)))), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-181f, 1843f)) + var_0.b.a)))).e, vec4<u32>(~61980u, var_0.a.x, _wgslsmith_mult_u32(~4294967295u, ~reverseBits(var_0.c.e.x)), func_3(~arg_1, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.a.b.c.x, var_0.b.a)))) & 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 30>();
    var var_0 = func_1(163f, global3.c.e.a);
    global4 = array<Struct_2, 30>();
    var var_1 = vec4<bool>(false, global3.c.d.d, false, any(vec3<bool>(global3.a.b.b, func_1(-1576f, ~15278u).a.c.d, global0[_wgslsmith_index_u32(var_0.d.e.x, 20u)])));
    var_1 = !select(select(vec4<bool>(!var_1.x, global0[_wgslsmith_index_u32(~0u, 20u)], u_input.c.x >= u_input.c.x, !global3.b.d), vec4<bool>(global3.c.b, true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(92988u, 20u)])), all(var_1.zww)), select(true, global3.a.b.c.x >= var_0.c.a, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(global3.a.c.e.x, 20u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global3.a.b.e.d), vec4<bool>(false, var_0.b.d, true, var_0.a.b.d.d), false & global0[_wgslsmith_index_u32(25471u, 20u)]), vec4<bool>(true, true, 4294967295u > u_input.c.x, all(vec3<bool>(false, var_0.a.c.d, false))), true | all(vec2<bool>(true, true))), select(select(vec4<bool>(var_1.x, true, false, global0[_wgslsmith_index_u32(4294967295u, 20u)]), !vec4<bool>(true, var_0.a.b.e.d, var_1.x, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(var_0.c.e.d, global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global3.d.d, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_0.a.c.d, false, true, true)), !select(vec4<bool>(var_1.x, var_0.b.d, false, global3.d.d), vec4<bool>(var_1.x, true, global3.b.d, var_1.x), false)));
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(1u | (global3.b.e.x ^ u_input.c.x), ~1u), countOneBits(~14365u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.c.a))), -1000f));
}

