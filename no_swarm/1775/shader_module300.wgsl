struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 20> = array<u32, 20>(45345u, 4294967295u, 1u, 6606u, 12888u, 70371u, 0u, 9923u, 78524u, 4294967295u, 0u, 19496u, 0u, 40259u, 14416u, 1u, 57773u, 1u, 0u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3;
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + global0.b))), global0.c);
    var var_1 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, 25182i, u_input.b, -2147483647i)), countOneBits(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], global1[_wgslsmith_index_u32(1u, 20u)]) % vec4<u32>(32u))));
    var var_2 = vec2<i32>(abs(_wgslsmith_div_i32(abs(-2147483647i), ~_wgslsmith_mod_i32(u_input.b, var_1.x))), ~56388i);
    var var_3 = vec4<i32>(-u_input.b, u_input.b, -_wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, -1077i, u_input.b), vec3<i32>(39548i, 2147483647i, var_1.x), vec3<i32>(-44434i, 2147483647i, -2597i)), firstLeadingBit(vec3<i32>(var_2.x, 0i, 8889i)), vec3<bool>(arg_3.c.c, true, true)), vec3<i32>(_wgslsmith_add_i32(-37077i, -9462i), 0i, select(u_input.b, 2147483647i, false))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -23881i), vec2<i32>(var_1.x, var_1.x)), -var_1.xw), ~(~var_1.zy)), u_input.b));
    return ~(~(_wgslsmith_sub_u32(abs(1u), u_input.a) & ~4294967295u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<u32, 20>();
    global0 = Struct_1(global0.a, 443f, global0.c);
    var var_0 = vec3<u32>(abs(abs(global1[_wgslsmith_index_u32(1u, 20u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(Struct_1(global0.a, -498f, false), 1u, vec2<f32>(402f, global0.b), Struct_2(vec4<bool>(true, false, global0.a.x, true), 622f, Struct_1(vec3<bool>(false, false, true), 342f, global0.c))), ~global1[_wgslsmith_index_u32(u_input.a, 20u)]), 20u)] << (u_input.a % 32u), u_input.a << (select(76972u, ~0u, true) % 32u));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-446f))), -(u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 116836u, 0u), vec3<u32>(var_0.x, u_input.a, 28918u)) % 32u)) > 0i);
    let var_1 = 39421u;
    return Struct_1(vec3<bool>(any(select(vec3<bool>(false, true, global0.c), vec3<bool>(true, global0.c, global0.c), global0.a)), !(!all(vec4<bool>(false, true, false, false))), false), global0.b, all(select(!select(vec4<bool>(global0.a.x, false, global0.c, true), vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c)), select(!vec4<bool>(global0.a.x, global0.c, false, global0.a.x), select(vec4<bool>(false, true, false, global0.a.x), vec4<bool>(global0.c, global0.a.x, false, true), vec4<bool>(global0.c, false, global0.c, global0.c)), all(global0.a)), vec4<bool>(global0.c, true, select(global0.c, false, global0.a.x), any(vec2<bool>(false, global0.a.x))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = 4294967295u;
    global1 = array<u32, 20>();
    var_0 = ~firstLeadingBit(firstTrailingBit(1u));
    var var_1 = any(arg_2.c.a.yz);
    let var_2 = _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 20u)]), vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 20u)])), max(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true)), vec2<u32>(33632u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79451u, 20u)], 20u)]) >> (vec2<u32>(global1[_wgslsmith_index_u32(75374u, 20u)], global1[_wgslsmith_index_u32(84634u, 20u)]) % vec2<u32>(32u)))) % vec2<u32>(32u)), max(~firstLeadingBit(~vec2<u32>(14365u, 4294967295u)), vec2<u32>(~_wgslsmith_add_u32(2191u, 0u), ~countOneBits(4294967295u))));
    return _wgslsmith_f_op_f32(-arg_2.c.b);
}

fn func_1() -> Struct_2 {
    var var_0 = (-_wgslsmith_div_vec2_i32(vec2<i32>(-18381i, 1i) << (vec2<u32>(u_input.a, 32380u) % vec2<u32>(32u)), -vec2<i32>(u_input.b, u_input.b)) << ((select(~vec2<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 20u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 20u)], u_input.a), select(global0.a.yx, vec2<bool>(global0.c, global0.c), vec2<bool>(true, global0.c))) | (vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(15738u, 20u)]) >> (~vec2<u32>(u_input.a, 65964u) % vec2<u32>(32u)))) % vec2<u32>(32u))) ^ (~(~abs(vec2<i32>(-6730i, u_input.b))) ^ ~(-select(vec2<i32>(38059i, u_input.b), vec2<i32>(-35805i, u_input.b), global0.a.x)));
    global1 = array<u32, 20>();
    global0 = Struct_1(vec3<bool>(true, 4294967295u > global1[_wgslsmith_index_u32(~min(0u, 4294967295u), 20u)], all(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f) - _wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_f_op_f32(func_4(select(vec3<bool>(global0.c, false, global0.a.x), global0.a, u_input.b <= var_0.x), func_2(vec3<i32>(1i, 12036i, u_input.b)), Struct_2(select(vec4<bool>(false, global0.a.x, global0.c, global0.a.x), vec4<bool>(false, true, false, global0.c), vec4<bool>(global0.a.x, false, global0.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -852f), func_2(vec3<i32>(48612i, 11354i, var_0.x)))))), true);
    global0 = Struct_1(!global0.a, global0.b, !global0.a.x);
    let var_1 = 1u;
    return Struct_2(vec4<bool>(global0.c, true, false, true), -229f, func_2(reverseBits(vec3<i32>(u_input.b, -34122i, _wgslsmith_sub_i32(var_0.x, -20313i)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global0 = func_1().c;
    let var_0 = 14796i;
    var var_1 = Struct_1(func_2(vec3<i32>(var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_0, -6175i), vec4<i32>(var_0, 14869i, 2147483647i, var_0)) | 1i, 45502i)).a, _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-1203f * 1135f)), !any(select(arg_0.a, vec4<bool>(false, arg_1.c.a.x, global0.c, arg_0.a.x), arg_0.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1207f, arg_0.b, arg_0.c.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global0.b, arg_1.c.b), vec3<f32>(var_1.b, arg_1.c.b, var_1.b), vec3<bool>(global0.a.x, var_1.c, global0.a.x)))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c.b, -1160f, global0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1656f, arg_1.c.b, -2490f) + vec3<f32>(arg_0.b, var_1.b, arg_0.c.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -1523f, var_1.b) * vec3<f32>(arg_0.b, arg_1.b, 1052f))))))), true));
    let var_3 = arg_1.a.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(-arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    let var_0 = ~select(~select(abs(u_input.a), ~u_input.a, false), global1[_wgslsmith_index_u32((firstTrailingBit(1u) ^ u_input.a) >> (select(~u_input.a, u_input.a, true) % 32u), 20u)], !global0.c);
    var var_1 = -min(-4920i, min(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(15185i, u_input.b) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<i32>(0i, 25508i))));
    let var_2 = select(max(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, var_0)), max(~vec2<u32>(64819u, var_0), ~vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(var_0, 20u)]))), vec2<u32>(~14566u, u_input.a)), ~countOneBits(~reverseBits(vec2<u32>(u_input.a, 43969u))), _wgslsmith_mult_i32(u_input.b, ~(u_input.b ^ -35723i)) != -32969i);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - global0.b), _wgslsmith_f_op_f32(-global0.b)) - -298f) + global0.b), global0.b, _wgslsmith_f_op_f32(func_5(func_1(), func_1())), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-abs(u_input.b), ~(~(-u_input.b))), var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-377f, global0.b)) * var_3.x) - 216f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.x, -2187f)) + var_3.x) * 467f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1815f)) - var_3.x)));
}

