struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(vec3<bool>(!any(vec3<bool>(global1.a.x, global1.a.x, true)) && all(global1.a.yz), !(global1.a.x | global1.a.x) && (!global1.a.x & select(global1.a.x, true, false)), global1.a.x));
    var var_1 = vec3<bool>(any(!vec3<bool>(var_0.a.x, var_0.a.x, u_input.c <= u_input.d.x)), true, global1.a.x);
    let var_2 = !select(vec4<bool>(true, var_0.a.x, false, any(vec2<bool>(var_1.x, var_1.x))), !vec4<bool>(u_input.b.x <= 1u, var_0.a.x, any(global1.a), select(global1.a.x, true, false)), vec4<bool>(false, true, false, global1.a.x));
    let var_3 = Struct_1(select(var_2.zwx, vec3<bool>(var_2.x, max(-35484i, -2147483647i) < ~u_input.e.x, true), select(vec3<bool>(select(false, false, false), var_0.a.x, 13403i == u_input.a), select(!vec3<bool>(global1.a.x, false, false), vec3<bool>(var_2.x, var_2.x, var_1.x), var_0.a), any(!var_2.zz))));
    let var_4 = global0[_wgslsmith_index_u32(~u_input.b.x, 18u)];
    return _wgslsmith_div_vec4_i32(-vec4<i32>(abs(~(-22609i)), _wgslsmith_div_i32(countOneBits(u_input.c), -1i), -2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(u_input.c, u_input.e.x))), (abs(-vec4<i32>(u_input.a, -16660i, 55170i, u_input.c)) << (vec4<u32>(u_input.b.x, u_input.b.x | u_input.b.x, ~1u, ~4294967295u) % vec4<u32>(32u))) >> ((abs(~vec4<u32>(77548u, u_input.b.x, 21305u, u_input.b.x)) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(4294967295u, 37077u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 18>();
    var var_0 = u_input.e;
    var_0 = func_3();
    global0 = array<Struct_1, 18>();
    var var_1 = -1i >> (~abs(4294967295u) % 32u);
    return _wgslsmith_add_u32(abs(1u), arg_1.x);
}

fn func_1() -> i32 {
    var var_0 = func_2(global1.a.x, firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, 34194u, u_input.b.x, 1u)) >> (vec4<u32>(u_input.b.x, 129832u, u_input.b.x, 1u) % vec4<u32>(32u))) & vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 30738u), u_input.b), ~u_input.b.x, ~(36248u | u_input.b.x)));
    var var_1 = global0[_wgslsmith_index_u32(88046u, 18u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1108f * -458f)))))) + 830f);
    var_0 = firstTrailingBit(u_input.b.x);
    var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, ~14427u), ~u_input.b.x);
    return -_wgslsmith_dot_vec2_i32(vec2<i32>(-(u_input.e.x >> (u_input.b.x % 32u)), ~u_input.d.x), vec2<i32>(max(select(u_input.e.x, u_input.a, true), 7705i), 5504i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u << ((_wgslsmith_div_u32(~(~13372u), 4294967295u) | u_input.b.x) % 32u), 18u)];
    global0 = array<Struct_1, 18>();
    global1 = global0[_wgslsmith_index_u32(u_input.b.x, 18u)];
    let var_1 = ~vec2<i32>(func_1(), u_input.e.x >> (14514u % 32u));
    global1 = Struct_1(select(global1.a, global1.a, !select(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), select(global1.a, global1.a, vec3<bool>(var_0.a.x, var_0.a.x, false)), false)));
    global1 = Struct_1(select(vec3<bool>(!(!var_0.a.x), any(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)), ~u_input.b.x < (u_input.b.x | u_input.b.x)), vec3<bool>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1712f) < _wgslsmith_f_op_f32(floor(-402f)), var_0.a.x), select(!select(var_0.a, global1.a, vec3<bool>(true, var_0.a.x, var_0.a.x)), !(!vec3<bool>(global1.a.x, false, global1.a.x)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 27649u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
}

