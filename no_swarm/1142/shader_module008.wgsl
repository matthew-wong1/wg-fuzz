struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<i32>(-10353i, i32(-2147483648)), vec4<i32>(15077i, i32(-2147483648), 37071i, 1i)), Struct_1(vec2<i32>(37357i, 0i), vec4<i32>(-81566i, -24052i, 9823i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -22368i), vec4<i32>(6365i, 2147483647i, 13594i, 2147483647i)), Struct_1(vec2<i32>(1i, -1i), vec4<i32>(0i, -2672i, -40286i, 12356i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 13162i, -2893i)), Struct_1(vec2<i32>(-2487i, i32(-2147483648)), vec4<i32>(1i, -18317i, -1i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 36862i), vec4<i32>(i32(-2147483648), 1i, 21418i, -55386i)), Struct_1(vec2<i32>(-20398i, 0i), vec4<i32>(0i, 0i, -1i, 1i)), Struct_1(vec2<i32>(-7334i, 16198i), vec4<i32>(2131i, 1i, -1i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i)), Struct_1(vec2<i32>(36178i, 2147483647i), vec4<i32>(1i, 2147483647i, 2147483647i, 0i)), Struct_1(vec2<i32>(-10645i, -34911i), vec4<i32>(9356i, 30244i, 2147483647i, -21041i)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<i32>(14706i, 1i, 9668i, 26755i)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<i32>(0i, 1i, -13735i, -7795i)), Struct_1(vec2<i32>(-217i, 10866i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 20158i)), Struct_1(vec2<i32>(-22137i, -74052i), vec4<i32>(-34852i, 0i, i32(-2147483648), 14816i)), Struct_1(vec2<i32>(-844i, 2147483647i), vec4<i32>(0i, 2107i, 72461i, -1i)), Struct_1(vec2<i32>(15996i, 1i), vec4<i32>(i32(-2147483648), 0i, 0i, -15683i)), Struct_1(vec2<i32>(0i, 11080i), vec4<i32>(8914i, -45930i, 1i, 11779i)));

var<private> global3: Struct_2 = Struct_2(vec3<i32>(-48098i, i32(-2147483648), 2147483647i), 1000f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec4<bool> {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_0 = -1923f;
    global3 = Struct_2(-_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, global3.a.x, arg_0.a.x)), arg_0.b.zwz, firstLeadingBit(global3.a >> (vec3<u32>(4294967295u, u_input.a.x, 38908u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b, global3.b, false))) * _wgslsmith_f_op_f32(sign(1713f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - -662f))))));
    var var_1 = 2147483647i;
    return !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)));
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    global1 = true;
    var var_0 = Struct_2(vec3<i32>(~global3.a.x, global3.a.x, max(_wgslsmith_div_i32(-26192i, -15603i), i32(-1i) * -19900i)) >> ((~u_input.a ^ ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, arg_0.x, arg_0.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(global3.b)));
    let var_1 = (-31703i & (i32(-1i) * -max(var_0.a.x, var_0.a.x))) > (~(-2147483647i) | global3.a.x);
    let var_2 = 4294967295u;
    var var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 19u)];
    return !vec4<bool>(any(func_3(global2[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(~24504u, 30u)])), all(vec2<bool>(var_1, var_1 || var_1)), u_input.b.x <= _wgslsmith_mod_u32(u_input.a.x, 3064u), true);
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_3, 30>();
    let var_0 = select(func_2(~vec2<u32>(4294967295u, ~24612u)), func_3(global2[_wgslsmith_index_u32(14049u, 19u)], global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 97u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u)), 1u), 30u)], Struct_3(~vec4<u32>(51276u, u_input.a.x, 0u, 4294967295u), ~(~0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1291f, -1286f)) * -1151f), _wgslsmith_f_op_f32(min(global3.b, global3.b)), ~1u)), func_3(Struct_1(vec2<i32>(~global3.a.x, min(global3.a.x, global3.a.x)), vec4<i32>(global3.a.x, _wgslsmith_mult_i32(global3.a.x, -28030i), -129i, ~global3.a.x)), Struct_3(countOneBits(~u_input.b), -2147483647i, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_mod_u32(abs(u_input.b.x), 4294967295u)), global0[_wgslsmith_index_u32((u_input.b.x & u_input.b.x) >> (~_wgslsmith_mult_u32(0u, 4294967295u) % 32u), 30u)]).x);
    var var_1 = select(51684u, u_input.a.x, var_0.x);
    var_1 = 4294967295u;
    global1 = true;
    return Struct_4(false, Struct_1(-(_wgslsmith_mult_vec2_i32(vec2<i32>(30998i, global3.a.x), vec2<i32>(-1i, 1i)) | -vec2<i32>(-2147483647i, 2195i)), select(select(max(vec4<i32>(0i, -47193i, global3.a.x, global3.a.x), vec4<i32>(2147483647i, global3.a.x, 0i, global3.a.x)), -vec4<i32>(global3.a.x, -1i, -2147483647i, 45384i), vec4<bool>(false, false, false, false)), vec4<i32>(global3.a.x, global3.a.x, 1i, 39278i) & vec4<i32>(global3.a.x, global3.a.x, global3.a.x, -1i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(~(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 32903i, global3.a.x), global3.a))), _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(max(global3.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b)))))));
    var var_0 = reverseBits(_wgslsmith_mult_vec2_i32(global3.a.yy, global3.a.yz) << (u_input.a.yx % vec2<u32>(32u)));
    var var_1 = select(vec4<u32>(u_input.b.x, 0u, 39399u, 42421u) << (firstLeadingBit(u_input.b) % vec4<u32>(32u)), vec4<u32>(~u_input.a.x, _wgslsmith_clamp_u32(reverseBits(u_input.b.x), ~_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x), 13185u, u_input.b.x), true);
    let var_2 = func_1();
    global3 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-var_0.x, 13420i, abs(0i)) << (reverseBits(abs(vec3<u32>(u_input.a.x, var_1.x, 93560u))) % vec3<u32>(32u)), var_2.b.b.wyy, -_wgslsmith_div_vec3_i32(-vec3<i32>(global3.a.x, global3.a.x, 0i), min(var_2.b.b.xyy, vec3<i32>(global3.a.x, 2147483647i, global3.a.x)))), _wgslsmith_f_op_f32(trunc(global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x, ~firstLeadingBit(countOneBits(_wgslsmith_add_vec3_u32(var_1.wxy, u_input.b.zyx))), var_1.wyy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1236f))))));
}

