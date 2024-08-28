struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: bool;

var<private> global2: vec2<u32>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1372f - _wgslsmith_f_op_f32(f32(-1f) * -195f)), 667f, any(select(arg_0.c.zy, arg_0.c.zy, arg_0.d.x))))))));
    global0 = array<bool, 6>();
    var var_1 = countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~arg_0.b, ~arg_0.b), arg_0.b ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.b.x, 1828u), vec4<u32>(arg_1, u_input.b.x, 4294967295u, 0u))), _wgslsmith_clamp_u32(abs(max(34080u, arg_1)), _wgslsmith_div_u32(min(arg_1, u_input.b.x), _wgslsmith_div_u32(global2.x, 25791u)), firstLeadingBit(max(arg_1, arg_1))), 11263u, global2.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2969f - _wgslsmith_f_op_f32(-var_0)) + var_0));
    return var_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(916f + -1000f) + 179f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(295f - -1270f) * 859f) + _wgslsmith_f_op_f32(ceil(-1000f))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1760f, 937f) * vec2<f32>(-128f, 415f))))))));
    var var_1 = vec3<u32>(arg_1.b.x << (0u % 32u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, 39210u) ^ global2.x, 1u, ~43247u), firstLeadingBit((u_input.b ^ arg_1.b.yzy) >> (~vec3<u32>(global2.x, u_input.b.x, global2.x) % vec3<u32>(32u)))));
    let var_2 = u_input.b.yz;
    global0 = array<bool, 6>();
    return ~0u;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global2 = vec2<u32>(global2.x, ~u_input.b.x);
    global2 = vec2<u32>(min(62468u, _wgslsmith_div_u32(select(global2.x, 52665u, global0[_wgslsmith_index_u32(1u, 6u)]), reverseBits(1495u))) >> (~_wgslsmith_clamp_u32(~arg_0.b.x, global2.x, 37127u) % 32u), ~(max(0u, firstTrailingBit(global2.x)) << (_wgslsmith_div_u32(~arg_0.b.x, global2.x) % 32u)));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -2397f)) + -251f)))));
    var var_1 = !(!select(select(arg_0.d, !arg_0.c.yw, !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), vec2<bool>(arg_0.d.x || arg_0.d.x, false), vec2<bool>(global0[_wgslsmith_index_u32(func_3(arg_0.d.x, arg_0, arg_0.c.x), 6u)], true)));
    var_0 = -1686f;
    return ~abs(vec2<u32>(~(~arg_0.b.x), select(u_input.b.x, ~arg_0.b.x, all(arg_0.c.yzy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(abs(-_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(global3.x, u_input.a.x, global3.x)), global3.ywx)), u_input.a.wxy);
    global1 = false;
    let var_1 = _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_mod_vec2_i32(abs(var_0.zz), vec2<i32>(var_0.x, -13581i)), vec4<u32>(global2.x, u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~1u), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(20189u, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(global2.x, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 6u)], false, true, global0[_wgslsmith_index_u32(global2.x, 6u)]), global0[_wgslsmith_index_u32(1u, 6u)]), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)]))), u_input.b.x)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-561f)) + _wgslsmith_f_op_f32(step(2096f, 1000f)))));
    global2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~(~14127u)), global2.x), select(max(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2.x), u_input.b.zx), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, u_input.b.x), u_input.b.yz)) ^ ~func_2(Struct_1(u_input.a.yx, vec4<u32>(global2.x, 25570u, 6754u, global2.x), vec4<bool>(var_1, var_1, true, var_1), vec2<bool>(var_1, var_1))), vec2<u32>(global2.x, reverseBits(firstTrailingBit(1u))), !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(15324u, 6u)]), vec2<bool>(var_1, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), vec2<bool>(false, var_1), select(global0[_wgslsmith_index_u32(51611u, 6u)], var_1, true))));
    var var_2 = _wgslsmith_f_op_f32(min(-2151f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1017f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(454f + -1149f), -1639f)))))));
    let var_3 = 9617u;
    let var_4 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -global3.zz, global3.yz) << (~select(firstTrailingBit(u_input.b.yz), u_input.b.yx, var_1 | true) % vec2<u32>(32u)), ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, var_3), u_input.b), 29037u), _wgslsmith_add_u32(u_input.b.x, global2.x), ~19635u << (firstLeadingBit(u_input.b.x) % 32u), global2.x), vec4<bool>(false && select(!global0[_wgslsmith_index_u32(global2.x, 6u)], false, global0[_wgslsmith_index_u32(~0u, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, global2.x) ^ ~u_input.b.yy, func_2(Struct_1(u_input.a.yx, vec4<u32>(1u, 2135u, 1u, var_3), vec4<bool>(var_1, true, false, true), vec2<bool>(false, false)))), 6u)], true, var_1), !(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(global2.x, 6u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-473f, _wgslsmith_f_op_f32(f32(-1f) * -447f))) * _wgslsmith_f_op_f32(f32(-1f) * -2228f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -445f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-595f, 955f)), -1471f))) + _wgslsmith_f_op_f32(f32(-1f) * -640f)), ~vec3<u32>(~(var_3 | var_3), countOneBits(~4294967295u), func_3(false, Struct_1(u_input.a.wz, vec4<u32>(4294967295u, 4294967295u, global2.x, u_input.b.x), vec4<bool>(var_1, true, true, global0[_wgslsmith_index_u32(var_4.b.x, 6u)]), var_4.c.wz), var_1)));
}

