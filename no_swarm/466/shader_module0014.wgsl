struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, true, false, false, false, true, true, true, false, true, false, false, true, true, false, false, false, false);

var<private> global1: vec3<i32> = vec3<i32>(-37711i, -64315i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(true, true, false)), vec3<bool>(global0[_wgslsmith_index_u32(304u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false), true), !all(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 20u)], false, global0[_wgslsmith_index_u32(13405u, 20u)]))), select(!select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(11692u, 20u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(28145u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(38836u, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 20u)], true)), false & global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), !select(!vec3<bool>(global0[_wgslsmith_index_u32(81549u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false, true), global0[_wgslsmith_index_u32(~1u, 20u)]), vec3<bool>(-2147483647i <= _wgslsmith_mult_i32(global1.x, global1.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(1u, u_input.a.x)), firstTrailingBit(u_input.a.x)), 20u)], !(global1.x > 1i))), vec3<bool>(true, true && all(vec2<bool>(true, true)), true != any(vec2<bool>(false, true))));
    var var_1 = Struct_1(select(!select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(55159u, 20u)]), vec3<bool>(true, false, false), vec3<bool>(true, true, var_0.x)), select(vec3<bool>(true, var_0.x, global0[_wgslsmith_index_u32(57102u, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], var_0.x, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(52132u, 20u)])), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], var_0.x, true)), !select(vec3<bool>(false, var_0.x, false), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false), all(vec2<bool>(true, var_0.x))), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x & 47542u, 20u)], global1.x == -840i, !global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), !vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, var_0.x))), 17381u, vec3<u32>(u_input.a.x, abs(u_input.a.x >> (~u_input.a.x % 32u)), min(~min(u_input.a.x, u_input.a.x), u_input.a.x)), !(!all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    let var_2 = -(~select(abs(vec3<i32>(-2147483647i, 0i, 14348i)), vec3<i32>(-1i, 12502i, global1.x) << (var_1.c % vec3<u32>(32u)), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(10603u, 20u)]))) & -min(~select(vec3<i32>(global1.x, global1.x, -2147483647i), vec3<i32>(1i, 9753i, 49402i), var_1.a), reverseBits(select(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(10810i, 5141i, global1.x), var_1.a)));
    global0 = array<bool, 20>();
    var var_3 = Struct_1(select(vec3<bool>(all(vec3<bool>(false, true, var_0.x)), all(vec3<bool>(true, var_0.x, global0[_wgslsmith_index_u32(var_1.c.x, 20u)])), any(vec2<bool>(var_0.x, var_1.d))), !vec3<bool>(false, true, all(vec4<bool>(false, false, true, var_0.x))), select(var_1.a, !(!vec3<bool>(var_1.d, var_0.x, false)), var_0.x)), ~u_input.a.x, select(u_input.a, abs(u_input.a) | (_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) ^ vec3<u32>(u_input.a.x, 1u, var_1.b)), vec3<bool>(true, true, false)), !(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(1i, 0i))) == _wgslsmith_mod_i32(reverseBits(global1.x), 2147483647i)));
    return 1i;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> bool {
    global1 = abs(vec3<i32>(-func_3() >> (1u % 32u), global1.x << (~u_input.a.x % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, global1.x) | global1.x, -234i)));
    global1 = vec3<i32>(53141i, _wgslsmith_add_i32(0i, 31381i) ^ _wgslsmith_sub_i32(~global1.x >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) % 32u), global1.x), _wgslsmith_dot_vec4_i32(countOneBits(min(-vec4<i32>(global1.x, 39790i, global1.x, global1.x), -vec4<i32>(global1.x, global1.x, -1i, -27718i))), vec4<i32>(-(~(-2147483647i)), -abs(-62627i), ~global1.x, global1.x)));
    global0 = array<bool, 20>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(vec3<bool>(arg_1.x, any(arg_1) == global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.x), 58043u, u_input.a, true);
    return var_1.d;
}

fn func_1() -> f32 {
    global0 = array<bool, 20>();
    let var_0 = Struct_1(select(select(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true)), true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)] | false, true, 4294967295u < u_input.a.x), select(vec3<bool>(global0[_wgslsmith_index_u32(39633u, 20u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), global0[_wgslsmith_index_u32(abs(u_input.a.x), 20u)])), !select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false), true), countOneBits(2147483647i) <= ~global1.x), ~u_input.a.x, ~vec3<u32>(1u, u_input.a.x, max(u_input.a.x | u_input.a.x, ~u_input.a.x)), (all(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)])) && func_2(vec2<f32>(384f, -767f), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, global0[_wgslsmith_index_u32(51081u, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), global0[_wgslsmith_index_u32(1u, 20u)]))) | true);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(358f, 2621f, -1802f)))))));
    let var_3 = select(global0[_wgslsmith_index_u32(~(~var_1.c.x ^ firstTrailingBit(65312u)), 20u)], all(select(!(!var_1.a), !(!vec3<bool>(true, var_0.d, true)), vec3<bool>(false, any(vec4<bool>(true, false, var_0.a.x, var_1.d)), false))), !var_0.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-673f, _wgslsmith_f_op_f32(-var_2.x))))) * -624f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false))), ~(1u ^ u_input.a.x) < ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(37626u, u_input.a.x, u_input.a.x)), true), true, true);
    var var_1 = ~u_input.a.x;
    let var_2 = var_0;
    var_1 = ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2086f * _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-411f)), -1324f, true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(~0u, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), firstLeadingBit(vec3<u32>(71033u, 34234u, 26481u)))), 20u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(123f + -1000f), _wgslsmith_f_op_f32(ceil(1827f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -1018f)))));
    var_1 = _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x);
    let var_4 = Struct_1(vec3<bool>(any(vec2<bool>(true, func_2(vec2<f32>(-321f, var_3.x), vec3<bool>(false, var_2, false)))), true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), u_input.a.x ^ _wgslsmith_add_u32(1u, 0u), ~(~countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4337u, 1u, 18005u), vec3<u32>(4757u, u_input.a.x, 5013u), u_input.a))), !var_2 & all(!vec2<bool>(var_0, global0[_wgslsmith_index_u32(0u, 20u)])));
    var_1 = u_input.a.x ^ countOneBits(67976u);
    var_1 = 604u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(global1.x)), ~var_4.c, var_3.x, vec2<u32>(4294967295u, 26783u));
}

