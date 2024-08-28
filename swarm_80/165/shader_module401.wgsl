struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global2: f32;

var<private> global3: i32;

var<private> global4: Struct_2 = Struct_2(1u, vec2<i32>(-42150i, 2147483647i), Struct_1(true, vec4<f32>(1353f, 878f, -1192f, 887f), vec4<bool>(false, false, false, true), vec3<f32>(-758f, 250f, 1526f), -1175f), 1427f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> bool {
    global3 = firstLeadingBit(_wgslsmith_add_i32(-arg_1, -22573i));
    var var_0 = 0i;
    let var_1 = global4.c.b.x;
    let var_2 = Struct_2(68726u, min(global4.b, global4.b), global4.c, global4.d);
    let var_3 = max(~_wgslsmith_add_u32(_wgslsmith_sub_u32(~94942u, ~4294967295u), 31006u), 1u);
    return any(!vec3<bool>(global4.c.a, true, _wgslsmith_f_op_f32(global4.d + 692f) <= _wgslsmith_f_op_f32(f32(-1f) * -573f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_0 = global4.c;
    let var_1 = !any(vec2<bool>(any(vec2<bool>(global4.c.a, var_0.a)), false));
    let var_2 = global4.c;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(global4.c.b.x * _wgslsmith_f_op_f32(abs(arg_0.d.x)));
    let var_1 = vec3<i32>(0i, global1.x, ~(1i << (0u % 32u)));
    let var_2 = vec2<u32>(u_input.a.x << (~_wgslsmith_dot_vec2_u32(vec2<u32>(22741u, 32029u), u_input.a) % 32u), 344u) << (~countOneBits(vec2<u32>(u_input.a.x, countOneBits(0u))) % vec2<u32>(32u));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_3.e))));
    return any(arg_0.c.wy);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(14448u, -_wgslsmith_div_vec2_i32(~vec2<i32>(global1.x, global4.b.x) >> (u_input.a % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_i32(global4.b, global4.b, vec2<i32>(global4.b.x, 0i))), global4.c, -611f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global4.c.e, global4.c.b.x)))) + _wgslsmith_f_op_f32(-var_0.c.e)) + _wgslsmith_f_op_f32(sign(var_0.c.b.x)));
    global2 = 1f;
    let var_2 = reverseBits(-1i);
    var var_3 = select(!global4.c.c, !(!(!vec4<bool>(false, global4.c.c.x, true, false))), func_4(var_0.c, func_3(~_wgslsmith_clamp_i32(global1.x, var_2, var_0.b.x), u_input.a.x)));
    return Struct_2(_wgslsmith_mult_u32(~1u, var_0.a & ~(var_0.a ^ var_0.a)), -select(-max(vec2<i32>(8931i, global4.b.x), global4.b), vec2<i32>(2147483647i, ~var_2), select(!global4.c.c.xz, var_0.c.c.xx, true)), global4.c, 1232f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_add_i32(select(global4.b.x, global4.b.x, !any(global4.c.c) || func_1(select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(17129u, global4.a, global4.a), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), _wgslsmith_add_i32(global1.x, global4.b.x))), -32821i);
    global4 = func_2();
    global4 = Struct_2(firstTrailingBit(~global4.a), -((select(global4.b, vec2<i32>(global1.x, -27628i), vec2<bool>(global4.c.c.x, true)) & max(vec2<i32>(-1i, global4.b.x), global4.b)) | select(vec2<i32>(1i, global4.b.x), global4.b, func_4(global4.c, global0[_wgslsmith_index_u32(71468u, 7u)]))), func_2().c, global4.c.e);
    var var_0 = any(select(vec4<bool>(false, global4.c.a, global4.c.a, (2147483647i & global4.b.x) == _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, 0i), vec3<i32>(global4.b.x, global1.x, global4.b.x))), vec4<bool>(true, false, select(!global0[_wgslsmith_index_u32(26855u, 7u)], -2147483647i >= global4.b.x, func_1(vec3<u32>(4294967295u, 77776u, 26758u), global1.x)), global4.c.a), true));
    var var_1 = -1000f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-854f, global4.c.d.x, false)) * -1347f)), 187f);
    let var_2 = true;
    var var_3 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(max(vec4<u32>(26958u, 37949u, 55687u, 51832u), vec4<u32>(7985u, global4.a, global4.a, 47986u)), vec4<u32>(u_input.a.x, u_input.a.x, 67114u, 6274u), select(vec4<bool>(var_3.c.x, var_3.a, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(true, var_2, true, false), var_3.a)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(global4.a, 0u, u_input.a.x, global4.a), reverseBits(vec4<u32>(4294967295u, 0u, global4.a, 1u))) % vec4<u32>(32u))), u_input.a.x);
}

