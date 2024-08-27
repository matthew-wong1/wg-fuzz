struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, true, true, false, true, false, true, false, false, false, false, true);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_2, 28>;

var<private> global3: vec3<f32> = vec3<f32>(-750f, 2678f, 321f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.b;
    let var_1 = false;
    let var_2 = vec4<f32>(1065f, -423f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, global1.x)) * _wgslsmith_f_op_f32(global3.x * 1020f))))), global3.x);
    global1 = vec4<f32>(1012f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1100f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-233f, arg_2)))))));
    return u_input.b;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> bool {
    global0 = array<bool, 13>();
    var var_0 = select(select(vec3<bool>(global0[_wgslsmith_index_u32(36244u, 13u)], !global0[_wgslsmith_index_u32(~55392u, 13u)], true), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 13u)], true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], true), vec3<bool>(true, true, false)), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 13u)], false, true), vec3<bool>(true, false, !global0[_wgslsmith_index_u32(arg_1.x, 13u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(20596u, 13u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(arg_1.x, 13u)], true), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], true)))), vec3<bool>(false, true, !any(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false), vec2<bool>(false, true), false))), !select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 13u)], global0[_wgslsmith_index_u32(arg_0, 13u)])), !select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(93820u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(62723u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)])), !global0[_wgslsmith_index_u32(u_input.b ^ 0u, 13u)]));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~min(func_3(u_input.c.wyw ^ vec3<i32>(u_input.a.x, u_input.d.x, 1048i), !vec2<bool>(global0[_wgslsmith_index_u32(4336u, 13u)], true), _wgslsmith_f_op_f32(select(898f, 299f, global0[_wgslsmith_index_u32(1u, 13u)])), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 13u)], vec2<bool>(true, var_0.x), vec2<f32>(global1.x, global3.x), vec4<f32>(global1.x, global3.x, global3.x, 812f), u_input.d.x)), 63686u), 13u)], vec2<bool>(true, all(!vec4<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(arg_0, 13u)], true)) || true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-637f, -1520f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, 642f, var_0.x)) * _wgslsmith_f_op_f32(select(arg_2, arg_2, var_0.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1004f, 849f, -1798f, _wgslsmith_f_op_f32(f32(-1f) * -739f)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(661f - global1.x))), var_0.x)), 36001i);
    let var_2 = Struct_1(var_1.a & true, select(!(!var_0.zx), vec2<bool>(var_1.b.x, var_1.b.x), select(true, true, !(1503f != global3.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2098f, 1000f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, 1f, _wgslsmith_f_op_f32(677f - -2116f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-var_1.c.x)))))), _wgslsmith_mod_i32(u_input.a.x, -firstLeadingBit(-2147483647i)));
    var var_3 = 1u;
    return !(arg_1.x > arg_1.x);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 1000f)), global1.zw)) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(floor(-466f))));
    let var_1 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(~6304u, 1u, u_input.b), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, 4294967295u, 0u))));
    var var_2 = Struct_2(select(any(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 13u)], global0[_wgslsmith_index_u32(var_1.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]))), func_4(func_3(u_input.d.zyy, !vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_f32(673f - var_0.x), Struct_1(false, vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 13u)]), global3.xy, vec4<f32>(579f, -1410f, var_0.x, var_0.x), u_input.a.x)), ~vec4<u32>(16868u, u_input.b, 69414u, 1u), _wgslsmith_f_op_f32(global3.x - global1.x)), !global0[_wgslsmith_index_u32(20216u, 13u)]));
    let var_3 = abs(vec4<u32>(abs(u_input.b), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, _wgslsmith_div_u32(39209u, 4294967295u), 1u), ~min(vec3<u32>(0u, var_1.x, var_1.x), vec3<u32>(4294967295u, var_1.x, 4294967295u))), var_1.x));
    let var_4 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x | 4294967295u, firstTrailingBit(var_1.x), reverseBits(var_1.x), 55072u), abs(~var_3)), ~reverseBits(vec4<u32>(0u, 43597u, var_3.x, 0u)) | vec4<u32>(0u, var_1.x & 0u, var_1.x, _wgslsmith_mod_u32(4294967295u, var_1.x)), !(var_1.x < ~61639u)) ^ firstLeadingBit(var_3);
    return (max(u_input.c.x ^ u_input.c.x, u_input.a.x) & _wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(2147483647i), ~u_input.a.x), u_input.c.x)) > firstTrailingBit(_wgslsmith_add_i32(22629i, -(~54124i)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> vec2<f32> {
    let var_0 = all(vec4<bool>(func_2(), true, !any(vec4<bool>(arg_0.b.x, false, global0[_wgslsmith_index_u32(arg_2.x, 13u)], false)), !(global0[_wgslsmith_index_u32(u_input.b, 13u)] | true)));
    let var_1 = u_input.d;
    let var_2 = Struct_1(false, vec2<bool>(true, arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zw + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global1.ww, vec2<f32>(-1638f, 1000f), arg_0.b)), _wgslsmith_f_op_vec2_f32(trunc(global1.zw)), select(arg_0.b, arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x))))) * global3.zy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_1, -1471f, global3.x)))), -(~arg_0.e) & _wgslsmith_clamp_i32(var_1.x, 1i, u_input.d.x));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(417f * -1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, var_2.d.x, 375f) - vec3<f32>(-148f, global1.x, arg_3)) + vec3<f32>(-1165f, arg_1, -583f))) + arg_0.d.zzx));
    let var_3 = ~abs(~(~vec4<u32>(arg_2.x, arg_2.x, 1u, u_input.b)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1285f, -177f) * global1.wy) + vec2<f32>(arg_1, 1738f)) + global1.yz)) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(486f, 976f) - _wgslsmith_f_op_f32(775f * global1.x))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global2 = array<Struct_2, 28>();
    global0 = array<bool, 13>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = 17761u ^ (u_input.b >> (~_wgslsmith_add_u32(~u_input.b, 47482u) % 32u));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), -275f)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~(~firstTrailingBit(u_input.b))), var_1), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(func_5(global1.x, Struct_2(false), Struct_1(!global0[_wgslsmith_index_u32(u_input.b, 13u)], select(vec2<bool>(global0[_wgslsmith_index_u32(15416u, 13u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], true), global0[_wgslsmith_index_u32(9154u, 13u)]), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(global0[_wgslsmith_index_u32(72698u, 13u)], vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], false), vec2<f32>(-330f, -858f), vec4<f32>(262f, -183f, 453f, -2277f), u_input.d.x), global3.x, vec3<u32>(u_input.b, u_input.b, 4294967295u), 824f)), _wgslsmith_div_vec4_f32(vec4<f32>(-777f, 861f, global3.x, global1.x), vec4<f32>(global3.x, global3.x, -515f, -434f)), u_input.d.x)), ~countOneBits(484u) <= u_input.b), vec2<bool>(false, !(!global0[_wgslsmith_index_u32(u_input.b, 13u)] & global0[_wgslsmith_index_u32(~1u, 13u)])), false);
    let var_1 = global0[_wgslsmith_index_u32(1u, 13u)];
    var var_2 = _wgslsmith_f_op_f32(-global3.x);
    global3 = global1.zxz;
    let var_3 = global2[_wgslsmith_index_u32(u_input.b >> (~(u_input.b & (abs(u_input.b) ^ u_input.b)) % 32u), 28u)];
    let var_4 = vec3<bool>(true, false, true);
    var var_5 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), abs(max(_wgslsmith_mult_vec3_i32(u_input.c.wwy, -vec3<i32>(55706i, 0i, 21674i)), -vec3<i32>(17993i, u_input.d.x, u_input.a.x))), max(u_input.d.xyw, vec3<i32>(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 0i)), (u_input.c.x | -64823i) >> (u_input.b % 32u), max(0i, max(-1i, 24983i)))));
}

