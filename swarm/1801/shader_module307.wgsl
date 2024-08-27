struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    global1 = vec2<u32>(~(~0u), 4294967295u) ^ ((arg_1.a.yz ^ vec2<u32>(global1.x, _wgslsmith_div_u32(59186u, u_input.b.x))) << (global0.a.zw % vec2<u32>(32u)));
    let var_0 = 1u;
    let var_1 = arg_1.a.zwx;
    let var_2 = Struct_1(global0.a, arg_1.b, false, !select(vec3<bool>(20107u != var_0, true, true), vec3<bool>(!global2.d.x, !global2.e.x, arg_0.x >= arg_0.x), !(global0.d.x | false)), !global2.d);
    let var_3 = ~firstLeadingBit(firstLeadingBit(vec2<u32>(global1.x, _wgslsmith_sub_u32(arg_0.x, 70860u))));
    return _wgslsmith_f_op_f32(-var_2.b) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))) * global2.b);
}

fn func_2() -> f32 {
    global0 = Struct_1(global2.a, -1000f, all(global0.e.xy), vec3<bool>(select(func_3(_wgslsmith_div_vec2_u32(global2.a.ww, vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(global2.a, -707f, global0.d.x, vec3<bool>(true, global2.c, true), vec3<bool>(true, true, false)), global0.e), true, global0.d.x), global0.d.x, global0.d.x), global2.e);
    let var_0 = 1000f < global2.b;
    global0 = Struct_1(vec4<u32>(4294967295u, ~131360u & (firstLeadingBit(global0.a.x) & u_input.b.x), ~firstLeadingBit(select(global0.a.x, global2.a.x, global0.c)), 1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(2400f)))), -1041f)), any(!vec3<bool>(global2.d.x, select(var_0, global2.c, global0.e.x), global0.c)), select(vec3<bool>(!var_0 == any(vec4<bool>(var_0, true, global2.c, false)), !global0.e.x, global2.d.x), global2.d, _wgslsmith_f_op_f32(f32(-1f) * -917f) == global0.b), !select(select(!global2.e, !global2.d, !vec3<bool>(global2.d.x, false, var_0)), global2.e, reverseBits(16242u) == u_input.b.x));
    var var_1 = Struct_1(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, global1.x, 27122u, global0.a.x), global2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(global2.b - global2.b))))), false, global2.d, select(vec3<bool>(!all(vec4<bool>(false, var_0, global2.d.x, var_0)), global0.d.x, true), global2.e, true));
    global3 = array<vec3<u32>, 6>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b)) * 111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(floor(global0.b))))), -1479f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(47399u, 10713u))), vec2<u32>(_wgslsmith_mod_u32(global1.x & 0u, countOneBits(global2.a.x)), 1u)), vec2<u32>(global2.a.x | 4294967295u, 0u) ^ global2.a.xz);
    var_0 = ~1u;
    let var_1 = true;
    let var_2 = countOneBits(_wgslsmith_clamp_i32(~arg_1, arg_1, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_1, u_input.a.x)), reverseBits(u_input.a & u_input.a))));
    var_0 = _wgslsmith_div_u32(u_input.c.x, global0.a.x);
    return Struct_1(_wgslsmith_div_vec4_u32(global2.a, firstLeadingBit(vec4<u32>(4294967295u, arg_2.a.x, global1.x, 4294967295u)) | ~(~vec4<u32>(global0.a.x, global1.x, 72390u, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global0.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global0.b))), arg_2.d.x, global2.d, vec3<bool>(select(global2.e.x, func_3(u_input.c.xx, Struct_1(global0.a, global2.b, false, vec3<bool>(var_1, true, var_1), global2.d), select(vec3<bool>(true, true, true), global2.d, global0.e.x)), !all(global2.d)), true, true));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = !(!any(select(select(vec4<bool>(false, global0.d.x, global0.c, false), vec4<bool>(global2.d.x, false, global0.e.x, arg_2.x), arg_2.x), select(vec4<bool>(false, global2.e.x, arg_2.x, arg_2.x), vec4<bool>(global0.e.x, global0.d.x, false, true), false), select(vec4<bool>(true, false, global0.c, true), vec4<bool>(global0.e.x, false, true, global0.e.x), vec4<bool>(false, false, global0.e.x, false)))));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-749f * global2.b), global0.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 32249i, -9773i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)) ^ ~u_input.a.x, u_input.a.x, select(select(75688i, 21774i, false), -u_input.a.x, !var_0)), ~(-(vec4<i32>(56981i, u_input.a.x, -27950i, u_input.a.x) | vec4<i32>(18420i, -4165i, -5421i, u_input.a.x)))), Struct_1(~(vec4<u32>(global1.x, 0u, arg_1, arg_1) & _wgslsmith_mod_vec4_u32(u_input.b, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-global2.b))), !(!(!global0.e.x)), select(!select(vec3<bool>(true, false, global2.d.x), vec3<bool>(true, global2.c, global2.d.x), false), global2.d, vec3<bool>(global0.c, false, all(global2.d.zx))), !vec3<bool>(var_0, any(vec3<bool>(global2.d.x, true, var_0)), true)));
    let var_2 = func_4(-1505f, 1i, func_4(-163f, -min(~u_input.a.x, reverseBits(u_input.a.x)), func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_mod_i32(21449i, _wgslsmith_sub_i32(23850i, 7728i)), func_4(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_i32(-2147483647i, u_input.a.x), func_4(var_1.b, u_input.a.x, var_1)))));
    global0 = func_4(_wgslsmith_f_op_f32(trunc(arg_0.x)), ~_wgslsmith_mod_i32(17491i, u_input.a.x), func_4(var_1.b, u_input.a.x, var_2));
    var var_3 = func_4(_wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_mult_i32(36790i, -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + global0.b))), u_input.a.x, func_4(-1000f, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -5979i, -2147483647i), vec3<i32>(23570i, 0i, u_input.a.x)) >> (_wgslsmith_mod_u32(u_input.b.x, var_1.a.x) % 32u), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, global0.a.x, 45576u, u_input.b.x), vec4<u32>(56240u, 4294967295u, 4294967295u, var_1.a.x)), _wgslsmith_f_op_f32(round(-134f)), arg_2.x & true, !vec3<bool>(arg_2.x, var_1.e.x, false), vec3<bool>(arg_2.x, var_1.d.x, true)))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<u32>(global2.a.x, u_input.c.x));
    global1 = vec2<u32>(_wgslsmith_add_u32(~global1.x, ~global2.a.x), _wgslsmith_div_u32(countOneBits(0u), ~_wgslsmith_mult_u32(func_1(vec4<f32>(-1365f, global2.b, global2.b, global2.b), global1.x, vec3<bool>(global0.c, global2.c, global2.e.x)), 135809u)));
    var var_1 = ~(~min(u_input.a.x, u_input.a.x));
    let var_2 = select(select(select(!(!vec4<bool>(global0.e.x, true, false, global2.e.x)), !vec4<bool>(global2.c, false, true, false), !vec4<bool>(false, global2.c, global0.c, false)), vec4<bool>(true, false, !global0.d.x != true, false), select(vec4<bool>(true, false, global2.d.x, global2.e.x), !(!vec4<bool>(global2.d.x, true, false, global2.e.x)), func_4(_wgslsmith_f_op_f32(-global0.b), -10302i, func_4(global2.b, 2147483647i, Struct_1(vec4<u32>(4294967295u, 30467u, 1u, global1.x), -316f, global0.d.x, global2.d, global0.d))).c)), vec4<bool>(global2.e.x, true, !all(!global0.e.zx), any(func_4(_wgslsmith_f_op_f32(select(-1007f, global2.b, true)), _wgslsmith_div_i32(2796i, -2147483647i), Struct_1(u_input.b, global2.b, true, global0.e, vec3<bool>(true, global0.d.x, true))).d.xx)), any(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), -2147483647i, func_4(global0.b, 2147483647i, Struct_1(global2.a, global0.b, true, vec3<bool>(false, global0.e.x, global2.c), global0.d))).d.xy));
    var_0 = global2.a.xx & vec2<u32>(28541u, ~(~_wgslsmith_dot_vec3_u32(global0.a.zwy, global3[_wgslsmith_index_u32(4294967295u, 6u)])));
    global3 = array<vec3<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, global2.b))), global0.b, 472f, -149f)));
}

