struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-800f, -637f), vec3<u32>(15763u, 80701u, 1u));

var<private> global2: array<vec4<u32>, 16>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> vec2<f32> {
    let var_0 = vec4<bool>((true & (arg_1.a.x <= _wgslsmith_f_op_f32(sign(810f)))) && true, select(any(vec4<bool>(true, false, true, true)), true || any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), (~global1.b.x == ~u_input.a.x) && true), !((arg_0.b.x <= 24354u) & false), true);
    let var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), reverseBits(arg_0.b));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - var_2.a.x), _wgslsmith_div_f32(var_2.a.x, 2277f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)) * vec2<f32>(global3.x, arg_0.a.x))), true && var_0.x)), ~(~(~u_input.a)));
    var var_4 = _wgslsmith_div_i32(~arg_3, i32(-1i) * -27689i);
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(max(arg_0.a, vec2<f32>(global1.a.x, 165f))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global3.wy, ~vec3<u32>(15508u, u_input.a.x, 0u)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global3.xw)) * global1.a), reverseBits(vec3<u32>(4294967295u, 1u, 65171u))), global3.yw, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, 63291i), vec2<i32>(-4091i, 50361i)), vec2<i32>(-1i, 1i)), abs(1i)))), ~(~vec3<u32>(_wgslsmith_sub_u32(21179u, 1u), firstTrailingBit(u_input.a.x), ~u_input.a.x)));
    global1 = var_0;
    global1 = Struct_1(var_0.a, ~vec3<u32>(max(9024u, _wgslsmith_mult_u32(u_input.a.x, global1.b.x)), _wgslsmith_div_u32(0u, global1.b.x), abs(min(0u, 1u))));
    let var_1 = var_0;
    global3 = vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-516f, _wgslsmith_f_op_f32(f32(-1f) * -753f), true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -2300f))), _wgslsmith_f_op_f32(-var_0.a.x), false)), 230f);
    return var_1;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(608f, -1406f, -454f, global1.a.x))))))))));
    global1 = func_2();
    var var_2 = all(!select(vec3<bool>(true, select(true, false, false), true), vec3<bool>(true, true, true), false));
    let var_3 = ~max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global1.b.x, 56990u), ~u_input.a.x, abs(38099u)), ~u_input.a), 16u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(abs(global1.b.x)), ~(~global1.b.x)), 16u)]);
    return ~_wgslsmith_sub_vec3_u32(u_input.a ^ min(global1.b & vec3<u32>(1u, 1u, global1.b.x), vec3<u32>(global1.b.x, u_input.a.x, 40017u)), ~abs(~vec3<u32>(global1.b.x, global1.b.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, !(!select(false, true, true)), !(!(-1165f > global3.x))), vec3<bool>(true, true, all(vec2<bool>(true, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(true, false)))));
    var var_1 = Struct_1(vec2<f32>(-150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f)))), func_1(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, -51705i)), min(vec2<i32>(0i, -30137i), vec2<i32>(2147483647i, 3548i)))));
    global2 = array<vec4<u32>, 16>();
    var_0 = select(select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x || true, true, true), vec3<bool>(false, var_0.x, false)), !select(vec3<bool>(var_0.x, var_0.x, true), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, false), true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x, false, var_0.x)), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, false), true), var_0.x)), select(select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), var_0.x), vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, false)), vec3<bool>(true, any(var_0.xz), true), all(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x))), select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), true), select(vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x)), var_0.x), false), var_0.x));
    global3 = vec4<f32>(global3.x, var_1.a.x, _wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(round(-390f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - global3.x));
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, var_2.b, -1000f);
}

