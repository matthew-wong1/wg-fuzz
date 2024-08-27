struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<f32, 30> = array<f32, 30>(-473f, 923f, 1157f, -1000f, -1000f, 1146f, 244f, 1092f, -1000f, 225f, -966f, -2482f, -1631f, -1674f, -1561f, 309f, 1223f, -260f, -1000f, -250f, -2243f, 564f, -417f, -1000f, 2079f, -519f, -1685f, 1568f, -1557f, -1712f);

var<private> global3: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = -383f;
    let var_1 = vec3<i32>(0i, _wgslsmith_mod_i32(17987i, -25629i), -_wgslsmith_mult_i32(6440i, u_input.b.x) | max(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -28036i, -27291i, 39080i), vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, 1i)), 2147483647i));
    global3 = array<vec2<bool>, 15>();
    return select(!(!(!vec4<bool>(global4.b.x, false, global0.x, true))), !(!vec4<bool>(!global0.x, true, !global4.b.x, true)), vec4<bool>(global0.x, true, !(!global4.b.x), global0.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>) -> u32 {
    global4 = Struct_1(~(~(~min(global4.a, 1u))), select(!select(!global0.zxy, vec3<bool>(true, false, false), global4.b.x), global0.zyx, !global0.x), ~vec2<u32>(~(global4.c.x | 23630u), ~abs(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-611f + 1004f)))) + _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, countOneBits(116358u)), 30u)]))), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(global4.a, 0u, 59882u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))) & (_wgslsmith_mult_i32(_wgslsmith_mod_i32(global4.e, u_input.b.x), reverseBits(u_input.b.x)) ^ _wgslsmith_mult_i32(-1i >> (0u % 32u), firstLeadingBit(global4.e))));
    let var_0 = global0.wxx;
    global3 = array<vec2<bool>, 15>();
    let var_1 = global0.yw;
    var var_2 = Struct_1(~9040u, global0.xxy, ~u_input.a, global4.d, i32(-1i) * -(_wgslsmith_add_i32(u_input.b.x, u_input.b.x) ^ (i32(-1i) * -22112i)));
    return _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(~select(0u, u_input.a.x, true), max(abs(global4.a), ~var_2.a)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 48371u)), ~(u_input.a & global4.c))) << ((_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 13333u)), reverseBits(u_input.a)) >> ((_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.a.x), ~global4.a, _wgslsmith_sub_u32(18015u, var_2.a)) >> (4294967295u % 32u)) % 32u)) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_2;
    global0 = select(vec4<bool>(true, select(-66748i < (global4.e | -11597i), false, arg_2.b.x), true, any(!arg_2.b)), !(!select(vec4<bool>(false, var_0.b.x, var_0.b.x, false), !vec4<bool>(global4.b.x, false, arg_0.b.x, var_0.b.x), any(vec4<bool>(arg_0.b.x, true, global4.b.x, false)))), select(!(global4.b.x && (false & arg_1.b.x)), var_0.b.x, all(func_1(-1i ^ arg_1.e))));
    let var_1 = ~(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 9587u, 0u), ~vec3<u32>(4294967295u, u_input.a.x, 36302u)) & vec3<u32>(u_input.c, ~arg_2.a, 1u)) ^ firstLeadingBit(~vec3<u32>(~arg_1.a, ~global4.c.x, ~30207u));
    let var_2 = _wgslsmith_mult_u32(func_3(~vec2<u32>(abs(39714u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.a, global4.c.x))), global4.c), ~(_wgslsmith_dot_vec3_u32(var_1, ~var_1) & _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 33026u), arg_1.c), vec2<u32>(var_1.x, 15737u) & vec2<u32>(4294967295u, var_0.c.x))));
    global0 = select(func_1(reverseBits(countOneBits(firstTrailingBit(arg_2.e)))), func_1(0i), global4.b.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(904f, 791f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.d, -430f))), arg_1.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(545f - arg_0.d), global2[_wgslsmith_index_u32(min(10379u, 0u), 30u)], _wgslsmith_f_op_f32(-arg_1.d)))), arg_0.d, func_3(~vec2<u32>(1u, ~arg_2.c.x), u_input.a), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(reverseBits(var_1.x) ^ (arg_0.c.x ^ global4.c.x)), 30u)]), _wgslsmith_f_op_f32(-arg_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(i32(-1i) * -u_input.b.x, ~_wgslsmith_add_i32(15868i, u_input.b.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global4.e, u_input.b.x, global4.e, global4.e), -vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x)), global4.e, i32(-1i) * -65463i), 1i), global4.e);
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(global4.c.x, 30u)] > 130f, false, global0.x | ((i32(-1i) * -42682i) != var_0.x));
    let var_2 = global4.b.x;
    global1 = array<vec2<bool>, 16>();
    var var_3 = vec4<bool>(-_wgslsmith_div_i32(1i, 1i) < var_0.x, global4.b.x, true, !(!all(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, global4.b.x, global4.b.x), false))));
    let var_4 = Struct_1(_wgslsmith_mod_u32(firstTrailingBit(~(22992u << (u_input.a.x % 32u))), abs(countOneBits(global4.a))), vec3<bool>(all(vec2<bool>(false, all(vec3<bool>(var_1.x, false, global0.x)))), false, any(func_1(reverseBits(2147483647i)))), abs(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(20258u, 55847u), vec2<u32>(0u, u_input.c)), ~vec2<u32>(3425u, 1u))) | _wgslsmith_mod_vec2_u32((global4.c ^ u_input.a) | ~vec2<u32>(42840u, 4294967295u), vec2<u32>(1u, global4.c.x)), global4.d, -46462i);
    var var_5 = !var_1.x;
    let x = u_input.a;
    s_output = func_2(Struct_1(reverseBits(min(0u, 3541u) ^ _wgslsmith_dot_vec2_u32(var_4.c, vec2<u32>(var_4.c.x, 1u))), vec3<bool>(all(global3[_wgslsmith_index_u32(reverseBits(4294967295u), 15u)]), var_3.x, global4.b.x), select(vec2<u32>(firstTrailingBit(4294967295u), ~1u), var_4.c, !global4.b.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f) * 824f), _wgslsmith_mod_i32(var_0.x, ~var_0.x) | _wgslsmith_mod_i32(max(var_4.e, 29659i), var_0.x)), var_4, Struct_1(~global4.c.x, vec3<bool>(var_4.b.x, false, false), ~vec2<u32>(36474u, 4294967295u), global4.d, 37255i));
}

