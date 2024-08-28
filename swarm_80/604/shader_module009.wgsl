struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<f32> = vec4<f32>(-249f, 225f, 1288f, -1506f);

var<private> global2: array<bool, 32>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 29075u, 20317u, 15240u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec2<i32>(u_input.c.x, _wgslsmith_div_i32((0i >> ((4294967295u & u_input.b) % 32u)) ^ -(u_input.a.x | 2147483647i), -_wgslsmith_dot_vec3_i32(max(vec3<i32>(1361i, u_input.c.x, u_input.d.x), u_input.a), -u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(374f + global1.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(797f, global0.x, global1.x)) * global1.zxx))), countOneBits(firstLeadingBit(global3.xw)), select(vec3<bool>(select(u_input.d.x, u_input.c.x, global2[_wgslsmith_index_u32(u_input.e, 32u)]) != _wgslsmith_div_i32(-44158i, -15388i), true, any(vec3<bool>(global2[_wgslsmith_index_u32(24936u, 32u)], true, false))), vec3<bool>(all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 32u)], true), vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 32u)], global2[_wgslsmith_index_u32(u_input.b, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(global3.x, 32u)]))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.e, global3.x), global3.x), 32u)], select(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]) && (global2[_wgslsmith_index_u32(u_input.b, 32u)] & false)), global2[_wgslsmith_index_u32(35501u, 32u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))))), ~abs(firstTrailingBit(max(u_input.a, vec3<i32>(u_input.d.x, u_input.a.x, 2507i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.x, 343f))))), 463f)));
    global3 = ~(~select(max(~vec4<u32>(var_1.b.x, global3.x, 3145u, var_1.b.x), firstLeadingBit(vec4<u32>(u_input.b, var_1.b.x, 56043u, 8251u))), select(countOneBits(vec4<u32>(53865u, 1u, var_1.b.x, 1u)), ~vec4<u32>(global3.x, 0u, var_1.b.x, 66999u), !vec4<bool>(true, var_1.c.x, global2[_wgslsmith_index_u32(12896u, 32u)], true)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.b.x, 32u)], var_1.c.x, false), vec4<bool>(global2[_wgslsmith_index_u32(61621u, 32u)], false, true, var_1.c.x), !vec4<bool>(var_1.c.x, true, true, true))));
    return abs(vec2<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), 61477u)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = (_wgslsmith_f_op_f32(trunc(678f)) < _wgslsmith_f_op_f32(f32(-1f) * -313f)) | !global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, global3.x), 32u)];
    let var_1 = u_input.d.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.zzw * global0.wzz), func_3(), vec3<bool>(select(global2[_wgslsmith_index_u32(1u, 32u)], global3.x > u_input.e, global2[_wgslsmith_index_u32(countOneBits(1188u), 32u)]) && ((arg_0.x != var_1) || all(vec3<bool>(var_0, var_0, true))), all(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 32u)], global2[_wgslsmith_index_u32(u_input.b, 32u)]))), (_wgslsmith_mod_u32(1499u, global3.x) | 83872u) < global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-733f * 690f) + _wgslsmith_f_op_f32(global0.x + -1000f)), 1024f)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(select(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 0i, 10906i)), u_input.c, !global2[_wgslsmith_index_u32(global3.x, 32u)]), ~(-u_input.a)), abs(vec3<i32>(arg_0.x, _wgslsmith_div_i32(var_1, var_1), ~10612i))));
    var var_3 = !(-804f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global0.x) + -911f))));
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1247f, var_2.a.x, -1563f, global0.x))) * vec4<f32>(1000f, global0.x, -163f, var_2.d))))));
    return var_2.b.x;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f * -308f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1827f), global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, global1.x, 1000f, -1129f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 770f, -3036f, global0.x) - vec4<f32>(377f, 636f, -764f, 191f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, global0.x, 1000f, 590f))))))));
    global2 = array<bool, 32>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, u_input.e), _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(global3.x, arg_0.b.x), func_2(abs(u_input.a))), global3.xw | _wgslsmith_mult_vec2_u32(vec2<u32>(global3.x, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(39979u, arg_0.b.x), vec2<u32>(15362u, 4294967295u), vec2<u32>(6536u, global3.x))))), 32u)];
    var var_1 = vec4<f32>(-545f, -1694f, 822f, global1.x);
    return select(select(!select(arg_0.c, arg_0.c, true), !vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.b.x, 32u)] && global2[_wgslsmith_index_u32(u_input.e, 32u)], !global2[_wgslsmith_index_u32(u_input.e, 32u)]), !global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(2116u, 17621u, u_input.b)), 32u)]), vec3<bool>(false, select(true, global2[_wgslsmith_index_u32(func_3().x, 32u)], any(!vec3<bool>(global2[_wgslsmith_index_u32(11986u, 32u)], global2[_wgslsmith_index_u32(global3.x, 32u)], false))), true), any(vec2<bool>(_wgslsmith_f_op_f32(-697f + -1320f) <= var_1.x, !all(vec2<bool>(arg_0.c.x, global2[_wgslsmith_index_u32(4294967295u, 32u)])))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1466f - global1.x), 1f, global1.x, _wgslsmith_f_op_f32(1605f + -501f)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.d - -1296f), arg_0.d, global0.x, global1.x)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0.d, arg_0.a.x, -1475f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 1102f, -166f, 1472f))), _wgslsmith_div_vec4_f32(vec4<f32>(240f, 474f, 1004f, 674f), vec4<f32>(-1410f, -754f, -222f, -456f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1469f, -867f, global0.x, -1321f))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1963f), _wgslsmith_f_op_f32(sign(-1101f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(447f, 123f, global0.x, -439f), vec4<f32>(-1114f, global0.x, 377f, arg_0.d), arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, arg_0.d, -1184f, global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -1171f, global1.x, -836f))), vec4<f32>(831f, 134f, global0.x, global0.x)), any(vec3<bool>(global2[_wgslsmith_index_u32(11291u, 32u)], false, global2[_wgslsmith_index_u32(global3.x, 32u)])))))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(958f * global1.x), _wgslsmith_f_op_f32(-arg_0.d), -2385f, _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1696f, arg_0.a.x, global0.x) * vec4<f32>(global1.x, -1310f, arg_0.a.x, 1588f)) + vec4<f32>(724f, -466f, -1786f, global1.x))))));
    var var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, var_0.b, !vec3<bool>(!global2[_wgslsmith_index_u32(1u, 32u)], arg_0.c.x, any(vec2<bool>(arg_0.c.x, var_0.c.x)) && true), _wgslsmith_f_op_f32(select(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1204f)))), all(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(36562u, 32u)], arg_0.c.x, false), vec4<bool>(false, arg_0.c.x, arg_0.c.x, var_0.c.x), vec4<bool>(global2[_wgslsmith_index_u32(11078u, 32u)], arg_0.c.x, arg_0.c.x, false))))), vec3<i32>(-_wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(2147483647i, arg_0.e.x, u_input.c.x), 35583i), -_wgslsmith_sub_i32(-arg_0.e.x, u_input.c.x), _wgslsmith_clamp_i32(countOneBits(u_input.a.x), ~(-1i), ~u_input.c.x)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = func_4(Struct_1(global1.zyy, arg_0.b, select(!vec3<bool>(arg_1.c.x, true, false), func_4(Struct_1(vec3<f32>(arg_3.a.x, global1.x, -1000f), arg_3.b, vec3<bool>(arg_3.c.x, false, false), 764f, vec3<i32>(-7175i, arg_3.e.x, -29329i))).c, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -648f))), ~(~(-vec3<i32>(arg_3.e.x, u_input.a.x, 6330i)))));
    var var_1 = true;
    let var_2 = func_4(Struct_1(vec3<f32>(arg_0.a.x, 213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f * var_0.a.x))), func_4(func_4(arg_0)).b, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), arg_0.e));
    global3 = ~vec4<u32>(76127u, 4294967295u, firstLeadingBit(arg_2.x), 1u);
    var var_3 = func_4(var_2);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-869f, _wgslsmith_f_op_f32(-var_3.a.x), arg_3.d, global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1075f, var_0.a.x, arg_0.d, var_0.d), vec4<f32>(-271f, -2090f, 1982f, var_3.d), vec4<bool>(arg_1.c.x, arg_3.c.x, true, global2[_wgslsmith_index_u32(u_input.b, 32u)])))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), arg_0.d, _wgslsmith_f_op_f32(func_4(arg_1).a.x * _wgslsmith_f_op_f32(max(arg_3.a.x, 1215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1138f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -728f)) * global0.x), -369f, _wgslsmith_f_op_f32(-arg_3.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d), -126f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.zxy)), global3.zx, func_1(Struct_1(vec3<f32>(-788f, 451f, global0.x), vec2<u32>(31446u, global3.x), vec3<bool>(true, true, true), 1010f, u_input.c)), global0.x, vec3<i32>(_wgslsmith_div_i32(61485i, 22727i), 13108i, 2147483647i))), Struct_1(global0.xwz, select(~vec2<u32>(u_input.e, u_input.e), global3.xz, global2[_wgslsmith_index_u32(~global3.x, 32u)]) << (vec2<u32>(max(u_input.e, 1u), ~172595u) % vec2<u32>(32u)), !select(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 32u)]), func_1(Struct_1(global0.xxw, global3.ww, vec3<bool>(false, false, false), global1.x, u_input.c)), global0.x != global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1659f)), func_4(Struct_1(global1.xww, global3.zz, vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 32u)], true, global2[_wgslsmith_index_u32(39745u, 32u)]), global0.x, u_input.c)).a.x, !global2[_wgslsmith_index_u32(global3.x, 32u)]))), select(-vec3<i32>(17884i, u_input.c.x, 36372i), (vec3<i32>(u_input.a.x, 56849i, u_input.d.x) >> (global3.wwz % vec3<u32>(32u))) ^ ~u_input.c, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25905u, global3.x, global3.x, global3.x), vec4<u32>(13523u, 4294967295u, 1u, 0u)), ~global3.x), 32u)])), vec3<u32>(78426u, global3.x, ~firstLeadingBit(0u) | func_2(countOneBits(vec3<i32>(-54967i, u_input.a.x, 0i)))), Struct_1(vec3<f32>(1285f, _wgslsmith_div_f32(200f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(-1131f, global0.x)), ~global3.yy, !vec3<bool>(true, !global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]), 536f, _wgslsmith_sub_vec3_i32(u_input.a, u_input.a))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(151f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-func_4(Struct_1(global1.zxw, global3.zz, vec3<bool>(false, global2[_wgslsmith_index_u32(global3.x, 32u)], global2[_wgslsmith_index_u32(global3.x, 32u)]), -658f, u_input.c)).a)), vec2<u32>(11093u >> (~func_3().x % 32u), ~_wgslsmith_dot_vec2_u32(global3.ww, vec2<u32>(0u, 1208u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), vec3<bool>(true, !global2[_wgslsmith_index_u32(u_input.e, 32u)], true), var_0.x, ~(-_wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(1861i, 6345i, -6512i), vec3<i32>(24736i, u_input.a.x, -2053i)))));
    let var_2 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 492f, var_0.x) - global1.xzw), _wgslsmith_f_op_vec3_f32(-var_1.a))), ~var_1.b, var_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.x)))), select(vec3<i32>(14325i, var_1.e.x, 1i), vec3<i32>(20273i, var_1.e.x, var_1.e.x), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], false, var_1.c.x)) << (~global3.xyy % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_4(func_4(func_4(Struct_1(global1.zxx, global3.zy, var_2.c, -930f, vec3<i32>(var_2.e.x, 2147483647i, 1i))))).e.xz), -select(vec2<i32>(_wgslsmith_add_i32(61728i, u_input.a.x), -var_2.e.x), (vec2<i32>(1i, var_2.e.x) << (vec2<u32>(var_2.b.x, u_input.e) % vec2<u32>(32u))) ^ (vec2<i32>(2147483647i, 7731i) >> (var_2.b % vec2<u32>(32u))), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(-1161f, 231f, _wgslsmith_f_op_f32(global0.x - -179f), _wgslsmith_f_op_f32(round(-1000f))))), abs(-max(var_2.e.x, var_1.e.x)));
}

