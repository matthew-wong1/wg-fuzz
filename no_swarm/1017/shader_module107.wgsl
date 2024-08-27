struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-53748i);

var<private> global1: u32 = 1u;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(12000i, -71837i, -56708i, 0i), Struct_1(1u, vec4<f32>(1140f, -271f, -728f, -342f), false), Struct_1(4294967295u, vec4<f32>(850f, -669f, -757f, 514f), false), Struct_1(6674u, vec4<f32>(1713f, -514f, -1108f, -668f), true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    global0 = array<i32, 1>();
    var var_0 = countOneBits(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 4589i, arg_1.a.x) ^ arg_1.a.wzx, -vec3<i32>(2147483647i, 54676i, 14031i))) >> (u_input.a.xwz % vec3<u32>(32u));
    var var_1 = ~(((~vec3<u32>(arg_1.b.a, global2.c.a, u_input.a.x) ^ vec3<u32>(u_input.d, global2.c.a, 0u)) | u_input.a.wyx) | max(u_input.a.xzw, ~countOneBits(u_input.a.xyz)));
    let var_2 = global2.d.b.x >= arg_1.d.b.x;
    let var_3 = Struct_2(arg_1.a, arg_1.b, Struct_1(~_wgslsmith_mult_u32(select(u_input.d, 11012u, true), u_input.d), vec4<f32>(-951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b.x)), 590f, _wgslsmith_div_f32(arg_1.b.b.x, arg_1.b.b.x)), any(!(!vec2<bool>(arg_0, false)))), Struct_1(34818u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.d.b.x, -213f, -149f, global2.c.b.x))) * vec4<f32>(global2.c.b.x, global2.b.b.x, 360f, arg_1.c.b.x))), true));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global1 = global2.b.a;
    let var_0 = global2.a.ww;
    global1 = ~global2.c.a & 83662u;
    let var_1 = 69498u >> (~max(min(u_input.a.x, 46906u) & 1u, ~(30707u << (u_input.d % 32u))) % 32u);
    var var_2 = countOneBits(vec4<u32>(abs(var_1), firstLeadingBit(u_input.e), 4294967295u, ~abs(var_1) & _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
    return Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, func_3(global2.c.c, Struct_2(vec4<i32>(global2.a.x, var_0.x, u_input.b, -2147483647i), global2.b, Struct_1(1462u, global2.c.b, false), Struct_1(0u, global2.c.b, true))), 47052u, 149250u), ~(vec4<u32>(4294967295u, u_input.a.x, var_1, global2.d.a) << (u_input.a % vec4<u32>(32u)))), global2.d.b, global2.b.c);
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(global2.a, ~global2.a, vec4<i32>(18782i, global0[_wgslsmith_index_u32(global2.c.a, 1u)], 1669i, 17164i)), vec4<i32>(global2.a.x, 1i, -global0[_wgslsmith_index_u32(global2.b.a, 1u)], 2147483647i & global2.a.x)) << (select(u_input.a, countOneBits(~vec4<u32>(global2.c.a, global2.d.a, global2.c.a, 0u)), vec4<bool>(true, global2.c.c, true, global2.c.c)) % vec4<u32>(32u)), func_2(global2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2078f)))), Struct_1(_wgslsmith_clamp_u32(global2.b.a, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(global2.d.a >> (34658u % 32u), _wgslsmith_mult_u32(global2.b.a, global2.b.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global2.b.b, vec4<f32>(global2.c.b.x, global2.d.b.x, -1026f, global2.c.b.x)))))), global2.d.c == (!global2.b.c && true)), global2.d);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(470f, 1100f)) + _wgslsmith_f_op_f32(var_0.c.b.x * 402f)))), _wgslsmith_f_op_f32(trunc(global2.d.b.x)));
    let var_2 = 4294967295u;
    var_0 = Struct_2(var_0.a, var_0.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(-global2.d.b.x)))), Struct_1(~(~(~u_input.d)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_0.d.b, var_0.c.b), vec4<f32>(var_0.b.b.x, -239f, _wgslsmith_f_op_f32(var_0.b.b.x * var_0.d.b.x), _wgslsmith_f_op_f32(trunc(229f))))), !(var_0.c.b.x >= -187f) || !all(vec2<bool>(true, var_1.c))));
    let var_3 = Struct_2(min(abs(firstTrailingBit(vec4<i32>(global2.a.x, u_input.b, 2147483647i, 0i))), global2.a) | vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.a, var_0.a), -2147483647i), u_input.b, 25833i, i32(-1i) * -48945i), global2.c, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.b.x), -1170f, !all(vec2<bool>(global2.c.c, var_0.b.c)))), var_0.b.b.x), var_1);
    return vec4<i32>(reverseBits(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(var_0.a.wyw, var_3.a.yyw), 0i)), _wgslsmith_clamp_i32(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.c.a & global2.b.a, 1u)]) >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_3.c.a), 1u) % 32u), select(33776i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-57307i, u_input.b, u_input.b, var_0.a.x)), select(-1337i, u_input.c.x, global2.c.c)), any(vec2<bool>(true, true))), ~u_input.c.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, var_3.a.x, -8849i) | var_0.a.wwx, vec3<i32>(global2.a.x, u_input.b, u_input.c.x) & vec3<i32>(22419i, global2.a.x, -1i), select(select(vec3<bool>(global2.b.c, var_3.d.c, false), vec3<bool>(true, var_0.d.c, true), vec3<bool>(false, true, false)), !vec3<bool>(false, false, var_1.c), !vec3<bool>(var_1.c, var_1.c, false))), -(~firstTrailingBit(var_3.a.xyz))), i32(-1i) * -24995i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), func_2(736f, 793f), global2.d, global2.c);
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let var_1 = var_0;
    let var_2 = -var_1.a.xxz;
    let var_3 = var_1.d.a;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_0.a.x), global2.c.a, _wgslsmith_f_op_vec2_f32(min(var_1.b.b.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.b.x, -167f)))))), ~vec2<i32>(var_1.a.x, u_input.b), vec3<i32>(reverseBits(-2147483647i), -1i, -52866i));
}

