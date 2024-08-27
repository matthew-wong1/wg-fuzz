struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 15>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global4 = Struct_1(i32(-1i) * -37932i, _wgslsmith_mod_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 2304u, 1u), vec3<u32>(global1.x, 1066u, arg_0.b.x)) | vec3<u32>(global2.b.x, 0u, 112715u), arg_0.b), global4.b), ~(~2147483647i));
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.e.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a, -1i, 44192i, 38622i), vec4<i32>(-24040i, 23532i, u_input.e.x, arg_0.c) << (vec4<u32>(1u, global2.b.x, 12029u, arg_0.b.x) % vec4<u32>(32u))) | 1i), ~(~(~vec3<u32>(4294967295u, u_input.b.x, global2.b.x)) >> (vec3<u32>(8088u, ~1u, global1.x) % vec3<u32>(32u))), u_input.e.x);
    let var_1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.b.x, ~29206u), vec2<u32>(firstLeadingBit(global1.x), 0u)), vec2<u32>(3957u, 102031u));
    var_0 = Struct_1(var_0.a, ~_wgslsmith_sub_vec3_u32(global4.b, vec3<u32>(1u, ~1u, 11636u)), countOneBits(~40187i));
    global3 = array<Struct_1, 15>();
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global3 = array<Struct_1, 15>();
    global1 = vec2<u32>(1u, func_3(global3[_wgslsmith_index_u32(firstTrailingBit(global2.b.x), 15u)]));
    let var_0 = u_input.e;
    var var_1 = var_0;
    global3 = array<Struct_1, 15>();
    return 335f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2(Struct_1(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, -2147483647i), vec4<i32>(-1i, -1i, -8790i, -1i))), global2.b, 28494i)));
    global2 = Struct_1(global2.c, global4.b & _wgslsmith_clamp_vec3_u32(~(~global2.b), _wgslsmith_add_vec3_u32(vec3<u32>(35047u, 87884u, global2.b.x) & global4.b, vec3<u32>(global4.b.x, u_input.a, 50990u)), reverseBits(~u_input.b)), 35658i & (2147483647i << (global2.b.x % 32u)));
    let var_1 = u_input.e.x;
    var var_2 = -vec4<i32>(-abs(-1i), min(firstLeadingBit(var_1), u_input.e.x), _wgslsmith_sub_i32(-3951i, -1i), ~(-2147483647i)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(110748u, 1u, u_input.d, 48470u) & vec4<u32>(3176u, u_input.a, 4294967295u, 27583u), vec4<u32>(32550u, global1.x, 41932u, 14716u) >> (vec4<u32>(u_input.a, 4294967295u, global4.b.x, u_input.a) % vec4<u32>(32u))), vec4<u32>(global4.b.x, ~global2.b.x, ~1u, firstLeadingBit(u_input.d))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, u_input.a, 0u), select(vec4<u32>(44356u, 1u, 13308u, global4.b.x), vec4<u32>(global2.b.x, global4.b.x, global2.b.x, 1u), false))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.b.x, global4.b.x, 4294967295u), abs(vec4<u32>(21506u, global1.x, global2.b.x, global4.b.x))))) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(961f + _wgslsmith_f_op_f32(round(-2152f))))));
    return global3[_wgslsmith_index_u32(4294967295u, 15u)];
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(~func_1().b.xy, global4.b.xx | abs(vec2<u32>(global2.b.x, ~arg_0.b.x)));
    let var_1 = global3[_wgslsmith_index_u32(select(global4.b.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.b.x, func_3(Struct_1(global4.c, vec3<u32>(28046u, 0u, global4.b.x), 2147483647i)), 23171u), vec4<u32>(var_0, ~global1.x, _wgslsmith_mult_u32(21910u, var_0), min(global4.b.x, u_input.b.x)))), true | !(!all(vec3<bool>(false, true, false)))), 15u)];
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -856f);
    var var_3 = global3[_wgslsmith_index_u32(global2.b.x, 15u)];
    let var_4 = true == all(vec2<bool>(true, true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1093f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1656f - -1528f)) + -472f));
    global1 = ~(~abs(global4.b.xz) | global4.b.xz) << (select(~vec2<u32>(~121129u, ~u_input.c.x), vec2<u32>(_wgslsmith_mod_u32(2449u, 54778u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.b.x, 4294967295u), u_input.b) % 32u), 18413u), func_4(func_1())) % vec2<u32>(32u));
    var var_1 = Struct_1(global2.a, abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(11491u, 45091u, 413u)), ~vec3<u32>(global2.b.x, 4294967295u, 4294967295u)), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(61057u, global1.x, global1.x, 134521u), vec4<u32>(u_input.a, global4.b.x, global4.b.x, global4.b.x)), u_input.c.x))), countOneBits(-_wgslsmith_dot_vec2_i32(u_input.e.xx << (vec2<u32>(u_input.b.x, global4.b.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(25034i, 2147483647i), u_input.e.yx, u_input.e.zx))));
    let var_2 = ~(~(~vec3<i32>(countOneBits(global2.c), firstTrailingBit(var_1.a), ~7256i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - var_0), var_0))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), 424f))));
    var_1 = global3[_wgslsmith_index_u32(37852u & _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(9285u, 1u, u_input.c.x, u_input.a), vec4<u32>(0u, 46789u, 19086u, 0u)), vec4<u32>(global2.b.x, 51567u, global1.x, 35738u) | vec4<u32>(global1.x, 8573u, global4.b.x, 1u)), select(~(vec4<u32>(4294967295u, var_1.b.x, global4.b.x, global2.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, global2.b.x, u_input.d) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b.x, global4.b.x, u_input.b.x, u_input.d), ~vec4<u32>(var_1.b.x, var_1.b.x, u_input.d, 4294967295u), vec4<u32>(54755u, var_1.b.x, 1u, 63826u) & vec4<u32>(0u, global1.x, global4.b.x, 4294967295u)), vec4<bool>(true, all(vec3<bool>(false, true, false)), false, true))), 15u)];
    var var_4 = global3[_wgslsmith_index_u32(~u_input.a, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(~(~vec4<u32>(1u, u_input.d, 1u, global4.b.x)), vec4<u32>(_wgslsmith_add_u32(0u, 7259u), 1u, ~global2.b.x, 653u), true)));
}

