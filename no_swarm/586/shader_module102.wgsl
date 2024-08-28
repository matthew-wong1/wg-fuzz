struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<u32, 1> = array<u32, 1>(0u);

var<private> global1: array<Struct_4, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = Struct_4(arg_0.a);
    var var_1 = arg_0;
    let var_2 = true;
    var_1 = Struct_4(var_0.a);
    let var_3 = var_0.a.e.a.xy;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(21307u, u_input.c.x, _wgslsmith_add_u32(~(~u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(1496u, u_input.c.x)))), ~(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 0u), ~vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)])) & vec3<u32>(u_input.c.x << (1u % 32u), 0u, 39484u)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 1u)], u_input.c.x, ~(~1u));
    var var_1 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(~func_3(global1[_wgslsmith_index_u32(60424u, 12u)], vec2<f32>(arg_1.b, 1000f), Struct_2(vec4<bool>(false, false, arg_1.d, false)))), ~((func_3(Struct_4(Struct_3(u_input.a.wzz, arg_0.a.b, vec4<i32>(arg_1.a.x, u_input.b, arg_0.a.a.x, -1i), arg_0.a.e.b.x, arg_0.a.e)), vec2<f32>(arg_0.a.b, 1189f), Struct_2(vec4<bool>(arg_0.a.e.a.x, arg_1.d, arg_2.a.d, true))) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55827u, 1u)], 1u)], 22565u, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 0u) ^ vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 1u)], 0u), _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(25591u, 1u)], global0[_wgslsmith_index_u32(12208u, 1u)], u_input.c.x), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22636u, 1u)], 1u)], 1u)])))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(12581u, 89514u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 55405u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 4294967295u))), ~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 6123u, 0u))));
    let var_2 = select(~min(~(vec4<u32>(66638u, var_1.x, var_1.x, var_1.x) | vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 47948u, 44662u)), ~(~vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], var_1.x, 1u))), firstLeadingBit(vec4<u32>(~_wgslsmith_mod_u32(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]), 4294967295u, ~0u, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_1.x, 1u, var_1.x), vec4<u32>(u_input.c.x, 70552u, 1u, 1005u)), 1u)]))), !(!(!select(vec4<bool>(arg_0.a.e.a.x, false, arg_2.a.d, arg_2.a.e.a.x), vec4<bool>(true, false, false, false), arg_2.a.d))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b * arg_0.a.b))), arg_2.a.b));
    let var_4 = !arg_1.e.b;
    return Struct_4(Struct_3(vec3<i32>(min(arg_0.a.c.x, -2147483647i) >> (0u % 32u), _wgslsmith_div_i32(arg_2.a.c.x, arg_0.a.c.x), ~_wgslsmith_sub_i32(u_input.b, 29819i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1839f, _wgslsmith_f_op_f32(f32(-1f) * -250f), -117f < arg_2.a.b)))), _wgslsmith_div_vec4_i32(~(u_input.a << (vec4<u32>(1u, 0u, var_2.x, var_2.x) % vec4<u32>(32u))), arg_1.c), false, Struct_1(!select(arg_0.a.e.a, arg_2.a.e.a, true), vec2<bool>(true, any(vec2<bool>(arg_2.a.d, arg_1.d))))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_2(vec4<bool>(true, !(!(!arg_3.a.d)), any(vec2<bool>(false, select(false, false, arg_0))), true));
    global0 = array<u32, 1>();
    global1 = array<Struct_4, 12>();
    let var_1 = func_2(Struct_4(func_2(arg_1, arg_1.a, func_2(arg_1, func_2(Struct_4(arg_3.a), Struct_3(arg_1.a.a, arg_2, vec4<i32>(7581i, 0i, -2147483647i, u_input.b), false, arg_3.a.e), arg_3).a, Struct_4(Struct_3(vec3<i32>(1i, -2147483647i, -40351i), 731f, u_input.a, arg_1.a.e.b.x, Struct_1(arg_1.a.e.a, vec2<bool>(false, true)))))).a), Struct_3(firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.a.yxw, vec3<i32>(-1i, -2147483647i, -53216i) ^ arg_1.a.c.yww)), arg_2, vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -58520i) | arg_1.a.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.c.x, arg_1.a.a.x, -50514i, -14945i), u_input.a), select(u_input.a, arg_1.a.c, arg_3.a.e.a.x)), 2697i, _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, u_input.b), _wgslsmith_add_i32(-1i, u_input.b))), false, Struct_1(!arg_3.a.e.a, arg_3.a.e.a.zx)), arg_1);
    let var_2 = vec2<bool>(any(select(!select(vec2<bool>(true, var_0.a.x), var_1.a.e.a.xy, arg_0), func_2(func_2(Struct_4(arg_1.a), var_1.a, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), arg_3.a, global1[_wgslsmith_index_u32(98750u, 12u)]).a.e.b, any(vec4<bool>(var_1.a.d, true, arg_3.a.e.b.x, arg_0)))), true);
    return 19837u;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(!vec3<bool>(true, true, !any(vec3<bool>(false, false, true))), vec3<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(54174u, 1u)], 1u, 17748u), vec3<u32>(u_input.c.x, 1u, global0[_wgslsmith_index_u32(u_input.c.x, 1u)]) << (vec3<u32>(4294967295u, 23162u, global0[_wgslsmith_index_u32(u_input.c.x, 1u)]) % vec3<u32>(32u))) < func_4(true, func_2(Struct_4(Struct_3(u_input.a.zwx, 1109f, u_input.a, true, Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)))), Struct_3(vec3<i32>(u_input.a.x, -1960i, u_input.b), 1133f, u_input.a, false, Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false))), global1[_wgslsmith_index_u32(0u, 12u)]), -428f, Struct_4(Struct_3(vec3<i32>(33498i, -9602i, u_input.a.x), -174f, u_input.a, false, Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true))))), all(!func_2(Struct_4(Struct_3(u_input.a.wwy, -1001f, u_input.a, true, Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)))), Struct_3(u_input.a.zzx, 1225f, u_input.a, true, Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false))), Struct_4(Struct_3(vec3<i32>(-2147483647i, -32824i, 1i), 2552f, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a.x), false, Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true))))).a.e.a)), vec3<bool>(true, all(vec3<bool>(func_2(Struct_4(Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 1076f, vec4<i32>(-2147483647i, -2147483647i, u_input.b, 0i), false, Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true)))), Struct_3(u_input.a.wzy, -608f, u_input.a, false, Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false))), global1[_wgslsmith_index_u32(86601u, 12u)]).a.e.a.x, all(vec2<bool>(false, false)), u_input.b > u_input.b)), select(-3164i > (u_input.a.x | u_input.a.x), _wgslsmith_f_op_f32(round(-366f)) == -1808f, _wgslsmith_f_op_f32(f32(-1f) * -1053f) <= _wgslsmith_f_op_f32(ceil(1189f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1275f, _wgslsmith_f_op_f32(1000f + -745f)), vec2<f32>(1f, 1f))))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)))), _wgslsmith_f_op_f32(f32(-1f) * -981f)));
    global0 = array<u32, 1>();
    let var_2 = vec3<bool>(!(!(~u_input.c.x != 34379u)), true, (u_input.a.x & (_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) >> ((74061u | global0[_wgslsmith_index_u32(15242u, 1u)]) % 32u))) != u_input.a.x);
    var var_3 = Struct_2(select(vec4<bool>(var_0.x, all(!var_0), true & var_0.x, select(!var_0.x, true, true)), !vec4<bool>(!var_0.x, var_0.x, var_2.x, true), vec4<bool>(false, !(!var_0.x), func_2(func_2(Struct_4(Struct_3(u_input.a.zxx, -374f, u_input.a, var_0.x, Struct_1(vec3<bool>(var_2.x, false, var_0.x), var_0.xy))), Struct_3(vec3<i32>(21122i, u_input.a.x, u_input.b), var_1.x, vec4<i32>(u_input.b, u_input.a.x, 1i, u_input.a.x), var_2.x, Struct_1(var_2, vec2<bool>(false, var_2.x))), global1[_wgslsmith_index_u32(1u, 12u)]), Struct_3(u_input.a.yxw, var_1.x, u_input.a, true, Struct_1(vec3<bool>(var_2.x, var_0.x, false), vec2<bool>(true, var_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23069u, 0u, 1u), vec3<u32>(u_input.c.x, u_input.c.x, 35406u)), 12u)]).a.e.a.x, any(!var_2.zx))));
    return StorageBuffer(-21352i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

