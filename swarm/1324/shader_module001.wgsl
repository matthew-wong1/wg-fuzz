struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec3<f32>(-1010f, -273f, -452f), Struct_1(vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 10991u)), vec3<f32>(-350f, 818f, 395f), Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), vec3<f32>(1267f, 634f, -1165f), Struct_1(vec2<u32>(21996u, 43495u))), Struct_2(Struct_1(vec2<u32>(0u, 58732u)), vec3<f32>(352f, 976f, -879f), Struct_1(vec2<u32>(44344u, 26291u))), Struct_2(Struct_1(vec2<u32>(0u, 21206u)), vec3<f32>(178f, 1728f, 1112f), Struct_1(vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 28627u)), vec3<f32>(152f, -658f, 1000f), Struct_1(vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(vec2<u32>(1521u, 54633u)), vec3<f32>(159f, 827f, 1768f), Struct_1(vec2<u32>(1u, 22553u))), Struct_2(Struct_1(vec2<u32>(16151u, 41111u)), vec3<f32>(170f, -672f, -1303f), Struct_1(vec2<u32>(1u, 27305u))));

var<private> global1: Struct_3 = Struct_3(vec4<i32>(i32(-2147483648), -7610i, 14069i, 2147483647i), Struct_2(Struct_1(vec2<u32>(1667u, 4294967295u)), vec3<f32>(388f, -1160f, 176f), Struct_1(vec2<u32>(0u, 24976u))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.b.b.x;
    let var_1 = select(select(vec4<bool>(true, all(vec2<bool>(true, true)), select(any(vec2<bool>(true, false)), true, -57511i < arg_0.a.x), !any(vec3<bool>(true, true, false))), !vec4<bool>(true, any(vec4<bool>(false, false, true, false)), any(vec4<bool>(true, true, true, true)), true), !vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true)), vec4<bool>(true && all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), any(vec3<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)), true)), false), true);
    let var_2 = Struct_1(global1.b.a.a);
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a, arg_0.b.c.a.x, 1u, global1.b.c.a.x), vec4<u32>(26341u, 0u, 30593u, 58072u)), select(vec4<u32>(global1.b.c.a.x, var_2.a.x, global1.b.c.a.x, var_2.a.x), vec4<u32>(global1.b.c.a.x, 1u, 26080u, u_input.a), true)), ~vec4<u32>(min(arg_0.b.a.a.x, global1.b.c.a.x), ~23040u, arg_0.b.c.a.x | arg_0.b.c.a.x, _wgslsmith_add_u32(0u, 4294967295u))));
    global1 = Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-28369i, global1.a.x), vec2<i32>(4829i, arg_0.a.x)), max(_wgslsmith_add_vec2_i32(global1.a.xy, vec2<i32>(arg_0.a.x, arg_0.a.x)), vec2<i32>(-67263i, u_input.b))), min(-1i, (arg_0.a.x | arg_0.a.x) ^ (arg_0.a.x | arg_0.a.x)), ~(-33484i), arg_0.a.x), Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 40070u), vec2<u32>(0u, global1.b.c.a.x)) >> (~var_2.a % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-868f)), -520f, global1.b.b.x)), Struct_1(~vec2<u32>(var_2.a.x, 9825u))));
    return !vec4<bool>(!any(vec2<bool>(false, var_1.x)), true, true, any(!(!var_1.xx)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_3 {
    global0 = array<Struct_2, 8>();
    var var_0 = Struct_4(!select(vec4<bool>(true, true, true, true), func_3(Struct_3(vec4<i32>(-21640i, 2147483647i, 0i, u_input.b), global1.b)), vec4<bool>(true, true, true, func_3(Struct_3(global1.a, global0[_wgslsmith_index_u32(0u, 8u)])).x)), arg_1, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -321f))), global1.b);
    global0 = array<Struct_2, 8>();
    var_0 = Struct_4(!select(var_0.a, !(!var_0.a), var_0.e.b.x > _wgslsmith_f_op_f32(global1.b.b.x + var_0.e.b.x)), arg_1, arg_1.a.x, var_0.e.b.x, Struct_2(Struct_1(max(abs(vec2<u32>(u_input.a, 43795u)), ~vec2<u32>(arg_1.a.x, 1u))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(var_0.e.b.x * -2495f), global1.b.b.x))), Struct_1(arg_1.a)));
    global0 = array<Struct_2, 8>();
    return Struct_3(-_wgslsmith_div_vec4_i32(global1.a, vec4<i32>(~arg_0.x, firstTrailingBit(arg_0.x), -u_input.b, _wgslsmith_sub_i32(u_input.b, global1.a.x))), var_0.e);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_4 {
    global0 = array<Struct_2, 8>();
    global1 = func_2(vec2<i32>(-(~(~4464i)), -global1.a.x), global1.b.a);
    global0 = array<Struct_2, 8>();
    global1 = Struct_3(vec4<i32>(((-1i | global1.a.x) << ((u_input.c | u_input.a) % 32u)) | global1.a.x, -global1.a.x, u_input.b, global1.a.x), func_2(reverseBits(arg_0.zy), global1.b.c).b);
    let var_0 = !vec4<bool>(!(!any(vec4<bool>(true, true, true, false))), !(false && any(vec3<bool>(true, true, true))), !any(vec3<bool>(false, false, false)), true);
    return Struct_4(!vec4<bool>(true, false, !any(vec2<bool>(false, true)), true || var_0.x), global1.b.a, func_2(arg_0.xx, global1.b.c).b.a.a.x, global1.b.b.x, func_2(arg_0.xx, global1.b.a).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.a.xyz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_div_f32(global1.b.b.x, 331f))) + global1.b.b.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_0.e.b)), var_0.e.b, true)) * var_0.e.b);
    let var_2 = vec3<u32>(min(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 32659u, 19366u, 12371u), vec4<u32>(11354u, u_input.a, 21651u, 20094u))), 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), abs(vec3<u32>(28078u, 5556u, global1.b.c.a.x)))), max(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 20700u)) ^ vec2<u32>(1u, var_0.b.a.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.c.a.x, u_input.c, 1u, u_input.c), vec4<u32>(1u, global1.b.c.a.x, 47769u, var_0.c)), 0u)), func_2(global1.a.yw, global1.b.c).b.c.a.x), (~_wgslsmith_add_u32(16661u, 1u) >> (1u % 32u)) ^ func_1(vec3<i32>(_wgslsmith_sub_i32(-30352i, -1i), _wgslsmith_sub_i32(global1.a.x, -34120i), -26144i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -114f, false)))).b.a.x);
    var var_3 = Struct_3(reverseBits(~vec4<i32>(0i >> (var_0.c % 32u), firstTrailingBit(u_input.b), _wgslsmith_sub_i32(-18797i, global1.a.x), 8509i)), Struct_2(global1.b.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e.b - var_1)), var_0.e.b)), func_1(global1.a.zww, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + var_0.d), _wgslsmith_div_f32(578f, var_0.e.b.x)))).b));
    global0 = array<Struct_2, 8>();
    let var_4 = var_2 & ~abs(var_2);
    var var_5 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, u_input.c, 4294967295u, var_2.x) << (vec4<u32>(u_input.a, var_4.x, var_3.b.c.a.x, var_2.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(global1.b.c.a.x, 743u, var_0.c, u_input.c))), ~vec4<u32>(global1.b.c.a.x, 1u, var_4.x, 1u)), ~(~countOneBits(vec4<u32>(var_0.b.a.x, 4294967295u, var_0.c, 32872u))));
    let var_6 = ~func_2(-select(~vec2<i32>(-60957i, u_input.b), firstLeadingBit(global1.a.yy), !var_0.a.wy), func_1(countOneBits(-vec3<i32>(u_input.b, 35826i, 2147483647i)), _wgslsmith_f_op_f32(abs(1472f))).b).b.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-628f);
}

