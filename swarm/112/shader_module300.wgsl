struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<vec3<bool>, 1>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    let var_0 = Struct_2(arg_0);
    let var_1 = ~firstLeadingBit(vec2<u32>(u_input.c.x >> (_wgslsmith_mult_u32(var_0.a.d.x, 1u) % 32u), 4294967295u ^ _wgslsmith_add_u32(var_0.a.d.x, 0u)));
    var var_2 = vec4<bool>(var_0.a.a.x, any(select(select(vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(arg_0.a.x, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, global2.x, var_0.a.a.x, global2.x), vec4<bool>(false, false, var_0.a.a.x, false), false)), vec4<bool>(true, var_0.a.a.x, global2.x, true), select(vec4<bool>(global2.x, var_0.a.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), any(vec4<bool>(global2.x, true, true, var_0.a.a.x))))), all(!vec4<bool>(var_0.a.d.x <= arg_0.d.x, arg_0.a.x, all(var_0.a.a.xy), true)), !(_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(9106u, 19u)], ~(-1i)) != (countOneBits(u_input.b.x) >> ((arg_0.d.x ^ 10843u) % 32u))));
    let var_3 = vec2<bool>(!global2.x, true);
    var var_4 = !(any(global1[_wgslsmith_index_u32(~4294967295u, 1u)]) && !all(vec2<bool>(var_2.x, arg_0.a.x))) && var_3.x;
    return vec4<f32>(1645f, -1000f, _wgslsmith_f_op_f32(trunc(465f)), _wgslsmith_f_op_f32(582f + var_0.a.b));
}

fn func_2() -> bool {
    let var_0 = Struct_3(-1460f, Struct_1(vec3<bool>((global0[_wgslsmith_index_u32(1u, 19u)] >= global0[_wgslsmith_index_u32(4294967295u, 19u)]) & (false && global2.x), false, true), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(~u_input.c.x, 1u)], -330f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, 794f, -313f, 1427f)), u_input.c), _wgslsmith_div_f32(1341f, _wgslsmith_f_op_f32(-390f + 981f)))), _wgslsmith_clamp_vec2_u32(u_input.c & (vec2<u32>(4294967295u, 1u) << (u_input.c % vec2<u32>(32u))), abs(vec2<u32>(u_input.c.x, u_input.a)) | max(u_input.c, vec2<u32>(u_input.a, 4294967295u)), abs(~vec2<u32>(57164u, u_input.d)))));
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    return any(global1[_wgslsmith_index_u32(2168u, 1u)]);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(643f + 157f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f - 915f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-998f))))))));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(0u, 1u)], -924f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(1000f + 796f)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-404f)))), 1023f, _wgslsmith_f_op_f32(sign(-323f))), vec2<u32>(~(~u_input.a), 1u));
    var var_2 = Struct_1(vec3<bool>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1404f)), var_1.c.x) > -523f, func_2()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-926f - 1388f))), _wgslsmith_f_op_vec4_f32(-var_1.c), vec2<u32>(1u, var_1.d.x));
    let var_3 = ~abs(vec3<u32>(14711u, ~_wgslsmith_mod_u32(0u, 18707u), abs(~36180u)));
    var var_4 = Struct_2(var_1);
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-411f, _wgslsmith_f_op_f32(func_1(min(u_input.d ^ (4294967295u ^ u_input.d), u_input.a)))));
    var var_1 = 1830f;
    var var_2 = 1i;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1277f - -947f), _wgslsmith_f_op_f32(abs(1589f))))) - _wgslsmith_div_f32(1258f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global2.zww, 1302f, vec4<f32>(-585f, 994f, -685f, -1000f), vec2<u32>(u_input.d, u_input.a)), 422f)).x, 1f)))), -912f));
    let var_3 = Struct_2(Struct_1(global2.wyx, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.c.x)), _wgslsmith_f_op_f32(step(-534f, -439f)))), vec4<f32>(_wgslsmith_div_f32(748f, 778f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-232f, -530f)), 131f, 1f), _wgslsmith_sub_vec2_u32(u_input.c, u_input.c)));
    global2 = !vec4<bool>(true, var_3.a.a.x, false, any(vec4<bool>(!global2.x, true, global2.x, var_3.a.a.x)));
    var var_4 = Struct_2(Struct_1(!vec3<bool>(true, !var_3.a.a.x, true), var_3.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_3.a.c, var_3.a.c))))), vec2<u32>(4294967295u, u_input.d)));
    var var_5 = 131f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(u_input.b.yx, min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-69078i, 26933i) & vec2<i32>(global0[_wgslsmith_index_u32(var_3.a.d.x, 19u)], u_input.b.x), -u_input.b.yz, reverseBits(vec2<i32>(-1i, global0[_wgslsmith_index_u32(var_3.a.d.x, 19u)]))), min(firstLeadingBit(vec2<i32>(-22526i, global0[_wgslsmith_index_u32(var_3.a.d.x, 19u)])), select(vec2<i32>(-1i, 2147483647i), u_input.b.yx, global2.x)))), u_input.b.zx);
}

