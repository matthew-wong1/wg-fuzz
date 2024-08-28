struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<f32>, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> f32 {
    return 462f;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    let var_0 = arg_1.c;
    var var_1 = u_input.c;
    global0 = u_input.b << (select(~(~(~vec3<u32>(u_input.d.x, u_input.c, u_input.d.x))), select(~(vec3<u32>(u_input.c, u_input.c, u_input.d.x) << (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u))), min(firstTrailingBit(vec3<u32>(u_input.c, u_input.d.x, u_input.d.x)), ~vec3<u32>(u_input.a.x, u_input.c, u_input.c)), arg_1.b.a), !(_wgslsmith_div_f32(arg_2.x, arg_2.x) != _wgslsmith_f_op_f32(-arg_0))) % vec3<u32>(32u));
    var_1 = 4294967295u;
    let var_2 = vec2<u32>(select(0u, ~4294967295u, !any(vec4<bool>(arg_1.c.a.x, false, arg_1.b.a.x, var_0.a.x))), u_input.d.x);
    return firstTrailingBit(2147483647i);
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = ~(-vec3<i32>(global0.x, countOneBits(abs(-1i)), _wgslsmith_mod_i32(-10072i, func_3(116f, Struct_2(global1[_wgslsmith_index_u32(13101u, 19u)], Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true))), vec2<f32>(378f, -1165f)))));
    let var_0 = -1484f;
    let var_1 = Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(-224f))) == _wgslsmith_f_op_f32(exp2(var_0)), all(vec3<bool>(true, false, false)) && !any(vec2<bool>(false, true))));
    var var_2 = 0i;
    var var_3 = select(select(vec4<bool>(!var_1.a.x, _wgslsmith_f_op_f32(var_0 + 1000f) < _wgslsmith_f_op_f32(min(-141f, var_0)), !var_1.a.x, false), select(!select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, false, var_1.a.x)), select(select(vec4<bool>(var_1.a.x, false, var_1.a.x, true), vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), vec4<bool>(true, false, false, false), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), vec4<bool>(var_1.a.x, var_1.a.x, any(var_1.a.yx), !var_1.a.x)), true), vec4<bool>(var_1.a.x, var_1.a.x, any(!vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x)), reverseBits(~u_input.a.x) < u_input.d.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(var_1.a.xy), true, var_1.a.x | var_1.a.x), !vec4<bool>(var_1.a.x, false, false, false)), select(select(select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), false), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, false, false)), !select(vec4<bool>(true, var_1.a.x, true, var_1.a.x), vec4<bool>(var_1.a.x, true, true, true), vec4<bool>(false, true, var_1.a.x, true)), any(var_1.a)), all(select(var_1.a.yz, var_1.a.zx, true))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(47176u, 19u)]), vec2<f32>(-250f, -358f), vec2<bool>(false, var_3.x)))) * _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(7626u, 19u)])), var_1, Struct_1(var_1.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = abs(~vec3<i32>(-2147483647i, 1i, firstTrailingBit(max(1i, -2147483647i))));
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.d.x, arg_0.x)), arg_0.xyx) | _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.x, 0u, u_input.a.x), _wgslsmith_dot_vec3_u32(arg_0.wzz, arg_0.zyx)), arg_0.x), select(abs(~4294967295u), countOneBits(62091u), !(arg_1.a.x >= arg_3)));
    global1 = array<vec2<f32>, 19>();
    var var_1 = -(i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(2147483647i).a.x - _wgslsmith_f_op_f32(arg_1.a.x + -916f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + 1000f)))) + _wgslsmith_f_op_f32(round(arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(851f)) * -313f) * 1000f) + _wgslsmith_f_op_f32(3128f * -1991f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-976f + 857f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, -1444f, -264f), global0.xx))), 2940f)));
    var var_2 = !vec4<bool>(-1313f >= _wgslsmith_f_op_f32(func_4(vec4<u32>(var_0.x, 0u, u_input.a.x, var_0.x) & vec4<u32>(27645u, 76285u, 24237u, var_0.x), func_2(24917i), func_2(-63189i).b, _wgslsmith_f_op_f32(-var_1))), true, !all(vec4<bool>(true, true, true, true)), false);
    global1 = array<vec2<f32>, 19>();
    var var_3 = func_2(_wgslsmith_dot_vec3_i32(~(~abs(u_input.b)), select(select(u_input.b, u_input.b, var_2.ywz), u_input.b | _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 44715i, u_input.b.x), u_input.b), var_2.x)));
    var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_3.a)))))), var_3.b, func_2(_wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(-14468i, 2147483647i, u_input.e, global0.x)), firstTrailingBit(vec4<i32>(u_input.e, global0.x, -36135i, -27602i)), vec4<bool>(false, var_2.x, false, var_2.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, -75258i, -44677i, u_input.e)), vec4<i32>(-4002i, -13883i, global0.x, -23791i)))).b);
    let var_4 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-954f, var_3.a.x), vec2<f32>(var_1, 932f)), _wgslsmith_f_op_vec2_f32(-var_3.a))), var_2.yw)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1262f, -797f), _wgslsmith_div_vec2_f32(vec2<f32>(-326f, var_3.a.x), vec2<f32>(-1345f, var_1)), var_2.x))))), func_2(func_3(1877f, func_2(_wgslsmith_clamp_i32(7636i, 2147483647i, u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.x, 1u, 0u), 19u)])).c, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, (~abs(vec4<u32>(1u, var_0.x, u_input.a.x, 55705u)) ^ (vec4<u32>(1892u, 16287u, 1u, 1728u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_0.x, u_input.c, u_input.c), vec4<u32>(0u, var_0.x, 0u, 1u)) % vec4<u32>(32u)))) >> (abs(~firstLeadingBit(vec4<u32>(u_input.a.x, 0u, 38540u, var_0.x))) % vec4<u32>(32u)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0, min(u_input.d, u_input.a)), ~var_0), ~u_input.b);
}

