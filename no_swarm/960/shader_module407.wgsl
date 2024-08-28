struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 30>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    return ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(73044u, arg_1.b.a.x, 44845u, arg_2.a.x), vec4<u32>(1u, 1u, 0u, arg_2.a.x))) >> (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, arg_2.a.x), 1u), arg_2.a.x, ~_wgslsmith_clamp_u32(arg_2.a.x, 87571u, 109036u), _wgslsmith_mult_u32(~arg_2.a.x, arg_2.a.x)) % vec4<u32>(32u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(abs(~6164u), max(50778u, 4842u) & select(33437u, 4294967295u, true), 41838u, countOneBits(1u))), Struct_1(select(reverseBits(~global2[_wgslsmith_index_u32(47u, 30u)]), ~vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<bool>(!global0[_wgslsmith_index_u32(41199u, 21u)], false, true, false))), reverseBits(reverseBits(vec4<i32>(u_input.a ^ -1i, ~u_input.a, 21249i, 1i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(740f, -1522f));
    return 1u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    var var_0 = !(!(!(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(6450u, 21u)], false), global0[_wgslsmith_index_u32(0u, 21u)]))));
    global2 = array<vec4<u32>, 30>();
    var var_1 = firstLeadingBit(func_1(_wgslsmith_f_op_f32(sign(-309f)), arg_0, Struct_1(arg_1.a)).xz) >> (~vec2<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(17130u, arg_3), vec2<u32>(arg_3, 4294967295u)), _wgslsmith_sub_vec2_u32(arg_1.a.ww, vec2<u32>(1u, arg_2.x)))) % vec2<u32>(32u));
    var var_2 = ~vec4<u32>(1u, arg_2.x, arg_1.a.x, countOneBits(~6101u));
    var var_3 = countOneBits(~0i);
    return ~_wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, 58630u, 1u), _wgslsmith_dot_vec4_u32(~arg_0.a.a, arg_1.a << (arg_0.b.a % vec4<u32>(32u)))), _wgslsmith_dot_vec2_u32(func_1(1183f, Struct_2(arg_0.a, arg_1, arg_0.c), arg_1).yz, firstTrailingBit(_wgslsmith_mod_vec2_u32(var_2.xy, arg_1.a.zz))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = vec3<u32>(1u, ~1u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, min(1u, ~55395u)), select(firstTrailingBit(reverseBits(4294967295u)), _wgslsmith_add_u32(0u >> (0u % 32u), ~32240u), global0[_wgslsmith_index_u32(0u, 21u)] && all(vec3<bool>(true, false, true)))));
    global0 = array<bool, 21>();
    global2 = array<vec4<u32>, 30>();
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(~abs(var_0.x), 30u)]);
    let var_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, var_1.a.x, ~reverseBits(var_0.x), var_1.a.x)), Struct_1(min(vec4<u32>(var_1.a.x, 4294967295u, 806u, 27778u), global2[_wgslsmith_index_u32(var_0.x, 30u)]) << (var_1.a % vec4<u32>(32u))), -min(_wgslsmith_mod_vec4_i32(~vec4<i32>(22723i, 56776i, arg_1, u_input.a), vec4<i32>(arg_1, -2147483647i, -10653i, 2147483647i) << (vec4<u32>(31675u, var_1.a.x, 45359u, var_1.a.x) % vec4<u32>(32u))), ~(~vec4<i32>(1i, arg_1, -2147483647i, 43199i))));
    return vec4<bool>(global0[_wgslsmith_index_u32(~92431u, 21u)] | any(select(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 21u)], arg_2.x), !arg_2, select(arg_2, vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], true), arg_2.x))), ~(~131739u ^ ~var_0.x) > 64598u, global0[_wgslsmith_index_u32(func_4(Struct_2(Struct_1(var_1.a), var_2.b, var_2.c), var_2.a, firstLeadingBit(vec3<u32>(var_1.a.x << (7547u % 32u), ~var_2.a.a.x, 39470u)), countOneBits(~func_3())), 21u)], !arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 30>();
    global0 = array<bool, 21>();
    let var_0 = ~(vec4<u32>(4294967295u, 4148u, 1u, ~18289u) ^ ~func_1(-1478f, Struct_2(Struct_1(vec4<u32>(4294967295u, 40335u, 1u, 1u)), Struct_1(vec4<u32>(0u, 28789u, 0u, 0u)), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u)))) & firstTrailingBit(_wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), vec4<u32>(19247u, 0u, 4294967295u, 0u), func_2(1064f, 1i, vec2<bool>(false, true))), vec4<u32>(1u, 1u, max(0u, 84873u), ~4294967295u)));
    var var_1 = Struct_2(Struct_1(vec4<u32>(82362u, _wgslsmith_add_u32(var_0.x, var_0.x), ~var_0.x, var_0.x) | (vec4<u32>(1u, var_0.x, var_0.x, var_0.x) | var_0)), Struct_1(vec4<u32>(var_0.x, ~1494u >> (~var_0.x % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 16259u), firstLeadingBit(4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1018u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x)))), (_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, 2147483647i, -70846i) ^ vec4<i32>(u_input.a, 2147483647i, u_input.a, 37100i), vec4<i32>(2147483647i, u_input.a, -2147483647i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(27481i, 1i, 2147483647i, -16361i), vec4<i32>(u_input.a, 8308i, -1i, u_input.a))) << (func_1(_wgslsmith_f_op_f32(819f + -1550f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(0u, 30u)]), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 30u)]), vec4<i32>(44339i, -1i, u_input.a, 0i)), Struct_1(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x))) % vec4<u32>(32u))) ^ (-vec4<i32>(-2147483647i, u_input.a, 41437i, -2147483647i) >> (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(0u, var_0.x)), 30u)] % vec4<u32>(32u))));
    let var_2 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, countOneBits(18124u), var_0.x, _wgslsmith_mult_u32(var_0.x, var_1.a.a.x)) ^ global2[_wgslsmith_index_u32(var_1.b.a.x, 30u)], var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(946f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(997f - 1000f))))), var_1.c, 1u);
}

