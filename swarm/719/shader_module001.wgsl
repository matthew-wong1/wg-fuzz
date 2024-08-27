struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<u32>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    global0 = arg_0.b.b;
    var var_0 = Struct_2(1u, Struct_1(min(vec3<u32>(abs(0u), global0.c.x << (1u % 32u), countOneBits(global0.c.x)), ~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(min(global0.b, arg_0.b.b.b)), ~global2[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-658f)) * global0.d))), select(global1.wy, arg_0.b.c, any(select(global1.ww, !vec2<bool>(true, global1.x), all(vec4<bool>(true, false, global1.x, false))))));
    var var_1 = global1.zww;
    var var_2 = arg_0;
    var var_3 = Struct_3(select(67850u, global0.c.x & _wgslsmith_mult_u32(1u, 27688u), true), Struct_2(arg_0.a, var_2.b.b, !select(vec2<bool>(true, true), !var_1.zy, 19752u > global0.a.x)), min(~(31716i | arg_0.c) >> (0u % 32u), u_input.d.x));
    return -select(-(35120i & ~var_3.c), -var_2.c, global1.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(select(global0.a.x, 32713u, any(!vec4<bool>(true, true, global1.x, false)) & true), Struct_2(u_input.a.x, Struct_1(max(~global0.c, countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 28u)])), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.b))), max(firstLeadingBit(vec3<u32>(4294967295u, 1u, 0u)), reverseBits(u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(max(global0.b.x, global0.d)))), global1.wy), _wgslsmith_add_i32(~u_input.c, ~func_3(Struct_3(52553u, Struct_2(1u, Struct_1(global0.a, global0.b, u_input.a, global0.b.x), global1.xx), 2147483647i), false) ^ -21919i));
    var var_1 = Struct_3(_wgslsmith_clamp_u32(0u, 32852u, ~31447u), var_0.b, u_input.c);
    var var_2 = ~(~(abs(var_1.b.b.c) ^ vec3<u32>(39104u, ~var_0.a, ~4294967295u)));
    var var_3 = Struct_3(max(var_0.a, 27928u) ^ ~(~u_input.a.x), Struct_2(var_0.b.b.c.x ^ u_input.a.x, Struct_1(reverseBits(select(vec3<u32>(47369u, 38362u, var_2.x), u_input.a, global1.wxx)), _wgslsmith_f_op_vec3_f32(-global0.b), vec3<u32>(var_2.x, _wgslsmith_clamp_u32(var_0.a, 0u, u_input.a.x), _wgslsmith_sub_u32(var_2.x, global0.c.x)), _wgslsmith_f_op_f32(min(-1072f, _wgslsmith_f_op_f32(var_1.b.b.d + 775f)))), select(select(var_1.b.c, select(vec2<bool>(true, var_0.b.c.x), var_1.b.c, global1.x), vec2<bool>(false, true)), select(vec2<bool>(global1.x, var_1.b.c.x), vec2<bool>(var_0.b.c.x, global1.x), vec2<bool>(global1.x, false)), global1.x)), u_input.d.x);
    var var_4 = var_1.b;
    return Struct_3(1u, var_3.b, -14495i);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec2<bool>(!arg_1.b.c.x, all(select(!(!vec4<bool>(true, global1.x, false, false)), !vec4<bool>(global1.x, arg_1.b.c.x, true, arg_1.b.c.x), !(!vec4<bool>(false, global1.x, arg_1.b.c.x, false)))));
    var var_1 = var_0;
    let var_2 = arg_1.b;
    global2 = array<vec3<u32>, 28>();
    global1 = select(select(!(!vec4<bool>(arg_1.b.c.x, false, var_0.x, false)), select(vec4<bool>(var_0.x | global1.x, true, global1.x, false), select(vec4<bool>(true, false, true, var_2.c.x), vec4<bool>(false, var_2.c.x, true, var_1.x), true), select(!vec4<bool>(var_1.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, arg_1.b.c.x), global1.x || var_2.c.x)), select(!vec4<bool>(arg_1.b.c.x, false, var_0.x, false), select(select(vec4<bool>(var_0.x, false, true, var_1.x), vec4<bool>(global1.x, var_0.x, var_1.x, global1.x), var_2.c.x), !vec4<bool>(false, var_1.x, global1.x, false), any(global1.yz)), true)), !vec4<bool>(true | (u_input.b != u_input.d.x), any(vec4<bool>(true, arg_1.b.c.x, var_0.x, false)), !var_2.c.x, true), false);
    return arg_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f + -1050f) + global0.b.x);
    var var_1 = func_4(0u, func_2());
    global1 = select(!vec4<bool>(~global0.a.x > ~1u, arg_0.x <= ~var_1.a, global1.x, false), !vec4<bool>(!all(vec2<bool>(arg_1, true)), func_4(~global0.a.x, func_2()).b.c.x, ~u_input.a.x <= global0.c.x, !var_1.b.c.x | global1.x), any(global1.xyz));
    var var_2 = var_1.b.b;
    var var_3 = vec4<bool>(all(select(vec4<bool>(!var_1.b.c.x, true, 1i > u_input.d.x, var_2.a.x <= global0.c.x), select(vec4<bool>(global1.x, false, true, var_1.b.c.x), select(vec4<bool>(false, arg_1, false, true), vec4<bool>(true, global1.x, global1.x, false), false), select(vec4<bool>(arg_1, false, var_1.b.c.x, false), vec4<bool>(true, global1.x, global1.x, arg_1), vec4<bool>(arg_1, global1.x, true, arg_1))), !vec4<bool>(arg_1, false, global1.x, true))), func_2().b.c.x, _wgslsmith_f_op_f32(var_2.d - var_1.b.b.d) == _wgslsmith_f_op_f32(func_2().b.b.d * -1454f), !(!func_4(arg_0.x | arg_0.x, Struct_3(4294967295u, Struct_2(global0.c.x, Struct_1(global2[_wgslsmith_index_u32(0u, 28u)], var_2.b, vec3<u32>(54221u, 13925u, u_input.a.x), var_0), vec2<bool>(false, arg_1)), 41201i)).b.c.x));
    return firstLeadingBit(max(vec3<u32>(0u, ~(~45379u), u_input.a.x), abs(var_1.b.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(~1u, 28u)], select(~global0.c, reverseBits(u_input.a), global1.wwy)), vec3<f32>(_wgslsmith_div_f32(-374f, global0.b.x), _wgslsmith_f_op_f32(-global0.d), global0.b.x), _wgslsmith_div_vec3_u32(~func_1(~vec3<u32>(u_input.a.x, global0.a.x, 36360u), -1000f > global0.d), abs(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(max(-1044f, 1553f))), 1247f) - _wgslsmith_f_op_f32(ceil(2631f))));
    let var_0 = -vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(u_input.d.x, -59640i)), _wgslsmith_clamp_i32(-2147483647i, u_input.c, 0i)), 1i));
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(30376u, min(u_input.a.x, global0.a.x) & ~10283u, 6159u, 47818u), ~(~max(vec4<u32>(72024u, u_input.a.x, 4294967295u, global0.c.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(4294967295u)));
}

