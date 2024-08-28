struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
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

var<private> global0: Struct_3;

var<private> global1: array<vec4<u32>, 12>;

var<private> global2: array<i32, 27>;

var<private> global3: array<u32, 12> = array<u32, 12>(77936u, 0u, 4294967295u, 0u, 29316u, 1u, 4294967295u, 34895u, 0u, 1u, 46892u, 1u);

var<private> global4: array<Struct_5, 8>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<vec4<u32>, 12>();
    global2 = array<i32, 27>();
    var var_0 = global0.a;
    var var_1 = ~u_input.a.x;
    let var_2 = 26717u;
    return global0.a;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c)), vec3<i32>(-(~global2[_wgslsmith_index_u32(34633u, 27u)]) ^ -_wgslsmith_add_i32(8621i, u_input.d), max(~(global2[_wgslsmith_index_u32(u_input.a.x, 27u)] << (global3[_wgslsmith_index_u32(17457u, 12u)] % 32u)), global0.a.b), 13527i), _wgslsmith_f_op_f32(global0.a.c + _wgslsmith_f_op_f32(f32(-1f) * -1321f)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1449f), select(var_0.b, abs(vec3<i32>(-31436i, global0.b.b, 33137i)) >> (~(~vec3<u32>(21409u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], u_input.a.x)) % vec3<u32>(32u)), vec3<bool>(true, global0.a.a, select(global0.b.a, all(vec3<bool>(global0.b.a, global0.a.a, false)), !global0.a.a))), _wgslsmith_f_op_f32(1994f + _wgslsmith_f_op_f32(-226f * global0.a.c)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1620f);
    var var_2 = Struct_5(Struct_1(global0.b.a, -7573i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(673f)) * 1000f)))), Struct_2(countOneBits(max(global0.c.xzw, vec3<i32>(-2147483647i, global0.a.b, 1i)) << (select(vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a.x), vec3<u32>(66314u, global3[_wgslsmith_index_u32(u_input.a.x, 12u)], 26974u), vec3<bool>(false, global0.a.a, true)) % vec3<u32>(32u))), _wgslsmith_div_f32(395f, _wgslsmith_f_op_f32(abs(var_1))), abs((vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]) & vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], u_input.a.x)) & _wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(5046u, 12u)]), u_input.a)), global0.a));
    var var_3 = Struct_2(global0.c.zww, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(578f)))), _wgslsmith_mod_vec2_u32(vec2<u32>((4294967295u << (var_2.b.c.x % 32u)) << (u_input.a.x % 32u), ~reverseBits(1u)), u_input.a), var_2.b.d);
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(-u_input.d), global2[_wgslsmith_index_u32(0u, 27u)]), var_0.b.xy, select(vec2<i32>(_wgslsmith_add_i32(global0.b.b, 1652i), 17525i), vec2<i32>(-1i) * -global0.c.wz, false)), -global0.c.zx);
}

fn func_1() -> Struct_1 {
    global0 = Struct_3(func_2(26605u, _wgslsmith_mod_vec3_i32(~firstTrailingBit(vec3<i32>(global0.c.x, 12953i, u_input.b)), min(global0.c.zxx, global0.c.zxx) & vec3<i32>(global0.b.b, -26803i, 1i))), Struct_1(all(!vec2<bool>(global0.a.a, false)) || !global0.b.a, 8135i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c))), global0.c);
    let var_0 = _wgslsmith_mod_u32(4294967295u, ~35304u);
    global4 = array<Struct_5, 8>();
    var var_1 = func_3();
    let var_2 = false;
    return Struct_1(true, -u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f - 403f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 12>();
    global1 = array<vec4<u32>, 12>();
    let var_0 = true;
    global0 = Struct_3(func_1(), global0.b, vec4<i32>(1i, 1i, global2[_wgslsmith_index_u32(0u, 27u)], u_input.c));
    let var_1 = var_0;
    global0 = Struct_3(func_2(~(global3[_wgslsmith_index_u32(~65987u, 12u)] & 40875u), -(~select(vec3<i32>(global0.c.x, 8482i, global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(global2[_wgslsmith_index_u32(7238u, 27u)], -2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(true, false, true)))), func_1(), vec4<i32>(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)), 12u)], 12621u), 27u)], -50028i, ~(1i | (global2[_wgslsmith_index_u32(u_input.a.x, 27u)] | -1i)), i32(-1i) * -21076i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(96268u, 79109u), u_input.a.x), 0u), 12u)], firstTrailingBit(vec4<u32>(69691u, 13750u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60058u, 12u)] | global3[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 0u))));
}

