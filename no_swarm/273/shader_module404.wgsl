struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(1u, 28516u, 0u, 41088u, 28848u, 550u, 79809u, 1u, 82138u, 1u, 29132u, 0u, 9909u, 87777u, 41047u);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    global1 = Struct_1(1i < _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, 2677i) ^ vec2<i32>(arg_0, arg_0)), countOneBits(-vec2<i32>(u_input.b.x, u_input.c.x))));
    var var_0 = all(!vec3<bool>(true | global1.a, any(!vec3<bool>(global1.a, global1.a, false)), -u_input.b.x >= _wgslsmith_clamp_i32(0i, arg_0, -6070i)));
    let var_1 = Struct_1(true);
    var_0 = false;
    let var_2 = _wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(-8987i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, u_input.c.x, -2147483647i, -1i), vec4<i32>(0i, arg_0, arg_0, 13810i), _wgslsmith_mod_vec4_i32(vec4<i32>(19976i, arg_0, u_input.b.x, -1i), vec4<i32>(u_input.c.x, 3493i, -1i, arg_0))), ~vec4<i32>(u_input.b.x, 1i, 80929i, u_input.c.x) << (~vec4<u32>(61805u, 1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 15u)], 15u)]) % vec4<u32>(32u))), ~reverseBits(u_input.b.x)));
    return -var_2.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = -644f;
    let var_1 = min(reverseBits(reverseBits(vec4<u32>(1u, 43791u, 1u, 28710u))), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, ~u_input.a, 50445u, 7747u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, arg_3, 31806u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 35644u, 1u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(arg_3, 15u)], 1u, 1u, 0u), vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 15u)], arg_3, 4294967295u))))) & vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(89156u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56515u, 15u)], 15u)], 48578u))), vec4<u32>(84309u, countOneBits(arg_3), 62889u, 1u)), ~u_input.a, 1u, 4294967295u);
    var var_2 = _wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + -1594f), var_0)));
    global0 = array<u32, 15>();
    var var_3 = select(var_1.zz, vec2<u32>(24260u << ((~arg_3 & 11994u) % 32u), ~23412u), arg_0);
    return firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~var_1.zxz, var_1.zwy), u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 1u), var_1.wzw) % 32u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = vec2<f32>(-1000f, -445f);
    let var_1 = _wgslsmith_clamp_i32(u_input.b.x >> (~func_4(any(vec3<bool>(false, global1.a, arg_0.a)), arg_0, func_3(u_input.c.x, vec3<u32>(35949u, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a)), 4294967295u) % 32u), ~(_wgslsmith_div_i32(~(-48470i), -1i) << (0u % 32u)), -(~reverseBits(2147483647i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f * _wgslsmith_f_op_f32(-803f - var_0.x)) - -824f))));
    global0 = array<u32, 15>();
    global1 = Struct_1(select(true, any(vec2<bool>(true, var_0.x < var_2.x)), global1.a));
    return global1.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(false);
    var var_1 = arg_1;
    let var_2 = ~53951u;
    global1 = arg_1;
    var var_3 = select(!(!vec2<bool>(!global1.a, func_2(arg_1))), vec2<bool>(!select(var_1.a, arg_0.a, !global1.a), true), arg_2);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec3<u32> {
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    let var_2 = Struct_1(true);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-3550i, arg_2), u_input.c.zx);
    let var_4 = func_1(var_1, func_1(Struct_1(arg_0.a), Struct_1(false), select(vec2<bool>(!arg_1, all(vec2<bool>(true, var_1.a))), select(select(vec2<bool>(var_2.a, var_1.a), vec2<bool>(arg_0.a, global1.a), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(var_2.a, true), true), vec2<bool>(false, arg_1)), var_2.a)), select(select(!vec2<bool>(var_2.a, global1.a), select(!vec2<bool>(false, var_2.a), vec2<bool>(true, true), vec2<bool>(false, true)), true), select(!select(vec2<bool>(true, arg_1), vec2<bool>(true, false), arg_0.a), select(select(vec2<bool>(true, true), vec2<bool>(var_2.a, arg_0.a), var_1.a), vec2<bool>(arg_0.a, var_0), true), vec2<bool>(all(vec4<bool>(true, arg_1, arg_1, arg_0.a)), true)), true));
    return vec3<u32>(global0[_wgslsmith_index_u32(1u & firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 15u)]), 15u)], ~global0[_wgslsmith_index_u32(func_4(var_4.a, func_1(Struct_1(false), var_1, vec2<bool>(var_2.a, arg_1)), ~(-2147483647i), 2319u) >> (~u_input.a % 32u), 15u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45788u, 15u)], 15u)], 15u)], 0u, 0u) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(65575u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 15u)], 15u)])) >> (select(vec3<u32>(0u, u_input.a, 28788u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 44787u, 4294967295u), vec3<bool>(global1.a, true, false)) % vec3<u32>(32u)), reverseBits(~vec3<u32>(1u, u_input.a, 4294967295u))), _wgslsmith_mod_u32(46807u, _wgslsmith_mod_u32(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(abs(func_5(func_1(Struct_1(global1.a), Struct_1(global1.a), vec2<bool>(false, global1.a)), !(global1.a && global1.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x) >> (vec3<u32>(1u, u_input.a, 54266u) % vec3<u32>(32u)), countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))))));
    global0 = array<u32, 15>();
    global1 = Struct_1(func_2(func_1(func_1(Struct_1(false), func_1(Struct_1(false), Struct_1(false), vec2<bool>(global1.a, true)), select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, true), vec2<bool>(true, global1.a))), Struct_1(true), !(!vec2<bool>(global1.a, global1.a)))));
    let var_1 = func_1(func_1(func_1(Struct_1(-1i >= u_input.b.x), func_1(func_1(Struct_1(true), Struct_1(true), vec2<bool>(false, global1.a)), func_1(Struct_1(true), Struct_1(global1.a), vec2<bool>(global1.a, global1.a)), select(vec2<bool>(global1.a, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, global1.a), true), vec2<bool>(false, true), false)), Struct_1(all(vec4<bool>(true, global1.a, false, global1.a))), select(select(!vec2<bool>(global1.a, true), !vec2<bool>(global1.a, true), true), !(!vec2<bool>(global1.a, false)), !select(vec2<bool>(false, false), vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a)))), func_1(Struct_1(global1.a), func_1(func_1(func_1(Struct_1(true), Struct_1(true), vec2<bool>(true, global1.a)), func_1(Struct_1(false), Struct_1(global1.a), vec2<bool>(true, false)), select(vec2<bool>(true, global1.a), vec2<bool>(false, true), false)), Struct_1(true), vec2<bool>(global1.a, false)), vec2<bool>(false, select(any(vec2<bool>(true, global1.a)), true, global1.a && global1.a))), !(!(!vec2<bool>(global1.a, false))));
    let var_2 = !vec3<bool>(global1.a, global1.a, !(~global0[_wgslsmith_index_u32(var_0.x, 15u)] >= (4294967295u >> (u_input.a % 32u))));
    let var_3 = max(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.x, var_0.x, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 15u)], 15u)], 15u)])) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(42042u, 15u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 15u)], 4294967295u), ~vec4<u32>(36376u, var_0.x, 37882u, 0u)) % vec4<u32>(32u)), firstLeadingBit(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)))), 15u)], 15u)]);
    var var_4 = func_1(var_1, func_1(func_1(func_1(Struct_1(global1.a), Struct_1(false), vec2<bool>(true, true)), Struct_1(true), var_2.yz), var_1, var_2.zx), select(vec2<bool>(all(!var_2.yx), false), select(!(!vec2<bool>(var_1.a, false)), !select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, var_2.x), vec2<bool>(var_1.a, var_1.a)), !(!var_2.zx)), false));
    global1 = var_1;
    var_0 = vec3<u32>(1u, 55485u, ~firstTrailingBit(abs(select(var_3, u_input.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-u_input.c.x << ((global0[_wgslsmith_index_u32(11616u, 15u)] & var_0.x) % 32u))), _wgslsmith_f_op_f32(-1527f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(2175f))))))));
}

