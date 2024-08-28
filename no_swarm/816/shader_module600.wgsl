struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
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

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec2<bool>, 14>;

var<private> global2: Struct_1 = Struct_1(2147483647i, vec4<bool>(true, true, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = all(select(select(!global2.b.xz, !select(vec2<bool>(global2.b.x, arg_0.b.x), arg_0.b.yw, vec2<bool>(false, arg_0.b.x)), _wgslsmith_f_op_f32(sign(281f)) <= _wgslsmith_f_op_f32(413f - 504f)), arg_0.b.yz, arg_0.b.wy));
    let var_1 = Struct_1(~(1i ^ _wgslsmith_div_i32(u_input.a, 9539i)) >> (1u % 32u), global2.b);
    let var_2 = Struct_1(~(firstLeadingBit(-1096i) >> (~4294967295u % 32u)) | firstLeadingBit(_wgslsmith_sub_i32(-global2.a, global2.a ^ u_input.b.x)), select(global2.b, !select(vec4<bool>(false, arg_0.b.x, true, global2.b.x), !arg_0.b, global2.b), arg_0.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2181f + 586f), _wgslsmith_f_op_f32(sign(-1580f)))))));
    global1 = array<vec2<bool>, 14>();
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~(~1u)), 1u >> (0u % 32u)), firstTrailingBit(~_wgslsmith_add_u32(max(38571u, 29765u), 1u)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_1(-(~(reverseBits(global2.a) | abs(-549i))), !global2.b);
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(4294967295u, 3u)]) & ~(~4294967295u), 1u), 3u)];
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(select(vec4<i32>(-17409i, global2.a, var_0.a, global2.a), u_input.c, var_0.b) >> (~vec4<u32>(1u, 1u, 4294967295u, 0u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b.x, -1i, global2.a, u_input.a)), var_0.b), u_input.c), u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(min(17350u, 1u))) >> (vec2<u32>(94096u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(34962u, 52002u, 1u)), countOneBits(vec3<u32>(15967u, 54031u, 26121u)))) % vec2<u32>(32u)), vec2<u32>(~(~(~82529u)), 1u)), 3u)];
    return Struct_1(var_1, global2.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -38706i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-602f)));
    global1 = array<vec2<bool>, 14>();
    var var_2 = vec4<i32>(firstTrailingBit(min(abs(1i), arg_3.a)) ^ ~abs(0i), u_input.b.x, u_input.c.x, 3785i);
    var var_3 = ((_wgslsmith_dot_vec3_u32(vec3<u32>(45968u, 861u, 52189u), vec3<u32>(4294967295u, 109418u, 0u)) & 1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1588u, 0u, 9478u))) ^ ~min(~0u, ~43993u);
    return func_2();
}

fn func_1() -> f32 {
    var var_0 = ~(~1u);
    let var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1495f));
    global2 = func_4(vec4<bool>(true, false, global2.b.x, _wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) * -1029f)), func_2(), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(37217u, 28297u))), ~53331u), 3u)], Struct_1(_wgslsmith_mult_i32(-1i, 1i << (0u % 32u)), select(vec4<bool>(false, true, true, false), global2.b, select(vec4<bool>(false, true, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, true, global2.b.x), !global2.b.x))));
    let var_2 = false;
    var var_3 = max(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(55710u, 1u, 49882u))), vec3<u32>(~1u, abs(_wgslsmith_mod_u32(abs(54575u), 1u)), ~1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2101f, 811f)));
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_4(global2.b, global0[_wgslsmith_index_u32(abs(max(0u, firstLeadingBit(~0u))), 3u)], global0[_wgslsmith_index_u32(countOneBits(~(~_wgslsmith_add_u32(19086u, 0u))), 3u)], Struct_1(-abs(1i), !(!func_4(vec4<bool>(false, false, global2.b.x, true), Struct_1(global2.a, vec4<bool>(false, arg_0.x, global2.b.x, false)), global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]).b))).b.xw;
    global0 = array<Struct_1, 3>();
    global2 = func_2();
    var var_1 = vec2<f32>(1f, 1f);
    var var_2 = u_input.c.yz;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global2.b.x | true;
    let var_1 = 2903i;
    var var_2 = global1[_wgslsmith_index_u32(~1u, 14u)];
    global2 = func_5(vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1066f)), _wgslsmith_f_op_f32(func_1()))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-739f, -439f)), var_2.x));
    global0 = array<Struct_1, 3>();
    let var_3 = -493f;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3, var_3, global2.b.x)))))));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(341f);
}

