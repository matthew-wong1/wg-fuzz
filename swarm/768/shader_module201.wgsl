struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_3 = Struct_3(4294967295u, Struct_1(vec2<u32>(57526u, 49929u)));

var<private> global2: array<vec3<u32>, 15>;

var<private> global3: i32 = 2147483647i;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = array<vec3<u32>, 15>();
    var var_0 = -vec3<i32>(-30466i, u_input.a, 1i);
    var var_1 = Struct_3(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.a, global1.a), u_input.b.x) << (global1.a % 32u), global1.b);
    var var_2 = select(true, true, true);
    return Struct_1(var_1.b.a >> (min(~_wgslsmith_mult_vec2_u32(var_1.b.a, vec2<u32>(u_input.b.x, var_1.b.a.x)), select(vec2<u32>(u_input.b.x, var_1.b.a.x), abs(global1.b.a), 1u != global1.b.a.x)) % vec2<u32>(32u)));
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = true;
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global1.b.a, vec2<u32>(4294967295u, 17984u)), select(~u_input.b.yw, _wgslsmith_add_vec2_u32(global1.b.a, vec2<u32>(4294967295u, 19237u)), !vec2<bool>(arg_1, global4.x)))));
    var var_2 = !(!all(select(vec2<bool>(var_0, arg_1), vec2<bool>(var_0, arg_1), any(vec3<bool>(true, false, false)))));
    let var_3 = -1i;
    var var_4 = Struct_3((_wgslsmith_sub_u32(98143u, ~var_1.a.x) & ~4294967295u) | max(_wgslsmith_dot_vec2_u32(global1.b.a ^ vec2<u32>(0u, u_input.b.x), ~vec2<u32>(var_1.a.x, 16147u)), u_input.b.x), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1923f) - _wgslsmith_f_op_f32(floor(539f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(floor(899f)))))));
    return true;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = Struct_3(global1.a, global1.b);
    global0 = select(!vec3<bool>(true, !(!global0.x), any(vec3<bool>(false, false, global4.x)) == true), vec3<bool>(true, func_3(false, all(select(vec2<bool>(true, true), vec2<bool>(global0.x, global4.x), global0.x))), (-2147483647i > -u_input.a) == !global4.x), vec3<bool>(global4.x, all(global0.zz), false));
    var var_0 = Struct_2(vec4<u32>(global1.a, ~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), arg_0.a.x, 1u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, 721f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) + 513f), -320f))), arg_0);
    var var_1 = Struct_2(_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), ~firstLeadingBit(countOneBits(vec4<u32>(67967u, var_0.c.a.x, 4294967295u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.b)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b))), var_0.b))), func_1(-1000f));
    let var_2 = reverseBits(min(reverseBits(vec2<u32>(_wgslsmith_div_u32(4294967295u, arg_0.a.x), arg_0.a.x)), select(abs(~var_1.c.a), var_1.a.zx, true)));
    return _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(global1.b.a.x, u_input.b.x, 4294967295u, abs(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~func_2(func_1(-384f)) >> (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, global1.a)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~10007u, 19650u), 15u)]) % 32u), global1.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f + -1680f) - _wgslsmith_f_op_f32(-1416f + _wgslsmith_f_op_f32(-788f + -272f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f))));
    global3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-63998i, -1i), vec2<i32>(-2147483647i, u_input.a)), firstTrailingBit(-33197i), u_input.a), -vec4<i32>(u_input.a, u_input.a, 2147483647i, -1i) ^ (vec4<i32>(-1i, -23329i, u_input.a, 2147483647i) | vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a))) << (vec4<u32>(~(~u_input.b.x), ~u_input.b.x, global1.b.a.x, _wgslsmith_mod_u32(~6177u, reverseBits(9851u))) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(max(u_input.a >> (var_0 % 32u), firstTrailingBit(u_input.a))), -26132i, u_input.a, min(u_input.a, _wgslsmith_clamp_i32(max(2743i, u_input.a), ~u_input.a, -1i))));
    let var_2 = Struct_1(global1.b.a);
    global0 = vec3<bool>(var_1 > 280f, false, false);
    global0 = !select(select(!(!vec3<bool>(global4.x, true, global0.x)), !(!vec3<bool>(global0.x, true, true)), select(!vec3<bool>(global4.x, true, global4.x), vec3<bool>(false, false, global4.x), vec3<bool>(global4.x, global4.x, false))), vec3<bool>(all(!vec3<bool>(global4.x, global4.x, false)), true != (global0.x & global0.x), global0.x), global0.x);
    let var_3 = global1.b;
    global1 = Struct_3(firstLeadingBit(select(~(var_3.a.x >> (u_input.b.x % 32u)), var_0, true)), func_1(-1026f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 408f, vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, -min(u_input.a, -57418i)), (i32(-1i) * -28703i) & -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1108i, u_input.a, 35534i), vec4<i32>(41800i, 27691i, u_input.a, u_input.a))), var_1, vec2<f32>(var_1, -577f));
}

