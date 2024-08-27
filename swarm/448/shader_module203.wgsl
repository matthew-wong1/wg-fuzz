struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(403f, vec3<u32>(43438u, 38014u, 71588u), Struct_1(-1i, 0u, vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), 1478i)), Struct_1(0i, 1u, vec4<bool>(false, false, true, false), vec2<i32>(69831i, -23005i)), vec4<bool>(true, true, false, true));

var<private> global1: Struct_1;

var<private> global2: array<bool, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    return arg_1.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = vec4<i32>(-abs(16628i), var_0.d.x, abs(countOneBits(-abs(2147483647i))), -global0.c.d.x);
    global2 = array<bool, 24>();
    let var_2 = Struct_1(1i, ~4294967295u, var_0.c, select(global0.d.d, vec2<i32>(_wgslsmith_add_i32(global0.c.a, -13228i), ~global0.c.d.x), vec2<bool>(true, true)) & (var_0.d & var_0.d));
    let var_3 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d.x, firstTrailingBit(_wgslsmith_div_i32(56516i, u_input.b)), _wgslsmith_sub_i32(max(var_0.a, 33922i), arg_0.d.x), ~(-25727i)), firstTrailingBit(firstLeadingBit(~var_1)), ~var_1));
    return 0i;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<i32> {
    global2 = array<bool, 24>();
    let var_0 = Struct_1(arg_1.d.a, global0.b.x, func_1(-1501f, Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))), abs(abs(vec3<u32>(1u, 1u, 1u))), func_1(179f, arg_1, global0.e.x | arg_1.d.c.x), Struct_1(func_3(Struct_1(arg_0, 1u, global0.c.c, vec2<i32>(arg_1.c.a, -8862i)), vec4<u32>(global0.b.x, global0.b.x, global1.b, 0u), 0u, Struct_1(global1.a, 85392u, vec4<bool>(global2[_wgslsmith_index_u32(31375u, 24u)], global1.c.x, arg_1.e.x, false), vec2<i32>(global0.d.d.x, global0.d.a))), global1.b, func_1(arg_1.a, Struct_2(-1000f, arg_1.b, arg_1.c, Struct_1(-66349i, global1.b, global0.d.c, vec2<i32>(arg_1.d.a, arg_1.d.d.x)), global1.c), false).c, max(vec2<i32>(-8211i, arg_0), global1.d)), func_1(global0.a, arg_1, false).c), select(true, !any(vec3<bool>(arg_1.c.c.x, true, arg_1.d.c.x)), !all(vec2<bool>(false, true)))).c, ~(-global0.c.d));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -606f), arg_1.d.c.x)))) + global0.a);
    var var_2 = Struct_2(_wgslsmith_div_f32(-1176f, _wgslsmith_f_op_f32(-1f)), global0.b, Struct_1(0i, 2114u | global0.d.b, vec4<bool>(false, arg_1.e.x, false, true), ~firstTrailingBit(-global1.d)), func_1(1150f, arg_1, any(func_1(_wgslsmith_f_op_f32(-arg_1.a), Struct_2(-308f, global0.b, arg_1.c, global0.c, vec4<bool>(true, global0.c.c.x, global0.e.x, arg_1.d.c.x)), arg_1.a > -1453f).c.zw)), !global0.e);
    var_2 = arg_1;
    return -(~(vec2<i32>(-1i, -7312i) & vec2<i32>(1i, global1.d.x)) >> ((vec2<u32>(29905u, arg_1.b.x) >> (max(vec2<u32>(56054u, 12778u), vec2<u32>(193u, 8178u)) % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(global0.c.b >> (firstLeadingBit(1u) % 32u), global1.b) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(465f + global0.a), global0.a, _wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_div_f32(global0.a, -1399f))))));
    let var_1 = Struct_1(-1i, 8152u, !vec4<bool>(!(37721i != global1.a), false, true, false), func_2(2147483647i, Struct_2(-1241f, u_input.c.wzy, func_1(var_0.x, Struct_2(global0.a, u_input.c.zwz, global0.d, global0.d, global0.e), false), global0.d, select(global0.e, global1.c, false))) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 29944u), vec2<u32>(_wgslsmith_div_u32(6491u, u_input.c.x), ~1u)) % vec2<u32>(32u)));
    var var_2 = vec4<bool>(var_1.c.x, !global2[_wgslsmith_index_u32(0u, 24u)], !var_1.c.x, global0.a != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * -2277f) - _wgslsmith_f_op_f32(ceil(var_0.x))));
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(ceil(var_0.x)))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(807f - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -139f) + -587f))), ~vec3<u32>(_wgslsmith_div_u32(0u, var_1.b), _wgslsmith_dot_vec2_u32(u_input.c.yw, u_input.c.yw), global1.b), Struct_1(_wgslsmith_sub_i32(select(1i, -30873i, global0.d.c.x), func_2(31606i, Struct_2(148f, u_input.c.zww, Struct_1(2147483647i, 0u, vec4<bool>(false, var_1.c.x, global0.d.c.x, true), var_1.d), Struct_1(-1i, 10347u, vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(95719u, 24u)], false, true), vec2<i32>(-31605i, global0.d.a)), global0.d.c)).x), ~var_1.b, global1.c, vec2<i32>(min(-17141i, var_1.d.x), -25603i)), Struct_1(u_input.b, (7731u & global1.b) << (global0.d.b % 32u), vec4<bool>(all(var_2.zy), true, global1.c.x, true), vec2<i32>(var_1.a, global0.d.a >> (global0.d.b % 32u))), vec4<bool>(global1.c.x, !global0.c.c.x, !any(var_1.c), min(u_input.a, global1.d.x) > 1i)), false);
    let var_4 = true;
    let var_5 = global0.c.c;
    var_2 = vec4<bool>(u_input.c.x <= 4294967295u, false, !(true == !global2[_wgslsmith_index_u32(16127u & u_input.c.x, 24u)]), var_4 | global0.c.c.x);
    var var_6 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a)))), Struct_2(_wgslsmith_f_op_f32(ceil(-129f)), vec3<u32>(29224u, global1.b, 23867u), global0.c, var_1, select(var_1.c, !func_1(-519f, Struct_2(var_0.x, vec3<u32>(global0.b.x, var_1.b, global1.b), Struct_1(0i, 36792u, global0.d.c, var_3.d), Struct_1(global1.a, 4294967295u, vec4<bool>(true, false, global0.c.c.x, global0.d.c.x), vec2<i32>(var_1.a, var_1.a)), vec4<bool>(global2[_wgslsmith_index_u32(33515u, 24u)], true, true, true)), true).c, true)), false & (false | (global0.b.x <= _wgslsmith_add_u32(19159u, global0.d.b))));
    let var_7 = var_6.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~var_3.d.x, u_input.c, _wgslsmith_f_op_f32(-1255f + _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global0.a)))));
}

