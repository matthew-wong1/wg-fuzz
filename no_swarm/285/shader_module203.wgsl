struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(-1i, 10718u), Struct_3(-22551i, 0u), Struct_3(-33500i, 0u), Struct_3(37333i, 1u), Struct_3(i32(-2147483648), 20777u), Struct_3(2147483647i, 96597u), Struct_3(-1i, 0u), Struct_3(-1i, 55147u), Struct_3(-1i, 4294967295u), Struct_3(1931i, 67480u), Struct_3(-1i, 0u), Struct_3(2147483647i, 38165u));

var<private> global1: array<f32, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 12>();
    global1 = array<f32, 31>();
    let var_0 = ~firstLeadingBit(-min(vec2<i32>(2147483647i, 8973i), vec2<i32>(-1756i, u_input.b)));
    let var_1 = select(4294967295u, 1u, !(!(!(1i <= var_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 71173u), 31u)])) * global1[_wgslsmith_index_u32(7295u, 31u)]));
    return Struct_2(Struct_1(-340f), var_2, Struct_1(-783f), max(vec4<i32>(15224i, min(var_0.x, u_input.b), 1i, 36691i), -(_wgslsmith_sub_vec4_i32(vec4<i32>(-9721i, u_input.b, -2147483647i, var_0.x), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)) << (select(vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(0u, 16980u, 15091u, 0u), false) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-316f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)]);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-4297i, (var_0.d.x | (i32(-1i) * -3968i)) << (u_input.a % 32u)), i32(-1i) * -1i);
    var_1 = arg_0.a;
    var var_3 = vec2<u32>(0u, u_input.a);
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = !arg_0;
    var_0 = u_input.b > arg_2.a;
    let var_1 = _wgslsmith_dot_vec4_u32(reverseBits(arg_3), abs(arg_3)) ^ ~14945u;
    var var_2 = func_2();
    global0 = array<Struct_3, 12>();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = ~112247u;
    global0 = array<Struct_3, 12>();
    global1 = array<f32, 31>();
    var var_1 = vec3<bool>(true || !all(vec3<bool>(true, true, true)), true, ((any(vec2<bool>(false, true)) & true) | false) || (!all(vec3<bool>(true, true, false)) & true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -389f));
    return _wgslsmith_div_f32(arg_0.b.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 31u)] - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a * 707f), _wgslsmith_f_op_f32(select(var_2.a, 322f, var_1.x)))))) != func_1(arg_0.a, firstLeadingBit(arg_0.d.x & 18848i) & 15599i, _wgslsmith_f_op_f32(-arg_0.e)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(~reverseBits(~u_input.a), 31u)]), Struct_1(-1622f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(966f * global1[_wgslsmith_index_u32(9658u, 31u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 31u)]))))), countOneBits(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-36457i, 0i, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~94752u, 31u)]));
    var var_1 = abs(~u_input.a);
    let var_2 = vec4<bool>(true, all(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), false)), func_4(func_3(true, func_1(var_0.b, var_0.d.x, global1[_wgslsmith_index_u32(4294967295u, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 12u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 23614u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, 1u, 50381u))), Struct_2(func_3(false, Struct_1(-844f), Struct_3(2147483647i, 0u), vec4<u32>(4294967295u, 22800u, u_input.a, 18369u)).a, var_0.b, func_2().b, -var_0.d, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.a)) - -597f)) & !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)), false);
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    var var_3 = func_2();
    global1 = array<f32, 31>();
    var var_4 = vec3<bool>(false, var_2.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(select(-reverseBits(var_3.d.x), var_0.d.x, false), 1u, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(~u_input.a >> ((u_input.a >> (0u % 32u)) % 32u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 40906u, u_input.a, 22832u)), ~vec4<u32>(12739u, u_input.a, 26062u, 4294967295u))), 31u)] * var_0.b.a));
}

