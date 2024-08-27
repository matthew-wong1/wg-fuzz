struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-960f, vec4<bool>(true, false, true, false), false);

var<private> global1: bool;

var<private> global2: array<u32, 7>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(857f, _wgslsmith_f_op_f32(-437f + global0.a), _wgslsmith_f_op_f32(arg_0.c.x + -917f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -743f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1671f, arg_0.b.b.x, 640f, -1206f), vec4<f32>(global0.a, 1000f, global0.a, global0.a))))));
    let var_1 = Struct_2(vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_0.a.x, 7u)]))), 51956u), arg_0.b.b, firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)] ^ 16636u, 1u), select(~1u, 0u >> (1u % 32u), select(true, arg_0.b.d.c, global0.c)))), arg_0.b.d);
    let var_2 = !((arg_0.b.d.b.x & global0.b.x) | !(_wgslsmith_f_op_f32(328f - var_0.x) <= _wgslsmith_f_op_f32(max(var_0.x, 411f))));
    let var_3 = vec4<i32>(firstLeadingBit(-(i32(-1i) * -2147483647i)) | _wgslsmith_mult_i32(arg_0.e.x, _wgslsmith_clamp_i32(-u_input.a, _wgslsmith_add_i32(-17030i, -1i), _wgslsmith_clamp_i32(-28346i, u_input.a, -34838i))), -(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -1823i, arg_0.e.x), vec4<i32>(33521i, 41140i, 19426i, arg_0.d)) ^ 2147483647i)), u_input.a, abs(arg_0.d));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x))));
    return vec3<u32>(arg_0.a.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.c.x, 45666u, 4294967295u, 9098u)), vec4<u32>(abs(var_1.a.x), var_1.c.x, 39187u, ~6507u)) & ((~var_1.c.x ^ var_1.c.x) | 53263u), 31634u);
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = !(!(!(!global0.c)));
    return Struct_2(func_3(Struct_3(~vec2<u32>(0u, 1u), Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.b, 60421u, global2[_wgslsmith_index_u32(47470u, 7u)]), vec3<u32>(u_input.b, u_input.d.x, global2[_wgslsmith_index_u32(4774u, 7u)])), vec3<f32>(1147f, arg_0.x, global0.a), vec2<u32>(0u, 0u), Struct_1(arg_0.x, vec4<bool>(false, false, global0.c, global0.b.x), false)), _wgslsmith_f_op_vec3_f32(round(arg_0.zyy)), -_wgslsmith_mod_i32(u_input.a, u_input.a), vec2<i32>(u_input.a, abs(u_input.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1643f + arg_0.x), _wgslsmith_f_op_f32(1104f + _wgslsmith_f_op_f32(exp2(global0.a))), arg_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(377f, -622f, global0.a) + _wgslsmith_f_op_vec3_f32(-arg_0.wwx)), arg_0.xyw)), ~select(vec2<u32>(u_input.d.x, 68527u) << (_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(reverseBits(u_input.c), vec2<u32>(0u, 1u)), global0.b.x), Struct_1(1000f, !global0.b, !(!global0.b.x == true)));
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = func_2(vec4<f32>(-1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(ceil(arg_0.c.x)))))).d;
    global1 = all(select(select(arg_0.b.d.b.wzx, !select(vec3<bool>(false, var_0.b.x, true), var_0.b.wxy, var_0.b.x), var_0.c), vec3<bool>(any(vec2<bool>(arg_0.b.d.b.x, var_0.c)), false, true || (arg_0.e.x >= arg_0.d)), !(!select(vec3<bool>(var_0.b.x, true, var_0.b.x), var_0.b.xxz, arg_0.b.d.b.ywy))));
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(1361f)), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, 1000f, -882f, arg_0.b.b.x))).d.b, all(vec4<bool>(arg_0.b.d.c, arg_0.b.d.b.x, !any(arg_0.b.d.b.ywy), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, arg_0.c.x, -338f, var_0.a))).d.c)));
    global2 = array<u32, 7>();
    var var_1 = select(~vec4<u32>(_wgslsmith_mod_u32(28797u, u_input.c.x) ^ global2[_wgslsmith_index_u32(4171u, 7u)], firstLeadingBit(~arg_0.a.x), (u_input.b | u_input.b) ^ u_input.d.x, 4294967295u), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(arg_0.a.x, global2[_wgslsmith_index_u32(0u, 7u)], 4294967295u, arg_0.a.x)), ~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], arg_0.a.x, 0u, 0u))) & ~max(select(vec4<u32>(0u, 4294967295u, 11602u, 27370u), vec4<u32>(0u, u_input.b, 6961u, 7422u), var_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(9745u, u_input.d.x, u_input.c.x, 0u), vec4<u32>(38896u, 75517u, u_input.b, global2[_wgslsmith_index_u32(arg_0.b.c.x, 7u)]))), (_wgslsmith_clamp_i32(1i, 1i, 2147483647i) << (35508u % 32u)) > _wgslsmith_div_i32(reverseBits(u_input.a), u_input.a));
    return _wgslsmith_mod_vec2_u32(((var_1.yz | vec2<u32>(1u, 46893u)) & vec2<u32>(var_1.x, 1u)) ^ _wgslsmith_sub_vec2_u32(reverseBits(u_input.d), arg_0.b.c | arg_0.a), vec2<u32>(var_1.x ^ arg_0.a.x, abs(1u))) << (~abs(vec2<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(46453u, 7u)], 7u)], abs(arg_0.b.a.x))) % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = any(!select(global0.b.wz, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 681f, global0.a, 1012f), vec4<f32>(global0.a, global0.a, -1250f, -1000f), vec4<bool>(false, global0.c, false, false)))).d.b.wx, select(!global0.b.x, all(vec3<bool>(global0.b.x, global0.b.x, false)), global0.b.x)));
    let var_1 = vec3<u32>(0u, u_input.b, ~arg_0.x);
    let var_2 = _wgslsmith_mod_vec4_u32(countOneBits(reverseBits(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.b, var_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1499u, 7u)], 7u)]) ^ (vec4<u32>(4294967295u, 27837u, u_input.c.x, 0u) ^ vec4<u32>(var_1.x, 9821u, 1u, 51866u)))), vec4<u32>(~abs(1u), ~var_1.x, ~arg_0.x, 68658u ^ ~u_input.c.x) & min(vec4<u32>(func_2(vec4<f32>(global0.a, -707f, -223f, global0.a)).a.x, arg_0.x, arg_0.x, u_input.c.x), ~reverseBits(vec4<u32>(var_1.x, 32258u, 28055u, var_1.x))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-731f, 177f))))), -2005f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.a, -823f))))), global0.a));
    let var_4 = ~vec3<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 16887u, 4294967295u), var_2.xxz) >> (global2[_wgslsmith_index_u32(4294967295u, 7u)] % 32u)) & select(_wgslsmith_clamp_u32(4294967295u, 0u, var_2.x), _wgslsmith_clamp_u32(u_input.d.x, arg_0.x, var_1.x), true), ~(~4294967295u), min(56068u, 22604u));
    return func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-495f, _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(exp2(var_3.x)))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))))).d;
}

fn func_1() -> Struct_2 {
    global0 = func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, 1u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(4294967295u, 62170u), 7u)], 7u)]), func_4(Struct_3(~vec2<u32>(u_input.d.x, 0u), func_2(vec4<f32>(-106f, global0.a, -1191f, global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -434f, global0.a)), 1i, abs(vec2<i32>(18047i, -3263i))))));
    global1 = any(func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 1933f, 1373f, -910f) - vec4<f32>(-141f, global0.a, global0.a, global0.a)) - vec4<f32>(-2213f, global0.a, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1719f, global0.a, global0.a, global0.a), vec4<f32>(global0.a, global0.a, global0.a, 480f))))))).d.b.yxw);
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(717f, -1534f, global0.a, 1520f) - _wgslsmith_div_vec4_f32(vec4<f32>(689f, 491f, global0.a, -806f), vec4<f32>(global0.a, global0.a, -267f, global0.a))))))).d;
    global2 = array<u32, 7>();
    global2 = array<u32, 7>();
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -374f, -887f, -863f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -694f, -1000f, var_0.a) - vec4<f32>(-1402f, -764f, global0.a, 685f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, global0.a, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1110f, global0.a, var_0.a) + vec4<f32>(-372f, var_0.a, -174f, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1616f, 1251f, global0.a, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1015f, global0.a, var_0.b.x, var_0.d.a))))))).d.b.xy, vec2<bool>(!(!(!global0.c)), func_1().d.b.x), !(!global0.b.zz));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(305f, global0.a, var_0.d.a, _wgslsmith_f_op_f32(trunc(global0.a))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), -198f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(761f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(440f, -688f, _wgslsmith_f_op_f32(-var_0.d.a), var_0.d.a) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, -134f, var_0.b.x, -885f), vec4<f32>(global0.a, -663f, var_0.d.a, var_0.b.x)))))));
    var_0 = Struct_2(_wgslsmith_div_vec3_u32(var_2.a << (~vec3<u32>(var_0.c.x, 3480u, 0u) % vec3<u32>(32u)), vec3<u32>(~0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(var_2.a.x, 7u)]), var_2.c), var_0.a.x | 1u), _wgslsmith_mod_u32(~var_2.c.x, global2[_wgslsmith_index_u32(countOneBits(32723u), 7u)]))), _wgslsmith_f_op_vec3_f32(trunc(var_2.b)), var_2.a.yx >> (abs(u_input.c) % vec2<u32>(32u)), func_1().d);
    let var_3 = Struct_3(var_0.c, Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.a, abs(vec3<u32>(u_input.c.x, 18863u, 560u))), var_0.a), _wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_0.d.a, global0.a) + var_0.b)), ~u_input.d, var_0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b + var_0.b) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a)), 780f), -1553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1558f))))), (i32(-1i) * -19647i) >> (var_0.a.x % 32u), ~(~min(vec2<i32>(1i, -1i), vec2<i32>(50078i, u_input.a)) << (~vec2<u32>(1u, 0u) % vec2<u32>(32u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2353f, var_2.b.x, var_1.x)) * global0.a), global0.b, var_0.d.b.x);
    let var_4 = func_1().d;
    var var_5 = 2147483647i;
    var var_6 = Struct_2(abs(~(~func_3(var_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-250f, var_0.b.x, var_0.b.x))) * var_2.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_2.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1286f, global0.a, global0.a), vec3<f32>(358f, -1194f, global0.a))))))), vec2<u32>(global2[_wgslsmith_index_u32(16931u, 7u)], 7970u), func_1().d);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_6.c.x, 1u, ~_wgslsmith_clamp_vec3_u32(~var_0.a, var_0.a, var_6.a) & vec3<u32>(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.b.x, var_6.b.x, -1000f), vec4<f32>(var_3.c.x, -292f, -245f, var_2.d.a))).a.x, var_6.c.x, ~var_0.a.x), ~(i32(-1i) * -69381i));
}

