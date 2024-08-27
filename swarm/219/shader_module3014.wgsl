struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: vec2<bool>;

var<private> global2: bool = false;

var<private> global3: Struct_2 = Struct_2(vec3<bool>(false, false, true), Struct_1(4294967295u), vec3<bool>(true, true, true), 3291u, true);

var<private> global4: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    global1 = select(global3.c.zz, vec2<bool>(reverseBits(31190i) < ((global0[_wgslsmith_index_u32(global4.a, 21u)] | u_input.a.x) >> (global4.a % 32u)), global3.a.x), select(!global3.c.zy, !vec2<bool>(any(global3.c.yx), false & global1.x), any(!global3.a)));
    global4 = global3.b;
    var var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~global3.d, firstTrailingBit(_wgslsmith_clamp_u32(global3.d, global4.a, 4294967295u))), ~reverseBits(countOneBits(19625u)), ~global3.b.a));
    let var_1 = Struct_2(!vec3<bool>(global1.x, global1.x, false), global3.b, global3.c, ~abs(global3.b.a), global3.b.a <= 1u);
    var var_2 = Struct_1(global3.d);
    return min(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a.x, arg_0.x, -global0[_wgslsmith_index_u32(14552u, 21u)]), -(vec3<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(var_2.a, 21u)]) ^ vec3<i32>(-44486i, 0i, global0[_wgslsmith_index_u32(var_2.a, 21u)])))), -vec3<i32>(global0[_wgslsmith_index_u32(var_2.a | (23837u & var_0.a), 21u)], abs(-1i), i32(-1i) * -1i));
}

fn func_4(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1026f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) * _wgslsmith_f_op_f32(149f - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1219f)))));
    var var_1 = global1.x;
    let var_2 = Struct_2(!select(vec3<bool>(all(vec2<bool>(global3.a.x, global3.e)), all(vec4<bool>(false, true, false, false)), true), vec3<bool>(all(vec3<bool>(global3.a.x, global3.c.x, global1.x)), !global3.a.x, select(global1.x, global3.e, true)), vec3<bool>(true, true, true)), Struct_1(global4.a), select(!vec3<bool>(global1.x, !global1.x, false), vec3<bool>(any(vec3<bool>(global3.c.x, global3.c.x, false)), global3.e, global3.c.x & false), any(vec3<bool>(true, true, true))), ~min(~(0u ^ global3.d), ~1u ^ _wgslsmith_div_u32(51017u, global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-203f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-267f, -1685f)), _wgslsmith_f_op_f32(630f - 2463f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-946f, 1000f)))));
    var var_3 = u_input.a.x;
    let var_4 = !(true || !(global3.e | (global3.a.x != false)));
    return ~vec2<u32>(58726u, global4.a);
}

fn func_2() -> Struct_1 {
    let var_0 = global3.b;
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~select(24279u, ~var_0.a, global1.x), ~_wgslsmith_mod_u32(0u, var_0.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(28014u, global3.b.a, global4.a, 9042u)) & max(vec4<u32>(50827u, 0u, global3.d, 14905u), vec4<u32>(30501u, global3.b.a, 19114u, var_0.a)), ~vec4<u32>(var_0.a, global3.b.a, 4294967295u, 0u))));
    global4 = var_1;
    var var_2 = select(!vec3<bool>(true, global3.a.x, any(select(vec2<bool>(true, true), global3.c.xz, global3.a.yz))), vec3<bool>(global3.e, (-2482i << (~var_1.a % 32u)) > 1i, true), select(!all(vec4<bool>(true, true, global3.c.x, global3.e)), true, false));
    var var_3 = func_4(-(~(~vec3<i32>(8413i, 0i, 1i)) & func_3(u_input.a)));
    return Struct_1(global3.d & _wgslsmith_div_u32(1u, global3.b.a << (global3.d % 32u)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> vec3<bool> {
    var var_0 = func_2();
    global3 = Struct_2(select(global3.a, vec3<bool>(global1.x, all(vec4<bool>(arg_0, true, true, false)), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(sign(-1233f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f - arg_2))), Struct_1(var_0.a), select(!(!global3.c), !global3.a, arg_0 && global3.a.x), var_0.a, false);
    let var_1 = global3.b.a;
    let var_2 = func_2();
    let var_3 = global3.b;
    return select(!vec3<bool>(global1.x, !(!global3.c.x), arg_0), vec3<bool>(!(true & (arg_0 | global1.x)), false, global1.x), !global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(select(func_1(global3.e, abs(~global4.a), _wgslsmith_f_op_f32(-434f * _wgslsmith_f_op_f32(226f - -925f))), select(vec3<bool>(true, global1.x, all(vec4<bool>(global1.x, true, global1.x, global3.c.x))), !func_1(true, global4.a, -437f), vec3<bool>(!global3.c.x, true, true)), global1.x), func_2(), global3.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(27601u, 0u, 4294967295u, 19763u) << (abs(vec4<u32>(4294967295u, 1u, global4.a, global3.d)) % vec4<u32>(32u))), vec4<u32>(1u, func_2().a, global4.a, (global4.a & 0u) ^ select(12963u, global4.a, global3.c.x))), true);
    let var_0 = true;
    let var_1 = global3.b;
    global2 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1681f) + _wgslsmith_f_op_f32(f32(-1f) * -1089f)));
    global4 = global3.b;
    let var_3 = global4.a;
    global3 = Struct_2(vec3<bool>(select(true, true, false), global1.x, global3.c.x), func_2(), global3.c, func_4(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-33493i, 17136i, 22634i)))).x ^ _wgslsmith_mod_u32(64304u, var_1.a), false);
    var var_4 = _wgslsmith_f_op_f32(-862f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-799f, _wgslsmith_div_f32(1000f, 179f), global3.e))))) < -1058f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-41233i, 4931i, 1i, u_input.a.x)), min(reverseBits(select(vec4<i32>(18237i, 0i, -31834i, 0i), vec4<i32>(u_input.a.x, -53529i, 63153i, 10927i), vec4<bool>(false, true, global3.a.x, false))), vec4<i32>(-19260i, firstTrailingBit(-1i), global0[_wgslsmith_index_u32(47972u, 21u)], min(global0[_wgslsmith_index_u32(global3.d, 21u)], -8200i)))), vec4<i32>(abs(_wgslsmith_div_i32(u_input.a.x, -82747i)), 2147483647i, -1i, ~(~(-37349i))) | vec4<i32>(-(-1i | u_input.a.x), abs(-45160i << (0u % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(4294967295u), 1u), 21u)], -(~(-1i))), -51945i);
}

