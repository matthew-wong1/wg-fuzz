struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<f32>(630f, -461f), vec2<bool>(true, true), vec2<u32>(1u, 36565u), vec4<i32>(0i, -4435i, 1093i, -6878i));

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(2021u, 8173u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1726u), vec2<u32>(11717u, 138253u), vec2<u32>(41613u, 4294967295u), vec2<u32>(0u, 22321u), vec2<u32>(18659u, 51518u), vec2<u32>(4294967295u, 32896u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(20600u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 29622u), vec2<u32>(0u, 1u), vec2<u32>(13979u, 30436u), vec2<u32>(57365u, 26463u), vec2<u32>(51960u, 0u), vec2<u32>(0u, 44757u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 13431u), vec2<u32>(13117u, 57562u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 27938u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    global1 = array<vec2<u32>, 23>();
    var var_0 = reverseBits(vec3<i32>(-u_input.c.x, _wgslsmith_add_i32(~(-45908i), ~_wgslsmith_clamp_i32(0i, -686i, 2147483647i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(global0.e.x, 13206i))), u_input.d.yx)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-335f - 726f), _wgslsmith_f_op_f32(global0.b.x + global0.b.x), global0.b.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2578f), -1957f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.x * 2067f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-576f, 1218f, global0.b.x, global0.b.x) - vec4<f32>(global0.b.x, global0.b.x, -376f, -535f))))));
    global0 = Struct_1(global0.a >> (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.b, vec2<f32>(_wgslsmith_f_op_f32(floor(global0.b.x)), -1772f))), global0.c, u_input.b, -select(-global0.e, -vec4<i32>(-11396i, 4079i, 2147483647i, var_0.x) & (vec4<i32>(u_input.a, var_0.x, var_0.x, 1262i) & global0.e), all(vec3<bool>(false, global0.c.x, global0.c.x))));
    var var_2 = ~(~(~reverseBits(vec3<u32>(u_input.b.x, 16413u, 0u)))) >> (~(vec3<u32>(~global0.a, u_input.b.x >> (u_input.b.x % 32u), ~u_input.b.x) >> (((vec3<u32>(u_input.b.x, 44972u, u_input.b.x) | vec3<u32>(u_input.b.x, 12173u, u_input.b.x)) >> (countOneBits(vec3<u32>(74598u, 18360u, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return true;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    var var_0 = true;
    let var_1 = arg_1.x;
    let var_2 = Struct_1(59306u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.x)))))), global0.c, u_input.b, global0.e);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1065f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.x + var_1), _wgslsmith_f_op_f32(-var_2.b.x)))) * _wgslsmith_f_op_f32(abs(-1068f))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(62785u, 39756u, arg_0), vec3<u32>(4294967295u, 41889u, var_2.a)) << (_wgslsmith_div_vec3_u32(vec3<u32>(55013u, 10262u, global0.d.x), vec3<u32>(13086u, 42802u, global0.d.x)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, var_2.a, arg_0) ^ vec3<u32>(84725u, 52092u, 13015u), vec3<u32>(1u, 4294967295u, 4294967295u))), ~(~(~vec3<u32>(u_input.b.x, 85730u, 49457u))), ~abs(vec3<u32>(27708u, global0.d.x, 1u))), var_2);
    var_0 = !select(true, any(select(var_3.c.c, vec2<bool>(false, var_2.c.x), !vec2<bool>(true, var_3.c.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_3.a)))) <= 519f);
    return arg_0;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global1 = array<vec2<u32>, 23>();
    global0 = Struct_1(~(~global0.d.x) >> (global0.a % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-2364f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -144f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1246f, global0.b.x))) - vec2<f32>(-797f, global0.b.x)))), vec2<bool>((false | (global0.c.x & global0.c.x)) && func_2(), global0.c.x), global0.d, global0.e);
    global1 = array<vec2<u32>, 23>();
    var var_0 = global0.d.x;
    return Struct_1(~func_3(~u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, -1100f, arg_0.x, global0.b.x))), arg_0.xx, !global0.c, global1[_wgslsmith_index_u32(13271u, 23u)], -(~vec4<i32>(-23115i, -1i, -1i, global0.e.x) & global0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.x;
    global0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(select(global0.b.x, -130f, global0.c.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, global0.b.x, -1239f, -211f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, global0.b.x, -534f, 766f), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -1090f), global0.c.x))))));
    global1 = array<vec2<u32>, 23>();
    let var_1 = select(!select(vec3<bool>(!global0.c.x, global0.c.x & global0.c.x, true), !vec3<bool>(global0.c.x, true, global0.c.x), vec3<bool>(global0.c.x | true, global0.c.x, all(vec4<bool>(false, true, global0.c.x, false)))), select(!select(vec3<bool>(global0.c.x, true, false), select(vec3<bool>(false, global0.c.x, true), vec3<bool>(global0.c.x, global0.c.x, global0.c.x), vec3<bool>(global0.c.x, global0.c.x, true)), true & global0.c.x), vec3<bool>(true, true, true), true), !select(select(select(vec3<bool>(global0.c.x, true, global0.c.x), vec3<bool>(false, global0.c.x, false), vec3<bool>(false, true, true)), vec3<bool>(global0.c.x, true, global0.c.x), select(vec3<bool>(false, global0.c.x, false), vec3<bool>(true, false, true), vec3<bool>(true, global0.c.x, global0.c.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, global0.c.x), any(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false))), !global0.c.x));
    global0 = func_1(vec4<f32>(_wgslsmith_div_f32(global0.b.x, -181f), -677f, _wgslsmith_f_op_f32(f32(-1f) * -1207f), -1786f));
    var var_2 = all(vec2<bool>(true, true));
    let var_3 = Struct_2(-2116f, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, u_input.b.x, 81171u) ^ vec3<u32>(907u, 0u, 1u), ~vec3<u32>(u_input.b.x, global0.d.x, 14582u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.a, 35646u), vec3<u32>(global0.d.x, global0.d.x, 1u), vec3<u32>(u_input.b.x, 63702u, 0u))), vec3<u32>(_wgslsmith_sub_u32(1u, global0.d.x), 28566u, 1u)), firstTrailingBit(~max(vec3<u32>(global0.a, global0.a, 43732u), vec3<u32>(1u, 0u, 0u))), vec3<u32>(_wgslsmith_div_u32(68500u, u_input.b.x), 7015u, u_input.b.x) & countOneBits(~vec3<u32>(global0.d.x, global0.a, 9407u))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1523f, 1962f, global0.b.x, -1193f) + vec4<f32>(global0.b.x, -921f, 1461f, 1153f))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_div_f32(global0.b.x, -379f), -644f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(-u_input.a, countOneBits(2147483647i))), -global0.e.x, firstLeadingBit(firstLeadingBit(countOneBits(u_input.a)))));
}

