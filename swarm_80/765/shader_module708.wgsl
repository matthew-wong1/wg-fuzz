struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global1: i32 = 0i;

var<private> global2: array<bool, 16> = array<bool, 16>(true, false, false, false, true, true, false, true, false, true, true, true, false, true, true, true);

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(firstLeadingBit(vec4<u32>(u_input.b, ~0u ^ ~u_input.a.x, global0.x, u_input.c)), 4294967295u, 0u);
    var_0 = Struct_1(~var_0.a, 46u, ~14493u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1365f))))), any(select(vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.c, 16u)]), any(vec2<bool>(false, false)))) & any(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], false))), 14153i);
    let var_2 = -max(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.d, -global3.x, ~global3.x), ~(~vec3<i32>(var_1.c, 0i, u_input.e))), abs(select(vec3<i32>(var_1.c, var_1.c, 9265i) << (var_0.a.xwy % vec3<u32>(32u)), vec3<i32>(global3.x, -19841i, 0i), true)));
    global0 = ~vec2<u32>(19817u, 4557u) << (reverseBits(~(~abs(vec2<u32>(global0.x, 64070u)))) % vec2<u32>(32u));
    return select(select(vec4<bool>(false, true, var_1.b && var_1.b, all(vec3<bool>(true, true, false))), vec4<bool>(true, !(402f <= var_1.a), var_1.b, true), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), var_1.a < var_1.a, true, global2[_wgslsmith_index_u32(0u, 16u)] | var_1.b), !select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.b, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(true, var_1.b, false, true)), all(select(vec4<bool>(true, true, var_1.b, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], var_1.b), true)))), !select(select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(17227u, 16u)], global2[_wgslsmith_index_u32(var_0.b, 16u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.c, 16u)], false, var_1.b), vec4<bool>(false, true, var_1.b, var_1.b)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], var_1.b, global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(var_1.b, false, global2[_wgslsmith_index_u32(global0.x, 16u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], false, global2[_wgslsmith_index_u32(var_0.c, 16u)], true)), all(vec4<bool>(true, false, false, false))), select(!vec4<bool>(global2[_wgslsmith_index_u32(20388u, 16u)], false, global2[_wgslsmith_index_u32(u_input.c, 16u)], var_1.b), vec4<bool>(var_1.b, true, false, false), true), _wgslsmith_add_u32(var_0.a.x, var_0.c) == countOneBits(var_0.a.x)), vec4<bool>(false, !all(!vec3<bool>(var_1.b, false, true)), false, true));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(809f, all(func_3()), ~global3.x);
    let var_1 = u_input.b;
    let var_2 = global3.xy << (max(vec2<u32>(1u, global0.x) ^ (u_input.a << (~vec2<u32>(24309u, global0.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(global0.x, global0.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, 0u), firstTrailingBit(u_input.a.x), u_input.a.x | 4294967295u))) % vec2<u32>(32u));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(-1016f)));
    global2 = array<bool, 16>();
    return u_input.b;
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(~func_2(), max(7164u, ~global0.x)), _wgslsmith_mult_u32(global0.x | u_input.b, 61709u) << (reverseBits(u_input.c) % 32u), ~_wgslsmith_mult_u32(global0.x, u_input.c), firstTrailingBit(22809u ^ u_input.b)), ~(~4294967295u), _wgslsmith_clamp_u32(1u, global0.x, global0.x));
    global0 = firstLeadingBit(var_0.a.ww);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(511f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1540f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(944f + 360f) - _wgslsmith_f_op_f32(-212f + 333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-389f))) - _wgslsmith_f_op_f32(ceil(-1872f))))), _wgslsmith_f_op_f32(sign(-1093f)), -488f);
    global1 = firstTrailingBit(global3.x);
    var var_2 = ~(~1u);
    return _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(abs(min(4294967295u & global0.x, max(u_input.a.x, global0.x))), _wgslsmith_add_u32(~0u << (_wgslsmith_dot_vec3_u32(var_0.a.yyx, vec3<u32>(var_0.c, var_0.c, u_input.b)) % 32u), var_0.c)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> vec3<i32> {
    return abs(-vec3<i32>(-firstTrailingBit(global3.x), 1i, _wgslsmith_sub_i32(min(u_input.d, u_input.e), ~global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~abs(-global3.x);
    let var_0 = global3.x << (u_input.a.x % 32u);
    let var_1 = Struct_1(countOneBits(~vec4<u32>(1u, global0.x, 584u, u_input.b) | (max(vec4<u32>(1u, u_input.c, u_input.b, 25814u), vec4<u32>(13372u, u_input.c, 1u, global0.x)) << (~vec4<u32>(10810u, 0u, u_input.a.x, 1u) % vec4<u32>(32u)))), ~global0.x, 9372u);
    var var_2 = ~_wgslsmith_dot_vec4_u32(max(~select(vec4<u32>(1u, var_1.b, 4294967295u, var_1.c), vec4<u32>(u_input.c, 55487u, 58095u, u_input.b), vec4<bool>(global2[_wgslsmith_index_u32(75867u, 16u)], false, true, false)), reverseBits(var_1.a)), vec4<u32>(~(~u_input.c), reverseBits(var_1.b), 1u, ~(~11053u)));
    global0 = u_input.a;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-431f, _wgslsmith_f_op_f32(f32(-1f) * -807f)))), true, _wgslsmith_mod_i32(firstTrailingBit(global3.x), ~(~(i32(-1i) * -39147i))));
    global3 = select(firstLeadingBit(abs(vec3<i32>(-var_3.c, -u_input.d, 2147483647i))), -func_4(func_1(min(vec3<i32>(13036i, var_0, var_3.c), vec3<i32>(global3.x, 6136i, 2147483647i))), false), true);
    var var_4 = ~min(-var_3.c, 2147483647i);
    var_4 = _wgslsmith_mod_i32(-1i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>((~var_1.a.x >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)) << (func_1(vec3<i32>(-2147483647i, 0i, var_3.c)).x % 32u), firstTrailingBit(countOneBits(1u)), u_input.c), func_2(), ~global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(710f, var_3.a))))));
}

