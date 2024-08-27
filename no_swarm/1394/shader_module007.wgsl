struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    global0 = array<Struct_1, 29>();
    var var_0 = select(vec3<bool>(arg_1.x, arg_1.x, any(vec2<bool>(false, arg_1.x)) == all(select(arg_1.wx, arg_1.yx, arg_1.x))), !vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 31524i), vec2<i32>(1i, 2147483647i)) >= (-66184i >> (1u % 32u)), !(!arg_1.x), false), select(max(4294967295u, 1u) > _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 60521u, 4294967295u, 1u), vec4<u32>(4294967295u, 6711u, 20166u, 0u)), 52845u), all(arg_1) || true, true));
    var_0 = select(select(vec3<bool>(true, true & arg_1.x, all(select(vec2<bool>(arg_1.x, false), var_0.zz, true))), !arg_1.zxx, true), !arg_1.wyx, !all(arg_1.zyw));
    var_0 = !vec3<bool>(true, var_0.x, true);
    var_0 = arg_1.xwx;
    return _wgslsmith_mult_u32(12938u, 13944u);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    let var_0 = Struct_1(firstTrailingBit(-217i), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(max(54427u, 0u), ~4294967295u, abs(41652u)), vec3<u32>(~4294967295u, 4294967295u, max(36246u, 1u))), 1u, 49391u), !(!select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), true)));
    var var_1 = true;
    global0 = array<Struct_1, 29>();
    var var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, ~0u, ~79129u, func_3(-1000f, vec4<bool>(true, false, true, false), arg_1)), ~firstTrailingBit(vec4<u32>(var_0.b.x, 33007u, 26887u, var_0.b.x))) & abs(~vec4<u32>(~var_0.b.x, 19248u, func_3(-538f, vec4<bool>(arg_0.x, false, var_0.c.x, arg_0.x), arg_1), 45873u));
    var var_3 = var_2.x;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(var_0.a), _wgslsmith_div_i32(abs(var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, 69035i, u_input.a), vec4<i32>(var_0.a, -1i, var_0.a, u_input.a))), firstTrailingBit(-1i)), vec3<i32>(-7299i, _wgslsmith_dot_vec2_i32(vec2<i32>(-47344i, 2147483647i), -vec2<i32>(u_input.a, 37147i)), u_input.a)), _wgslsmith_div_i32(0i, u_input.a));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = vec2<i32>(max(~0i, func_2(arg_1.c.xz, 161f)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_1.b.x, 1u, 18227u), countOneBits(vec4<u32>(73315u, 65288u, arg_1.b.x, arg_1.b.x))) % 32u), -1i & firstTrailingBit(2147483647i)) ^ firstLeadingBit(_wgslsmith_mult_vec2_i32(min(vec2<i32>(arg_2, 5441i), vec2<i32>(-2147483647i, 59903i)), vec2<i32>(firstTrailingBit(arg_0), -62178i)));
    var var_1 = ~(~arg_1.b.x) <= 4294967295u;
    let var_2 = -(u_input.a & -14002i);
    var_1 = all(select(vec2<bool>(all(arg_1.c.yz), (arg_1.b.x >> (18396u % 32u)) <= select(arg_1.b.x, 4294967295u, arg_1.c.x)), arg_1.c.zy, any(select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(true, true, false, arg_1.c.x), vec4<bool>(false, arg_1.c.x, arg_1.c.x, arg_1.c.x)), !vec4<bool>(true, true, arg_1.c.x, true), !arg_1.c.x))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1232f, -362f, 906f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, 1542f, -1000f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(760f, -825f, -1571f), vec3<f32>(583f, 921f, 1575f))), vec3<f32>(-714f, 149f, 446f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(524f, 1000f, 914f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1476f, 247f, -782f), vec3<f32>(1031f, 1000f, -917f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(712f, -1000f, -166f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(967f, 405f, 898f), vec3<f32>(269f, -1510f, -591f), true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-744f, _wgslsmith_div_f32(846f, 1592f))))));
    return Struct_2(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -335f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(func_1(43082i, global0[_wgslsmith_index_u32(arg_0.x, 29u)], -17698i).a)))), _wgslsmith_f_op_f32(f32(-1f) * -3495f));
    var var_1 = Struct_1(-25278i, (vec3<u32>(arg_0.x, arg_0.x, 1u) >> (~vec3<u32>(1u, 5853u, arg_0.x) % vec3<u32>(32u))) | vec3<u32>(6956u, _wgslsmith_mult_u32(arg_0.x, arg_0.x), arg_0.x), select(vec3<bool>(true, true, true), !vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), true));
    var_1 = Struct_1(u_input.a, _wgslsmith_mod_vec3_u32((~vec3<u32>(var_1.b.x, 0u, arg_0.x) >> (~vec3<u32>(66739u, 0u, var_1.b.x) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(var_1.b | vec3<u32>(4294967295u, var_1.b.x, 0u), ~vec3<u32>(61879u, arg_0.x, var_1.b.x), vec3<u32>(0u, var_1.b.x, arg_0.x)), var_1.b), var_1.c);
    global0 = array<Struct_1, 29>();
    return func_1(-var_1.a, global0[_wgslsmith_index_u32(4294967295u, 29u)], ~3606i);
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~reverseBits(~abs(vec3<u32>(0u, 1u, 4294967295u))));
    let var_1 = -u_input.a;
    var var_2 = arg_0;
    global0 = array<Struct_1, 29>();
    var var_3 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~func_3(443f, vec4<bool>(false, true, false, true), var_2.a.x), abs(var_0), var_0 ^ min(var_0, 60767u)), ~var_0)), 29u)];
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(vec2<u32>(1u, 1u), func_1(-21748i, global0[_wgslsmith_index_u32(4294967295u, 29u)], -2147483647i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f - 1059f)))), 773f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2052f, -815f, false)), _wgslsmith_f_op_f32(func_5(Struct_2(vec3<f32>(117f, -1000f, -101f), -369f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)))), _wgslsmith_div_f32(434f, -359f));
    let var_1 = ~select(~(~vec3<u32>(8051u, 0u, 0u)), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_2 = 1000f;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1637f, var_0.x)), vec4<f32>(var_0.x, var_0.x, -2217f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, var_0.x, var_0.x, var_0.x))))))));
    let var_4 = 2716f;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 368f, var_0.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4, var_0.x, -916f, -771f))))))));
    let var_5 = global0[_wgslsmith_index_u32(var_1.x, 29u)];
    let var_6 = _wgslsmith_add_i32(-var_5.a, ~(~(~firstTrailingBit(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(40824u, var_5.b.x, 16421u), var_5.b)), vec3<u32>(4294967295u, 60900u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.b.x, var_1.x, 0u), var_5.b)))), _wgslsmith_f_op_f32(814f - 258f), (-vec2<i32>(var_5.a, -17506i) << (var_5.b.yx % vec2<u32>(32u))) | -vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 4405i, -38553i), vec3<i32>(40654i, var_6, var_6))), u_input.a, ~var_5.b.x);
}

