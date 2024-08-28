struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9057u;

var<private> global1: array<bool, 25>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(14970i, 25153i, 3569i, -37032i), vec2<u32>(75647u, 21531u), vec3<i32>(12101i, 1i, i32(-2147483648)), vec4<bool>(true, false, false, false));

var<private> global3: vec3<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = global4.b;
    global2 = global4.b;
    global0 = _wgslsmith_mult_u32(~(~5558u) & ~(~_wgslsmith_mod_u32(u_input.b.x, global4.a.x)), max(~select(65898u, ~global2.b.x, true), countOneBits(countOneBits(global4.b.b.x) << (~global4.a.x % 32u))));
    global1 = array<bool, 25>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1473f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-444f - arg_0))), 463f));
    return _wgslsmith_mult_i32(i32(-1i) * -countOneBits(0i), 24254i);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = select(vec4<bool>(true, global2.d.x, any(arg_0.b.d), global1[_wgslsmith_index_u32(83216u, 25u)]), vec4<bool>(10568i == firstLeadingBit(global2.c.x >> (1u % 32u)), arg_2.d.x, any(global4.b.d), !(!arg_3.b.d.x)), arg_2.d.x);
    global3 = arg_3.b.c;
    global2 = arg_0.b;
    var var_1 = Struct_2(global4.a, arg_3.b, vec2<i32>(min(global4.c.x, u_input.a), _wgslsmith_sub_i32(arg_2.a.x, global3.x)));
    global4 = arg_3;
    return reverseBits(vec2<i32>(abs(-max(global4.b.a.x, 23948i)), -reverseBits(u_input.a ^ -16671i)));
}

fn func_2() -> Struct_2 {
    global1 = array<bool, 25>();
    global4 = Struct_2(u_input.b, global4.b, _wgslsmith_add_vec2_i32(func_3(Struct_2(global4.a, global4.b, _wgslsmith_mult_vec2_i32(global2.c.yx, global2.c.zy)), firstLeadingBit(u_input.b.x ^ 0u), Struct_1(global2.a, ~vec2<u32>(u_input.b.x, u_input.b.x), ~global4.b.c, vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(55248u, 1u, 913u, 71397u), global4.b, -vec2<i32>(global2.c.x, global2.a.x))), global4.b.a.xx ^ _wgslsmith_div_vec2_i32(global4.c, -vec2<i32>(-2147483647i, global3.x))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(444f + 484f), 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(316f, -273f))))), _wgslsmith_f_op_f32(step(991f, -1196f)), _wgslsmith_f_op_f32(f32(-1f) * -1187f));
    global1 = array<bool, 25>();
    var var_1 = firstLeadingBit(global4.b.a);
    return Struct_2(max(vec4<u32>(~0u, ~58u, _wgslsmith_sub_u32(abs(u_input.b.x), u_input.b.x), reverseBits(countOneBits(18704u))), countOneBits(select(global4.a, global4.a, global4.b.d))), global4.b, global3.yz);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global1 = array<bool, 25>();
    let var_0 = vec2<bool>(true, true);
    global3 = vec3<i32>(-2147483647i, u_input.c, 0i);
    let var_1 = func_2().b;
    global2 = func_2().b;
    return Struct_1(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.a.x, 2147483647i, global3.x, 14524i), ~global2.a, vec4<i32>(-818i, global3.x << (56110u % 32u), global4.b.c.x, u_input.c ^ -12581i)), ~arg_0.b.b, global4.b.c, vec4<bool>(any(vec4<bool>(true, true, true, true)) && true, true, select(!(global3.x == var_1.c.x), ~(-10931i) > ~u_input.c, any(arg_0.b.d.zyy)), true));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global2 = func_2().b;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 473f, -1760f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-392f))) + _wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-594f, -171f)), 1538f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -150f) - _wgslsmith_f_op_f32(select(-1114f, -1119f, global4.b.d.x)))))));
    global3 = vec3<i32>(1i, -3742i, global3.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1874f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1114f, var_0.x, 1000f, var_0.x) + vec4<f32>(var_0.x, -1010f, 517f, -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1790f, -167f, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), var_0.x, var_0.x)));
    let var_2 = reverseBits(global2.b.x);
    return Struct_2(u_input.b, arg_0, -firstLeadingBit(global2.a.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(global2.b.x, global2.b.x), ~vec2<u32>(30132u, ~4294967295u));
    var var_1 = global2.a.zw;
    var var_2 = _wgslsmith_add_i32(-global3.x, global2.c.x);
    let var_3 = firstLeadingBit(u_input.b.x);
    var var_4 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 1i), ~global2.c.x, func_1(429f), 1i), global2.a), 0i, ~min(var_1.x, global4.b.a.x) >> (_wgslsmith_add_u32(~var_3, global4.a.x) % 32u), global4.b.a.x), global4.b.b, vec3<i32>(abs(func_1(-600f)), global2.a.x << (4294967295u % 32u), var_1.x), global4.b.d);
    var var_5 = func_5(func_4(func_2()));
    var var_6 = Struct_2(min(_wgslsmith_mod_vec4_u32(~vec4<u32>(57607u, var_3, 66761u, var_5.b.b.x), vec4<u32>(countOneBits(27230u), ~43959u, max(1u, 0u), u_input.b.x)), vec4<u32>((var_3 << (4294967295u % 32u)) | max(var_4.b.x, 44179u), _wgslsmith_mod_u32(~0u, global4.b.b.x), global2.b.x, ~(~var_3))), var_5.b, vec2<i32>(-var_1.x, _wgslsmith_div_i32(~_wgslsmith_mod_i32(-6194i, 15865i), abs(-global3.x))));
    var var_7 = select(select(func_4(Struct_2(var_6.a, func_2().b, var_6.b.a.xx)).d, !func_4(Struct_2(vec4<u32>(16760u, 49809u, 1u, 1u), Struct_1(global2.a, u_input.b.xy, vec3<i32>(1i, var_6.c.x, 1i), var_4.d), vec2<i32>(var_5.b.a.x, var_5.b.c.x))).d, false), global4.b.d, var_6.b.d.x);
    let var_8 = Struct_2(_wgslsmith_add_vec4_u32(~(global4.a << (vec4<u32>(u_input.b.x, global2.b.x, 28604u, global4.b.b.x) % vec4<u32>(32u))), select(var_6.a, select(vec4<u32>(global4.a.x, var_6.a.x, 1u, var_5.a.x), vec4<u32>(var_5.a.x, 4294967295u, 46814u, 116822u), var_6.b.d), !global2.d)) | vec4<u32>(abs(20636u ^ var_5.a.x), u_input.b.x, _wgslsmith_add_u32(var_0.x, var_6.b.b.x), _wgslsmith_add_u32(var_3, var_0.x) << (reverseBits(32536u) % 32u)), global4.b, var_5.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global4.b.b.x, var_6.a.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_5.a.x, 1u))), func_4(Struct_2(vec4<u32>(var_4.b.x, var_4.b.x, 88462u, global4.a.x), var_6.b, vec2<i32>(global4.c.x, var_1.x))).b.x, ~20864u)));
}

