struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> bool {
    return global0.c.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(select(1u >> (u_input.a.x % 32u), ~4294967295u, false), 0u), 76024u ^ ~_wgslsmith_dot_vec3_u32(global0.b, vec3<u32>(u_input.a.x, 111128u, 0u)));
    let var_1 = ~(-global0.a.x);
    let var_2 = 0i;
    var var_3 = arg_0;
    var var_4 = Struct_1(vec2<i32>(var_1, firstLeadingBit(var_2)), ~vec3<u32>(global0.b.x, countOneBits(40403u), firstTrailingBit(1u)), select(var_3.c, var_3.c, true), ~var_3.d);
    return Struct_1(_wgslsmith_mod_vec2_i32(~(-var_3.a), var_3.a), var_3.b >> ((arg_0.b & countOneBits(_wgslsmith_mod_vec3_u32(global0.b, arg_0.b))) % vec3<u32>(32u)), !arg_0.c, -select(firstTrailingBit(-1723i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.x, var_1, global0.d, 37171i), vec4<i32>(0i, var_2, -27271i, global0.a.x) | vec4<i32>(2147483647i, var_2, 8063i, var_1)), true | any(arg_0.c.xx)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = Struct_1(arg_0.a, ~arg_0.b, vec4<bool>(!all(func_2(arg_0).c), select(arg_2, false, false), arg_1.c.x, true), _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.d, global0.a.x, 17607i, global0.a.x), vec4<i32>(-16221i, -1i, arg_0.d, -2147483647i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, 1u, arg_1.b.x, 0u), vec4<u32>(6133u, global0.b.x, u_input.a.x, 120356u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-25272i, arg_1.d, 1i, global0.d), firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, 0i, arg_1.d)))), vec4<i32>(2147483647i, abs(arg_0.a.x), global0.d | (global0.d ^ 15515i), ~countOneBits(-1i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1891f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(539f, 1344f)), _wgslsmith_f_op_f32(1000f * -183f), arg_1.c.x)) * _wgslsmith_f_op_f32(2344f * -858f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(floor(1016f)))));
    global0 = Struct_1(vec2<i32>(firstTrailingBit(-2147483647i), arg_1.a.x), firstLeadingBit(vec3<u32>(select(countOneBits(arg_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 1u, var_0.b.x, 0u), vec4<u32>(arg_1.b.x, 51237u, arg_1.b.x, u_input.a.x)), true), 23746u, max(select(arg_1.b.x, 0u, false), ~1u))), func_2(func_2(Struct_1(arg_0.a, _wgslsmith_div_vec3_u32(arg_0.b, arg_1.b), func_2(Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), vec3<u32>(4294967295u, var_0.b.x, 1u), global0.c, arg_1.d)).c, _wgslsmith_add_i32(0i, -57097i)))).c, -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(3612i, arg_0.a.x), 1i & global0.d, _wgslsmith_add_i32(16504i, arg_0.a.x)), abs(arg_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x));
    var_0 = func_2(func_2(Struct_1(-vec2<i32>(global0.a.x, arg_0.a.x), ~(~arg_1.b), select(vec4<bool>(arg_1.c.x, false, arg_0.c.x, true), select(var_0.c, var_0.c, var_0.c), select(global0.c, var_0.c, var_0.c)), _wgslsmith_dot_vec2_i32(abs(arg_1.a), ~var_0.a))));
    return -30765i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec3<u32>(u_input.a.x, _wgslsmith_add_u32(~(~4294967295u), u_input.a.x | 1u), global0.b.x), vec4<bool>(func_1(), (i32(-1i) * -2147483647i) < global0.d, select(false, false, false), ~(-10647i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, 49578i, 16666i) & vec3<i32>(1i, -86276i, 1i), vec3<i32>(global0.d, global0.a.x, 2147483647i))), _wgslsmith_mult_i32(func_3(func_2(Struct_1(global0.a, vec3<u32>(0u, global0.b.x, 51537u), vec4<bool>(false, global0.c.x, false, global0.c.x), global0.a.x)), Struct_1(global0.a, vec3<u32>(global0.b.x, u_input.a.x, u_input.a.x), func_2(Struct_1(vec2<i32>(5577i, global0.d), global0.b, global0.c, -2147483647i)).c, global0.d ^ 32010i), global0.c.x), min(global0.d, global0.a.x) >> (~countOneBits(global0.b.x) % 32u)));
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(select(global0.a ^ vec2<i32>(-9133i, global0.d), abs(global0.a), !global0.c.zx) >> (firstLeadingBit(vec2<u32>(111877u, u_input.a.x)) % vec2<u32>(32u)), max(vec2<i32>(0i, global0.a.x) | countOneBits(global0.a), countOneBits(-global0.a))), vec3<u32>(reverseBits(~global0.b.x), global0.b.x, abs(~_wgslsmith_add_u32(16385u, 48511u))), func_2(Struct_1(countOneBits(-global0.a), ~_wgslsmith_add_vec3_u32(global0.b, vec3<u32>(u_input.a.x, 1u, global0.b.x)), vec4<bool>(all(global0.c.wyw), true, true, false), global0.a.x)).c, 13951i);
    let var_1 = Struct_1(vec2<i32>(-40271i, -2147483647i), var_0.b, select(select(select(!vec4<bool>(false, var_0.c.x, false, var_0.c.x), var_0.c, !global0.c), global0.c, !(!var_0.c)), vec4<bool>(any(!vec3<bool>(false, global0.c.x, false)), !global0.c.x | true, !global0.c.x, false == (19842u > u_input.a.x)), !vec4<bool>(global0.c.x, !var_0.c.x, true, var_0.c.x)), global0.d);
    let var_2 = func_2(var_1);
    global0 = var_2;
    var_0 = Struct_1(vec2<i32>(var_1.d, ~(~1i)), ~reverseBits(~vec3<u32>(42276u, var_2.b.x, var_1.b.x)), func_2(var_2).c, abs(global0.d) & countOneBits(_wgslsmith_clamp_i32(global0.a.x & -2147483647i, ~1i, _wgslsmith_add_i32(var_1.a.x, 2147483647i))));
    var var_3 = u_input.a >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.b.x), abs(var_2.b.x)), global0.b.xx), var_1.b.xx, ~vec2<u32>(var_1.b.x, 87293u) | var_0.b.zx) % vec2<u32>(32u));
    let var_4 = var_0.c.x;
    var var_5 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global0.d, ~var_0.d, var_2.d, abs(0i)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(46603i, var_1.d), 37055i, var_2.d), max(1i, ~0i), _wgslsmith_sub_i32(~(-2147483647i), var_1.d)) & firstTrailingBit(countOneBits(~vec3<i32>(-2147483647i, var_1.d, var_2.a.x))), ~countOneBits(var_0.b), ~(~_wgslsmith_sub_i32(~(-38980i), var_0.d)), ~(-1i));
}

