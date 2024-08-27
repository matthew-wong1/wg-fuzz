struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(1u, 1u, 4294967295u, 25256u), vec4<u32>(65035u, 4294967295u, 1u, 34905u), vec4<u32>(2002u, 4226u, 29912u, 1u), vec4<u32>(1u, 61480u, 25034u, 6776u), vec4<u32>(74351u, 55116u, 1u, 1u), vec4<u32>(82367u, 38607u, 77084u, 4294967295u), vec4<u32>(1u, 38949u, 45830u, 1u), vec4<u32>(4294967295u, 51855u, 4294967295u, 0u), vec4<u32>(1u, 39095u, 19507u, 77511u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(0u, 4294967295u, 15427u, 4294967295u), vec4<u32>(1u, 39921u, 0u, 4294967295u), vec4<u32>(1u, 115451u, 73195u, 48902u), vec4<u32>(23818u, 4294967295u, 4294967295u, 1u), vec4<u32>(31673u, 29913u, 110599u, 22918u), vec4<u32>(1u, 938u, 94145u, 1u), vec4<u32>(30503u, 0u, 17628u, 4294967295u), vec4<u32>(0u, 1u, 27147u, 0u), vec4<u32>(37376u, 1u, 45807u, 1124u), vec4<u32>(46450u, 9122u, 1u, 14424u), vec4<u32>(39139u, 50025u, 64344u, 0u), vec4<u32>(4294967295u, 1u, 12507u, 1u), vec4<u32>(27894u, 0u, 59490u, 44586u), vec4<u32>(1u, 12182u, 0u, 19437u), vec4<u32>(29613u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(73871u, 4294967295u, 0u, 0u), vec4<u32>(1u, 27003u, 1u, 1u), vec4<u32>(0u, 15823u, 26507u, 0u), vec4<u32>(24828u, 0u, 4294967295u, 1u), vec4<u32>(19435u, 4294967295u, 126210u, 30341u));

var<private> global1: array<u32, 1> = array<u32, 1>(4294967295u);

var<private> global2: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    var var_0 = u_input.c;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u) << (_wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(u_input.c, 1u)) % 32u), 4294967295u) ^ ~(~_wgslsmith_mult_u32(abs(global1[_wgslsmith_index_u32(45417u, 1u)]), countOneBits(u_input.c))), 1u)];
    global0 = array<vec4<u32>, 30>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(sign(-513f)));
    var var_3 = Struct_2(Struct_1(~(~firstTrailingBit(vec3<u32>(14409u, u_input.c, u_input.c))), vec2<bool>(true, !any(vec2<bool>(arg_1.x, true))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a, var_2.a), _wgslsmith_f_op_f32(abs(-1000f))) * _wgslsmith_div_f32(var_2.a, _wgslsmith_div_f32(1187f, var_2.a))), -2226f), Struct_1(~(~(~vec3<u32>(1u, 1u, 1u))), !arg_1.yz, arg_1.x, _wgslsmith_f_op_f32(step(var_2.a, -1000f)), -672f), Struct_1(~vec3<u32>(1u, u_input.c, 15136u), vec2<bool>(arg_1.x, true), arg_1.x, var_2.a, _wgslsmith_f_op_f32(-var_2.a)), -countOneBits(arg_0) >> (global1[_wgslsmith_index_u32(u_input.c, 1u)] % 32u), ~(~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 1u)], 30u)]));
    return 79018u;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(u_input.c, 1u)];
    global2 = true;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(399f)) * -1055f)));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(252f * 509f), -1621f)))));
    return global0[_wgslsmith_index_u32(~func_3(-2147483647i, vec4<bool>(select(!arg_2, false, false), false, !all(vec4<bool>(false, false, arg_2, false)), all(select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(true, false, true, false), arg_2)))), 30u)];
}

fn func_4(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = u_input.a;
    let var_1 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(5532u, u_input.c)), 1u)], arg_0.x), vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.wx, vec2<u32>(43536u, arg_0.x)), arg_0.xy), 1u)], func_2(_wgslsmith_mult_vec3_u32(arg_0.wzy, arg_0.wwy), func_2(arg_0.yxw, arg_0.x, false, var_0.ywy).x, true, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, u_input.d), u_input.a.yyx)).x));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(763f, -2071f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1578f, _wgslsmith_div_f32(865f, 360f)))))));
    let var_3 = Struct_3(Struct_1(arg_0.wwx, !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), -548f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -335f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_2.a), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false)), vec3<bool>(any(vec3<bool>(true, true, false)), var_2.a != var_2.a, any(vec3<bool>(true, false, true))), true), !all(vec4<bool>(false, false, true, true))));
    var var_4 = u_input.a;
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec2<bool>(any(vec2<bool>(true, true)), false);
    let var_1 = _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(53995u, 1u)], 32438u);
    let var_2 = func_4(~(~(global0[_wgslsmith_index_u32(1u, 30u)] & global0[_wgslsmith_index_u32(0u, 30u)]) ^ func_2(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 1u)], var_1, u_input.c), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), true || var_0.x, vec3<i32>(u_input.d, 21294i, u_input.d))));
    let var_3 = Struct_3(Struct_1(vec3<u32>(~global1[_wgslsmith_index_u32(u_input.c, 1u)], 4294967295u, global1[_wgslsmith_index_u32(21187u, 1u)]), select(select(!vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, true), true), select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), vec2<bool>(var_0.x, true)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true)), false), select(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), vec2<bool>(false, var_0.x)), true)), var_0.x, var_2.a, 1f), !(!(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))));
    let var_4 = func_4(vec4<u32>(1u, var_1, var_1, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec3_u32(var_3.a.a, vec3<u32>(var_1, var_3.a.a.x, var_3.a.a.x))), arg_0)));
    return Struct_1(var_3.a.a, vec2<bool>(true, true), all(!select(var_3.a.b, select(var_3.a.b, vec2<bool>(false, var_3.a.b.x), var_3.b.yz), var_3.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a))), var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(27809u), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(u_input.c, 1u)] != u_input.c)));
    var var_1 = Struct_4(-794f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(851f)) + var_2) * -264f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(549f, 1f, any(func_1(4294967295u).b)))));
    var var_4 = select(u_input.a, u_input.a, select(vec4<bool>(-u_input.a.x < _wgslsmith_mod_i32(21738i, 1i), false, true, var_0.a.c), vec4<bool>(all(vec2<bool>(true, true)), any(var_0.b.xy), var_0.b.x, all(vec3<bool>(var_0.b.x, true, true)) && func_1(5216u).b.x), var_0.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1000f, func_1(0u).d), _wgslsmith_add_vec3_i32(u_input.a.xxz, u_input.a.zwz), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(760f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1171f - var_1.a))), reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 4645i) >> (vec2<u32>(var_0.a.a.x, var_0.a.a.x) % vec2<u32>(32u)), var_4.xw, firstTrailingBit(var_4.yw)), ~u_input.a.zw)));
}

