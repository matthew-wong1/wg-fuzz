struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(168f, -740f)), _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(369f, 1073f, 1000f), vec3<f32>(arg_1, arg_1, 705f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -137f, -308f) - vec3<f32>(arg_1, 1056f, arg_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 261f, arg_1)), vec3<bool>(true, true, true))))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 26u)];
    global0 = array<Struct_1, 26>();
    return !any(var_1.d.yw);
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 26u)];
    var var_1 = -32755i;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), firstTrailingBit(u_input.b.yy)), u_input.e.zx, var_0.d.zy), ~abs(abs(vec2<u32>(var_0.b.x, u_input.a))), firstLeadingBit(~(vec2<u32>(u_input.e.x, 4294967295u) ^ vec2<u32>(4294967295u, var_0.b.x))));
    let var_3 = Struct_1(1i, _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 14705u) & vec2<u32>(countOneBits(var_0.b.x), select(u_input.b.x, var_2.x, true)), ~vec2<u32>(14842u, ~18371u)), _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_1) * 1236f))), !select(vec4<bool>(any(var_0.d.zw), select(var_0.d.x, false, false), all(vec3<bool>(var_0.d.x, false, false)), var_0.d.x), select(!vec4<bool>(true, var_0.d.x, true, true), !vec4<bool>(var_0.d.x, false, false, var_0.d.x), vec4<bool>(false, var_0.d.x, false, false)), any(var_0.d.zz)), 560f);
    global0 = array<Struct_1, 26>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-869f)))), var_3.d.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = Struct_1(countOneBits(arg_3.x), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(-215f - arg_1.x))), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e - -310f) + arg_0.c))));
    var_0 = Struct_1(-1i >> ((arg_0.b.x & countOneBits(u_input.b.x)) % 32u), _wgslsmith_add_vec2_u32(~u_input.d, _wgslsmith_mod_vec2_u32(select(u_input.e.xy >> (arg_0.b % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(arg_0.b.x, 0u), vec2<u32>(4294967295u, 49473u)), var_0.d.yz), var_0.b)), _wgslsmith_f_op_f32(-arg_1.x), arg_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + 533f) - -750f), _wgslsmith_f_op_f32(func_3(var_0.a, arg_0.e)))));
    let var_1 = u_input.e.x;
    var var_2 = select(false, false, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c, arg_1.x))) > -3201f) & (var_0.a <= -2147483647i);
    var var_3 = abs(0u);
    return _wgslsmith_add_i32(abs(firstLeadingBit(0i) ^ (arg_0.a | u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(-35512i, -2147483647i, var_0.a)), -18247i), -arg_3.yz)) & -_wgslsmith_mult_i32(reverseBits(-1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_3.x, u_input.c), firstTrailingBit(u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, ~((vec2<u32>(u_input.e.x, u_input.d.x) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(u_input.e.wy, vec2<u32>(12591u, u_input.a)) % vec2<u32>(32u))) & vec2<u32>(0u, _wgslsmith_sub_u32(u_input.d.x, u_input.a) << (0u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_div_f32(282f, 291f)))), vec4<bool>(!(891f <= _wgslsmith_f_op_f32(select(-351f, -1865f, false))), !func_1(1i, -1282f) || (u_input.c >= abs(-42463i)), abs(_wgslsmith_mult_u32(1u, u_input.a)) > ~max(4294967295u, u_input.e.x), !any(vec4<bool>(false, false, true, false)) && true), -1833f);
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 26u)];
    let var_2 = ~(-vec2<i32>(-45587i, 9205i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2392f, -1000f, var_1.c, var_0.c) + vec4<f32>(682f, var_0.e, var_0.c, -734f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, 450f, 534f, var_0.e), vec4<f32>(var_1.e, -843f, -197f, 730f), var_0.d)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, _wgslsmith_f_op_f32(round(var_0.c)), _wgslsmith_f_op_f32(max(-492f, var_0.e)), var_0.e)), select(var_0.d, var_1.d, !var_1.d.x || !var_0.d.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.e, 1580f, -553f, var_1.c))))))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(select(vec3<i32>(i32(-1i) * -2147483647i, countOneBits(var_1.a), 2147483647i >> (1u % 32u)), vec3<i32>(-var_1.a, func_2(global0[_wgslsmith_index_u32(var_1.b.x, 26u)], vec4<f32>(-441f, 1674f, -191f, 638f), vec3<f32>(var_3.x, -1294f, 1070f), vec3<i32>(2147483647i, 23936i, -28096i)), ~20142i), all(!var_0.d)), vec3<i32>(var_1.a, u_input.c, -1i)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.e.xwx, vec3<u32>(firstTrailingBit(var_1.b.x), firstTrailingBit(38673u), ~var_0.b.x)), ~66424u), 1197f, select(vec4<bool>(true, var_1.d.x, !var_1.d.x, var_1.d.x), var_1.d, !(!(!var_1.d.x))), var_1.c);
    let var_4 = global0[_wgslsmith_index_u32(1u, 26u)];
    var var_5 = _wgslsmith_div_f32(-1405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(-var_1.e)) + _wgslsmith_f_op_f32(f32(-1f) * -885f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(312f, var_0.c)) - _wgslsmith_f_op_f32(sign(var_1.e)))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)) - _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(467i, 13725i, var_2.x, 30528i), vec4<i32>(0i, var_2.x, -67475i, var_0.a)), var_4.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1095f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-139f)) * 1f)), _wgslsmith_f_op_f32(min(var_4.e, _wgslsmith_f_op_f32(min(var_3.x, var_1.e)))));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-622f - 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -153f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-191f))), _wgslsmith_div_f32(var_1.e, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1210f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(875f, var_3.x, _wgslsmith_f_op_f32(trunc(-1222f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1273f, 873f, var_3.x) + var_3.xyw))) + var_3.ywx)), var_6, -2147483647i);
}

