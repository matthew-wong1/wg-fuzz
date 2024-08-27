struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: f32 = 497f;

var<private> global2: array<vec4<bool>, 24>;

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(select(!select(!global2[_wgslsmith_index_u32(19795u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(40659u, 24u)]), vec4<bool>(true, arg_0, u_input.a.x < (global0[_wgslsmith_index_u32(arg_1.x, 31u)] << (81855u % 32u)), u_input.a.x == 50285i), !any(!vec4<bool>(true, false, arg_0, arg_0))), arg_1.x, 1i, reverseBits(33296u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(ceil(576f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e, vec2<f32>(825f, 1000f))), var_0.e))) * var_0.e);
    var var_2 = i32(-1i) * -25913i;
    var var_3 = ~var_0.c;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_0.e.x, arg_2))) - 655f)) - 680f);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, -423f, _wgslsmith_f_op_f32(floor(695f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(false, vec4<u32>(7287u, 5224u, 1u, 0u), 1531f)), _wgslsmith_f_op_f32(2716f - -839f), _wgslsmith_f_op_f32(func_2(false, vec4<u32>(4130u, 59994u, 16511u, 23766u), 540f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -1159f, -1299f))))))));
    global3 = 85036u;
    global0 = array<i32, 31>();
    global1 = -444f;
    let var_1 = select(~vec4<i32>(reverseBits(_wgslsmith_clamp_i32(0i, -2147483647i, global0[_wgslsmith_index_u32(38718u, 31u)])), -1i, _wgslsmith_div_i32(43893i, i32(-1i) * -10436i), -44702i), reverseBits(vec4<i32>(-global0[_wgslsmith_index_u32(~45570u, 31u)], _wgslsmith_mod_i32(max(u_input.a.x, -42248i), 1i), global0[_wgslsmith_index_u32(25251u, 31u)], 2147483647i)), true);
    return var_0.x;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(min(~_wgslsmith_mod_u32(~24258u, ~73028u), 41661u), 24u)], 1u, i32(-1i) * -15601i, _wgslsmith_mult_u32(4294967295u, ~abs(firstTrailingBit(26338u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1101f, -542f), vec2<f32>(668f, 427f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-922f, -855f) * vec2<f32>(-397f, 319f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(442f + 253f)))));
    global0 = array<i32, 31>();
    var var_1 = abs(vec4<i32>(4230i, -select(arg_0, -16599i, var_0.a.x) << (~(~var_0.d) % 32u), var_0.c, ~(~_wgslsmith_clamp_i32(9357i, arg_1.x, 0i))));
    var_1 = vec4<i32>(-2147483647i, -(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b, 1u), 31u)]), var_0.c, -15640i);
    global3 = ~4294967295u;
    return vec4<f32>(var_0.e.x, _wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))), var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -520f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], countOneBits(firstLeadingBit(0u)), ~1i, ~1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)) - 546f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 838f)));
    var var_1 = -1548f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(u_input.a.x, ~vec2<i32>(var_0.c, 0i) ^ ~u_input.a)))));
    global2 = array<vec4<bool>, 24>();
    global0 = array<i32, 31>();
    let var_3 = reverseBits(_wgslsmith_mod_i32(select(~_wgslsmith_div_i32(var_0.c, u_input.a.x), -11755i, !var_0.a.x), abs(~(u_input.a.x >> (var_0.d % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-21876i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-14852i, u_input.a.x | var_0.c), ~var_0.c)), global0[_wgslsmith_index_u32(~reverseBits(~0u) << (~var_0.b % 32u), 31u)]);
}

