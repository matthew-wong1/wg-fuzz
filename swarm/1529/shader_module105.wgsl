struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(274f, 310f, 1682f), vec3<f32>(-1793f, 329f, 816f), vec3<f32>(707f, -143f, 296f), vec3<f32>(1523f, 614f, 816f));

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(-410f, vec3<f32>(-1000f, -527f, -790f), vec2<u32>(55340u, 1u), 40078i), i32(-2147483648), 0u), Struct_1(1597f, vec3<f32>(-1244f, 625f, -112f), vec2<u32>(4294967295u, 15826u), -22921i), Struct_2(Struct_1(711f, vec3<f32>(-232f, -1840f, -318f), vec2<u32>(60674u, 0u), 2147483647i), -51480i, 70401u), -36832i);

var<private> global2: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 4>();
    let var_0 = -1421f;
    let var_1 = Struct_4(arg_0, arg_0.a, global1.a, -arg_0.b);
    var var_2 = Struct_1(1000f, vec3<f32>(-962f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) - -633f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f))), global1.b.c, ~u_input.a.x);
    global2 = ~abs(~select(~vec2<u32>(global2.x, global2.x), ~u_input.e, vec2<bool>(false, true)));
    return Struct_1(-2128f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-153f)), var_0, false)), _wgslsmith_f_op_f32(arg_1 * -860f), _wgslsmith_f_op_f32(-145f + _wgslsmith_f_op_f32(abs(1479f))))), var_2.c, _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(4845i, 54763i))), u_input.c));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<i32>(-1i) * -(~vec2<i32>(1i, _wgslsmith_sub_i32(1i, 2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(global1.b.b.zz * global1.a.a.b.yz);
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    global1 = Struct_4(global1.a, global1.b, global1.a, -2147483647i);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), 1387f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), abs(u_input.e), ~global1.a.a.d), ((_wgslsmith_mod_i32(arg_1.d, var_0.x) & firstTrailingBit(31762i)) & (_wgslsmith_add_i32(arg_0.d, -45666i) >> (reverseBits(global2.x) % 32u))) | (i32(-1i) * -_wgslsmith_mult_i32(var_0.x, -1i)), ~global2.x);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_4(func_3(global1.a.a, func_2(Struct_2(Struct_1(global1.a.a.a, vec3<f32>(global1.b.b.x, global1.b.b.x, global1.c.a.a), vec2<u32>(1u, global2.x), -78381i), ~u_input.a.x, _wgslsmith_sub_u32(global1.b.c.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.a.b.x))))), Struct_1(_wgslsmith_f_op_f32(-func_3(Struct_1(251f, vec3<f32>(-1609f, -550f, 1000f), u_input.e, 11698i), func_3(global1.c.a, global1.c.a).a).a.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-423f + -116f), global1.b.b.x, global1.a.a.b.x)), global1.c.a.c, countOneBits(-2147483647i)), global1.c, _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(global1.c.b, ~_wgslsmith_sub_i32(global1.a.b, u_input.a.x)), u_input.c));
    global2 = vec2<u32>(var_0.a.a.c.x | ~1u, ~(~4294967295u)) >> (vec2<u32>(global1.b.c.x, 4294967295u) % vec2<u32>(32u));
    let var_1 = vec4<bool>(false, true, !any(vec4<bool>(true, true, true, true)), true);
    global1 = Struct_4(global1.a, func_2(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-981f))))), Struct_2(func_3(global1.c.a, func_3(Struct_1(arg_0, vec3<f32>(var_0.c.a.a, var_0.a.a.a, 712f), vec2<u32>(global2.x, 4294967295u), -1i), Struct_1(global1.c.a.a, vec3<f32>(global1.a.a.b.x, var_0.c.a.b.x, -1164f), global1.c.a.c, global1.b.d)).a).a, _wgslsmith_add_i32(var_0.c.b, ~var_0.d), ~(~1u)), var_0.d);
    global1 = var_0;
    return 541f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(global1.a, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.c.a.a, 721f, true)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.a.a.a * -1000f), global1.a.a.b.x, _wgslsmith_f_op_f32(global1.b.a - -875f)), global0[_wgslsmith_index_u32(1u, 4u)], true)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 6207u), abs(reverseBits(global1.b.c))), select(max(u_input.c, ~(-24612i)), i32(-1i) * -24784i, true)), global1.a, 0i);
    var var_0 = u_input.e.x;
    global1 = Struct_4(global1.c, Struct_1(-1293f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(global1.c.a.a)), _wgslsmith_f_op_f32(max(global1.c.a.b.x, 411f)), global1.b.a)), countOneBits(global1.b.c), -2147483647i >> (~abs(global2.x) % 32u)), global1.a, 0i);
    let var_1 = 553f;
    var var_2 = u_input.e.x;
    let var_3 = func_3(func_3(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-594f * var_1))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(3519u, 48935u), 4u)], ~reverseBits(u_input.e), -2147483647i), Struct_1(461f, vec3<f32>(var_1, _wgslsmith_f_op_f32(round(319f)), -293f), u_input.e, -1i)).a, func_3(Struct_1(global1.b.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c.a.b, global0[_wgslsmith_index_u32(u_input.e.x, 4u)], true))), global1.a.a.c & (vec2<u32>(0u, global2.x) & u_input.e), ~reverseBits(u_input.c)), global1.c.a).a);
    var var_4 = var_3.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_3.a.b.x, var_3.a.b.x))))), _wgslsmith_f_op_f32(global1.c.a.a * -628f), -981f), _wgslsmith_f_op_f32(-global1.b.b.x), -u_input.b, 32149i, ~_wgslsmith_add_u32(1u, select(global2.x, var_3.c, true)) << (max(~68764u, 4294967295u) % 32u));
}

