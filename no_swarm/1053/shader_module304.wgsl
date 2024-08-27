struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-1i, -35442i, 1i, 23363i, -38940i, -11786i, -1i);

var<private> global1: Struct_1;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(46710u, global2.b.b, 37488u, global2.b.b) & vec4<u32>(1u, 1u, 23334u, global1.b), abs(vec4<u32>(arg_3.b.b, arg_3.b.a.x, arg_0.x, arg_0.x)))) >> (vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mult_u32(arg_3.b.a.x, arg_3.b.b)), _wgslsmith_mod_u32(~4294967295u, 1u)), ~_wgslsmith_div_u32(~4294967295u, global1.b), (arg_0.x ^ ~global2.b.b) | ~30123u, countOneBits(global2.b.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.b, 59148u), vec2<u32>(63230u, global1.a.x)) % 32u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.e * arg_3.b.d.x), arg_3.b.d.x)), _wgslsmith_f_op_f32(1304f * _wgslsmith_f_op_f32(select(arg_3.b.c.x, _wgslsmith_div_f32(arg_3.a.x, global1.e), global0[_wgslsmith_index_u32(37233u, 7u)] == arg_2))), true)));
    let var_2 = arg_3;
    let var_3 = global2.b;
    global1 = global2.b;
    return vec4<f32>(-418f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(min(global1.e, 1120f)))), -378f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.c.x, var_1, true)) * var_2.b.d.x) - _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(min(-115f, -443f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f)));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec2<f32> {
    global0 = array<i32, 7>();
    global1 = Struct_1(global2.b.a, _wgslsmith_dot_vec2_u32(global2.b.a, vec2<u32>(~global1.a.x >> (21252u % 32u), _wgslsmith_sub_u32(~1u, ~global1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(global1.a.x, global2.b.b, 4294967295u), true, 0i, Struct_2(global1.c.zz, Struct_1(global1.a, global2.b.b, vec4<f32>(936f, global1.d.x, 586f, global2.b.e), vec3<f32>(global2.b.e, -1611f, global1.c.x), -542f))))) * _wgslsmith_f_op_vec4_f32(-global1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.e, global1.e, 942f, global2.a.x))) * global1.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global2.a.x, 414f, 1893f)))), global1.c.yyx, _wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.d.x * global2.a.x)) + _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(4294967295u, 30479u, global1.b) ^ vec3<u32>(global2.b.b, global1.b, global2.b.b), false, u_input.a.x, Struct_2(global1.d.xz, global2.b))).x))));
    let var_0 = global2.b.c;
    let var_1 = global2.b;
    let var_2 = vec4<u32>(global1.b, ~min(_wgslsmith_dot_vec2_u32(~global1.a, vec2<u32>(var_1.a.x, var_1.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b, 13229u, var_1.b), ~vec3<u32>(global2.b.a.x, 6256u, 25767u))), 32170u | _wgslsmith_clamp_u32(~(~global2.b.a.x), 4550u, _wgslsmith_add_u32(global2.b.a.x, min(49283u, 41743u))), var_1.b);
    return global2.b.d.yy;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2(18373i, _wgslsmith_add_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(global2.b.a.x, 7u)], -8928i) ^ _wgslsmith_add_i32(-26292i, -25008i), select(~(-2052i), _wgslsmith_sub_i32(1940i, 0i), true)))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.a.x, arg_3.a.x), vec3<u32>(4294967295u, 11847u, arg_3.b))), global1.a.x), ~arg_3.b, _wgslsmith_f_op_vec4_f32(-global2.b.c), vec3<f32>(_wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(-322f * arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x)), _wgslsmith_f_op_f32(step(-214f, _wgslsmith_f_op_f32(513f - -349f)))), arg_3.c.x));
    global0 = array<i32, 7>();
    var var_0 = ~(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.x, u_input.a.x), arg_2.yz, -arg_2.yx), ~u_input.a, arg_2.xy));
    let var_1 = Struct_1(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.a, arg_0.a), ~20018u)), abs(~(~global1.a.x)), _wgslsmith_f_op_vec4_f32(-arg_3.c), vec3<f32>(arg_3.d.x, -1500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1545f, arg_0.e) * -314f));
    let var_2 = min(21986u, 54886u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1000f), vec2<f32>(1000f, var_1.d.x))), global2.a, _wgslsmith_f_op_f32(sign(683f)) > var_1.c.x)) + arg_3.c.xz), arg_0);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = ~(~(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 0u, global2.b.a.x), 1u)));
    let var_1 = func_1(Struct_1(max(~vec2<u32>(global2.b.a.x, global1.b), _wgslsmith_add_vec2_u32(global2.b.a, arg_2.b.a)), 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(global1.c)), arg_2.b.c)), arg_2.b.c), global2.b.c.wxw, _wgslsmith_f_op_f32(248f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2434f, global1.e))))), -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(0u << (1u % 32u)), ~(~global1.b)), 7u)], _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(arg_2.b.a.x, 7u)], 9260i, 17880i)) & (vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(68202u, 7u)], 0i) & vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 7u)], global0[_wgslsmith_index_u32(26906u, 7u)], 44722i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, min(global0[_wgslsmith_index_u32(111585u, 7u)], 14554i), u_input.a.x), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-10179i, global0[_wgslsmith_index_u32(arg_2.b.a.x, 7u)], global0[_wgslsmith_index_u32(global1.b, 7u)])), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x, u_input.a.x))))), Struct_1((global1.a >> (countOneBits(global1.a) % vec2<u32>(32u))) << (~vec2<u32>(113603u, 53150u) % vec2<u32>(32u)), reverseBits(global2.b.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b.c * vec4<f32>(arg_2.b.c.x, -499f, 398f, -567f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global2.b.c.x, 1000f, arg_2.a.x) * vec4<f32>(-849f, arg_2.b.c.x, -431f, global1.c.x)) - vec4<f32>(arg_2.a.x, global1.e, 220f, -726f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-854f))), -1323f, global1.e), -121f));
    let var_2 = global0[_wgslsmith_index_u32(abs(~4294967295u >> (abs(arg_2.b.b) % 32u)) & 10355u, 7u)] << (reverseBits(_wgslsmith_clamp_u32(13569u, global1.b, ~(~arg_2.b.b))) % 32u);
    let var_3 = func_1(func_1(arg_2.b, _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(-15641i, ~0i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global2.b.b << (var_1.b.a.x % 32u), 7u)], ~u_input.a.x)), _wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(6024u, 7u)], -1i)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, -17285i, u_input.a.x)), -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_2.b.b, 7u)], var_2))), func_1(func_1(Struct_1(vec2<u32>(global2.b.a.x, 17917u), 9869u, vec4<f32>(216f, arg_2.b.d.x, 731f, global1.d.x), global1.c.zxw, 857f), -global0[_wgslsmith_index_u32(2471u, 7u)], ~vec3<i32>(u_input.a.x, 25108i, 74223i), arg_2.b).b, 2147483647i | global0[_wgslsmith_index_u32(~10470u, 7u)], abs(reverseBits(vec3<i32>(2147483647i, -36257i, var_2))), func_1(arg_2.b, ~25006i, ~vec3<i32>(0i, 1i, u_input.a.x), global2.b).b).b).b, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), vec3<i32>(u_input.a.x, i32(-1i) * -3506i, ~1i), func_1(global2.b, reverseBits(abs(firstTrailingBit(u_input.a.x))), -max(max(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(28845u, 7u)], -76631i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 7u)], var_2, global0[_wgslsmith_index_u32(arg_2.b.a.x, 7u)])), abs(vec3<i32>(-37668i, 1i, var_2))), global2.b).b).b;
    global2 = arg_2;
    return select(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(var_3.a.x, 1u, var_1.b.b, arg_2.b.a.x), ~vec4<u32>(1u, 17656u, global1.b, 67856u)), abs(~min(vec4<u32>(32357u, arg_0, 89490u, 57027u), vec4<u32>(4294967295u, 19327u, 4294967295u, arg_0))), abs(vec4<u32>(select(713u, var_1.b.b, true), 20464u, abs(global2.b.b), _wgslsmith_mult_u32(44004u, var_1.b.b)))), vec4<u32>(90440u, firstLeadingBit(~arg_2.b.a.x), var_1.b.b, global2.b.a.x), any(vec2<bool>(false, all(vec3<bool>(arg_1, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, _wgslsmith_dot_vec4_u32(func_4(global2.b.b, true, func_1(Struct_1(global2.b.a, global1.a.x, vec4<f32>(-589f, global2.a.x, -2398f, global2.b.e), global2.b.d, global2.b.d.x), ~(-1i), -vec3<i32>(-29273i, u_input.a.x, global0[_wgslsmith_index_u32(0u, 7u)]), Struct_1(vec2<u32>(56975u, global2.b.a.x), global1.a.x, vec4<f32>(1000f, global1.e, global2.a.x, global2.a.x), vec3<f32>(351f, global2.b.d.x, global1.d.x), -357f))), vec4<u32>(_wgslsmith_sub_u32(global2.b.b, 1u), _wgslsmith_add_u32(global1.a.x, global1.b), ~4294967295u, ~1u) | ~vec4<u32>(3727u, global1.a.x, 4294967295u, 43293u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(523f)), _wgslsmith_f_op_f32(trunc(global1.e)), true)), global1.d.x, 1f, -1000f), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(global2.a.x * 1000f)), _wgslsmith_f_op_f32(global2.b.d.x * global2.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(global2.a.x + global1.c.x)))), all(vec3<bool>(global2.b.a.x == global1.b, all(vec2<bool>(false, true)), true)))), func_1(global2.b, max(reverseBits(u_input.a.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, global0[_wgslsmith_index_u32(global2.b.b, 7u)]), vec3<i32>(-1i, global0[_wgslsmith_index_u32(2535u, 7u)], global0[_wgslsmith_index_u32(global2.b.a.x, 7u)])), 1i), ~vec3<i32>(-1i, global0[_wgslsmith_index_u32(~27763u, 7u)], max(u_input.a.x, global0[_wgslsmith_index_u32(global2.b.a.x, 7u)])), Struct_1(vec2<u32>(min(global1.a.x, 12560u), ~global1.a.x), global1.a.x, vec4<f32>(_wgslsmith_f_op_f32(abs(-454f)), global1.e, _wgslsmith_f_op_f32(sign(-1270f)), _wgslsmith_f_op_f32(-1577f * 1200f)), global1.c.zyz, _wgslsmith_f_op_f32(-270f * global1.c.x))).b.c.xxy, func_1(global2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(17871i ^ u_input.a.x, global0[_wgslsmith_index_u32(global1.a.x, 7u)]), vec2<i32>(abs(u_input.a.x), i32(-1i) * -1i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(global0[_wgslsmith_index_u32(global2.b.a.x, 7u)], global0[_wgslsmith_index_u32(global1.b, 7u)], 14674i), min(vec3<i32>(global0[_wgslsmith_index_u32(global1.b, 7u)], global0[_wgslsmith_index_u32(39481u, 7u)], global0[_wgslsmith_index_u32(55233u, 7u)]), vec3<i32>(0i, u_input.a.x, 0i)), true), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -59013i, 1i), select(vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 7u)], global0[_wgslsmith_index_u32(global2.b.a.x, 7u)], 0i), vec3<i32>(30576i, global0[_wgslsmith_index_u32(global2.b.a.x, 7u)], u_input.a.x), true))), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(15923u, global2.b.b), global1.a), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, 665f, global1.e, global2.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.b.d, vec3<f32>(219f, 473f, -2248f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f - 588f)))).a.x);
    var var_1 = func_1(func_1(var_0, u_input.a.x, min(~_wgslsmith_div_vec3_i32(vec3<i32>(-31464i, -36888i, global0[_wgslsmith_index_u32(global1.a.x, 7u)]), vec3<i32>(27558i, -8965i, -1i)), firstLeadingBit(~vec3<i32>(u_input.a.x, 14489i, -8545i))), Struct_1((global2.b.a << (vec2<u32>(global1.b, 9617u) % vec2<u32>(32u))) >> (~global2.b.a % vec2<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.a.x, 0u), 1u), _wgslsmith_f_op_vec4_f32(global1.c - vec4<f32>(-1794f, global2.a.x, -179f, 706f)), _wgslsmith_f_op_vec3_f32(max(global2.b.c.xzz, vec3<f32>(503f, 424f, 794f))), -1733f)).b, _wgslsmith_dot_vec3_i32(firstTrailingBit(~(vec3<i32>(global0[_wgslsmith_index_u32(83697u, 7u)], u_input.a.x, 0i) << (vec3<u32>(global2.b.a.x, var_0.b, 4294967295u) % vec3<u32>(32u)))), (vec3<i32>(-17641i, 14337i, u_input.a.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-34185i, 0i, 2147483647i), vec3<i32>(-4328i, u_input.a.x, u_input.a.x))) & -select(vec3<i32>(0i, u_input.a.x, -1i), vec3<i32>(0i, -5808i, -3910i), vec3<bool>(true, false, true))), ~(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-10786i, 1202i, u_input.a.x), vec3<i32>(60065i, u_input.a.x, u_input.a.x))) ^ vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, -1i), u_input.a.x, global0[_wgslsmith_index_u32(global1.b, 7u)])), Struct_1(vec2<u32>(~0u, global1.a.x ^ (60573u ^ global1.a.x)), 8607u, _wgslsmith_div_vec4_f32(vec4<f32>(-615f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -561f, _wgslsmith_f_op_f32(var_0.d.x * global2.a.x)), global1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, global1.c.x, var_0.d.x)), _wgslsmith_f_op_f32(-global1.e)));
    var var_2 = ~var_1.b.b;
    let var_3 = Struct_1(max(vec2<u32>(var_1.b.a.x, global2.b.a.x), _wgslsmith_mult_vec2_u32(var_1.b.a ^ var_1.b.a, ~func_4(4294967295u, true, Struct_2(vec2<f32>(2166f, global1.d.x), Struct_1(global2.b.a, 4414u, var_1.b.c, vec3<f32>(var_1.b.c.x, -134f, var_0.e), var_1.b.c.x))).xw)), ~global1.b, var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.d), _wgslsmith_f_op_f32(-var_1.a.x));
    let var_4 = global2.b;
    var var_5 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(false, any(vec4<bool>(true, true, false, false))), any(vec3<bool>(false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-960f)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(1u, 20317u, 1u)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.b.b, var_3.b, 18299u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 8251u, var_0.a.x), vec3<u32>(68025u, var_4.b, global1.a.x)))), firstLeadingBit(~vec3<u32>(var_1.b.a.x, 1u, var_4.b)) & _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, var_0.a.x, global1.a.x), vec3<u32>(var_4.a.x, 72837u, var_4.b) & vec3<u32>(global1.a.x, var_4.b, 1u))), var_3.a.x);
}

