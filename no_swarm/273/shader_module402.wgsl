struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec3<bool>;

var<private> global2: u32 = 1u;

var<private> global3: vec3<u32> = vec3<u32>(19067u, 35058u, 4294967295u);

var<private> global4: array<vec3<bool>, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<u32>) -> bool {
    global1 = global4[_wgslsmith_index_u32(reverseBits(firstLeadingBit(global3.x)), 28u)];
    let var_0 = global3.x;
    global0 = array<Struct_2, 17>();
    var var_1 = ~(~(~(vec4<u32>(27537u, global3.x, 3002u, 9433u) ^ countOneBits(vec4<u32>(arg_2, 0u, arg_3.x, global3.x)))));
    var_1 = max(max(~vec4<u32>(var_1.x, 15730u, 1u, arg_2), _wgslsmith_add_vec4_u32(vec4<u32>(34975u, global3.x, 1u, 0u), vec4<u32>(86989u, 8805u, arg_3.x, global3.x))) & countOneBits(vec4<u32>(arg_2, 15650u, 16345u, arg_2) >> (vec4<u32>(18694u, global3.x, arg_3.x, arg_2) % vec4<u32>(32u))), vec4<u32>(~abs(arg_2), ~0u, _wgslsmith_mod_u32(arg_2, 86482u), _wgslsmith_add_u32(firstLeadingBit(global3.x), 33201u))) >> (~firstTrailingBit(vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), arg_3.xx), arg_2)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) <= _wgslsmith_f_op_f32(f32(-1f) * -1271f);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global1 = global4[_wgslsmith_index_u32(~236u, 28u)];
    var var_0 = select(global4[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(min(0u, ~19481u), 28u)], !vec3<bool>(true, arg_1, true));
    global3 = ~(~abs(min(vec3<u32>(4294967295u, global3.x, 28665u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, global3.x, 7196u), vec3<u32>(4294967295u, global3.x, global3.x)))));
    var var_1 = arg_0.zx;
    var var_2 = 18790u;
    return Struct_1(vec3<u32>(~(~_wgslsmith_add_u32(global3.x, 4294967295u)), 58045u, ~_wgslsmith_clamp_u32(~global3.x, 14562u, _wgslsmith_mult_u32(0u, global3.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), 1905f, arg_0.x))), ~61004u, vec3<bool>(false | func_3(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.a.x, 1i), u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), u_input.a.xy), global3.x | global3.x, reverseBits(vec3<u32>(global3.x, 1u, 28547u))), true, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(-arg_1.e.b.x), -1187f, arg_1.c.b.x)), arg_0.x).c;
    var var_1 = Struct_2(arg_1.a, arg_1.e, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(333f, 908f, arg_1.b.b.x, arg_1.c.b.x) - vec4<f32>(arg_1.b.b.x, arg_1.c.b.x, arg_1.e.b.x, arg_1.b.b.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(select(675f, arg_1.c.b.x, true)), func_2(vec4<f32>(115f, -135f, arg_1.e.b.x, -397f), arg_2.x).b.x, arg_1.c.b.x)), arg_1.b.d.x), global3.x, func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-940f, 1065f, arg_1.e.b.x, arg_1.e.b.x)))))), arg_2.x));
    let var_2 = arg_1.c.b.x;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.c.c, global3.x, global3.x, var_1.b.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(6243u, var_1.c.c, 0u, 56600u), vec4<u32>(arg_1.c.a.x, 1u, 42598u, 4294967295u))), _wgslsmith_div_vec4_u32(~max(vec4<u32>(arg_1.d, 66125u, 0u, 0u), vec4<u32>(1u, arg_1.d, var_1.c.c, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.b.c, var_1.c.a.x, var_1.e.c), vec4<u32>(4294967295u, arg_1.e.a.x, global3.x, global3.x)) ^ ~vec4<u32>(var_1.d, var_1.d, var_1.c.a.x, var_1.e.a.x))) << ((1u >> (~arg_1.c.c % 32u)) % 32u), 17u)];
    var var_4 = var_3.b;
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.c.a.x, ~var_1.c.c ^ 68736u), 17u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = max(arg_1.a, arg_1.a);
    let var_1 = func_4(!vec4<bool>(arg_1.b.d.x, all(vec3<bool>(arg_1.b.d.x, global1.x, arg_1.b.d.x)), true, arg_1.c.d.x), Struct_2(_wgslsmith_sub_i32(u_input.c.x >> (select(0u, arg_1.b.a.x, arg_1.b.d.x) % 32u), _wgslsmith_mult_i32(min(1i, u_input.a.x), reverseBits(-7493i))), arg_1.c, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1809f, arg_1.e.b.x, arg_1.e.b.x, arg_1.b.b.x))), !(!arg_0.x)), arg_1.b.a.x, Struct_1(func_2(vec4<f32>(-1961f, arg_1.b.b.x, 929f, -135f), all(vec2<bool>(arg_1.e.d.x, false))).a, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.e.b.x), _wgslsmith_f_op_f32(-arg_1.e.b.x), _wgslsmith_f_op_f32(-arg_1.b.b.x)), 4294967295u ^ func_2(vec4<f32>(arg_1.b.b.x, arg_1.c.b.x, 533f, arg_1.b.b.x), false).a.x, arg_1.c.d)), select(!(!arg_0), select(!arg_0, !vec4<bool>(true, true, arg_1.b.d.x, true), !(!arg_0.x)), !(!(u_input.a.x < -13283i))));
    global2 = ~arg_1.c.a.x;
    let var_2 = func_4(!arg_0, func_4(vec4<bool>(false, _wgslsmith_f_op_f32(floor(var_1.c.b.x)) != func_2(vec4<f32>(var_1.c.b.x, arg_1.e.b.x, 1994f, var_1.c.b.x), false).b.x, !any(vec4<bool>(true, arg_0.x, true, arg_0.x)), -1091f < _wgslsmith_f_op_f32(-arg_1.b.b.x)), var_1, !vec4<bool>(arg_1.b.d.x, true, !var_1.c.d.x, true)), arg_0).e;
    return ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(arg_1.d, 1947u), global3.x), _wgslsmith_sub_vec2_u32(vec2<u32>(96450u, var_1.e.c), abs(vec2<u32>(arg_1.c.c, 56914u)))), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-167f))) - 1f) + 286f), 580f, _wgslsmith_div_u32(global3.x, global3.x), !(!global4[_wgslsmith_index_u32(~func_1(vec4<bool>(global1.x, global1.x, false, true), Struct_2(u_input.b, Struct_1(vec3<u32>(global3.x, 56046u, global3.x), vec3<f32>(-2158f, -1017f, 2646f), global3.x, vec3<bool>(global1.x, true, true)), Struct_1(vec3<u32>(global3.x, 75040u, 1u), vec3<f32>(260f, 689f, -690f), global3.x, vec3<bool>(false, false, false)), 1042u, Struct_1(vec3<u32>(global3.x, 0u, 1u), vec3<f32>(-113f, 636f, -1592f), 69105u, global4[_wgslsmith_index_u32(global3.x, 28u)]))), 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1f);
}

