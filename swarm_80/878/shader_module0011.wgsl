struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: i32) -> i32 {
    global0 = array<f32, 26>();
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a.zy & u_input.a.zx), -select(u_input.a.xy, ~vec2<i32>(u_input.a.x, -73404i), false)), u_input.a.ww, vec2<i32>(1i, -_wgslsmith_add_i32(15509i, -u_input.a.x)));
    let var_1 = Struct_1(1i);
    var var_2 = arg_0;
    var var_3 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, all(vec2<bool>(false, false)), true), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, select(false, false, false), true)), select(vec4<bool>(false, any(vec2<bool>(true, false)), true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)))), !(!vec4<bool>(true, any(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)), true)), !vec4<bool>(!any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(true, all(vec3<bool>(true, false, false)), true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false))));
    return -u_input.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    global0 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -850f);
    var var_1 = select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), !select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true))), select((~u_input.a.x | firstTrailingBit(u_input.a.x)) > _wgslsmith_div_i32(~arg_2.a.a, firstLeadingBit(-2147483647i)), true, _wgslsmith_clamp_u32(12622u, arg_1 ^ 4294967295u, ~4294967295u) <= ~(~arg_1)));
    let var_2 = ~_wgslsmith_add_i32(-16702i, func_3(Struct_2(Struct_1(u_input.a.x), Struct_1(-16533i), arg_2.c), arg_0.c, ~arg_2.a.a, _wgslsmith_add_i32(arg_0.a.a, -78076i) >> ((28523u ^ arg_1) % 32u)));
    let var_3 = Struct_2(arg_2.b, Struct_1(arg_2.b.a), arg_0.c);
    return _wgslsmith_mult_vec4_u32(max(countOneBits(vec4<u32>(select(arg_1, 6028u, false), abs(arg_1), 4926u >> (arg_1 % 32u), ~21383u)), ~vec4<u32>(67627u, 56019u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_1, arg_1)), 55345u)), vec4<u32>(1u & _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1, 0u), _wgslsmith_mod_u32(74927u, arg_1)), ~0u, ~65803u, ~min(12814u, _wgslsmith_clamp_u32(1u, 18253u, 81298u))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = ~19193u;
    let var_1 = func_4(Struct_2(Struct_1(_wgslsmith_add_i32(arg_0.x << (44185u % 32u), func_3(Struct_2(Struct_1(u_input.a.x), Struct_1(-2147483647i), global0[_wgslsmith_index_u32(17931u, 26u)]), 1051f, -75478i, u_input.a.x))), Struct_1(47707i), _wgslsmith_f_op_f32(max(-215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29042u, 26u)] - 1692f) * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4191u, 26u)])))))), ~abs(firstTrailingBit(~71384u)), Struct_2(Struct_1(i32(-1i) * -u_input.a.x), Struct_1(u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f * global0[_wgslsmith_index_u32(1u, 26u)]))))));
    global0 = array<f32, 26>();
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(Struct_1(firstTrailingBit(-abs(0i))), Struct_1(-1i), _wgslsmith_f_op_f32(ceil(442f)));
    return Struct_2(Struct_1(var_2 | ~1i), Struct_1(u_input.a.x), _wgslsmith_f_op_f32(-var_3.c));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = func_2(reverseBits(vec3<i32>(0i, u_input.a.x << (0u % 32u), 29687i)) << (_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_0.x, 15131u, arg_0.x) ^ vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), abs(max(vec3<u32>(arg_0.x, arg_0.x, 36930u), vec3<u32>(arg_0.x, 4294967295u, 0u)))) % vec3<u32>(32u)));
    let var_1 = !select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), select(vec3<bool>(false, 31176i < u_input.a.x, true), vec3<bool>(true, true, var_0.b.a < 1i), vec3<bool>(true, true, true)));
    var_0 = Struct_2(func_2(_wgslsmith_sub_vec3_i32(u_input.a.www, vec3<i32>(2147483647i ^ var_0.b.a, var_0.a.a, u_input.a.x))).a, func_2(-u_input.a.xyx).a, global0[_wgslsmith_index_u32(24025u, 26u)]);
    var var_2 = Struct_2(var_0.a, func_2(-u_input.a.yzw).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)) - var_0.c))));
    let var_3 = -743f;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1298f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, 0u)))))))));
    global0 = array<f32, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 26u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-222f, 485f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-186f, var_0))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1841f * var_0), var_0) * vec2<f32>(var_0, global0[_wgslsmith_index_u32(~4294967295u, 26u)]))), false));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1115f) + vec2<f32>(-557f, global0[_wgslsmith_index_u32(45668u, 26u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-544f, global0[_wgslsmith_index_u32(1u, 26u)]), vec2<f32>(-358f, 873f)))))), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1150f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 26u)] - 658f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] + -145f) * _wgslsmith_f_op_f32(-var_1.x)))), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -5032i, u_input.a.x, -1i), u_input.a), max(u_input.a, u_input.a)), _wgslsmith_add_i32(-u_input.a.x, 14715i))), Struct_1(_wgslsmith_mod_i32(2147483647i, ~u_input.a.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 26u)] + global0[_wgslsmith_index_u32(4294967295u, 26u)]));
    var var_3 = ~(-_wgslsmith_div_i32(u_input.a.x, countOneBits(8910i)));
    global0 = array<f32, 26>();
    var_3 = u_input.a.x;
    let var_4 = Struct_1(func_2(vec3<i32>(-13032i, var_2.b.a, ~(~var_2.b.a))).a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(46662u, 20047u, 22968u)), countOneBits(vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(627f, var_2.c))), vec2<f32>(var_0, _wgslsmith_f_op_f32(min(-1673f, -370f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_0))), vec2<f32>(var_0, _wgslsmith_f_op_f32(ceil(var_0))))))), select(select(countOneBits(vec2<i32>(-12242i, u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a, -4895i, u_input.a.x), vec3<i32>(-2147483647i, var_4.a, u_input.a.x)), reverseBits(-31279i)), false), u_input.a.yz, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true))));
}

