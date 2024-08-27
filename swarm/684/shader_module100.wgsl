struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(54072u, 2836u, 0u), vec2<u32>(40434u, 1u), vec4<i32>(-1i, -31852i, 4014i, 0i), 0u), 812f, vec3<bool>(false, true, true));

var<private> global1: array<u32, 13> = array<u32, 13>(943u, 1u, 4294967295u, 49256u, 0u, 1u, 4294967295u, 47317u, 67873u, 4294967295u, 4294967295u, 83763u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b));
    let var_1 = vec3<f32>(112f, _wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-global0.b))))));
    global0 = Struct_2(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-931f, global0.b)))))))), select(!(!(!global0.c)), global0.c, global0.c.x));
    let var_2 = vec2<i32>(~1i, -26390i);
    var var_3 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), select(select(vec3<bool>(true, true, true), !(!global0.c), false & !global0.c.x), vec3<bool>((false && global0.c.x) | false, all(global0.c.yx), global0.c.x), global0.c));
    return _wgslsmith_f_op_f32(-global0.b);
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(1u, 48923u, u_input.a.x), u_input.a, vec4<i32>(-1i, 27513i, 1i, global0.a.c.x) | vec4<i32>(u_input.d, 1i, 1i, 0i), ~u_input.a.x)))), !select(global0.c, vec3<bool>(true, all(global0.c.yy), true), !select(vec3<bool>(arg_0.b, arg_0.b, false), global0.c, global0.c.x)));
    let var_0 = vec2<bool>(global0.c.x, true);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(func_3(global0.a))))), select(select(global0.c, global0.c, select(select(global0.c, global0.c, vec3<bool>(var_0.x, var_0.x, false)), !global0.c, any(vec4<bool>(true, arg_0.b, var_0.x, var_0.x)))), vec3<bool>(true, var_0.x, !(!arg_0.b)), all(select(select(global0.c, global0.c, var_0.x), select(global0.c, global0.c, var_0.x), true))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-771f, arg_0.a.x, arg_0.b)));
    return vec4<u32>(1u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, ~1u), ~0u << (max(u_input.a.x, 0u) % 32u))), 4294967295u, global1[_wgslsmith_index_u32(0u, 13u)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_4 {
    let var_0 = reverseBits(firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 1u) & _wgslsmith_add_u32(u_input.a.x, 92430u)) >> (~1u % 32u));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 1000f) * vec2<f32>(global0.b, global0.b)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-224f, -1479f), vec2<f32>(global0.b, global0.b), arg_2))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-111f, global0.b) + vec2<f32>(1000f, global0.b)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, global0.b)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(979f, 357f))), vec2<f32>(global0.b, global0.b)))), !(1i == _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.x, global0.a.c.x, -11424i), i32(-1i) * -55356i)));
    global1 = array<u32, 13>();
    let var_2 = Struct_4(Struct_3(var_1.a, arg_2), -_wgslsmith_mult_vec3_i32(arg_0, ~arg_0), _wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(global0.a.c.x, global0.a.c.x, arg_0.x)), arg_0, -arg_0), _wgslsmith_f_op_f32(abs(-131f)), var_1.a.x);
    let var_3 = var_2.a;
    return Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(floor(var_1.a)), all(global0.c.yy)), firstLeadingBit(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, 0i), vec3<i32>(u_input.c.x, var_2.b.x, arg_0.x)))), firstTrailingBit(vec3<i32>(22828i | arg_0.x, 38529i, -2147483647i)) >> (firstTrailingBit(global0.a.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(895f - var_1.a.x), _wgslsmith_f_op_f32(min(var_2.d, -1226f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = func_4(~_wgslsmith_mult_vec3_i32(arg_2.a.c.yxx, _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, -1i, 1i), firstLeadingBit(vec3<i32>(-1i, -7996i, 10163i)))), ~_wgslsmith_clamp_vec4_u32(arg_0, func_2(Struct_3(vec2<f32>(arg_2.b, 641f), true)) >> (arg_0 % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(10u, global0.a.d, arg_0.x, 0u)))), any(vec4<bool>(true, _wgslsmith_f_op_f32(min(407f, -487f)) == global0.b, ~global0.a.c.x >= global0.a.c.x, !arg_2.c.x)));
    global1 = array<u32, 13>();
    global0 = Struct_2(Struct_1(max(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.d, 0u, arg_0.x), vec3<u32>(u_input.a.x, 48142u, u_input.a.x) & vec3<u32>(4294967295u, 31499u, 112140u)), vec3<u32>(~global0.a.a.x, _wgslsmith_mult_u32(28160u, arg_2.a.a.x), ~82684u)), ~reverseBits(select(global0.a.b, u_input.a, var_0.a.b)), vec4<i32>(~2147483647i, -34019i, arg_2.a.c.x, reverseBits(-arg_2.a.c.x)), firstLeadingBit(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e))), vec3<bool>(var_0.a.b, !any(arg_2.c), !(var_0.c.x >= -2147483647i)));
    var var_1 = (u_input.b.x ^ ~_wgslsmith_sub_i32(var_0.c.x, _wgslsmith_dot_vec4_i32(global0.a.c, u_input.e))) >= -_wgslsmith_dot_vec4_i32(arg_2.a.c >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_2.a.b.x, u_input.a.x, 1u), vec4<u32>(0u, 4294967295u, global0.a.b.x, 0u), vec4<u32>(global0.a.d, arg_2.a.a.x, 4294967295u, arg_2.a.a.x)) % vec4<u32>(32u)), arg_2.a.c);
    var var_2 = _wgslsmith_clamp_u32(max(4294967295u, _wgslsmith_dot_vec3_u32(arg_2.a.a, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.d, 4294967295u, 1u) & vec3<u32>(0u, 50164u, u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, arg_0.x, 4294967295u))))), global0.a.a.x, ~(~firstTrailingBit(arg_0.x)));
    return _wgslsmith_f_op_f32(-var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))) * _wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], 31483u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.b, -1000f) * vec3<f32>(-1080f, global0.b, -1939f)), Struct_2(global0.a, -1015f, global0.c))))), global0.b);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b + global0.b), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(400f * var_0.x) + -742f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(213f, -1465f), vec2<f32>(var_0.x, global0.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 849f) - vec2<f32>(-1968f, 3121f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1775f * 349f))))));
    let var_1 = -46265i;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-2226f - 1000f), global0.c);
    var var_2 = func_4(-u_input.b, ~vec4<u32>(46110u, u_input.a.x, ~(~0u), u_input.a.x), true).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(func_4(select(global0.a.c.zzx, u_input.b, false), ~vec4<u32>(global0.a.d, 600u, u_input.a.x, 0u), any(vec4<bool>(var_2.b, true, var_2.b, global0.c.x))).c.x << (u_input.a.x % 32u), -1i), ~countOneBits(~(~vec4<u32>(11666u, 31614u, global0.a.a.x, global0.a.a.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) + -958f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-562f, var_2.a.x, var_0.x, global0.b))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_2.a.x, -987f, 365f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(107f + 1000f) - var_2.a.x) + 208f)));
}

