struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(89657u, 0u, 16124u, 4294967295u, 25982u, 1u, 4294967295u, 43864u, 12987u, 1u, 0u, 15982u, 0u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_i32(35176i, -_wgslsmith_dot_vec2_i32(~(vec2<i32>(-2147483647i, 2864i) >> (arg_0.zx % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-31320i, 19416i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -12444i), vec2<i32>(-6656i, u_input.b), vec2<i32>(2219i, 11851i)))));
    var var_1 = (vec3<u32>(_wgslsmith_mod_u32(arg_0.x, 51353u) & ~global0[_wgslsmith_index_u32(arg_0.x, 14u)], reverseBits(0u), 1u) << (vec3<u32>(~(global0[_wgslsmith_index_u32(4294967295u, 14u)] & global0[_wgslsmith_index_u32(11655u, 14u)]), arg_0.x, _wgslsmith_mod_u32(arg_0.x, ~arg_0.x)) % vec3<u32>(32u))) << (vec3<u32>(~0u ^ _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 40463u, 4294967295u)), arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, global0[_wgslsmith_index_u32(arg_0.x, 14u)], 19321u), _wgslsmith_clamp_vec4_u32(vec4<u32>(49122u, arg_0.x, 4294967295u, 0u), vec4<u32>(24680u, 13843u, 25714u, 21053u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2330u, 14u)], 14u)], 16780u, arg_0.x, 48880u))) | select(4294967295u, ~4294967295u, !arg_2.x), reverseBits(16650u)) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_clamp_i32(abs(~(~u_input.a)), _wgslsmith_div_i32(_wgslsmith_sub_i32(~(-10031i), u_input.b), -(~(-1i))), 2147483647i), firstLeadingBit(select(~arg_0, countOneBits(~vec3<u32>(19661u, var_1.x, 0u)), !(arg_1.x >= -419f))), arg_2, _wgslsmith_f_op_f32(-arg_1.x));
    let var_3 = _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 32723u, global0[_wgslsmith_index_u32(12643u, 14u)], 61679u), ~vec4<u32>(35199u, 0u, 4294967295u, 4294967295u)))), vec4<u32>(4294967295u, abs(var_1.x), var_1.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(var_2.b.x), ~1u), 14u)]));
    var var_4 = Struct_1(_wgslsmith_clamp_i32(max(_wgslsmith_mod_i32(~u_input.a, 2147483647i), 0i), _wgslsmith_mult_i32(var_2.a, var_2.a), (firstTrailingBit(u_input.b) | (var_2.a ^ 1i)) | u_input.a), arg_0, select(vec3<bool>(false, true, all(arg_2.yx)), !vec3<bool>(true, true, 71071u != var_2.b.x), select(!(!vec3<bool>(var_2.c.x, false, var_2.c.x)), var_2.c, arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -435f));
    return ~(~4294967295u);
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_1(i32(-1i) * -(~(~2332i)), abs(~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], 1577u))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1730f)) * _wgslsmith_f_op_f32(select(1291f, 910f, true)))));
    let var_1 = _wgslsmith_clamp_u32(var_0.b.x, ~global0[_wgslsmith_index_u32(~func_3(var_0.b, vec2<f32>(-495f, -1972f), var_0.c), 14u)], ~4294967295u);
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1 & ~4294967295u, 0u, var_0.b.x), var_0.b), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(5300u, var_1, 0u), var_0.b)) | var_0.b, var_0.b);
    let var_3 = Struct_1(1i, select(var_0.b, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_2 | var_0.b, select(var_2, var_0.b, var_0.c.x)), max(var_0.b, var_0.b)), !(!(!var_0.c))), select(!arg_0, !select(var_0.c, !var_0.c, all(vec4<bool>(arg_0.x, false, var_0.c.x, var_0.c.x))), !(!vec3<bool>(true, arg_0.x, false))), _wgslsmith_f_op_f32(-var_0.d));
    var_0 = Struct_1(-var_3.a, countOneBits(var_2) >> (~_wgslsmith_add_vec3_u32(var_3.b << (vec3<u32>(var_0.b.x, var_0.b.x, 0u) % vec3<u32>(32u)), var_2) % vec3<u32>(32u)), select(!vec3<bool>(all(vec2<bool>(var_3.c.x, false)), false, false && arg_0.x), arg_0, var_0.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.d)))));
    return min(select(vec3<u32>(var_0.b.x, 56275u, var_0.b.x) | var_3.b, var_2, var_0.c), var_0.b);
}

fn func_1() -> vec2<i32> {
    global0 = array<u32, 14>();
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(37349u, 4294967295u, 4724u)), max(vec3<u32>(49019u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4233u, 14u)], 14u)], 14u)], 68513u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(9374u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80197u, 14u)], 14u)]))), ~vec3<u32>(1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)])), (vec3<u32>(global0[_wgslsmith_index_u32(106585u, 14u)], 0u, global0[_wgslsmith_index_u32(7888u, 14u)]) >> (select(vec3<u32>(global0[_wgslsmith_index_u32(13945u, 14u)], 1u, 5953u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77607u, 14u)], 14u)], 1u, global0[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(true, false, false)) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(func_2(vec3<bool>(true, true, false)), select(vec3<u32>(global0[_wgslsmith_index_u32(44425u, 14u)], 52157u, 0u), vec3<u32>(7815u, 0u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(false, true, false))) % vec3<u32>(32u)), vec3<u32>(4294967295u, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(2401u, 14u)], 78147u), global0[_wgslsmith_index_u32(4294967295u, 14u)])) ^ ~_wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], global0[_wgslsmith_index_u32(1u, 14u)], 0u)), ~(~vec3<u32>(7770u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10330u, 14u)], 14u)])));
    var_0 = vec3<u32>(_wgslsmith_div_u32(14900u, 4294967295u), var_0.x | var_0.x, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2293u) ^ vec2<u32>(4294967295u, var_0.x), vec2<u32>(1u, var_0.x))));
    global0 = array<u32, 14>();
    let var_1 = select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), firstTrailingBit(u_input.b) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, -30111i), vec4<i32>(59087i, -25006i, 7604i, 18272i))), vec4<bool>(true, true, true, true), false), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(true, true)))), true), true);
    return countOneBits(countOneBits(countOneBits(vec2<i32>(-28066i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(func_1(), vec2<i32>(_wgslsmith_mult_i32(max(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), u_input.a), vec2<i32>(~(~u_input.a), countOneBits(1i ^ u_input.a))), global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)] | _wgslsmith_div_u32(~4294967295u, abs(1u)), 14u)], 14u)]), 14u)]);
}

