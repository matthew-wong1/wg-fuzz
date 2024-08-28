struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, false, true, true, false, false, true, false, true, true);

var<private> global1: vec2<u32> = vec2<u32>(56180u, 1u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))) < arg_0, vec4<u32>(~max(u_input.b.x, global1.x), ~u_input.c, u_input.c, 3701u) >> (~_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 39858u, 74485u, 7378u)), u_input.b) % vec4<u32>(32u)), arg_1);
    global0 = array<bool, 11>();
    let var_2 = Struct_3(Struct_1(arg_0 < _wgslsmith_f_op_f32(-arg_0), u_input.b, vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, 112185u), ~78384u), 11u)], select(!global0[_wgslsmith_index_u32(var_1.b.x, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)], !arg_1.x), all(arg_1) | true)), Struct_1(arg_1.x || var_1.c.x, ~(~(vec4<u32>(22507u, global1.x, 1u, 0u) & vec4<u32>(global1.x, 4294967295u, u_input.b.x, var_1.b.x))), !select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.x, arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 11u)]), !var_1.c)), vec4<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(20022i, var_0, var_0, 2147483647i)), i32(-1i) * -1i)), -24092i, u_input.a.x, (i32(-1i) * -2147483647i) & ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, u_input.a.x), vec4<i32>(var_0, u_input.a.x, -2147483647i, u_input.a.x))), Struct_1(false, ~vec4<u32>(var_1.b.x, min(28051u, u_input.b.x), global1.x & 4294967295u, 40423u), arg_1), vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(-525f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1224f), -802f, any(vec2<bool>(false, false))))));
    let var_3 = vec3<f32>(-952f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f + var_2.e.x)), _wgslsmith_f_op_f32(-var_2.e.x));
    return abs(var_2.c.x >> (1u % 32u)) & var_2.c.x;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    global0 = array<bool, 11>();
    var var_0 = vec3<bool>(_wgslsmith_dot_vec4_i32(arg_3.c, vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 0i, -40276i, arg_2.e.x)) == _wgslsmith_div_i32(func_3(_wgslsmith_f_op_f32(trunc(arg_3.e.x)), vec3<bool>(true, arg_1.x, false)), -2147483647i), _wgslsmith_div_u32(arg_3.b.b.x, ~1u) <= 26619u, true);
    let var_1 = global1.x;
    var var_2 = true;
    let var_3 = ~countOneBits(~(~(vec4<u32>(global1.x, u_input.b.x, 4294967295u, arg_3.d.b.x) ^ arg_3.b.b)));
    return _wgslsmith_clamp_u32(~select(~38017u, 4537u, var_0.x), 0u & _wgslsmith_div_u32(arg_2.c.b.x, 0u), u_input.b.x);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    global1 = ~abs(~(~(~u_input.b.xy)));
    global1 = u_input.b.wx;
    global1 = vec2<u32>(countOneBits(abs(func_2(-682f, arg_1.c.c, Struct_2(Struct_1(true, vec4<u32>(u_input.c, 43904u, 40910u, 0u), arg_1.c.c), arg_1.b, arg_1.a, global0[_wgslsmith_index_u32(59567u, 11u)], arg_1.e), Struct_3(Struct_1(false, u_input.b, arg_1.c.c), Struct_1(arg_1.a.a, vec4<u32>(63157u, 37894u, arg_2, u_input.b.x), vec3<bool>(true, arg_1.a.a, arg_1.a.c.x)), vec4<i32>(4272i, -2147483647i, 0i, 2147483647i), arg_1.a, vec3<f32>(158f, -992f, -880f))))) >> (u_input.c % 32u), min(countOneBits(func_2(_wgslsmith_f_op_f32(670f + 285f), arg_1.a.c, arg_1, Struct_3(arg_1.c, arg_1.c, vec4<i32>(arg_0, arg_0, u_input.a.x, -2147483647i), Struct_1(global0[_wgslsmith_index_u32(0u, 11u)], vec4<u32>(0u, 7706u, arg_2, 0u), vec3<bool>(false, arg_1.d, global0[_wgslsmith_index_u32(59184u, 11u)])), vec3<f32>(-663f, 1000f, -841f)))), _wgslsmith_dot_vec3_u32(~arg_1.c.b.xxx, vec3<u32>(1u, _wgslsmith_clamp_u32(19231u, u_input.c, 1u), 4294967295u))));
    var var_0 = Struct_1(!(~4294967295u == arg_1.a.b.x), abs(vec4<u32>(_wgslsmith_add_u32(0u, 0u) ^ ~arg_1.a.b.x, max(~4294967295u, _wgslsmith_div_u32(u_input.c, global1.x)), 23823u, arg_1.a.b.x)), vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(~u_input.b.x), 11u)], false, global0[_wgslsmith_index_u32(global1.x, 11u)]));
    var var_1 = u_input.a;
    return select(select(select(vec2<bool>(true, select(false, true, var_0.a)), select(vec2<bool>(true, var_0.a), !arg_1.a.c.xy, var_0.a && global0[_wgslsmith_index_u32(global1.x, 11u)]), vec2<bool>(true, any(arg_1.a.c.zx))), arg_1.a.c.zz, !vec2<bool>(var_0.c.x | arg_1.d, true)), select(select(var_0.c.xy, vec2<bool>(true, true), true), var_0.c.zx, _wgslsmith_add_u32(19019u, ~26047u) >= firstTrailingBit(25669u)), select(vec2<bool>(all(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(true, false, var_0.a, arg_1.c.a), global0[_wgslsmith_index_u32(24534u, 11u)])), true), var_0.c.zx, _wgslsmith_clamp_i32(-9578i, countOneBits(1i), arg_0) < var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(74080u, 4146u), 11u)]);
    let var_1 = !(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], any(vec2<bool>(var_0.x, true)), global0[_wgslsmith_index_u32(~13278u, 11u)], var_0.x)));
    global0 = array<bool, 11>();
    var_0 = select(select(select(func_1(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.yw), Struct_2(Struct_1(var_1.x, u_input.b, vec3<bool>(var_0.x, false, true)), u_input.a.x, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.b, vec3<bool>(global0[_wgslsmith_index_u32(66416u, 11u)], var_0.x, var_0.x)), true, u_input.a.xx), abs(61112u)), vec2<bool>(true, select(global0[_wgslsmith_index_u32(55254u, 11u)], var_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 11u)])), true), vec2<bool>(true, !all(vec2<bool>(var_1.x, false))), ~15181u <= (~global1.x | (u_input.c >> (43056u % 32u)))), var_1.zz, false);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2448f))), _wgslsmith_f_op_f32(-1000f - 1f))));
    global1 = u_input.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1032f)) + _wgslsmith_f_op_f32(322f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-604f, 112f)))));
}

