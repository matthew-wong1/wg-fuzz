struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, true, true, false), false, 20793i), Struct_1(vec4<bool>(false, false, true, false), false, 2147483647i), Struct_1(vec4<bool>(true, false, true, true), true, 19917i), Struct_1(vec4<bool>(false, true, true, true), true, -37481i), Struct_1(vec4<bool>(false, true, false, true), false, 69694i), Struct_1(vec4<bool>(false, true, false, true), true, 32861i), Struct_1(vec4<bool>(true, false, false, false), false, 80933i), Struct_1(vec4<bool>(false, true, true, false), false, 78226i), Struct_1(vec4<bool>(false, false, false, false), true, 1i), Struct_1(vec4<bool>(false, true, true, false), false, -78400i), Struct_1(vec4<bool>(true, true, true, false), true, -18692i), Struct_1(vec4<bool>(false, true, false, true), false, 1i), Struct_1(vec4<bool>(true, false, true, true), true, 2151i), Struct_1(vec4<bool>(false, true, true, true), true, -24731i), Struct_1(vec4<bool>(true, false, true, true), true, -1i), Struct_1(vec4<bool>(false, true, true, true), true, -1i), Struct_1(vec4<bool>(false, true, false, true), true, 8127i), Struct_1(vec4<bool>(true, false, true, true), false, 2147483647i), Struct_1(vec4<bool>(true, false, false, false), false, 2147483647i));

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 6>();
    var var_0 = Struct_1(!vec4<bool>(false, arg_1.b, all(vec3<bool>(arg_1.a.x, arg_1.a.x, false)), ~1i == _wgslsmith_clamp_i32(arg_0.x, u_input.c, u_input.c)), any(select(select(!arg_1.a.wxx, !vec3<bool>(arg_1.b, arg_1.a.x, true), select(vec3<bool>(arg_1.a.x, true, arg_1.b), arg_1.a.wzx, vec3<bool>(false, false, false))), vec3<bool>(true, arg_1.b, arg_1.b), true)), ~_wgslsmith_add_i32(2147483647i, arg_1.c));
    var var_1 = var_0.a.wy;
    global1 = array<Struct_1, 19>();
    var var_2 = Struct_1(!(!vec4<bool>(true, any(var_0.a.xz), !var_1.x, true)), true, _wgslsmith_add_i32((_wgslsmith_mod_i32(u_input.c, u_input.c) >> (0u % 32u)) << (56339u % 32u), -(35248i ^ arg_1.c)));
    return ~(~1u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(0u, 19u)];
    var var_1 = global1[_wgslsmith_index_u32(~firstLeadingBit(~(firstLeadingBit(9311u) >> (1u % 32u))), 19u)];
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(509f)), _wgslsmith_div_f32(617f, 273f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-772f - -145f), 659f)))));
    let var_2 = u_input.b;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(639f)))), 686f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-842f)))), -446f));
    return var_0.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false)) & true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), func_4(global1[_wgslsmith_index_u32(func_3(vec4<i32>(1i, u_input.b.x, -1i, -46792i), global1[_wgslsmith_index_u32(13179u, 19u)]), 19u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 12153u), vec2<u32>(u_input.a.x, u_input.a.x)), vec3<bool>(false, false, true)))), !(-(~u_input.c) == 1i), u_input.c);
    var var_1 = Struct_1(var_0.a, false, ~(-1i));
    return abs(63567i);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = vec3<i32>(-(_wgslsmith_add_i32(-1i, 3718i) | _wgslsmith_sub_i32(arg_0.c, 20454i)) & (u_input.c << (0u % 32u)), arg_1, func_2());
    global0 = array<vec4<f32>, 6>();
    global2 = 183f;
    let var_1 = any(!select(arg_0.a.ww, select(func_4(global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.x, arg_0.a.xzz).yz, !vec2<bool>(true, arg_0.b), !arg_0.a.x), !select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.xx, arg_0.a.x)));
    global0 = array<vec4<f32>, 6>();
    return _wgslsmith_f_op_f32(trunc(324f));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global1 = array<Struct_1, 19>();
    var var_0 = Struct_1(arg_0.a, true, ~(-u_input.b.x));
    var var_1 = Struct_1(arg_0.a, true, -7517i);
    global2 = -2071f;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    return ~(firstTrailingBit(countOneBits(vec4<u32>(1u, 4917u, u_input.a.x, 76887u)) & vec4<u32>(31687u, u_input.a.x, u_input.a.x, 0u)) & (vec4<u32>(0u << (u_input.a.x % 32u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 30553u | u_input.a.x, u_input.a.x) | _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a.x, 75128u, 18891u, u_input.a.x)), vec4<u32>(85719u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -403f;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) + _wgslsmith_f_op_f32(-1676f + -170f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(743f - 619f))));
    let var_0 = func_5(Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true)), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(49290u, 19u)], u_input.c ^ 40947i)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1280f + 1320f) + _wgslsmith_f_op_f32(abs(-448f))), _wgslsmith_sub_i32(firstTrailingBit(6360i), u_input.c) ^ 2147483647i), all(vec2<bool>(-2147483647i <= u_input.b.x, true)) == func_4(Struct_1(vec4<bool>(false, true, true, false), false, firstLeadingBit(27503i)), ~(~u_input.a.x), func_4(Struct_1(vec4<bool>(true, true, true, false), true, 6026i), ~u_input.a.x, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))).yyz).x);
    var var_1 = global1[_wgslsmith_index_u32(~4294967295u >> ((~u_input.a.x & var_0.x) % 32u), 19u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x & min(~u_input.a.x, u_input.a.x), 1u) & ~func_3(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, var_1.c), firstTrailingBit(var_1.c), var_1.c, u_input.c), Struct_1(var_1.a, all(var_1.a.wzw), var_1.c)), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(1i, 0i));
}

