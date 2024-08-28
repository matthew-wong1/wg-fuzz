struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_4, 19>;

var<private> global3: array<bool, 29>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(global1.a)), 17u)];
    var var_1 = vec2<bool>(!(!(!(global3[_wgslsmith_index_u32(15096u, 29u)] || false))), all(select(!var_0.c, var_0.c, true)));
    let var_2 = global4.b.x;
    let var_3 = var_0.c;
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(reverseBits(u_input.a.x) ^ var_0.a.a, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(40098u, 4294967295u, 0u, 51894u)), min(vec4<u32>(u_input.a.x, u_input.a.x, var_0.b.a, 32739u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.a, 23523u, 0u), vec4<u32>(0u, var_0.a.a, global1.a, global4.a)))), u_input.a.x)), 19u)];
    return -1000f;
}

fn func_2() -> Struct_5 {
    global2 = array<Struct_4, 19>();
    var var_0 = Struct_5(u_input.b.x, _wgslsmith_f_op_f32(-global1.b.x), Struct_4(Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(round(global4.b)), vec2<bool>(global3[_wgslsmith_index_u32(global1.a, 29u)], false)), Struct_1(64157u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, global4.b.x, 530f), global4.b, global1.c.x)), vec2<bool>(global4.c.x, true)), vec3<bool>(u_input.e.x <= u_input.c, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], !global1.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4.c, global1.c.x)) - _wgslsmith_f_op_f32(sign(-114f))))), u_input.a.x, max(firstTrailingBit(u_input.a >> (vec3<u32>(global1.a, 4294967295u, 68518u) % vec3<u32>(32u))), u_input.a)));
    global4 = var_0.c.a.b;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(select(~select(vec2<u32>(global4.a, 4294967295u), u_input.a.xx, vec2<bool>(global4.c.x, global1.c.x)), select(vec2<u32>(31491u, 0u), select(var_0.c.d.xz, u_input.a.zy, vec2<bool>(true, true)), var_0.c.a.c.x), global4.c)), vec2<u32>(0u, firstLeadingBit(u_input.a.x))), 17u)];
    var_0 = Struct_5(-2147483647i, global4.b.x, Struct_4(Struct_2(var_0.c.a.b, var_0.c.a.b, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.b.x - var_1.a.b.x)))), global1.a | _wgslsmith_dot_vec4_u32(vec4<u32>(79518u, var_0.c.d.x, 35456u, var_1.b.a), _wgslsmith_div_vec4_u32(vec4<u32>(3594u, global1.a, var_1.a.a, 39364u), vec4<u32>(var_1.b.a, 4294967295u, var_1.a.a, global1.a))), max(vec3<u32>(abs(var_0.c.d.x), 1u, _wgslsmith_add_u32(global1.a, 1u)), u_input.a | _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.b.a, u_input.a.x), var_0.c.d))));
    return Struct_5(countOneBits(~firstTrailingBit(var_0.a)) >> (u_input.a.x % 32u), var_0.c.a.b.b.x, global2[_wgslsmith_index_u32(global4.a, 19u)]);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_2, 17>();
    var var_0 = global2[_wgslsmith_index_u32(select(~firstLeadingBit(_wgslsmith_mod_u32(1u, ~59353u)), 16033u, true), 19u)];
    let var_1 = arg_0.a.c.x;
    var var_2 = ~abs(~_wgslsmith_add_vec2_u32(abs(u_input.a.xz), max(u_input.a.zy, u_input.a.xy)));
    let var_3 = arg_2.c.a.a;
    return Struct_1(arg_0.a.a, var_3.b, vec2<bool>((i32(-1i) * -arg_1) != (i32(-1i) * -u_input.d), arg_2.a <= 1i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> f32 {
    var var_0 = !select(arg_0.c.x, func_2().c.a.b.c.x, func_4(Struct_3(func_4(Struct_3(arg_1.b, true), -2147483647i, Struct_5(u_input.b.x, arg_0.b.x, Struct_4(Struct_2(Struct_1(0u, vec3<f32>(-513f, arg_1.a.b.x, global4.b.x), vec2<bool>(arg_0.c.x, arg_2.a.c.x)), Struct_1(u_input.a.x, global1.b, arg_2.a.c.xx), arg_2.a.c), -262f, 4294967295u, vec3<u32>(global4.a, global4.a, 13440u))), global3[_wgslsmith_index_u32(global4.a, 29u)]), func_4(Struct_3(arg_2.a.a, global4.c.x), -1i, Struct_5(u_input.c, global1.b.x, Struct_4(arg_1, global4.b.x, arg_0.a, vec3<u32>(26433u, 24173u, global1.a))), arg_2.a.c.x).c.x), u_input.b.x, Struct_5(u_input.e.x, arg_2.a.b.b.x, Struct_4(arg_2.a, global4.b.x, 1u, u_input.a)), !(arg_3 && arg_1.c.x)).c.x);
    global3 = array<bool, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(726f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))) + -1968f)));
    let var_2 = arg_1.b;
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2400f - -479f)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = ~0u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(Struct_3(Struct_1(global4.a, vec3<f32>(-529f, -167f, global1.b.x), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 29u)])), true), u_input.c, func_2(), func_2().c.a.c.x), global0[_wgslsmith_index_u32(36907u, 17u)], Struct_4(func_2().c.a, global1.b.x, global1.a, select(u_input.a << (u_input.a % vec3<u32>(32u)), select(vec3<u32>(global1.a, global4.a, 0u), u_input.a, vec3<bool>(global3[_wgslsmith_index_u32(global1.a, 29u)], true, false)), vec3<bool>(false, global3[_wgslsmith_index_u32(39210u, 29u)], false))), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1590f * -728f) + -920f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.b.x))), global1.b.x);
    var var_2 = Struct_2(func_2().c.a.b, Struct_1(1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1489f, global4.b.x, -1000f)))), vec2<bool>(true, !(0i != u_input.c))), vec3<bool>(global1.c.x, arg_0, global1.c.x));
    global4 = Struct_1(max(1u, ~global4.a), var_2.a.b, vec2<bool>(abs(1i) < _wgslsmith_mod_i32(reverseBits(u_input.d), _wgslsmith_div_i32(-10824i, u_input.e.x)), func_2().c.a.a.c.x));
    var var_3 = vec3<bool>(global3[_wgslsmith_index_u32(~1u, 29u)] && global3[_wgslsmith_index_u32(var_0, 29u)], arg_1.x, any(vec3<bool>(global3[_wgslsmith_index_u32(~(80921u ^ var_2.b.a), 29u)], false, global3[_wgslsmith_index_u32(~1u, 29u)])));
    return !func_2().c.a.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global1.b - global1.b))), select(!select(select(vec2<bool>(true, false), global1.c, true), global1.c, all(vec4<bool>(global1.c.x, true, global4.c.x, global4.c.x))), global4.c, select(global1.c, global1.c, func_1(false, !vec2<bool>(global4.c.x, false)))));
    var var_0 = true;
    var var_1 = vec4<u32>(19362u, global4.a, abs(global1.a), 0u);
    global1 = func_4(Struct_3(Struct_1(17612u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global4.b)) - global1.b), !select(vec2<bool>(global4.c.x, global1.c.x), vec2<bool>(false, true), vec2<bool>(global4.c.x, global4.c.x))), true), u_input.c, Struct_5(select(u_input.c | func_2().a, _wgslsmith_add_i32(0i, _wgslsmith_mult_i32(u_input.c, -1i)), true), _wgslsmith_f_op_f32(global4.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-816f, global4.b.x)) * global1.b.x)), Struct_4(func_2().c.a, -184f, _wgslsmith_mod_u32(global1.a, ~global1.a), u_input.a)), global3[_wgslsmith_index_u32(global4.a, 29u)]);
    var var_2 = Struct_1(76275u, global1.b, !vec2<bool>(false, 1u >= var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, select(var_1.x, func_2().c.c, true)), -1173f);
}

