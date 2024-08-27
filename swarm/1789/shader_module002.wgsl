struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, false, true, false, false, true, false);

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec4<i32>(-1i, -1113i, -7292i, i32(-2147483648))), Struct_1(vec4<i32>(1i, -1i, i32(-2147483648), -23932i)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<i32>(13575i, -346i, 1i, 2147483647i)), Struct_1(vec4<i32>(-33554i, 2147483647i, 33176i, i32(-2147483648))), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 0i, -13758i)), Struct_1(vec4<i32>(-1657i, 1i, 2147483647i, 15848i)), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<i32>(-42019i, 4563i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-39511i, 33621i, -1i, 2147483647i)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 57000i, -7329i, -15847i)), Struct_1(vec4<i32>(-8626i, i32(-2147483648), 27616i, 0i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(1i, -31402i, -11049i, -43089i)), Struct_1(vec4<i32>(30132i, i32(-2147483648), -1i, 2147483647i)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(-28689i, -38800i, 40280i, -32168i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 24934i, 1657i)), vec2<bool>(true, true)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<bool, 7>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 7u)];
    let var_1 = Struct_1(arg_0.a);
    global1 = array<Struct_2, 7>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    return ~0i ^ _wgslsmith_mult_i32(var_1.a.x, (firstTrailingBit(arg_0.a.x) << (4294967295u % 32u)) << (u_input.a.x % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global1 = array<Struct_2, 7>();
    let var_0 = func_3(Struct_1(~(-(~arg_0.a.a))));
    return Struct_2(Struct_1(arg_0.a.a), arg_0.b, select(arg_0.c, arg_0.c, _wgslsmith_mod_i32(arg_0.b.a.x, ~0i) > 1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = arg_1;
    global1 = array<Struct_2, 7>();
    var_0 = arg_2;
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-959f, -1231f, arg_2.c.x)))))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(-1113i, -5201i, -12939i, 1i)), global1[_wgslsmith_index_u32(u_input.a.x, 7u)], func_2(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 12321u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-733f)) + _wgslsmith_div_f32(728f, 1350f)))), func_2(func_2(global1[_wgslsmith_index_u32(~1u, 7u)], ~0u), ~(0u | u_input.a.x)).c.x)) > _wgslsmith_f_op_f32(f32(-1f) * -451f);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(func_3(Struct_1(select(vec4<i32>(2147483647i, -59082i, 2281i, -2147483647i), vec4<i32>(14864i, -27309i, 0i, 34043i), vec4<bool>(true, var_0, global0[_wgslsmith_index_u32(31009u, 7u)], false)))), reverseBits(_wgslsmith_div_i32(select(20826i, 21135i, var_0), i32(-1i) * -27109i))), ~29140i);
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(27594i, _wgslsmith_mod_i32(26415i, 18516i), -2147483647i, ~34726i), vec4<i32>(1i, 1i, 1i, 1i))), func_2(func_2(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 7u)], ~select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~u_input.a.wz << (u_input.a.xx % vec2<u32>(32u)))).a, !select(vec2<bool>(true, any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true))), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_3 = firstTrailingBit(u_input.a.zx);
    global1 = array<Struct_2, 7>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    let var_0 = _wgslsmith_mod_i32(1i, 1i);
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 7u)];
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -545f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1889f, -981f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f + 958f))))));
    let var_3 = vec4<i32>(-_wgslsmith_div_i32(func_2(Struct_2(Struct_1(var_1.b.a), Struct_1(var_1.b.a), var_1.c), u_input.a.x).a.a.x, select(-2147483647i, var_1.b.a.x, any(var_1.c))), ~(~var_1.b.a.x), var_0, _wgslsmith_div_i32(~_wgslsmith_add_i32(var_0, firstTrailingBit(2147483647i)), min(var_0, var_1.b.a.x)));
    var var_4 = _wgslsmith_mult_vec4_u32(u_input.a, ~(~u_input.a));
    var_1 = Struct_2(Struct_1(~select(var_1.b.a, var_1.b.a, var_1.c.x) | ~vec4<i32>(var_1.b.a.x, var_1.b.a.x, 1i, var_3.x)), func_2(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)], ~25938u).b, select(!var_1.c, !var_1.c, var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(func_2(Struct_2(var_1.b, var_1.b, var_1.c), 11033u), var_4.x).b.a.x, countOneBits(-4281i));
}

