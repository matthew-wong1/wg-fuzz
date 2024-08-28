struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(2147483647i, -1i, -21383i, i32(-2147483648), 2147483647i, 19435i);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-559f, 335f), vec2<f32>(2294f, -1000f), vec2<f32>(-1000f, 1120f), vec2<f32>(-675f, -1338f), vec2<f32>(1266f, -2080f), vec2<f32>(523f, 1325f), vec2<f32>(-1281f, 1646f), vec2<f32>(1484f, -1172f), vec2<f32>(797f, 1813f), vec2<f32>(-1345f, 799f), vec2<f32>(-457f, -1392f), vec2<f32>(854f, -476f));

var<private> global4: array<vec2<i32>, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    global0 = array<i32, 6>();
    global4 = array<vec2<i32>, 2>();
    global3 = array<vec2<f32>, 12>();
    global4 = array<vec2<i32>, 2>();
    global4 = array<vec2<i32>, 2>();
    return !select(vec2<bool>(true, true), !global2.b.xy, _wgslsmith_div_i32(1i, firstLeadingBit(0i)) >= _wgslsmith_clamp_i32(-8851i, abs(arg_0), 1i));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(!(!global2.b.x), vec3<bool>(true, any(select(global2.b.xx, vec2<bool>(global1.b.x, false), vec2<bool>(true, global2.a))) & any(vec4<bool>(global1.b.x, global2.b.x, global2.b.x, global2.a)), !global1.a));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1582f)) + -1939f) + _wgslsmith_f_op_f32(613f - _wgslsmith_f_op_f32(abs(1514f)))))));
    let var_2 = ~abs(_wgslsmith_sub_vec4_u32(reverseBits(abs(vec4<u32>(u_input.b, u_input.d.x, u_input.e, u_input.e))), ~vec4<u32>(u_input.e, 55888u, 18400u, u_input.b)));
    let var_3 = false;
    return !select(select(global1.b.xy, !func_1(u_input.a, Struct_1(false, vec3<bool>(false, global1.b.x, var_0.b.x)), vec3<f32>(-704f, -2025f, 490f)), false), !select(!vec2<bool>(global1.b.x, var_3), !var_0.b.zx, true), vec2<bool>(true, var_0.b.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, global2.b);
    var var_1 = Struct_1(!(!global2.b.x), !(!vec3<bool>(!global2.a, var_0.a || false, true)));
    var var_2 = func_3();
    var var_3 = Struct_1(false, var_1.b);
    let var_4 = Struct_1(var_1.a, select(!(!global2.b), vec3<bool>(true, false, global1.a), (4294967295u >> (_wgslsmith_div_u32(15095u, u_input.b) % 32u)) == u_input.b));
    return var_4;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = func_2();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1652f + -329f), _wgslsmith_f_op_f32(725f - 628f))) + -471f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-412f + 343f), _wgslsmith_f_op_f32(-2079f - 316f), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -800f))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-143f - _wgslsmith_f_op_f32(max(1378f, -1239f))))))));
    var var_2 = !global2.b.zy;
    var var_3 = !select(!(!select(vec4<bool>(global2.a, false, true, true), vec4<bool>(true, global2.a, true, var_0.b.x), vec4<bool>(true, false, false, true))), select(select(vec4<bool>(true, false, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, arg_0.a, var_2.x, false), global2.a), !(!vec4<bool>(global1.a, false, true, true)), !(!vec4<bool>(global2.b.x, global1.a, false, false))), true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, select(vec3<bool>(false, all(func_1(-27515i, Struct_1(false, global1.b), vec3<f32>(386f, 193f, 1333f))), !global1.a), !vec3<bool>(true, true, !global2.b.x), !(all(vec4<bool>(true, global2.a, global1.a, true)) && (0u > u_input.e))));
    var_0 = func_4(func_2());
    var var_1 = func_2();
    global0 = array<i32, 6>();
    let var_2 = _wgslsmith_dot_vec4_u32(abs(~(~(~vec4<u32>(0u, u_input.b, 4294967295u, 4294967295u)))), vec4<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(u_input.d.x, 1u)) >> (u_input.b % 32u), firstLeadingBit(19082u), u_input.b, u_input.b));
    var var_3 = !select(select(vec4<bool>(!global1.b.x, global1.a && var_1.a, all(vec4<bool>(var_1.b.x, true, true, true)), global1.b.x != var_0.b.x), vec4<bool>(true, global2.a & global1.b.x, true, true), !(!vec4<bool>(global2.b.x, false, var_1.b.x, var_1.a))), vec4<bool>(all(!vec4<bool>(global1.b.x, true, var_0.b.x, var_0.a)), select(true, !var_0.b.x, global2.b.x), true, var_0.b.x), vec4<bool>(!any(var_0.b), global1.b.x, var_1.b.x, global2.a));
    global3 = array<vec2<f32>, 12>();
    let var_4 = func_2();
    var var_5 = Struct_1(true, vec3<bool>((u_input.c ^ ~global0[_wgslsmith_index_u32(u_input.b, 6u)]) > global0[_wgslsmith_index_u32(max(~u_input.e, u_input.d.x), 6u)], (func_3().x & true) || false, all(vec4<bool>(var_4.a, var_0.a, var_4.a, global1.b.x)) & (true || var_4.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(~(-26220i), ~40813i & -global0[_wgslsmith_index_u32(1u, 6u)]), ~(-_wgslsmith_add_i32(-1343i, u_input.c)), -u_input.c ^ -22866i), ~abs((u_input.d.x >> (u_input.b % 32u)) & var_2), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1663f, -409f)))), -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-213f, 399f, !var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f) - _wgslsmith_f_op_f32(207f * 1494f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) - _wgslsmith_f_op_f32(trunc(907f))))));
}

