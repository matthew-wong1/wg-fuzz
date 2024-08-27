struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 1u, 0u, 0u, 4294967295u, 21833u, 4294967295u, 45030u, 18398u, 1163u, 35471u, 0u, 23628u, 16198u, 29503u, 0u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 0u, 1u, 4294967295u, 54926u);

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    global0 = array<u32, 24>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * 236f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1838f)))), true)), _wgslsmith_f_op_f32(f32(-1f) * -400f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(397f))))), _wgslsmith_f_op_f32(-1f))));
    return ~global0[_wgslsmith_index_u32(~0u, 24u)];
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = 1u;
    var var_1 = Struct_1(vec3<bool>(!arg_2.a.x, any(vec3<bool>(!arg_3, !arg_2.a.x, select(arg_2.a.x, true, true))), any(arg_2.a.zz)));
    var var_2 = Struct_2(Struct_1(!select(var_1.a, select(vec3<bool>(true, false, var_1.a.x), arg_2.a, true), true)), !vec4<bool>(arg_2.a.x, true, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(arg_1.x, 24u)]) >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, var_0, global0[_wgslsmith_index_u32(42032u, 24u)]), vec4<u32>(0u, 25460u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])), any(vec4<bool>(false, false, var_1.a.x, var_1.a.x))), arg_2, any(var_1.a));
    var_2 = Struct_2(var_2.a, var_2.b, var_2.c, 29416u > arg_1.x);
    var var_3 = var_2.a;
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = abs(vec3<u32>(~_wgslsmith_mult_u32(~u_input.a, max(global0[_wgslsmith_index_u32(1u, 24u)], 0u)), global0[_wgslsmith_index_u32(43880u, 24u)], 42162u));
    global0 = array<u32, 24>();
    var var_1 = arg_0;
    global0 = array<u32, 24>();
    let var_2 = ~((vec2<i32>(0i, u_input.c) ^ vec2<i32>(u_input.c, u_input.c)) ^ ~abs(countOneBits(vec2<i32>(u_input.c, u_input.c))));
    return vec3<bool>(all(vec4<bool>(u_input.c > ~74008i, false, all(!vec4<bool>(var_1.d, true, true, true)), true)), false, var_1.c.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = -vec4<i32>(u_input.c << (countOneBits(u_input.b.x) % 32u), ~(-1i | select(u_input.c, u_input.c, false)), ~(~u_input.c) & _wgslsmith_div_i32(~0i, firstLeadingBit(u_input.c)), 54059i);
    global0 = array<u32, 24>();
    var_0 = ~((firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -2147483647i, 17806i))) & ~(~vec4<i32>(2147483647i, var_0.x, -19563i, u_input.c))) ^ reverseBits(vec4<i32>(~64623i, var_0.x, ~u_input.c, _wgslsmith_div_i32(var_0.x, 0i))));
    let var_1 = _wgslsmith_f_op_f32(-arg_3);
    let var_2 = vec4<f32>(-1000f, 134f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(max(2286f, _wgslsmith_f_op_f32(round(arg_3))))))), -657f);
    return arg_0.b.www;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1350f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2381f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f) * 1193f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-430f, -825f))))));
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(40928u, 4294967295u << (global0[_wgslsmith_index_u32(1u, 24u)] % 32u)), 24u)], func_1(), 2326u, _wgslsmith_mult_u32(4294967295u, ~(u_input.a ^ 56272u))), vec4<u32>(_wgslsmith_add_u32(~func_2(111f, vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<bool>(true, true, true)), true), u_input.b.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 24u)]), u_input.b), 24u)], 24u)], 22296u, 66429u));
    var var_1 = Struct_1(func_4(Struct_2(Struct_1(vec3<bool>(true, true, true)), vec4<bool>(false, true, true, true), Struct_1(vec3<bool>(false, false, true)), abs(u_input.c) != u_input.c), select(vec3<bool>(true, true, true), select(func_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(false, false, false)), false), vec2<f32>(-658f, -145f), -371f, vec2<bool>(true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), var_0.x >= 49565u), Struct_1(vec3<bool>(true, func_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec4<bool>(false, true, false, false), Struct_1(vec3<bool>(true, false, true)), true), vec2<f32>(-1626f, -150f), -467f, vec2<bool>(true, true)).x, u_input.b.x != 19518u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1888f, 1397f)))));
    global0 = array<u32, 24>();
    let var_2 = var_0.x;
    let var_3 = var_0;
    let var_4 = Struct_2(Struct_1(func_3(Struct_2(Struct_1(vec3<bool>(false, var_1.a.x, false)), select(vec4<bool>(var_1.a.x, true, true, false), vec4<bool>(true, var_1.a.x, true, true), var_1.a.x), Struct_1(var_1.a), !var_1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-215f, -595f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1832f, -1190f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(850f * 2701f))), !vec2<bool>(var_1.a.x, false))), !vec4<bool>(!var_1.a.x & true, all(var_1.a.zy), var_1.a.x & var_1.a.x, !any(vec2<bool>(var_1.a.x, var_1.a.x))), Struct_1(!var_1.a), !(1288f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1100f)) * _wgslsmith_f_op_f32(-1039f - 848f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

