struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(88607u, 1i);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0u, 1i), Struct_1(1u, 1i), Struct_1(1u, 50994i), Struct_1(0u, -1i));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<bool, 14> = array<bool, 14>(false, false, false, true, true, true, true, true, true, true, false, false, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = min(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -20453i), u_input.a.zy), 22737i, -6142i, ~global0.b), ~(-vec4<i32>(global0.b, -1i, -2147483647i, global0.b))), 2147483647i);
    var var_1 = Struct_1(abs(firstTrailingBit(arg_2.a >> (~arg_2.a % 32u))), ~(~firstTrailingBit(firstLeadingBit(-46980i))));
    var_1 = arg_1;
    let var_2 = ~48503u;
    global1 = array<Struct_1, 4>();
    return global2.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = func_3(false, global1[_wgslsmith_index_u32(~(~4294967295u), 4u)], Struct_1(global0.a, -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1392f);
    var var_2 = global1[_wgslsmith_index_u32(41862u, 4u)];
    var var_3 = -1000f;
    global0 = Struct_1(29955u, ~(-min(~var_2.b, -u_input.a.x)));
    return global1[_wgslsmith_index_u32(~(global0.a ^ _wgslsmith_mod_u32(arg_0, _wgslsmith_add_u32(30853u & global0.a, ~0u))), 4u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    global1 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1524f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1555f)) * _wgslsmith_f_op_f32(floor(1370f))))));
    return !select(!(!vec2<bool>(false, arg_2.x)), vec2<bool>(arg_2.x, true), !arg_2.zy);
}

fn func_1() -> Struct_1 {
    global3 = array<bool, 14>();
    global2 = !(!(!func_4(Struct_1(global0.a, u_input.a.x), func_2(4294967295u), !vec4<bool>(global2.x, true, global2.x, true))));
    var var_0 = 1i;
    var var_1 = Struct_1(1u, ~_wgslsmith_sub_i32(1i, 2147483647i) << ((~(~1u) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), vec2<u32>(global0.a, global0.a)) & ~8530u) % 32u)) % 32u));
    var_0 = 1i;
    return Struct_1(reverseBits(37676u), select(-23330i, select(max(global0.b | u_input.a.x, 1i), _wgslsmith_clamp_i32(~(-2147483647i), select(global0.b, 82611i, global3[_wgslsmith_index_u32(var_1.a, 14u)]), countOneBits(-2147483647i)), any(vec4<bool>(false, global3[_wgslsmith_index_u32(14589u, 14u)], global2.x, global2.x))), (i32(-1i) * -2147483647i) >= _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(var_1.b, 0i))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = func_2(func_2(_wgslsmith_sub_u32(~abs(0u), ~_wgslsmith_mod_u32(arg_0.a, arg_2))).a);
    return _wgslsmith_add_vec3_i32(u_input.a.yyx, u_input.a.zwy) | _wgslsmith_mod_vec3_i32(min(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.zyx, vec3<i32>(11013i, global0.b, 37694i)), -vec3<i32>(var_0.b, 1i, 1i)), -u_input.a.zwx), u_input.a.wxx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 14>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, abs(1u)), 4u)];
    var var_1 = ~u_input.a.zx;
    global3 = array<bool, 14>();
    var var_2 = (u_input.a.x <= -_wgslsmith_sub_i32(-5294i, i32(-1i) * -25813i)) & !all(!(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(48464u, 14u)])));
    let var_3 = func_5(func_1(), vec4<bool>((true | all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], true, global2.x))) | (_wgslsmith_sub_i32(-57165i, var_1.x) > global0.b), !(!global2.x), (global0.b ^ _wgslsmith_clamp_i32(-58978i, var_1.x, -47816i)) <= -(~(-6804i)), true), var_0.a >> ((~(var_0.a & global0.a) | func_2(var_0.a).a) % 32u), global1[_wgslsmith_index_u32(global0.a, 4u)]);
    var var_4 = global1[_wgslsmith_index_u32(61501u, 4u)];
    let var_5 = func_2(0u).b;
    let x = u_input.a;
    s_output = StorageBuffer(select(~reverseBits(vec4<u32>(42157u, global0.a, global0.a, 0u)), vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a, var_4.a), vec3<u32>(var_0.a, 28557u, global0.a)), select(var_4.a, 4294967295u, global2.x), false), (var_4.a | 1u) | min(4294967295u, var_0.a), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 32549u, 14145u), vec3<u32>(4294967295u, 1u, var_4.a)) << (firstLeadingBit(0u) % 32u)), func_3(false, global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)], func_1())), (vec3<u32>(0u, ~global0.a, func_1().a) >> (vec3<u32>(~var_4.a, ~var_4.a, ~global0.a) % vec3<u32>(32u))) << (select(~(~vec3<u32>(global0.a, global0.a, 1u)), ~(vec3<u32>(2462u, 1u, 119015u) ^ vec3<u32>(var_4.a, var_0.a, 233u)), func_4(Struct_1(global0.a, -30696i), func_1(), !vec4<bool>(global3[_wgslsmith_index_u32(global0.a, 14u)], global2.x, global2.x, false)).x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1181f, -1601f) - vec2<f32>(1014f, -1038f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, 1086f)) + vec2<f32>(1f, 1f)))));
}

