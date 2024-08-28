struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-u_input.e), 1i), min(abs(vec2<i32>(-1i, u_input.e) & vec2<i32>(-1i, u_input.e)), vec2<i32>(-global0[_wgslsmith_index_u32(16056u, 7u)], -1i))), 1i);
    var var_1 = Struct_2(Struct_1(firstTrailingBit(-u_input.e), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, true, true)), true))), Struct_1(countOneBits(-min(1i, u_input.e)), vec2<bool>(true, true)), select(~u_input.a, ~(~u_input.b.x), select(false, (1i & global0[_wgslsmith_index_u32(u_input.d, 7u)]) != (u_input.e << (u_input.c % 32u)), _wgslsmith_f_op_f32(floor(578f)) > 613f)));
    global0 = array<i32, 7>();
    var var_2 = Struct_2(var_1.b, var_1.a, var_1.c);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1040f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f + 465f)))))));
    return var_1.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = array<i32, 7>();
    var var_0 = Struct_2(Struct_1(-2318i << (~firstLeadingBit(u_input.d) % 32u), select(select(func_2().b, arg_2.b, any(arg_0)), select(select(vec2<bool>(arg_1, true), arg_0.yx, vec2<bool>(arg_1, true)), !arg_2.b, all(arg_2.b)), !(!vec2<bool>(arg_2.b.x, arg_0.x)))), func_2(), ~(9929u >> ((56773u & (u_input.d | 27272u)) % 32u)));
    let var_1 = select(~(~reverseBits(min(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_sub_vec2_u32(countOneBits(u_input.b.ww), vec2<u32>(~1u, 0u)), any(vec3<bool>(false, func_2().b.x, true)));
    let var_2 = Struct_2(arg_2, Struct_1(arg_2.a, vec2<bool>(select(true, arg_2.a == -27898i, !arg_0.x), arg_0.x)), u_input.d);
    var var_3 = var_0.a;
    return u_input.e;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(func_3(vec3<bool>(any(vec2<bool>(false, false)) || false, true, false), (-global0[_wgslsmith_index_u32(0u, 7u)] > global0[_wgslsmith_index_u32(43706u, 7u)]) || true, func_2()), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), any(vec2<bool>(true, true))));
    let var_1 = u_input.a;
    global0 = array<i32, 7>();
    var var_2 = var_0.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-245f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-154f * -197f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    let var_0 = u_input.e | _wgslsmith_div_i32(1i, u_input.e);
    let var_1 = ~firstTrailingBit(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.zyw >> (vec3<u32>(u_input.c, 4294967295u, u_input.d) % vec3<u32>(32u)))));
    var var_2 = false;
    let var_3 = max(vec3<u32>(var_1, _wgslsmith_mod_u32(~countOneBits(var_1), ~abs(27895u)), abs(26504u)), u_input.b.xxw);
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(abs(select((vec2<i32>(u_input.e, u_input.e) ^ vec2<i32>(var_0, global0[_wgslsmith_index_u32(0u, 7u)])) & _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_5.a), vec2<i32>(u_input.e, var_5.a)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(0i, 1665i)), vec2<i32>(-1i, global0[_wgslsmith_index_u32(88425u, 7u)]) << (u_input.b.xz % vec2<u32>(32u))), any(!vec3<bool>(false, var_5.b.x, false)))));
}

