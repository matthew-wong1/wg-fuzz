struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(-580f));
    var var_1 = select(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true)), vec3<bool>(_wgslsmith_f_op_f32(floor(var_0)) < _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_add_i32(13462i, u_input.b) == firstLeadingBit(u_input.b), select(false, true, false))), !select(vec3<bool>(all(vec2<bool>(false, true)), false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(any(vec2<bool>(true, true)), false, true)));
    let var_2 = Struct_3(Struct_2(select(var_1.yz, select(var_1.xy, select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x)), true), all(!vec4<bool>(var_1.x, true, var_1.x, var_1.x))), Struct_1(vec2<i32>(47918i, u_input.b | 0i))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), var_0))), vec3<i32>(-1i) * -countOneBits(vec3<i32>(u_input.b, -1i, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, -1i)), Struct_2(vec2<bool>(var_1.x, true), global0[_wgslsmith_index_u32(48095u, 5u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f * _wgslsmith_f_op_f32(var_0 + -320f))))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return var_2.e;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(select(select(arg_1.a, !arg_1.a, arg_1.a.x), select(!arg_1.a, vec2<bool>(false, false), 1u != u_input.c.x), select(vec2<bool>(false, arg_1.a.x), arg_1.a, arg_1.a.x)), arg_1.b), -1974f, ~vec3<i32>(_wgslsmith_clamp_i32(arg_1.b.a.x, u_input.b, u_input.b) | ~arg_0.x, _wgslsmith_mult_i32(-2147483647i, arg_1.b.a.x), arg_1.b.a.x), Struct_2(select(!(!arg_1.a), arg_1.a, arg_1.a.x), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), _wgslsmith_sub_vec2_i32(arg_0.xz, vec2<i32>(0i, -10910i))))), _wgslsmith_f_op_f32(f32(-1f) * -496f));
    let var_1 = var_0.d.a;
    let var_2 = -_wgslsmith_sub_i32(-50261i, -1i) < ~_wgslsmith_mult_i32(-1i, arg_0.x);
    let var_3 = _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(min(1606f, _wgslsmith_f_op_f32(func_3()))));
    var var_4 = any(!vec2<bool>(any(select(vec3<bool>(true, var_2, false), vec3<bool>(arg_1.a.x, true, var_2), true)), false));
    return firstLeadingBit(_wgslsmith_mod_vec4_u32(abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 103136u, 1u), vec4<u32>(u_input.a, 91828u, 1u, u_input.a)), vec4<u32>(u_input.a, 1u, 96680u, 1u))), select(select(vec4<u32>(4294967295u, 8309u, u_input.c.x, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), select(vec4<bool>(var_1.x, false, true, arg_1.a.x), vec4<bool>(var_2, var_0.a.a.x, true, var_1.x), vec4<bool>(false, false, true, arg_1.a.x))), vec4<u32>(~u_input.a, _wgslsmith_div_u32(u_input.c.x, 15016u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 5386u, 4294967295u), vec3<u32>(18253u, 4294967295u, 28327u))), !any(vec2<bool>(true, arg_1.a.x)))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = !vec2<bool>(!(select(true, true, false) || true), any(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), vec4<bool>(false, false, false, arg_2.a.x)), vec4<bool>(true, false, arg_2.a.x, false))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = ~vec2<u32>(select(63486u, arg_0, false) & arg_0, 1u) ^ u_input.c;
    return !(!(!select(select(vec3<bool>(false, arg_2.a.x, arg_2.a.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, arg_2.a.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = true;
    var var_1 = any(select(vec3<bool>(true, false, all(vec3<bool>(true, true, false))), select(func_4(max(4294967295u, 1u), func_2(vec4<i32>(0i, 43219i, u_input.b, -25544i), Struct_2(vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.a, 5u)])), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(u_input.b, -2147483647i)))), vec3<bool>(true, false, all(vec3<bool>(false, true, true))), true), vec3<bool>(false, !any(vec3<bool>(false, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))))));
    var_1 = select(false, true, true) | ((_wgslsmith_div_i32(u_input.b ^ 38680i, -2147483647i) == 10815i) | true);
    let var_2 = select(-vec3<i32>(i32(-1i) * -u_input.b, -1i, -u_input.b), ~(~select(vec3<i32>(28781i, 38123i, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b), false)) | select(select(vec3<i32>(0i, u_input.b, -8473i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(49156i, u_input.b, 25792i)), true), min(abs(vec3<i32>(-2147483647i, u_input.b, 2147483647i)), vec3<i32>(u_input.b, -14064i, -1i)), vec3<bool>(true, true, true)), !(!vec3<bool>(true, true, all(vec4<bool>(true, true, false, true)))));
    global0 = array<Struct_1, 5>();
    return Struct_3(Struct_2(func_4(~(u_input.a >> (1u % 32u)), select(vec4<u32>(u_input.c.x, 81097u, u_input.c.x, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(50406u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a)), true), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-2147483647i, var_2.x)))).xx, global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -555f), vec3<i32>(~u_input.b, -41878i, i32(-1i) * -reverseBits(u_input.b)), Struct_2(vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), func_4(~44723u, vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 58668u), Struct_2(vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.a, 5u)])).x), Struct_1(var_2.xx)), -354f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(13303u, u_input.c.x, u_input.c.x), ~vec3<u32>(1u, 1u, u_input.a))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    var var_2 = func_1();
    var_1 = func_1().d.b;
    let var_3 = vec2<u32>(u_input.c.x, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, _wgslsmith_mult_u32(~(~var_0.x >> (_wgslsmith_mod_u32(29569u, 14559u) % 32u)), ~(101366u | (4294967295u & var_3.x))), var_2.c.yx);
}

