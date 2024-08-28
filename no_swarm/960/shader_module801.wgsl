struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<bool, 22> = array<bool, 22>(false, false, true, true, false, true, false, false, true, true, false, false, true, true, true, false, false, false, false, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2.c)));
    global0 = array<Struct_1, 27>();
    global2 = array<Struct_1, 13>();
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1294f, 1000f, global1.d.b.a) + vec3<f32>(arg_2.d.a.a, 1880f, var_0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.c.yxz))), arg_3)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.b.a.a, arg_2.d.a.a)), _wgslsmith_div_f32(-1475f, var_0.x), 1f), _wgslsmith_f_op_vec3_f32(sign(global1.a))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-268f, global1.d.a.a)), _wgslsmith_f_op_f32(global1.a.x * arg_2.d.a.a), all(arg_3))), countOneBits(vec4<u32>(1u, 40222u, u_input.c, 1u)), vec3<i32>(global1.d.b.c.x, -29414i, 2147483647i) & _wgslsmith_div_vec3_i32(vec3<i32>(26615i, -19880i, arg_2.d.b.c.x), vec3<i32>(global1.d.b.c.x, global1.b.a.c.x, global1.d.b.c.x)), countOneBits(global1.d.a.b)), arg_2.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(266f, var_0.x, arg_3.x))), global1.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(995f, 605f, 1206f, global1.d.c) - arg_2.c)), arg_2.c), Struct_2(Struct_1(-520f, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.e, vec3<u32>(13726u, 11380u, 28950u)), ~arg_0, ~u_input.a, 1u << (arg_2.b.b.b.x % 32u)), arg_2.b.b.c, arg_2.b.a.d), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1889f)))), _wgslsmith_mod_vec4_u32(global1.b.a.b, ~global1.b.a.b), vec3<i32>(arg_2.d.b.c.x, -global1.d.a.c.x, global1.d.b.c.x), ~global1.b.b.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1215f)) * _wgslsmith_f_op_f32(abs(arg_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-809f))), global3[_wgslsmith_index_u32(4294967295u, 22u)]))), global1.d.b.d.xxw);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(global1.b.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.a))), _wgslsmith_f_op_f32(step(-321f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.c.x, 1000f))))))), _wgslsmith_f_op_f32(-var_0.x), -363f);
    return -965f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = array<bool, 22>();
    let var_0 = global1.d.b;
    let var_1 = global3[_wgslsmith_index_u32(global1.b.b.d.x & u_input.a, 22u)];
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~((24392u | arg_0.b.x) & 30304u), u_input.c), 13u)], Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(537u, all(vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0.d.x, 22u)])), Struct_3(vec3<f32>(var_0.a, -1062f, -1647f), Struct_2(arg_0, Struct_1(var_0.a, vec4<u32>(0u, var_0.d.x, u_input.a, u_input.a), u_input.b.wzx, vec4<u32>(global1.d.b.d.x, 1u, arg_0.b.x, 61887u)), 274f), vec4<f32>(var_0.a, global1.a.x, arg_0.a, 1447f), Struct_2(global0[_wgslsmith_index_u32(arg_0.d.x, 27u)], global2[_wgslsmith_index_u32(5377u, 13u)], global1.b.b.a), arg_0.d.www), select(vec3<bool>(global3[_wgslsmith_index_u32(14229u, 22u)], global3[_wgslsmith_index_u32(56488u, 22u)], true), vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(arg_0.b.x, 22u)], false, global3[_wgslsmith_index_u32(40454u, 22u)])))), 771f, !(arg_0.c.x != arg_0.c.x))), vec4<u32>(1u, 0u, max(~global1.b.b.d.x, ~0u), ~39660u), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-4532i, global1.b.b.c.x, -2147483647i), vec3<i32>(-1i, arg_0.c.x, -1i)), ~(~u_input.b.yxz)), (var_0.d ^ (vec4<u32>(4294967295u, global1.e.x, 1u, 35459u) << (var_0.d % vec4<u32>(32u)))) << (firstTrailingBit(~vec4<u32>(76867u, 0u, 4294967295u, 8998u)) % vec4<u32>(32u))), 333f);
    let var_3 = !any(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 22u)])) == true;
    return Struct_1(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-var_2.c)), var_2.a.d, -min(global1.b.a.c >> ((arg_0.b.xzx >> (vec3<u32>(var_0.b.x, global1.b.b.d.x, var_2.a.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.b.c.x, 57358i, u_input.e), vec3<i32>(-2147483647i, global1.d.b.c.x, var_0.c.x)))), arg_0.b);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(func_2(Struct_1(_wgslsmith_f_op_f32(-global1.b.a.a), _wgslsmith_clamp_vec4_u32(~global1.d.a.d, global1.b.a.d >> (global1.b.a.d % vec4<u32>(32u)), ~global1.b.b.d), (vec3<i32>(0i, u_input.d.x, global1.d.b.c.x) << (global1.b.b.b.yww % vec3<u32>(32u))) | vec3<i32>(global1.b.a.c.x, u_input.e, -54674i), ~global1.d.a.d)), func_2(func_2(global2[_wgslsmith_index_u32(max(u_input.c, u_input.c) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, global1.e.x), vec2<u32>(u_input.c, u_input.a)) % 32u), 13u)])), 2089f);
    let var_1 = global1.c;
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1653f))), global1.b.a.b, _wgslsmith_mod_vec3_i32(u_input.b.yzz, (u_input.b.yxz << (global1.b.a.b.wxw % vec3<u32>(32u))) & -vec3<i32>(var_0.b.c.x, 36306i, 1i)), vec4<u32>(~u_input.c, ~global1.e.x, 0u, 0u)));
    let var_3 = select(global3[_wgslsmith_index_u32(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(1445f + global1.b.b.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, var_0.a.d.x, 35968u), var_2.b), _wgslsmith_add_vec3_i32(var_2.c, vec3<i32>(var_2.c.x, global1.d.b.c.x, 2147483647i)), vec4<u32>(16530u, 1u, 18044u, u_input.c)))).b.x, 22u)], !(any(vec2<bool>(true, true)) | true), select(any(select(!vec4<bool>(global3[_wgslsmith_index_u32(23906u, 22u)], global3[_wgslsmith_index_u32(var_2.d.x, 22u)], true, global3[_wgslsmith_index_u32(var_0.b.d.x, 22u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(var_0.b.d.x, 22u)], true, true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 22u)], false, global3[_wgslsmith_index_u32(20466u, 22u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(8875u, 22u)], true, global3[_wgslsmith_index_u32(4294967295u, 22u)])), vec4<bool>(global3[_wgslsmith_index_u32(41170u, 22u)], true, global3[_wgslsmith_index_u32(u_input.c, 22u)], true))), true, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 22u)], false, global3[_wgslsmith_index_u32(1u, 22u)] & global3[_wgslsmith_index_u32(87669u, 22u)]))));
    var var_4 = ~var_0.a.d.x;
    return Struct_2(var_2, var_2, var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, global1.a.x, var_0.b.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.c.zxx, global1.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(721f, var_0.c, 135f) * vec3<f32>(global1.b.c, 978f, var_0.c))))), func_1(), vec4<f32>(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2320f)))), global1.b.c, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.a))) - -961f)), Struct_2(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 27u)]), Struct_1(func_2(func_1().b).a, global1.b.b.b, vec3<i32>(global1.b.b.c.x, func_2(Struct_1(660f, global1.d.b.d, u_input.b.zyx, var_0.b.b)).c.x, global1.d.b.c.x), global1.d.a.d), global1.a.x), reverseBits(global1.e));
    var var_1 = var_0.b.d;
    global0 = array<Struct_1, 27>();
    let var_2 = !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_0.a.b, var_0.b.b), 22u)];
    let var_3 = u_input.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.a.yz), global1.a.xx, select(vec2<bool>(true, var_2), select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 22u)], true), !vec2<bool>(global3[_wgslsmith_index_u32(var_0.a.b.x, 22u)], false), all(vec4<bool>(true, global3[_wgslsmith_index_u32(32127u, 22u)], global3[_wgslsmith_index_u32(80177u, 22u)], true))), true)))));
    let var_5 = -(~vec2<i32>(-_wgslsmith_sub_i32(27954i, 2147483647i), _wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(0i, global1.b.a.c.x, global1.b.a.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_1(var_4.x, ~vec4<u32>(7119u, var_1.x, 4294967295u, 909u) ^ (var_0.a.b ^ global1.d.b.d), vec3<i32>(var_0.a.c.x, 13024i >> (1u % 32u), max(-25191i, global1.d.b.c.x)), ~vec4<u32>(0u, 67387u, 0u, var_3))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(global1.c, global1.c, false))))))), _wgslsmith_f_op_f32(-global1.b.b.a));
}

