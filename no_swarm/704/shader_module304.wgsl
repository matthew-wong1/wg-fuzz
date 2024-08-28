struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 14152i;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec2<i32>(26865i, 9460i), -74790i), Struct_3(vec2<i32>(9820i, -1i), 14380i), Struct_3(vec2<i32>(1i, 8155i), 0i), Struct_3(vec2<i32>(0i, 2147483647i), -40967i), Struct_3(vec2<i32>(-1i, 0i), 1i), Struct_3(vec2<i32>(21144i, 0i), -24513i), Struct_3(vec2<i32>(33429i, -40587i), 1i), Struct_3(vec2<i32>(-71824i, 24970i), i32(-2147483648)), Struct_3(vec2<i32>(2147483647i, 30137i), 32395i), Struct_3(vec2<i32>(1i, -1i), 31500i), Struct_3(vec2<i32>(-52757i, 1i), -35391i), Struct_3(vec2<i32>(-54607i, i32(-2147483648)), 28362i), Struct_3(vec2<i32>(0i, 11992i), i32(-2147483648)), Struct_3(vec2<i32>(-1i, 40029i), 1i), Struct_3(vec2<i32>(10198i, -1i), i32(-2147483648)), Struct_3(vec2<i32>(-12683i, i32(-2147483648)), 2147483647i), Struct_3(vec2<i32>(0i, -20642i), 0i), Struct_3(vec2<i32>(11177i, 0i), 1i), Struct_3(vec2<i32>(-1i, -42416i), -2855i), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), 2147483647i), Struct_3(vec2<i32>(0i, 2945i), 45767i));

var<private> global3: array<vec2<u32>, 17>;

var<private> global4: array<vec4<u32>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = -14402i;
    let var_1 = Struct_2(-2147483647i, global1.d, !(!(!vec4<bool>(arg_1.a.x, arg_0.x, false, true))), Struct_1(select(global1.b.a, !arg_0.yxy, vec3<bool>(true, arg_1.a.x, global1.a > -1i)), arg_3.c.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-749f, _wgslsmith_f_op_f32(f32(-1f) * -1384f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -2061f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(-1000f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1573f, _wgslsmith_f_op_f32(floor(1509f)), _wgslsmith_f_op_f32(trunc(1000f)), -653f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1962f, 1008f, -367f, 1720f)))), !any(vec2<bool>(arg_1.a.x, false)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(865f, _wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(f32(-1f) * -243f), -231f), vec4<f32>(_wgslsmith_f_op_f32(1900f - -328f), _wgslsmith_f_op_f32(floor(-1340f)), _wgslsmith_div_f32(-1000f, 164f), 547f))), false))));
    let var_3 = 20107u;
    let var_4 = _wgslsmith_sub_i32(countOneBits(select(1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_3.a.b, global1.a, global1.a, -21408i)), vec4<i32>(1i, global1.a, u_input.a, 24991i)), !all(vec2<bool>(true, true)))), 31931i);
    return global3[_wgslsmith_index_u32(~25794u, 17u)];
}

fn func_2() -> u32 {
    global2 = array<Struct_3, 21>();
    let var_0 = ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, countOneBits(global1.b.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26442u, global1.b.b), vec3<u32>(0u, global1.b.b, global1.b.b))), func_3(!(!vec4<bool>(global1.b.a.x, global1.d.a.x, global1.d.a.x, true)), global1.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, global1.a)), Struct_4(Struct_3(vec2<i32>(1i, -326i), -1i), global1.b, global1.d, 0u, all(vec2<bool>(global1.d.a.x, true))))), 14u)];
    var var_1 = u_input.a;
    global2 = array<Struct_3, 21>();
    let var_2 = Struct_2(global1.a & ~_wgslsmith_mult_i32(~global1.a, 1i), global1.d, select(select(vec4<bool>(global1.c.x, true, u_input.a == -22446i, all(vec3<bool>(global1.b.a.x, global1.d.a.x, true))), select(select(global1.c, vec4<bool>(true, false, global1.c.x, global1.b.a.x), true), global1.c, global1.b.b <= var_0.x), select(global1.c, !global1.c, global1.c)), select(!vec4<bool>(true, global1.d.a.x, false, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, global1.d.a.x, false, global1.c.x), false), global1.c.x), select(!(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), select(select(vec4<bool>(false, false, false, global1.d.a.x), global1.c, true), vec4<bool>(true, global1.d.a.x, global1.c.x, true), !global1.d.a.x), true)), Struct_1(global1.b.a, var_0.x));
    return var_0.x;
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(func_2(), 21u)];
    var var_1 = Struct_2(1i >> ((0u >> (global1.d.b % 32u)) % 32u), global1.b, vec4<bool>(global1.c.x, !global1.d.a.x, any(global1.c.yw), true), Struct_1(global1.b.a, global1.d.b));
    var var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(ceil(-461f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(720f, -331f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-248f)), -2098f)))));
    var var_4 = Struct_2(-1i, Struct_1(!var_1.b.a, global1.d.b), !vec4<bool>(~2147483647i > (var_0.a.x & -53048i), !var_1.d.a.x, all(!global1.c), !(global1.b.a.x & false)), Struct_1(global1.d.a, 28103u));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-(i32(-1i) * -22186i), _wgslsmith_div_i32(0i, u_input.a), _wgslsmith_div_i32(global1.a, _wgslsmith_mult_i32(global1.a, -2147483647i)), _wgslsmith_clamp_i32(30055i, global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 1i, 2147483647i), vec3<i32>(-2147483647i, 1i, global1.a)) ^ -32816i) ^ ~_wgslsmith_sub_i32(u_input.a, func_1(vec2<i32>(u_input.a, u_input.a))));
    let var_1 = vec3<bool>(false, true, _wgslsmith_mult_i32(1i, abs(u_input.a)) > 20691i);
    global1 = Struct_2(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(1i, 2147483647i)), Struct_1(global1.b.a, global1.b.b), global1.c, global1.d);
    global2 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1663f - 977f), _wgslsmith_f_op_f32(min(-281f, 949f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(327f, 1140f)))))), var_1.xy)), global1.d.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-265f)))), abs(~_wgslsmith_mod_vec3_u32(~vec3<u32>(10607u, 10905u, 8420u), vec3<u32>(7461u, 13958u, global1.d.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f), -1000f)), -522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f - 438f)) - -1000f), _wgslsmith_f_op_f32(abs(2993f))));
}

