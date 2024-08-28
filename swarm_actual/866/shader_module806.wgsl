struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(38995u), Struct_1(0u), Struct_1(8556u), Struct_1(21589u), Struct_1(41330u), Struct_1(36586u), Struct_1(4046u), Struct_1(1u), Struct_1(56979u), Struct_1(63199u), Struct_1(61412u), Struct_1(4294967295u), Struct_1(17613u), Struct_1(6468u), Struct_1(0u), Struct_1(24949u), Struct_1(14601u), Struct_1(21747u), Struct_1(62049u), Struct_1(17305u), Struct_1(0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 25>();
    var var_0 = global0[_wgslsmith_index_u32(65646u & ~(~(~_wgslsmith_add_u32(u_input.a.x, u_input.b.x))), 25u)];
    var var_1 = true;
    var var_2 = true;
    var_0 = Struct_1(9605u);
    return _wgslsmith_dot_vec3_u32(~(u_input.a | firstLeadingBit(countOneBits(u_input.a))), u_input.a);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_u32(~4294967295u, u_input.b.x));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(), 22772u), 25u)];
    var var_2 = vec2<u32>(~4294967295u, _wgslsmith_sub_u32(arg_0.a, _wgslsmith_add_u32(abs(u_input.a.x << (var_1.a % 32u)), ~var_0.a << (~67741u % 32u))));
    var var_3 = _wgslsmith_dot_vec3_u32(~(~u_input.a), vec3<u32>(_wgslsmith_add_u32(1u, u_input.a.x), 1u, 33089u)) | ~_wgslsmith_mult_u32(49469u, ~(~var_1.a));
    var var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i >> (var_1.a % 32u), 4895i), -23686i, reverseBits(1i)), reverseBits(select(min(vec3<i32>(1i, 0i, 2429i), vec3<i32>(-2147483647i, 1i, 42726i)), ~vec3<i32>(-2147483647i, 2147483647i, -49983i), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)))), -(~firstTrailingBit(vec3<i32>(-1i, 6511i, 2147483647i))));
    return global0[_wgslsmith_index_u32(0u, 25u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1710f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1523f + 1177f), _wgslsmith_f_op_f32(1000f - -950f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(-229f)))));
    global0 = array<Struct_1, 25>();
    let var_1 = Struct_1(reverseBits(min(u_input.b.x, 42479u)));
    let var_2 = func_2(Struct_1(arg_1.a));
    global0 = array<Struct_1, 25>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~countOneBits(u_input.b.x), ~var_2.a, ~42341u) << (148567u % 32u), 25u)];
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(1u);
    var var_1 = Struct_1(0u);
    let var_2 = 334f;
    let var_3 = 442f;
    var_1 = Struct_1(1u);
    return func_4(Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u | var_0.a, 0u << (u_input.b.x % 32u), var_0.a), 55740u)), func_2(global0[_wgslsmith_index_u32(7614u, 25u)]), global0[_wgslsmith_index_u32(~(max(_wgslsmith_add_u32(0u, var_0.a), var_1.a) | var_0.a), 25u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    var var_0 = 4294967295u;
    let var_1 = ~((reverseBits(2147483647i) << (u_input.a.x % 32u)) | _wgslsmith_mod_i32(17085i, -14007i)) < 29346i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), func_2(func_2(Struct_1(u_input.a.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.a.x, u_input.b.x, 13496u)), reverseBits(1u)), 25u)], !select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true && (u_input.a.x <= u_input.a.x)));
    let var_1 = max(_wgslsmith_sub_i32(max(-54036i, -24128i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, -1418i, 2147483647i), -(vec3<i32>(18510i, 618i, -6987i) >> (vec3<u32>(var_0.a, 4294967295u, 45100u) % vec3<u32>(32u))))), _wgslsmith_div_i32(select(_wgslsmith_add_i32(i32(-1i) * -6629i, -2147483647i), 1i, true), _wgslsmith_sub_i32(~(i32(-1i) * -43071i), 1i)));
    let var_2 = 1u;
    let var_3 = Struct_1(1u);
    var var_4 = Struct_1(reverseBits(_wgslsmith_add_u32(func_3(), max(u_input.a.x, var_0.a) | var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a << (_wgslsmith_div_u32(4294967295u, ~abs(var_0.a)) % 32u), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1968f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-100f, -984f, true))))))));
}

