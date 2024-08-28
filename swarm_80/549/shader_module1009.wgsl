struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: Struct_2;

var<private> global2: u32 = 0u;

var<private> global3: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, -31395i), vec2<i32>(68488i, 2147483647i), vec2<i32>(-23142i, -20554i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -6658i), vec2<i32>(23017i, 84635i), vec2<i32>(2147483647i, 1i), vec2<i32>(-32292i, 76447i), vec2<i32>(2147483647i, -1i), vec2<i32>(-9923i, -4820i), vec2<i32>(0i, 7943i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-90636i, 10547i), vec2<i32>(-18106i, 1i), vec2<i32>(2147483647i, 3754i), vec2<i32>(-16170i, -23601i), vec2<i32>(1i, 70605i), vec2<i32>(-1816i, 2147483647i), vec2<i32>(117735i, -69397i), vec2<i32>(27858i, -14876i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -5101i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_1 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(~(-1i), -global0[_wgslsmith_index_u32(global1.a, 19u)], 2147483647i), ~abs(reverseBits(global1.a)), !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, false)), false), vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(~(~u_input.b), ~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 1u))) | _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(71073u, global1.a, u_input.a) << (vec3<u32>(4294967295u, global1.a, 0u) % vec3<u32>(32u)), vec3<u32>(global1.a, global1.a, u_input.b.x)), ~47500u));
    global1 = Struct_2(u_input.a);
    var var_2 = select(vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_div_i32(78382i, var_1.a.x), countOneBits(max(-14377i, global0[_wgslsmith_index_u32(27025u, 19u)]))), var_0.x, 0i, var_1.a.x), vec4<i32>(var_0.x, -34180i, _wgslsmith_div_i32(1i, -64152i), var_1.a.x) << (vec4<u32>(u_input.b.x & ~4294967295u, abs(~4294967295u), var_1.b, ~(~global1.a)) % vec4<u32>(32u)), vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, 2176f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1003f * 1000f)), !any(var_1.c.yx), false, any(vec2<bool>(!var_1.c.x, var_1.c.x & var_1.c.x))));
    return vec4<u32>(~(firstTrailingBit(12149u) | _wgslsmith_clamp_u32(4294967295u, global1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.d, 4294967295u, 89800u), vec4<u32>(var_1.b, var_1.d, 4294967295u, 4294967295u)))), var_1.b, ~(~1u), ~14186u);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec4_u32(select(max(func_3(), vec4<u32>(u_input.b.x << (u_input.a % 32u), ~31649u, 1u, _wgslsmith_div_u32(1u, 28778u))), vec4<u32>(_wgslsmith_div_u32(abs(0u), arg_0.x), reverseBits(arg_0.x) | ~arg_0.x, _wgslsmith_sub_u32(global1.a, 0u), 53924u), !vec4<bool>(false | arg_2, all(vec4<bool>(arg_1, arg_1, true, true)), arg_1, true)), abs(vec4<u32>(~u_input.b.x, max(u_input.a, 0u), u_input.a, u_input.a)) ^ vec4<u32>(~21501u, global1.a, 42091u, global1.a >> (4294967295u % 32u)));
    global2 = ~select(var_0.x, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.a, u_input.b.x), ~u_input.b.x)), all(select(vec3<bool>(arg_2, true, arg_1), vec3<bool>(arg_1, arg_1, true), arg_2)) || true);
    var var_1 = false;
    let var_2 = select(select(vec4<bool>(true, all(vec4<bool>(arg_1, arg_2, false, true)), true, any(vec4<bool>(true, arg_1, arg_1, false)) & true), !(!select(vec4<bool>(true, false, arg_2, true), vec4<bool>(arg_2, arg_1, arg_2, arg_1), false)), select(false, !any(vec3<bool>(true, arg_2, arg_2)), arg_2)), select(!(!vec4<bool>(false, arg_1, arg_1, true)), !(!select(vec4<bool>(false, arg_2, arg_1, true), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(arg_2, false, true, true))), !(!(!vec4<bool>(arg_2, true, true, false)))), vec4<bool>(select((u_input.b.x ^ 37216u) < firstLeadingBit(var_0.x), !arg_1, !arg_1), !select(any(vec2<bool>(arg_2, true)), arg_1, arg_2), global1.a != ~(~var_0.x), all(!select(vec2<bool>(false, arg_1), vec2<bool>(false, false), vec2<bool>(false, arg_1)))));
    global1 = Struct_2(30593u);
    return Struct_2(func_3().x);
}

fn func_1(arg_0: f32, arg_1: bool) -> StorageBuffer {
    var var_0 = func_2(~abs(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 69235u, global1.a), vec3<u32>(u_input.a, 1865u, u_input.b.x))), (-global0[_wgslsmith_index_u32(1u, 19u)] != 11883i) && arg_1, true);
    let var_1 = Struct_2(countOneBits(1u));
    var var_2 = ~select(abs(countOneBits(vec4<i32>(-6739i, global0[_wgslsmith_index_u32(var_0.a, 19u)], 2147483647i, global0[_wgslsmith_index_u32(global1.a, 19u)])) | min(vec4<i32>(-2147483647i, -20566i, global0[_wgslsmith_index_u32(4294967295u, 19u)], 0i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 19u)], 2147483647i, global0[_wgslsmith_index_u32(var_1.a, 19u)], global0[_wgslsmith_index_u32(var_1.a, 19u)]))), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 15340i, -1348i, global0[_wgslsmith_index_u32(var_0.a, 19u)])) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(53091i, -34654i, global0[_wgslsmith_index_u32(var_0.a, 19u)], 35119i), vec4<i32>(-77i, 1i, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<i32>(-12872i, global0[_wgslsmith_index_u32(global1.a, 19u)], 2147483647i, global0[_wgslsmith_index_u32(var_1.a, 19u)])), vec4<i32>(global0[_wgslsmith_index_u32(var_0.a, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -6495i, global0[_wgslsmith_index_u32(var_1.a, 19u)])), arg_1);
    return StorageBuffer(select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, 0u, global1.a) & vec3<u32>(1u, u_input.b.x, 0u), ~vec3<u32>(global1.a, var_0.a, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 0u, var_0.a), vec3<u32>(var_1.a, u_input.a, u_input.b.x))), firstTrailingBit(vec3<u32>(abs(1u), 1u, ~4593u)), !all(!vec2<bool>(arg_1, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 19>();
    let x = u_input.a;
    s_output = func_1(-417f, false);
}

