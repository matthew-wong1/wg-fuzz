struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
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

var<private> global0: array<vec2<u32>, 29>;

var<private> global1: bool;

var<private> global2: array<i32, 12> = array<i32, 12>(2147483647i, -27818i, -56710i, -26265i, -320i, 23898i, -674i, 0i, 35602i, -6481i, 2147483647i, 40357i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = 4294967295u;
    global1 = false;
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0, var_0, 57778u, var_0)), vec4<u32>(46559u, 4294967295u, 0u, 0u) << (vec4<u32>(4294967295u, var_0, var_0, 12011u) % vec4<u32>(32u)))), ~(~vec4<u32>(var_0, 1u, var_0, var_0))), countOneBits(vec4<u32>(~_wgslsmith_add_u32(var_0, 0u), 1u, _wgslsmith_sub_u32(~0u, var_0), 4294967295u)));
    let var_2 = Struct_4(vec3<bool>(any(vec3<bool>(1i == arg_0, any(vec4<bool>(true, false, true, false)), true)), all(vec3<bool>(true, true, true)) && true, false), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))), true), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.yx >> (var_1.xz % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~0u, 29u)]), ~(~global0[_wgslsmith_index_u32(4294967295u, 29u)])), 12u)], !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    global0 = array<vec2<u32>, 29>();
    return var_1.yzy;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(0u, 4294967295u, 93789u) | func_3(u_input.a), ~vec3<u32>(3178u, 1u, 11134u), false), ~(~(~vec3<u32>(4294967295u, 1u, 82926u)))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(countOneBits(~10831u), ~select(1u, 6269u, arg_2), _wgslsmith_mult_u32(1u, 1u))));
    var var_1 = Struct_2(Struct_1(select(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 12u)] >> (19418u % 32u), global2[_wgslsmith_index_u32(19561u >> (var_0.x % 32u), 12u)]), max(-vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 12u)], 2147483647i), -vec2<i32>(0i, u_input.a)), arg_1.d.yy), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(53803i, -14226i, 26501i, u_input.a)), vec4<i32>(-46244i, global2[_wgslsmith_index_u32(21805u, 12u)], 31711i, u_input.a)), abs(vec4<i32>(u_input.a, 42197i, global2[_wgslsmith_index_u32(66824u, 12u)], -27146i))), ~(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c, u_input.a, 27864i), vec3<i32>(-12833i, -2147483647i, 0i)) << (~vec3<u32>(var_0.x, 0u, 0u) % vec3<u32>(32u))), arg_2));
    var var_2 = ~(-_wgslsmith_mod_i32(0i, -18222i)) > arg_1.c;
    var var_3 = -vec4<i32>(var_1.a.c.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 15609i), i32(-1i) * -u_input.a), 2147483647i, -var_1.a.c.x >> (~reverseBits(var_0.x) % 32u));
    var var_4 = ~(-20633i >> (abs(1u) % 32u));
    return -u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(func_2(false, Struct_4(vec3<bool>(false, false, true), vec2<bool>(false, true), -2147483647i, vec3<bool>(false, false, true)), false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50514u, 20100u, 4273u), vec3<u32>(14893u, 25399u, 12639u)), 12u)]) >> (1u % 32u), u_input.a), ~abs(vec4<i32>(min(u_input.a, 11103i), ~15119i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-95708i, -44321i, 58810i, 0i), vec4<i32>(-34370i, global2[_wgslsmith_index_u32(1u, 12u)], u_input.a, global2[_wgslsmith_index_u32(0u, 12u)])))), countOneBits(vec3<i32>(-u_input.a, ~(-u_input.a), global2[_wgslsmith_index_u32(~(~0u), 12u)])), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    var var_1 = Struct_2(Struct_1(abs(countOneBits(min(var_0.b.wx, vec2<i32>(0i, global2[_wgslsmith_index_u32(6273u, 12u)])))), var_0.b, vec3<i32>(-1i) * -var_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), -1299f)) != -551f));
    var var_2 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(~34879i, var_1.a.a.x)), var_1.a.b, var_1.a.b.yzy, !(!all(vec2<bool>(var_0.d, true)))));
    let var_3 = ~65996u;
    var_0 = var_2.a;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 12>();
    global0 = array<vec2<u32>, 29>();
    let var_0 = 669f;
    var var_1 = Struct_2(func_1());
    global1 = any(select(!(!(!vec3<bool>(false, var_1.a.d, var_1.a.d))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.a.d, var_1.a.d), vec3<bool>(var_1.a.d, var_1.a.d, false)), !vec3<bool>(var_1.a.d, false, var_1.a.d), true), !select(vec3<bool>(var_1.a.d, true, var_1.a.d), vec3<bool>(true, var_1.a.d, false), vec3<bool>(true, var_1.a.d, var_1.a.d)), !select(vec3<bool>(false, var_1.a.d, true), vec3<bool>(false, true, var_1.a.d), vec3<bool>(false, var_1.a.d, var_1.a.d))), vec3<bool>(all(!vec4<bool>(var_1.a.d, true, var_1.a.d, true)), var_1.a.d, true)));
    var var_2 = Struct_2(func_1());
    global1 = true;
    var var_3 = !(!select(!(!vec3<bool>(false, false, var_2.a.d)), select(select(vec3<bool>(var_2.a.d, true, var_2.a.d), vec3<bool>(false, true, false), vec3<bool>(var_2.a.d, false, true)), select(vec3<bool>(var_2.a.d, true, var_1.a.d), vec3<bool>(true, false, false), var_2.a.d), var_0 <= 309f), !select(vec3<bool>(false, true, var_2.a.d), vec3<bool>(var_1.a.d, false, false), vec3<bool>(false, true, var_1.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(u_input.a, var_2.a.b.x, firstLeadingBit(-1i)), vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5224u, 4294967295u, 1u), 12u)], func_1().b.x, 1i), vec3<bool>(!(233f == var_0), any(select(vec2<bool>(var_3.x, true), var_3.zx, false)), 10474u <= _wgslsmith_dot_vec3_u32(vec3<u32>(45325u, 0u, 0u), vec3<u32>(4294967295u, 15522u, 0u)))));
}

