struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: array<f32, 15>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_1(select(select(vec2<bool>(true, select(false, true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(all(vec3<bool>(true, true, true)), true)), select(vec2<bool>(all(vec2<bool>(false, true)), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(true, true), true)), abs(vec2<u32>(1u, 1u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-860f, 1807f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x), 15u)])), -1000f))));
    let var_2 = any(!(!(!select(var_0.a, vec2<bool>(true, true), vec2<bool>(var_0.a.x, var_0.a.x)))));
    global0 = array<f32, 15>();
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, global0[_wgslsmith_index_u32(~var_0.b.x, 15u)])))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, -2227f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1963f, var_1.x) - _wgslsmith_f_op_vec2_f32(ceil(var_1.yw))))))));
    return u_input.b.x <= abs(_wgslsmith_dot_vec3_i32(u_input.a.xxw, u_input.a.wzx));
}

fn func_2() -> vec3<f32> {
    let var_0 = select(vec3<bool>(!func_3(), true, !func_3() && any(vec4<bool>(true, true, true, true))), select(!vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), select(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), false), true);
    let var_1 = select(vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29986u, 15u)] + global0[_wgslsmith_index_u32(32140u, 15u)]), 1163f) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(537u, 18792u, 7861u), vec3<u32>(81362u, 4294967295u, 2869u)), 15u)]), !var_0.x, true), vec4<bool>(func_3(), !((global0[_wgslsmith_index_u32(18492u, 15u)] <= global0[_wgslsmith_index_u32(0u, 15u)]) || var_0.x), var_0.x, ((true & var_0.x) | true) || true), true);
    let var_2 = Struct_3(Struct_1(!(!(!vec2<bool>(true, var_1.x))), vec2<u32>(1u, 1u)));
    global0 = array<f32, 15>();
    var var_3 = vec4<f32>(global0[_wgslsmith_index_u32(var_2.a.b.x | var_2.a.b.x, 15u)], 241f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(38550u, 15u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(5000u, 15u)]) * global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_2.a.b.x), 15u)])) - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.a.b.x, 25354u), var_2.a.b.x), 15u)]));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1392f, var_3.x, var_2.a.a.x)), var_3.x, global0[_wgslsmith_index_u32(min(var_2.a.b.x, 48479u), 15u)]) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(var_2.a.b.x, 15u)], global0[_wgslsmith_index_u32(var_2.a.b.x, 15u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, 470f) - var_3.www))))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_2(!(!select(vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), any(vec3<bool>(arg_0, true, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(335f, global0[_wgslsmith_index_u32(18238u, 15u)], global0[_wgslsmith_index_u32(71425u, 15u)])), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 178f, global0[_wgslsmith_index_u32(36545u, 15u)]), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(false, true, arg_0)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(6317u, 15u)], global0[_wgslsmith_index_u32(16835u, 15u)], -2160f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 1000f), vec3<f32>(-420f, -637f, global0[_wgslsmith_index_u32(37779u, 15u)]))), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(false, false, arg_0))))), _wgslsmith_f_op_vec3_f32(func_2()), !vec3<bool>(select(false, arg_0, arg_0), true, any(vec4<bool>(arg_0, true, false, arg_0))))), Struct_1(vec2<bool>(!(!arg_0), func_3()), select(vec2<u32>(~24419u, 55582u), max(vec2<u32>(4294967295u, 45664u), ~vec2<u32>(0u, 4294967295u)), !select(vec2<bool>(arg_0, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    global0 = array<f32, 15>();
    let var_1 = firstLeadingBit(u_input.c.x);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(abs(-257f)), var_0.a.x));
    global0 = array<f32, 15>();
    return _wgslsmith_f_op_f32(-var_2) > global0[_wgslsmith_index_u32(805u, 15u)];
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    global0 = array<f32, 15>();
    let var_0 = Struct_3(Struct_1(!select(select(arg_1, arg_3.a.a, arg_1.x), vec2<bool>(arg_1.x, arg_2.a.x), arg_3.a.a), (~vec2<u32>(arg_2.c.b.x, arg_3.a.b.x) & select(vec2<u32>(0u, 4294967295u), arg_3.a.b, arg_1)) >> (~vec2<u32>(arg_2.c.b.x, arg_2.c.b.x) % vec2<u32>(32u))));
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    var var_1 = 35028i;
    return Struct_3(Struct_1(var_0.a.a, vec2<u32>(var_0.a.b.x, _wgslsmith_add_u32(var_0.a.b.x, arg_3.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    var var_0 = func_4(!all(vec4<bool>(false, true, false, true)), vec2<bool>(true, true), Struct_2(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(25789u, 15u)] <= global0[_wgslsmith_index_u32(28088u, 15u)], func_1(true, u_input.a.wzy), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1621f, -719f, -352f) * vec3<f32>(208f, -654f, 2441f)) + vec3<f32>(-818f, global0[_wgslsmith_index_u32(1u, 15u)], 725f))), Struct_1(vec2<bool>(true, true), firstLeadingBit(vec2<u32>(60941u, 37121u)))), Struct_3(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), reverseBits(min(vec2<u32>(0u, 25872u), vec2<u32>(0u, 4294967295u))))));
    var_0 = func_4(true, vec2<bool>(func_3(), all(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, var_0.a.a.x), var_0.a.a.x))), Struct_2(vec4<bool>(true && all(vec3<bool>(false, var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)] - global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)]) <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)] - -301f), true, func_4(true, var_0.a.a, Struct_2(vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, var_0.a.a.x), vec3<f32>(global0[_wgslsmith_index_u32(1u, 15u)], -367f, global0[_wgslsmith_index_u32(1u, 15u)]), var_0.a), Struct_3(Struct_1(var_0.a.a, vec2<u32>(0u, var_0.a.b.x)))).a.b.x == var_0.a.b.x), vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.b.x >> (var_0.a.b.x % 32u), 15u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)]))), func_4(var_0.a.a.x, select(!vec2<bool>(var_0.a.a.x, var_0.a.a.x), select(var_0.a.a, var_0.a.a, vec2<bool>(false, var_0.a.a.x)), all(vec3<bool>(var_0.a.a.x, true, false))), Struct_2(vec4<bool>(var_0.a.a.x, true, true, var_0.a.a.x), vec3<f32>(1000f, -522f, global0[_wgslsmith_index_u32(25224u, 15u)]), Struct_1(vec2<bool>(true, false), vec2<u32>(var_0.a.b.x, var_0.a.b.x))), func_4(any(vec3<bool>(false, var_0.a.a.x, var_0.a.a.x)), var_0.a.a, Struct_2(vec4<bool>(false, false, var_0.a.a.x, false), vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)], 1338f, global0[_wgslsmith_index_u32(34540u, 15u)]), var_0.a), Struct_3(Struct_1(var_0.a.a, vec2<u32>(1u, var_0.a.b.x))))).a), func_4(all(func_4(var_0.a.a.x, vec2<bool>(true, true), Struct_2(vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, true), vec3<f32>(global0[_wgslsmith_index_u32(76587u, 15u)], global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), Struct_1(var_0.a.a, vec2<u32>(1u, 0u))), Struct_3(var_0.a)).a.a) | !all(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false)), !select(var_0.a.a, vec2<bool>(var_0.a.a.x, var_0.a.a.x), all(vec4<bool>(true, true, var_0.a.a.x, true))), Struct_2(!vec4<bool>(false, var_0.a.a.x, false, var_0.a.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1040f, -1000f, -2741f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(20219u, 15u)], -1942f, 1005f) * vec3<f32>(-629f, -316f, 476f))), var_0.a), func_4(!(!var_0.a.a.x), vec2<bool>(true, true), Struct_2(vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.a.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-232f, -2178f, global0[_wgslsmith_index_u32(var_0.a.b.x, 15u)]) * vec3<f32>(global0[_wgslsmith_index_u32(87589u, 15u)], -114f, 1000f)), func_4(var_0.a.a.x, var_0.a.a, Struct_2(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec3<f32>(-1170f, -1192f, -799f), Struct_1(var_0.a.a, vec2<u32>(var_0.a.b.x, 0u))), Struct_3(Struct_1(vec2<bool>(var_0.a.a.x, var_0.a.a.x), var_0.a.b))).a), Struct_3(Struct_1(var_0.a.a, vec2<u32>(var_0.a.b.x, var_0.a.b.x))))));
    let var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.b.x, 58227u, var_0.a.b.x, 0u), vec4<u32>(var_0.a.b.x, 78379u, 0u, 1u)), vec4<u32>(var_0.a.b.x, 4294967295u, 0u, var_0.a.b.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(5436u, 4294967295u, var_0.a.b.x, 0u), vec4<u32>(var_0.a.b.x, 6464u, var_0.a.b.x, 64175u))) & (firstTrailingBit(abs(vec4<u32>(116366u, 1u, var_0.a.b.x, 0u) & vec4<u32>(4294967295u, 4294967295u, var_0.a.b.x, 9855u))) & ~vec4<u32>(var_0.a.b.x ^ var_0.a.b.x, ~var_0.a.b.x, var_0.a.b.x >> (var_0.a.b.x % 32u), var_0.a.b.x));
    var var_2 = abs(vec4<u32>(0u, abs(~var_1.x), 18789u, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1834f);
}

