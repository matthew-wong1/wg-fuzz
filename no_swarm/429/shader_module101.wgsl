struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<bool, 8> = array<bool, 8>(false, false, true, true, true, false, false, true);

var<private> global2: array<u32, 26>;

var<private> global3: array<vec2<bool>, 8>;

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = min(firstTrailingBit(vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.zwx, -vec3<i32>(global4.x, global4.x, -2147483647i)), abs(global4.x))), min(u_input.c.ywy, abs(-u_input.c.yzx)));
    let var_1 = arg_1.x;
    var var_2 = -select(reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.x, -22054i, u_input.c.x), u_input.c.x)), global4.x, global1[_wgslsmith_index_u32(~abs(0u), 8u)] & !(!var_1));
    let var_3 = global2[_wgslsmith_index_u32(62724u, 26u)];
    let var_4 = select(arg_1, vec2<bool>(!var_1, !(!(arg_0.x >= arg_2.x))), select(global3[_wgslsmith_index_u32(u_input.b, 8u)], select(!(!vec2<bool>(arg_1.x, global1[_wgslsmith_index_u32(12551u, 8u)])), select(global3[_wgslsmith_index_u32(~u_input.a.x, 8u)], vec2<bool>(true, var_1), !global3[_wgslsmith_index_u32(55340u, 8u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(25111u, ~global2[_wgslsmith_index_u32(u_input.b, 26u)]), 8u)]), !select(!arg_1, select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(18102u, 8u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(54510u, 8u)]), false), arg_1)));
    return max(abs(~select(~vec4<u32>(u_input.b, 60607u, u_input.a.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, 39320u, 1u), !global1[_wgslsmith_index_u32(u_input.b, 8u)])), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.b, 43435u)), ~(~11544u), reverseBits(u_input.b), firstTrailingBit(~0u)), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], ~0u, 21168u, min(0u, select(u_input.b, u_input.b, var_4.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = select(!arg_0.b, select(vec3<bool>(arg_1, !all(vec3<bool>(true, true, false)), !(!global1[_wgslsmith_index_u32(17808u, 8u)])), vec3<bool>(any(arg_0.b.zy), !(!arg_1), true), vec3<bool>(!(arg_0.b.x | true), all(vec2<bool>(arg_0.b.x, arg_1)) | all(global3[_wgslsmith_index_u32(27953u, 8u)]), global1[_wgslsmith_index_u32(u_input.b, 8u)])), -26695i > -u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-222f, -944f)) - -457f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1420f - -815f))), 1f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(2912f)), _wgslsmith_f_op_f32(-1627f - -1202f), 512f, _wgslsmith_f_op_f32(1362f + 1000f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1716f, -1175f, 1766f, 812f), vec4<f32>(1212f, -157f, 359f, -146f), vec4<bool>(true, arg_0.b.x, arg_0.b.x, true)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1385f, -1506f, 277f, -1277f))))))))), vec4<bool>(true, true, !arg_1, !(!all(var_0.xx)))));
    let var_2 = -min(vec4<i32>(u_input.c.x, 1i, global4.x, u_input.c.x | -1i) | vec4<i32>(_wgslsmith_mult_i32(-20056i, u_input.c.x), 1i, 1i, 0i), ~(-vec4<i32>(arg_0.a, u_input.c.x, global4.x, global4.x)) | vec4<i32>(_wgslsmith_mod_i32(-34826i, global4.x), -2147483647i, _wgslsmith_mult_i32(2147483647i, 0i), firstLeadingBit(2147483647i)));
    var var_3 = global0[_wgslsmith_index_u32(5236u, 20u)];
    var var_4 = arg_0;
    return -1i << (_wgslsmith_div_u32(277u, ~abs(~arg_0.c.x)) % 32u);
}

fn func_2() -> f32 {
    global1 = array<bool, 8>();
    var var_0 = global0[_wgslsmith_index_u32(min(u_input.a.x, ~1u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~54778u, global2[_wgslsmith_index_u32(12538u, 26u)]), vec2<u32>(0u & global2[_wgslsmith_index_u32(~84326u, 26u)], _wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 26u)], min(u_input.a.x, 0u)))) % 32u), 20u)];
    let var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(29030u, 26u)], 26u)], 20u)];
    global0 = array<Struct_1, 20>();
    global4 = vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(0i, func_4(Struct_1(-2147483647i, !var_1.b, func_3(vec2<f32>(948f, 370f), vec2<bool>(global1[_wgslsmith_index_u32(28300u, 8u)], false), vec4<f32>(468f, -1305f, -190f, 1291f))), all(var_1.b) == var_0.b.x), ~countOneBits(1i)), abs(-2147483647i));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(874f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(trunc(413f)))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global4 = _wgslsmith_add_vec3_i32(u_input.c.xyz, min(vec3<i32>(countOneBits(-1i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global4.x, -1i, global4.x, arg_3.a)) & arg_2.a, 1i), vec3<i32>(38127i, _wgslsmith_sub_i32(global4.x >> (arg_2.c.x % 32u), _wgslsmith_div_i32(u_input.c.x, -38749i)), ~select(u_input.c.x, global4.x, false))));
    let var_0 = arg_2;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-880f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-993f, _wgslsmith_f_op_f32(arg_0 - 965f), true && arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-954f, arg_1, var_0.b.x)))))), _wgslsmith_div_f32(-267f, 239f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    global2 = array<u32, 26>();
    return vec3<bool>(~(~global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 26u)]), 26u)]) == ~countOneBits(4294967295u), false, 46595u >= select(select(u_input.a.x, _wgslsmith_add_u32(0u, u_input.a.x), 0u == u_input.b), ~_wgslsmith_sub_u32(var_0.c.x, arg_3.c.x), true));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<bool>) -> u32 {
    global4 = u_input.c.yzy;
    global3 = array<vec2<bool>, 8>();
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1025f + _wgslsmith_f_op_f32(sign(-559f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), 837f))), 1410f, global0[_wgslsmith_index_u32(abs(u_input.a.x), 20u)], global0[_wgslsmith_index_u32(~(~(u_input.b & 19350u)), 20u)]);
    let var_1 = Struct_1(arg_2.x, !var_0, ~abs(vec4<u32>(0u, 4294967295u, ~77392u, u_input.b)));
    global4 = u_input.c.yzw;
    return _wgslsmith_dot_vec3_u32(var_1.c.yxz, ~vec3<u32>(max(var_1.c.x << (u_input.b % 32u), global2[_wgslsmith_index_u32(var_1.c.x, 26u)] | 0u), abs(u_input.b), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 26>();
    global1 = array<bool, 8>();
    global4 = reverseBits(-abs(u_input.c.zzx));
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_1(-47974i, global1[_wgslsmith_index_u32(4294967295u, 8u)], vec3<i32>(global4.x, global4.x, u_input.c.x), vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 8u)], false)), 1u << (global2[_wgslsmith_index_u32(u_input.b, 26u)] % 32u)), ~global2[_wgslsmith_index_u32(33035u, 26u)] | _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31291u, 26u)], 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 4294967295u, 80656u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 8435u, u_input.b, 13948u)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 0u), 26u)], abs(4294967295u))), ~(~(~4294967295u)) >> (~(~(~4294967295u)) % 32u)), 20u)];
    let var_1 = Struct_1(global4.x, func_5(_wgslsmith_f_op_f32(-254f * -138f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f))), Struct_1(reverseBits(1i), !(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 8u)], var_0.b.x, false)), abs(vec4<u32>(0u, u_input.a.x, u_input.b, var_0.c.x))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1860f)), vec2<bool>(var_0.b.x, global1[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1108f, -1085f, -1892f, -1443f)))).x), 26u)], 20u)]), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.c.xz, vec2<u32>(0u, u_input.b)), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_0.c.x, 26u)], 0u)), u_input.b, u_input.b, ~1u), vec4<u32>(~(~4294967295u), _wgslsmith_sub_u32(countOneBits(26355u), select(var_1.c.x, u_input.b, false)), reverseBits(firstTrailingBit(43287u)), global2[_wgslsmith_index_u32(33126u, 26u)])), max(var_0.c.x, func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-628f, 1000f))))), !var_1.b.xz, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1237f, 498f, 893f, 1287f)))).x));
}

