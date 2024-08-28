struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: vec4<f32> = vec4<f32>(-454f, -839f, 1159f, -1684f);

var<private> global2: array<f32, 6> = array<f32, 6>(-2126f, 268f, -654f, 440f, 214f, -370f);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(62427i, 14846i, 32685i, -20013i), vec3<u32>(1u, 0u, 0u), vec4<u32>(73717u, 4294967295u, 0u, 0u), vec4<i32>(-1i, -50237i, 8748i, 37209i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = 0i;
    let var_1 = 12999i;
    let var_2 = Struct_2(~firstTrailingBit(4294967295u & global3.c.x) >> (1u % 32u), ~(~vec3<u32>(46461u, 1u, 29916u) ^ vec3<u32>(firstTrailingBit(arg_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 4521u, 32377u, global3.b.x), vec4<u32>(arg_1.b.x, arg_1.a, 64214u, 4294967295u)), _wgslsmith_dot_vec4_u32(global3.c, vec4<u32>(global3.b.x, arg_0.c.x, 0u, 93894u)))), ~((~vec2<u32>(0u, global3.b.x) | countOneBits(vec2<u32>(51794u, arg_1.b.x))) >> (select(vec2<u32>(global3.b.x, 0u), vec2<u32>(50091u, 108613u), any(vec4<bool>(true, true, true, false))) % vec2<u32>(32u))), arg_0.b.x, ~var_1);
    let var_3 = true || all(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), 47303u <= (4294967295u & var_2.b.x), false, any(vec3<bool>(true, true, true))));
    global0 = array<Struct_2, 19>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)]) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.x, -1342f))))), (~1u >> (global3.b.x % 32u)) >= 1u)) - _wgslsmith_f_op_f32(max(669f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-193f - global1.x)) + _wgslsmith_div_f32(576f, _wgslsmith_f_op_f32(1883f - -1044f))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(~_wgslsmith_mod_i32(arg_0.d.x, _wgslsmith_add_i32(-75166i >> (global3.b.x % 32u), 2038i)), -3272i);
    global3 = arg_0;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, global0[_wgslsmith_index_u32(15268u, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]) + global2[_wgslsmith_index_u32(abs(59859u), 6u)]))), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(abs(arg_0.b.x) ^ _wgslsmith_add_u32(global3.c.x | 1u, ~arg_0.b.x), 6u)], _wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_f_op_f32(round(global1.x)));
    let var_1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1079f), global1.x))));
    var var_2 = global0[_wgslsmith_index_u32(0u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~min(arg_0.c.x, global3.c.x)), vec2<u32>(arg_0.c.x, reverseBits(global3.c.x)) | countOneBits(vec2<u32>(1u, 1u))), 19u)];
    return arg_0;
}

fn func_1() -> Struct_1 {
    global3 = Struct_1(firstTrailingBit(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)), 11904i, firstLeadingBit(u_input.a))) >> (~vec4<u32>(global3.c.x, ~26110u, 0u, ~0u) % vec4<u32>(32u)), global3.c.yxw, _wgslsmith_clamp_vec4_u32(vec4<u32>(39581u, _wgslsmith_mult_u32(global3.c.x, global3.b.x), _wgslsmith_dot_vec4_u32(~global3.c, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 16264u, global3.b.x, 10563u), global3.c)), _wgslsmith_clamp_u32(62020u, 4294967295u, ~0u)), ~vec4<u32>(31794u, global3.b.x | 4294967295u, 4294967295u, abs(global3.c.x)), global3.c), vec4<i32>(global3.d.x, global3.d.x, u_input.a, firstTrailingBit(_wgslsmith_mult_i32(global3.a.x & 0i, _wgslsmith_add_i32(3236i, u_input.a)))));
    let var_0 = func_2(Struct_1(vec4<i32>(u_input.a, global3.a.x, global3.d.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, global3.a.x, u_input.a), _wgslsmith_mult_i32(global3.d.x, 1i))), _wgslsmith_mult_vec3_u32(global3.c.wzz, abs(firstTrailingBit(vec3<u32>(global3.b.x, global3.b.x, 0u)))), vec4<u32>(_wgslsmith_div_u32(1u, global3.b.x >> (55795u % 32u)), 1u << ((global3.c.x ^ global3.b.x) % 32u), ~_wgslsmith_mod_u32(50078u, global3.b.x), global3.b.x), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global3.d.x, -12926i, 1i, -1i)), firstLeadingBit(vec4<i32>(u_input.a, 1i, -2147483647i, 4679i)))));
    let var_1 = ~21906u;
    let var_2 = func_2(func_2(func_2(var_0)));
    global3 = var_0;
    return Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.d.x, 45582i, -3499i) >> (vec4<u32>(0u, var_0.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(var_0.a.x, global3.a.x, u_input.a, var_0.a.x)) << (4294967295u % 32u), _wgslsmith_div_i32(-27367i, _wgslsmith_sub_i32(var_2.d.x & var_2.a.x, global3.a.x)), u_input.a, max(~(-5377i), -28142i)), vec3<u32>(var_1, var_1, 17153u), countOneBits(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.x, var_2.c.x, var_0.b.x, var_1), var_0.c))), global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 19>();
    var var_0 = global0[_wgslsmith_index_u32(global3.b.x, 19u)];
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(505f, 734f) - -518f))) != global2[_wgslsmith_index_u32(global3.b.x, 6u)];
    global3 = func_1();
    var var_2 = ~(global3.b.x >> (0u % 32u));
    let var_3 = true;
    var var_4 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~var_0.b, min(global3.b, vec3<u32>(global3.c.x, global3.c.x, 4294967295u))), 65380u);
    var var_5 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    var var_6 = (vec4<i32>(-2147483647i, global3.a.x, abs(firstTrailingBit(0i)), _wgslsmith_sub_i32(-23687i, ~0i)) | global3.d) ^ ~select(vec4<i32>(1i, -1i, 22904i, ~global3.a.x), firstLeadingBit(-vec4<i32>(-1i, -17948i, -41167i, u_input.a)), select(!vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_3, var_3, false), vec4<bool>(var_3, var_3, true, false), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_add_i32(countOneBits(var_0.e), -15614i), countOneBits(var_6.x), i32(-1i) * -2147483647i)));
}

