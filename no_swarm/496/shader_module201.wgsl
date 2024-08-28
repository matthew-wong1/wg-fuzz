struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(532f, 427f, 931f, 528f);

var<private> global1: Struct_2;

var<private> global2: array<i32, 5> = array<i32, 5>(-6484i, -1i, i32(-2147483648), -1i, 9490i);

var<private> global3: array<Struct_2, 22>;

var<private> global4: array<vec4<i32>, 2>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global4 = array<vec4<i32>, 2>();
    let var_0 = Struct_1(~reverseBits(~26196u), global1.b.b, ~(~global1.a));
    var var_1 = ~select(u_input.d.zx, firstTrailingBit(u_input.a ^ _wgslsmith_mod_vec2_u32(u_input.a, u_input.d.zy)), !vec2<bool>(!var_0.b, all(vec3<bool>(global1.b.b, global1.c.b, false))));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~u_input.d.x, 1u), var_0.c) << (u_input.d.xx % vec2<u32>(32u)), u_input.a), 22u)];
    var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u) | vec4<u32>(3257u, var_1.x, global1.d.a, var_1.x), max(vec4<u32>(4294967295u, u_input.c, u_input.c, var_1.x), vec4<u32>(9745u, 0u, 35144u, u_input.a.x))), _wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.x, var_1.x), 4294967295u | var_1.x)), u_input.c), global1.d, global1.b, var_0);
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -390f, 1659f, -2030f);
    let var_1 = vec4<bool>(func_3(), false, global0.x == _wgslsmith_f_op_f32(ceil(global0.x)), global1.c.b);
    global1 = global3[_wgslsmith_index_u32(45777u, 22u)];
    global1 = Struct_2(_wgslsmith_mult_u32(1u, 0u), Struct_1(~(~(~global1.c.c)), true, _wgslsmith_div_u32(max(global1.d.a, 63919u), global1.b.c ^ 0u) ^ u_input.a.x), Struct_1(73797u, !(global2[_wgslsmith_index_u32(1u, 5u)] < (global2[_wgslsmith_index_u32(10931u, 5u)] ^ u_input.b)), countOneBits(_wgslsmith_mult_u32(0u, 4294967295u))), global1.c);
    return Struct_1(87287u, false, 4294967295u);
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_2(~min(3050u, ~(~global1.b.a)), global1.d, func_2(), Struct_1(4294967295u, !(!global1.d.b & false), ~(~_wgslsmith_div_u32(u_input.c, 0u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1725f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1832f + global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -505f), -282f)))));
    let var_2 = Struct_1(~(~u_input.c & firstTrailingBit(~var_0.a)), global1.c.b, 0u);
    global1 = Struct_2(var_2.a, Struct_1(_wgslsmith_add_u32(1u << (0u % 32u), 0u), max(~u_input.d.x, 4294967295u & u_input.d.x) != ~countOneBits(1u), _wgslsmith_add_u32(~64569u, _wgslsmith_clamp_u32(4294967295u, ~var_0.d.a, _wgslsmith_div_u32(86671u, u_input.c)))), var_0.b, func_2());
    var var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, ~(~62545u)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.xy, vec2<u32>(var_0.a, 56225u), u_input.d.yz) ^ abs(vec2<u32>(4294967295u, var_2.c)), abs(select(vec2<u32>(global1.d.c, 4294967295u), vec2<u32>(var_0.b.c, 86747u), vec2<bool>(true, var_0.c.b)))), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(var_2.a, global1.c.c), u_input.d.yx, !var_2.b), ~u_input.d.yx & vec2<u32>(4294967295u, 1u), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.a, var_0.d.c), vec2<u32>(var_0.b.c, 4294967295u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.a), ~u_input.a), vec2<u32>(firstTrailingBit(u_input.d.x), _wgslsmith_add_u32(62374u, u_input.c))) & u_input.d.xy);
    return -_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-global2[_wgslsmith_index_u32(var_3.x, 5u)], u_input.e.x, 1i)), _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.e), u_input.e) << (_wgslsmith_div_vec3_u32(vec3<u32>(10456u, var_2.c, var_0.d.a), u_input.d) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(u_input.e.x, u_input.e.x), -31916i, abs(31336i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.d.x, 5u)] | 1i, ~global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), abs(u_input.e)), u_input.e, -u_input.e), func_1());
    global1 = Struct_2(32955u, global1.b, func_2(), func_2());
    global3 = array<Struct_2, 22>();
    global4 = array<vec4<i32>, 2>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x);
    global3 = array<Struct_2, 22>();
    let var_2 = Struct_1(abs(firstTrailingBit(u_input.d.x)), global1.b.b, select(func_2().a, ~u_input.a.x, func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, firstTrailingBit(u_input.a), var_1, _wgslsmith_mult_u32(firstTrailingBit(~u_input.c << (abs(global1.b.a) % 32u)), 12412u));
}

