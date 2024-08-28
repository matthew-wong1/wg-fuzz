struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 32> = array<f32, 32>(-386f, -635f, 335f, -932f, 123f, -182f, -645f, -1069f, -1449f, 1000f, -1160f, -509f, 1067f, 1409f, 1244f, 774f, 1255f, 1275f, -110f, -1272f, 541f, -1932f, 674f, -106f, 1000f, -804f, 1202f, 247f, 1483f, 1385f, 390f, 911f);

var<private> global2: vec3<i32> = vec3<i32>(-21773i, -1i, -59949i);

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = vec4<u32>(1u, arg_1.a, countOneBits(~17939u) << (u_input.b % 32u), ~(~72966u));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~global3.a, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45760u, global0.x, 0u), global3.c), _wgslsmith_dot_vec4_u32(arg_1.c, global3.c), ~reverseBits(34290u))), global0.zz);
    var var_2 = u_input.c.wyw;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, _wgslsmith_div_u32(4294967295u, 6416u), _wgslsmith_mult_u32(1u, global3.c.x)), global3.c) >> (select(~global3.a, arg_1.a, any(select(!arg_1.b.xx, vec2<bool>(true, false), vec2<bool>(true, true)))) % 32u), 23u)];
    let var_4 = Struct_1(max(43162u, 0u), !vec4<bool>(arg_1.b.x, false, global3.b.x, !global3.b.x), arg_1.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -912f) >= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(17229u, _wgslsmith_sub_u32(global0.x, 4294967295u)), 32u)]);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    var var_0 = u_input.b;
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_2 = !(!func_3(~(-65108i), Struct_1(4294967295u, global3.b, min(vec4<u32>(56231u, 5394u, global0.x, 0u), global3.c))));
    return global4[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(min(global0.x, 4294967295u), u_input.b))), 23u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> bool {
    return global0.x != firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~global3.c.wxw, select(vec3<u32>(0u, 0u, u_input.a), global3.c.zwy, vec3<bool>(true, true, global3.b.x)), vec3<u32>(global0.x, 121722u, 29938u)), arg_1.c.zzx));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = false;
    let var_1 = u_input.b;
    let var_2 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global3.c, vec4<u32>(20921u, 0u, global3.c.x, 0u)), global3.c & _wgslsmith_sub_vec4_u32(global3.c, vec4<u32>(global3.a, u_input.b, 0u, 4294967295u))), vec4<bool>(!(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(10616i, global2.x)) < -1i), global3.b.x, arg_0, (~1u | (arg_3 & 60941u)) > 36937u), global3.c | reverseBits(global3.c << (global3.c % vec4<u32>(32u))));
    let var_3 = any(vec3<bool>(func_4(false, func_2(arg_1.x), all(select(var_2.b, var_2.b, false))), !(abs(1i) <= -u_input.c.x), var_2.b.x));
    var var_4 = global4[_wgslsmith_index_u32(1u, 23u)];
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(75358u, 40825u, max(4294967295u, global0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global3.c.xx, global0.xx), ~var_4.a, _wgslsmith_add_u32(global3.a, var_1))), global3.c), func_2(-6852i).b, vec4<u32>(~var_1, global0.x, firstLeadingBit(u_input.b), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(22323u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(18089u, global0.x, 29726u, 73771u), global3.c), (global3.c.x << (global0.x % 32u)) ^ 37735u, global0.x), firstTrailingBit(global3.c)) ^ ~(~vec4<u32>(abs(u_input.b), 55179u >> (global0.x % 32u), ~4294967295u, 4294967295u));
    var var_1 = global4[_wgslsmith_index_u32(select(1u, var_0.x, global3.b.x), 23u)];
    global4 = array<Struct_1, 23>();
    let var_2 = func_1(global3.b.x, _wgslsmith_mult_vec4_i32(max(~vec4<i32>(u_input.c.x, global2.x, 2147483647i, -1i), u_input.c), vec4<i32>(~(global2.x & -34019i), _wgslsmith_div_i32(0i, 11085i) >> (~4294967295u % 32u), _wgslsmith_mod_i32(max(0i, global2.x), -29307i), 0i)), true, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5766u, 32u)] + global1[_wgslsmith_index_u32(var_1.c.x, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 32u)])), -1005f)), 8947i, min(~_wgslsmith_clamp_u32(88078u, var_1.c.x, var_2.c.x) ^ select(_wgslsmith_mult_u32(var_0.x, 122933u), abs(57187u), true), u_input.b), ~(1u | var_1.c.x) | ~1u, ~min(var_0.zwx, var_1.c.xyx) & ~(var_0.xwz | ~vec3<u32>(var_0.x, 21552u, u_input.b)));
}

