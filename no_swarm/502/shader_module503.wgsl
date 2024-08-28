struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, true, false, false, false, false, true, true, true, true, false, false, true, false, false, true, true, false, true, false, false, true, true, true, true, true, false, false, false, false, false);

var<private> global1: bool = true;

var<private> global2: array<u32, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = Struct_1(true, -953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f + -274f)), !(!(!vec4<bool>(true, arg_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], true))));
    global1 = arg_1;
    var var_1 = -683f;
    global1 = !arg_1;
    var var_2 = arg_0;
    return u_input.c.x | ~(~51752u);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> f32 {
    global2 = array<u32, 12>();
    let var_0 = _wgslsmith_f_op_f32(-arg_2.b);
    var var_1 = arg_1;
    var var_2 = 0u;
    var_2 = _wgslsmith_mod_u32(4294967295u, reverseBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(37556u, arg_3), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(12373u, 12u)], arg_3, global2[_wgslsmith_index_u32(6483u, 12u)])))) >> (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(func_2(Struct_2(arg_2, arg_2.d.xx), true, Struct_3(arg_2.b, arg_1.b), _wgslsmith_f_op_f32(floor(1457f))), 12u)], ~_wgslsmith_add_u32(1u | u_input.a, ~0u)), 12u)] % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<u32, 12>();
    var var_0 = countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-20796i, 0i, u_input.e, 14278i), select(vec4<i32>(-1i, u_input.d, 2147483647i, 0i), vec4<i32>(-50613i, u_input.d, -15347i, 12377i), vec4<bool>(true, false, arg_0.d.x, true))) << (_wgslsmith_sub_vec4_u32(u_input.c & u_input.c, u_input.c & vec4<u32>(40255u, global2[_wgslsmith_index_u32(24189u, 12u)], 28289u, 37354u)) % vec4<u32>(32u)), vec4<i32>(-1i, -2147483647i, ~(-u_input.d), countOneBits(u_input.e))));
    var var_1 = Struct_2(Struct_1(select(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 12u)], 24284u), 32u)], !global0[_wgslsmith_index_u32(10050u, 32u)], arg_0.c > 343f), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.c)), _wgslsmith_f_op_f32(-arg_0.b))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b, arg_0.c, arg_0.d.x)), _wgslsmith_f_op_f32(sign(-1000f)))), !select(select(arg_0.d, vec4<bool>(true, arg_0.a, true, true), arg_0.d), !arg_0.d, select(arg_0.d, vec4<bool>(false, arg_0.a, arg_0.d.x, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.d.x)))), vec2<bool>(all(!select(arg_0.d.wyz, arg_0.d.zzw, arg_0.d.wzz)), true));
    let var_2 = vec4<i32>(35936i, 0i, u_input.e, min(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.e, var_0.x), -var_0.x), _wgslsmith_dot_vec3_i32(var_0.xzy, var_0.xwy)));
    var var_3 = global2[_wgslsmith_index_u32(select(~11842u, ~(~_wgslsmith_clamp_u32(71166u, 27163u, _wgslsmith_mod_u32(59750u, global2[_wgslsmith_index_u32(31134u, 12u)]))), false), 12u)];
    return vec4<bool>(false, false, !var_1.a.d.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(func_1(false, Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1112f)))), 0i), Struct_1(!(40412u > u_input.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(f32(-1f) * -317f))), -302f, !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20442u, 12u)], 32u)], true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 12u)], 32u)]))), ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) + -553f))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2739f)), 2252f), 153f))), !select(!func_3(Struct_1(false, -1957f, -1000f, vec4<bool>(global0[_wgslsmith_index_u32(11015u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45732u, 12u)], 32u)], false, true))), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], true, false, false), func_3(Struct_1(global0[_wgslsmith_index_u32(23496u, 32u)], -1000f, 1117f, vec4<bool>(true, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 32u)], true))), any(vec3<bool>(true, global0[_wgslsmith_index_u32(27173u, 32u)], false))), !global0[_wgslsmith_index_u32(1u, 32u)]));
    let var_1 = firstLeadingBit(abs(abs(-u_input.d))) << ((~max(40098u, 61008u) | ~(u_input.a | ~1u)) % 32u);
    var var_2 = !(!vec3<bool>(false, false, var_0.a));
    let var_3 = ~_wgslsmith_sub_u32(~(~u_input.b >> (u_input.a % 32u)), _wgslsmith_div_u32(firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 12u)]), global2[_wgslsmith_index_u32(max(0u, ~global2[_wgslsmith_index_u32(0u, 12u)]), 12u)]));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f) - var_0.b)) > var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(189f, var_0.b) - var_0.c), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(413f)) * _wgslsmith_f_op_f32(1012f + 425f)), var_0.c), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(415f * -1160f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.b)), var_0.c, true)), 686f, 384f), select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(global2[_wgslsmith_index_u32(var_3, 12u)]), reverseBits(1u)), 32u)], var_0.d.x, true))));
}

