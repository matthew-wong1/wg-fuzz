struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(30437u, 11532u, 62471u);

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<Struct_3, 11>;

var<private> global3: array<bool, 30> = array<bool, 30>(false, false, true, true, false, true, true, true, false, true, true, true, true, true, true, true, true, false, false, true, false, true, true, false, false, false, false, true, true, true);

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    global0 = u_input.e;
    global3 = array<bool, 30>();
    let var_0 = arg_0;
    let var_1 = !(!vec3<bool>(!global4.x, true, global0.x != global0.x));
    var var_2 = any(select(select(var_1, vec3<bool>(var_1.x, false, true), !select(vec3<bool>(true, true, false), vec3<bool>(global4.x, false, true), false)), !vec3<bool>(all(var_1), all(vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0.x, 30u)], true)), select(global3[_wgslsmith_index_u32(u_input.e.x, 30u)], true, global4.x)), !(true | all(var_1))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(step(-581f, _wgslsmith_f_op_f32(step(1188f, arg_0.x))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -113f), -1632f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-900f * 201f) * arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(abs(var_0.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(u_input.a.x, ~arg_1.b.b);
    global2 = array<Struct_3, 11>();
    let var_1 = arg_1.d;
    global4 = var_1.b.www;
    return vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(var_1.c, ~(vec3<u32>(20942u, 0u, 4294967295u) | vec3<u32>(var_1.c.x, arg_1.c.a.b, arg_1.b.a)), select(!arg_1.d.b.yxz, vec3<bool>(true, false, true), var_1.b.wyw)), select(firstTrailingBit(vec3<u32>(u_input.e.x, 41847u, u_input.e.x)), min(vec3<u32>(27093u, var_1.a.b, 18855u), _wgslsmith_mult_vec3_u32(arg_1.d.c, arg_1.d.c)), !var_1.b.x)), 30u)], all(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), global3[_wgslsmith_index_u32(0u, 30u)]), global4.xx, vec2<bool>(global4.x, false))), any(vec2<bool>(_wgslsmith_f_op_f32(sign(arg_1.a.x)) != arg_1.e, arg_0)), (!global3[_wgslsmith_index_u32(global0.x, 30u)] || true) | any(vec3<bool>(true, arg_1.e > arg_1.a.x, true)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -600f)));
    global3 = array<bool, 30>();
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(4294967295u, 7u)], func_4(global3[_wgslsmith_index_u32(28086u, 30u)], Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1.a))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, min(global0.x, 1u)), 7u)], Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, 75964u), 7u)], select(vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(true, global4.x, false, global4.x), false), vec3<u32>(4294967295u, 1u, 0u)), Struct_2(Struct_1(global0.x, 45780u), !vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 30u)], true, global3[_wgslsmith_index_u32(2168u, 30u)]), vec3<u32>(17212u, u_input.a.x, 0u) >> (vec3<u32>(0u, 16136u, global0.x) % vec3<u32>(32u))), arg_1.a.x)), select(countOneBits((vec3<u32>(u_input.b, u_input.e.x, 4294967295u) >> (u_input.e % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(u_input.e, u_input.e)), vec3<u32>(firstLeadingBit(0u), ~(~11754u), u_input.c), !vec3<bool>(true, global4.x, any(vec3<bool>(global4.x, false, true)))));
    let var_2 = global2[_wgslsmith_index_u32(1u, 11u)];
    global2 = array<Struct_3, 11>();
    return arg_1.a.x;
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_3, 11>();
    var var_0 = 17892u;
    var_0 = 12515u;
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -919f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(164f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3110f + _wgslsmith_f_op_f32(func_2(vec4<f32>(837f, -1307f, -1008f, 1362f), Struct_4(vec3<f32>(1033f, 1758f, -848f)))))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-549f + -1598f)), 1208f))), Struct_1(4570u, 24162u), Struct_2(global1[_wgslsmith_index_u32(global0.x, 7u)], !(!vec4<bool>(true, false, false, global4.x)), firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, u_input.b, 6720u), vec3<u32>(44654u, u_input.c, 1u)))), Struct_2(Struct_1((global0.x & u_input.b) >> (91831u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18089u, 60545u, u_input.b) | vec4<u32>(global0.x, global0.x, global0.x, global0.x), abs(vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u)))), func_4(global3[_wgslsmith_index_u32(global0.x, 30u)] | any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 30u)], true, true, false)), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1036f, -260f, 1667f, -285f), vec4<f32>(533f, 2346f, -1916f, -397f), global3[_wgslsmith_index_u32(68350u, 30u)])), global1[_wgslsmith_index_u32(max(1u, 1u), 7u)], Struct_2(global1[_wgslsmith_index_u32(53233u, 7u)], vec4<bool>(false, global3[_wgslsmith_index_u32(21732u, 30u)], global3[_wgslsmith_index_u32(global0.x, 30u)], global3[_wgslsmith_index_u32(u_input.e.x, 30u)]), u_input.e), Struct_2(global1[_wgslsmith_index_u32(global0.x, 7u)], vec4<bool>(global3[_wgslsmith_index_u32(24311u, 30u)], global3[_wgslsmith_index_u32(global0.x, 30u)], global3[_wgslsmith_index_u32(global0.x, 30u)], global4.x), vec3<u32>(global0.x, global0.x, 1u)), 1279f)), u_input.e), 233f);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(global0.x), ~30267u, _wgslsmith_clamp_u32(max(75393u ^ var_1.c.a.a, global0.x), 11865u, 20039u), global0.x), abs(vec4<u32>(~_wgslsmith_mult_u32(u_input.b, 4294967295u), 4294967295u, global0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(42730u, u_input.e.x), u_input.e.zx))));
    return StorageBuffer(var_2, firstLeadingBit(~(abs(vec2<i32>(u_input.d, -6139i)) >> (_wgslsmith_mod_vec2_u32(u_input.e.xx, vec2<u32>(u_input.a.x, u_input.b)) % vec2<u32>(32u)))), var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(global0.x, u_input.e.x, _wgslsmith_mod_u32(~min(u_input.e.x, global0.x) << ((0u << (0u % 32u)) % 32u), 48953u));
    var var_0 = abs(global0.zy);
    var var_1 = -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, 1i, u_input.d)), -vec4<i32>(u_input.d, -1i, u_input.d, u_input.d)), -1i) ^ 0i;
    var var_2 = -448f;
    let var_3 = !((_wgslsmith_div_u32(min(u_input.b, 868u), global0.x) | (~0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(0u, u_input.a.x)) % 32u))) < var_0.x);
    let x = u_input.a;
    s_output = func_1();
}

