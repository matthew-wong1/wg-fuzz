struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec4<f32> = vec4<f32>(-757f, -179f, 1571f, 2701f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.a) ^ reverseBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), ~firstLeadingBit(~vec4<u32>(59970u, u_input.d.x, u_input.c.x, 59135u))) & countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.a), vec4<u32>(u_input.c.x, 1u, 4252u, u_input.a) | vec4<u32>(u_input.a, u_input.d.x, u_input.a, 33775u)));
    let var_1 = select(!(!vec3<bool>(true, true, all(vec2<bool>(true, true)))), vec3<bool>(true, true, true), true);
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~firstLeadingBit(_wgslsmith_mult_u32(1u, var_0.x)), 60426u), vec3<u32>(~_wgslsmith_div_u32(u_input.d.x, 4294967295u), var_0.x, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.d.x, u_input.a, 62769u)), var_0.x)));
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(48899i, -31767i, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.e.x), -1i), vec2<i32>(2147483647i >> (var_0.x % 32u), -32624i))), ~vec3<i32>(u_input.b | 11498i, i32(-1i) * -2147483647i, 1i >> (~var_0.x % 32u)), _wgslsmith_mod_vec3_i32(~(vec3<i32>(u_input.e.x, -33882i, u_input.e.x) & vec3<i32>(u_input.b, -14137i, u_input.b)) | ~(~vec3<i32>(u_input.b, u_input.e.x, u_input.b)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.e.x) & vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(0i, 2147483647i, u_input.b)), vec3<i32>(_wgslsmith_mult_i32(u_input.e.x, u_input.b), u_input.b, _wgslsmith_mult_i32(7310i, -1i)), var_1.x)));
    let var_4 = reverseBits(u_input.d.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1000f))));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(874f, -2166f)) + global1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1157f, 619f, 1178f, global1.x) * vec4<f32>(global1.x, global1.x, -1016f, -264f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -456f, global1.x, global1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 102f) + vec4<f32>(global1.x, 110f, global1.x, global1.x)))))));
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 22u)];
    var var_1 = _wgslsmith_div_i32(-u_input.e.x & var_0.a, (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -783i), u_input.e) << (8401u % 32u)) | countOneBits(14435i));
    let var_2 = reverseBits(reverseBits(select(vec3<i32>(0i, var_0.a, -1i), vec3<i32>(-2147483647i, u_input.b, 7032i) | vec3<i32>(0i, 43053i, var_0.a), vec3<bool>(false, true, true)) & reverseBits(vec3<i32>(0i, 12965i, 40089i))));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(69221u, countOneBits(16593u)), u_input.c);
    return Struct_1(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(var_2.x, var_0.a), -var_2.x) ^ 1i));
}

fn func_1(arg_0: f32) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 22u)];
    var var_1 = Struct_1(-5940i);
    var_1 = func_2();
    var var_2 = vec4<u32>(u_input.d.x, ~u_input.d.x, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, ~(~3420u)), _wgslsmith_div_u32(select(10993u, 70369u, any(vec2<bool>(true, true))), 45028u)));
    var var_3 = global0[_wgslsmith_index_u32(850u, 22u)];
    return -_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(var_0.a, 2147483647i, var_0.a), vec3<i32>(-510i, var_3.a, u_input.e.x), vec3<bool>(true, true, true)), ~vec3<i32>(var_0.a, var_3.a, u_input.e.x)), (vec3<i32>(1i, var_3.a, -2147483647i) >> (u_input.d % vec3<u32>(32u))) >> (select(u_input.d, var_2.zwy, vec3<bool>(true, true, false)) % vec3<u32>(32u))) >> (var_2.zwx % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(u_input.b);
    return Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, arg_0.x, ~(-1i | -u_input.e.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(!(u_input.e.x >= _wgslsmith_mult_i32(i32(-1i) * -22213i, func_4(vec3<i32>(arg_2.a, arg_3.x, arg_2.a), vec3<u32>(u_input.c.x, 1u, u_input.d.x), 800f).a)), !(!(-1i < arg_3.x)));
    var var_1 = vec3<f32>(1348f, global1.x, _wgslsmith_f_op_f32(min(-855f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-515f * arg_1.x), _wgslsmith_f_op_f32(sign(global1.x))), arg_1.x))));
    let var_2 = -1268f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, _wgslsmith_f_op_f32(-1f), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_f32(trunc(-2234f)))));
    var var_4 = vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_div_i32(~2147483647i, -63923i | arg_0.a), max(-arg_0.a, ~(arg_3.x ^ arg_2.a))), (11887i << (_wgslsmith_add_u32(u_input.d.x, ~u_input.c.x) % 32u)) ^ func_2().a, arg_2.a, arg_0.a);
    return Struct_1(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(-(~vec3<i32>(u_input.b, -2147483647i, -16296i) | func_1(-1084f)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 10660u), select(u_input.d, u_input.d, vec3<bool>(false, false, true))), abs(u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, u_input.c.x), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(994f * 143f), global1.x)))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(max(global1.x, global1.x))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28853u, ~_wgslsmith_sub_u32(u_input.a, abs(u_input.d.x)), u_input.c.x), 22u)], ~_wgslsmith_clamp_vec2_i32(~u_input.e, u_input.e, u_input.e));
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a & u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 29551u, 18714u), vec4<u32>(38387u, u_input.a, u_input.d.x, u_input.a)), ~u_input.c.x, ~u_input.a), ~countOneBits(vec4<u32>(38741u, u_input.c.x, 2821u, u_input.c.x))));
    global0 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-510f, _wgslsmith_f_op_f32(func_3()), global1.x, _wgslsmith_f_op_f32(abs(global1.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(496f, var_2.x, var_2.x, global1.x) - vec4<f32>(var_2.x, var_2.x, -697f, -1449f)) - vec4<f32>(252f, global1.x, -900f, 537f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, var_2.x, var_2.x, var_2.x)))))));
    var var_3 = vec4<u32>(_wgslsmith_add_u32(var_1.x, 1808u | u_input.a), 0u, ~(~4294967295u), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.www) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.xww) + var_2.yyx)), _wgslsmith_dot_vec2_u32(var_1.yw, var_3.zw), vec3<u32>(var_3.x, ~406u, 4294967295u), vec3<i32>(_wgslsmith_div_i32(var_0.a | var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(11955i, 58845i), vec2<i32>(-23349i, u_input.e.x)) & u_input.b), 2147483647i, func_1(global1.x).x));
}

