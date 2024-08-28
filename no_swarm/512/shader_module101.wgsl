struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(148i, 4294967295u), Struct_1(-1391i, 4294967295u), Struct_1(-4852i, 37126u), Struct_1(-18336i, 36879u), Struct_1(33026i, 1u), Struct_1(0i, 42071u), Struct_1(2147483647i, 1u), Struct_1(19823i, 1u), Struct_1(26782i, 57695u), Struct_1(-17726i, 14510u), Struct_1(-1i, 3735u), Struct_1(7524i, 0u), Struct_1(1i, 1u), Struct_1(-19921i, 20225u), Struct_1(-8693i, 1u), Struct_1(21165i, 1u), Struct_1(2147483647i, 4294967295u), Struct_1(1i, 0u), Struct_1(-61324i, 4294967295u), Struct_1(i32(-2147483648), 4294967295u), Struct_1(4756i, 28873u));

var<private> global2: array<bool, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 9>();
    global2 = array<bool, 5>();
    var var_0 = -553f;
    global0 = array<Struct_1, 9>();
    let var_1 = !vec3<bool>(_wgslsmith_div_u32(~arg_1.b, _wgslsmith_add_u32(arg_1.b, arg_0.x)) <= arg_1.b, !any(!vec2<bool>(global2[_wgslsmith_index_u32(arg_1.b, 5u)], true)), global2[_wgslsmith_index_u32(max(~0u, firstTrailingBit(firstTrailingBit(0u))), 5u)]);
    return false;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = array<bool, 5>();
    global1 = array<Struct_1, 21>();
    global2 = array<bool, 5>();
    var var_0 = !vec2<bool>(global2[_wgslsmith_index_u32(~1u, 5u)], !(!func_3(vec3<u32>(40468u, 24164u, 44421u), Struct_1(-2147483647i, 4294967295u))));
    var var_1 = global0[_wgslsmith_index_u32(~(~4294967295u), 9u)];
    return Struct_1(19729i, abs(~var_1.b));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = Struct_1(0i, 1u >> ((abs(arg_0.b) >> (~_wgslsmith_mod_u32(0u, arg_2) % 32u)) % 32u));
    let var_1 = func_2(abs(_wgslsmith_mult_i32(-(~arg_0.a), ~var_0.a)));
    global1 = array<Struct_1, 21>();
    let var_2 = select(!select(vec4<bool>(global2[_wgslsmith_index_u32(arg_2 << (arg_1 % 32u), 5u)], global2[_wgslsmith_index_u32(0u, 5u)], true && global2[_wgslsmith_index_u32(61345u, 5u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 5u)] && global2[_wgslsmith_index_u32(0u, 5u)], !global2[_wgslsmith_index_u32(var_1.b, 5u)], true), select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 5u)], global2[_wgslsmith_index_u32(6185u, 5u)], global2[_wgslsmith_index_u32(34234u, 5u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], false), true)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(9973u, 5u)], false, all(vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_1.b, 5u)]))), !(!select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.b, 5u)], true, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.b, 5u)], global2[_wgslsmith_index_u32(14644u, 5u)], global2[_wgslsmith_index_u32(arg_2, 5u)]), global2[_wgslsmith_index_u32(10314u, 5u)])), !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b, ~var_1.b), 5u)]), vec4<bool>(false, select(true, !all(vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.b, 5u)], true, false)), global2[_wgslsmith_index_u32(~reverseBits(arg_0.b), 5u)]), func_3(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, arg_0.b, var_1.b), vec3<u32>(arg_1, arg_1, 1u))), global1[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_mod_u32(arg_2, arg_2), 21u)]), !any(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(var_0.b, 5u)], true))));
    let var_3 = global0[_wgslsmith_index_u32(max(1u, 1u), 9u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(0u << (reverseBits(0u) % 32u), ~_wgslsmith_mult_u32(abs(4294967295u), func_1(Struct_1(-2147483647i, 63496u), 29311u, 13027u)))), 21u)];
    global2 = array<bool, 5>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_1 = ~vec2<u32>(~var_0.b, ~(~67561u));
    let var_2 = ~5039u;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(-1468f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(462f))))))));
    let var_4 = select(vec4<bool>(global2[_wgslsmith_index_u32(52146u, 5u)], global2[_wgslsmith_index_u32(var_1.x, 5u)], false, any(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)])))), vec4<bool>(true, global2[_wgslsmith_index_u32(~func_1(global1[_wgslsmith_index_u32(0u, 21u)], 0u, 0u), 5u)], !all(vec3<bool>(true, global2[_wgslsmith_index_u32(var_2, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)])), all(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(6294u, 5u)], true, global2[_wgslsmith_index_u32(4294967295u, 5u)]))), !select(true, (u_input.c.x != -7931i) & true, !any(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 5u)], global2[_wgslsmith_index_u32(var_2, 5u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(u_input.c.x, 4931i), ~_wgslsmith_mult_u32(48084u, firstLeadingBit(~var_1.x)));
}

