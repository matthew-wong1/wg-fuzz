struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(15306i, -1i, 2147483647i), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), -45320i));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec3<i32> {
    global0 = Struct_2(~(vec3<i32>(global0.b.c, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, global0.b.c, arg_1.c), vec3<i32>(arg_1.c, 1276i, 24458i)), 1i) << (vec3<u32>(1u, abs(49528u), ~1u) % vec3<u32>(32u))), global0.b);
    let var_0 = select(vec2<bool>(any(vec4<bool>(true, true, false, global0.b.a.x)), true), arg_0.xx, arg_3.x);
    let var_1 = _wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32(26548u, u_input.a.x));
    var var_2 = vec2<i32>(countOneBits(-12588i), _wgslsmith_div_i32(abs(firstLeadingBit(~1i)), global0.a.x << (1u % 32u)));
    let var_3 = Struct_1(arg_3.zwz, vec2<bool>(all(vec2<bool>(!arg_0.x, any(arg_3.wx))), select(arg_3.x, var_0.x, false)), 2147483647i);
    return global0.a;
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_2(~(-(~func_3(vec4<bool>(true, global1.x, true, global1.x), global2[_wgslsmith_index_u32(42371u, 24u)], u_input.a, vec4<bool>(true, true, false, global0.b.b.x)))), global0.b);
    global1 = select(!select(!vec4<bool>(var_0.b.b.x, var_0.b.b.x, true, false), select(vec4<bool>(var_0.b.a.x, global0.b.b.x, var_0.b.a.x, true), select(vec4<bool>(true, true, false, var_0.b.a.x), vec4<bool>(var_0.b.b.x, global0.b.a.x, true, global0.b.b.x), vec4<bool>(true, false, true, global1.x)), true), any(!vec4<bool>(var_0.b.a.x, var_0.b.a.x, global1.x, global0.b.b.x))), select(vec4<bool>(global0.b.a.x, global0.b.b.x, global0.b.a.x, global1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.b.a.x, all(vec4<bool>(var_0.b.b.x, var_0.b.a.x, global1.x, false)), var_0.b.c < 66646i), false), select(vec4<bool>(u_input.a.x <= u_input.a.x, var_0.b.b.x, var_0.b.a.x, var_0.b.b.x), select(!vec4<bool>(true, global0.b.a.x, global1.x, true), select(vec4<bool>(true, global0.b.b.x, false, true), vec4<bool>(true, global1.x, global0.b.a.x, global1.x), true), false), -311f != _wgslsmith_f_op_f32(max(-1192f, arg_0.x)))), vec4<bool>(true, all(vec3<bool>(global0.b.b.x, global0.b.a.x, global1.x)) & (u_input.b <= abs(u_input.b)), all(var_0.b.b), false));
    var var_1 = _wgslsmith_div_f32(arg_0.x, -991f);
    global2 = array<Struct_1, 24>();
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(abs(u_input.a.x), u_input.b ^ u_input.b, u_input.a.x & u_input.b, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), vec4<u32>(1u, u_input.a.x, 50111u, 56332u) & vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.b, 43181u, 19967u, 96015u)), _wgslsmith_div_u32(u_input.a.x, u_input.b)), max(u_input.a.x, ~u_input.b))), ~59286u);
    return !select(vec4<bool>(any(vec3<bool>(global1.x, global1.x, false)), var_0.b.b.x, all(vec2<bool>(true, global1.x)) || global0.b.a.x, any(vec4<bool>(var_0.b.a.x, global0.b.b.x, false, global0.b.b.x))), vec4<bool>(!(var_0.b.b.x & true), global1.x, all(global0.b.a), all(var_0.b.a)), vec4<bool>(_wgslsmith_dot_vec2_i32(var_0.a.xx, var_0.a.yz) >= 1i, any(global1.xz), !(global0.b.a.x && false), false));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global2 = array<Struct_1, 24>();
    global0 = Struct_2((vec3<i32>(global0.b.c & 2147483647i, global0.b.c, firstTrailingBit(arg_2.c)) >> (vec3<u32>(min(u_input.a.x, u_input.b), 0u, reverseBits(u_input.b)) % vec3<u32>(32u))) >> (min(vec3<u32>(~u_input.a.x, min(u_input.b, u_input.a.x), 1779u | u_input.b), ~(~vec3<u32>(0u, 1u, u_input.a.x))) % vec3<u32>(32u)), Struct_1(vec3<bool>(true, true, true), arg_2.b, -_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.b.c, -1i, arg_2.c), global0.a)));
    let var_0 = _wgslsmith_dot_vec2_i32(global0.a.yy, -firstTrailingBit(vec2<i32>(-1i) * -global0.a.xy));
    global0 = Struct_2(vec3<i32>(-1i) * -firstLeadingBit(select(vec3<i32>(arg_2.c, var_0, global0.a.x), global0.a, true)), Struct_1(func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -245f, arg_0))))).ywx, vec2<bool>(true, all(!vec2<bool>(true, global0.b.b.x))), arg_2.c));
    var var_1 = firstLeadingBit(-(~func_3(arg_1, Struct_1(arg_1.zxx, global1.xw, global0.a.x), ~vec2<u32>(4294967295u, 0u), !vec4<bool>(global0.b.a.x, false, true, global1.x)).x));
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 556f, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -361f))), -162f, arg_0)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    global1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-982f, _wgslsmith_f_op_f32(-417f - arg_3.x))) - _wgslsmith_f_op_f32(-arg_2)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(395f, -1263f, 813f) + vec3<f32>(arg_2, arg_2, -1102f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1092f, -1803f))))), Struct_1(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1185f, -803f, 284f)))))).xyz, global1.zx, _wgslsmith_sub_i32(arg_0.c, _wgslsmith_mult_i32(~(-5525i), -23547i))), global0.b.a.x);
    global0 = Struct_2(max(global0.a, _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, 1i, 1i), global0.a, func_4(996f, vec4<bool>(false, true, false, false), Struct_1(global0.b.a, vec2<bool>(arg_0.a.x, false), 1i), arg_0.a.x).x), ~vec3<i32>(global0.a.x, 62879i, 0i))), Struct_1(func_4(arg_3.x, func_4(_wgslsmith_f_op_f32(exp2(arg_3.x)), vec4<bool>(true, arg_1, global1.x, global1.x), global0.b, true), Struct_1(func_4(155f, vec4<bool>(arg_1, false, arg_1, global0.b.b.x), global0.b, false).xzz, vec2<bool>(global1.x, arg_1), -15108i), true).yyw, vec2<bool>(true || global0.b.b.x, arg_1), 28224i));
    global1 = vec4<bool>(!(!any(!vec4<bool>(true, global0.b.b.x, global0.b.b.x, arg_0.b.x))), select(any(select(vec3<bool>(global1.x, true, arg_0.b.x), !global1.zyw, !arg_0.a)), any(!func_4(arg_2, vec4<bool>(true, false, arg_0.a.x, arg_0.b.x), global2[_wgslsmith_index_u32(116816u, 24u)], global1.x).zw), global0.b.a.x), all(vec3<bool>(arg_1, !(u_input.a.x <= u_input.b), arg_1)), 592f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
    global1 = select(!(!func_4(_wgslsmith_f_op_f32(abs(arg_2)), vec4<bool>(true, arg_1, arg_1, true), Struct_1(vec3<bool>(arg_1, true, true), vec2<bool>(global1.x, global1.x), 1637i), func_4(-1011f, vec4<bool>(false, arg_0.b.x, arg_1, arg_0.b.x), arg_0, false).x)), !select(select(!vec4<bool>(global1.x, global0.b.a.x, false, true), vec4<bool>(true, global1.x, true, false), true), !(!vec4<bool>(global1.x, false, true, true)), !(!vec4<bool>(global1.x, global1.x, global1.x, true))), arg_1);
    global1 = !vec4<bool>(select(any(vec4<bool>(global0.b.a.x, global1.x, global0.b.a.x, true)) && (-2147483647i == global0.b.c), !(!arg_1), _wgslsmith_clamp_u32(u_input.a.x, 5226u, 1u) <= u_input.a.x), select(true, global1.x, global0.b.a.x), true, any(global0.b.a));
    return Struct_2(global0.a ^ reverseBits(_wgslsmith_add_vec3_i32(-global0.a, vec3<i32>(arg_0.c, 25183i, -35944i))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    global0 = func_1(Struct_1(global1.zyx, !(!(!global0.b.a.zz)), _wgslsmith_dot_vec2_i32(-global0.a.yy ^ -vec2<i32>(-1i, -26406i), ~countOneBits(global0.a.xy))), true, -556f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1011f + _wgslsmith_f_op_f32(1431f + 286f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1259f, 206f)) + _wgslsmith_f_op_f32(round(367f))) * _wgslsmith_f_op_f32(f32(-1f) * -764f))));
    global2 = array<Struct_1, 24>();
    var var_0 = Struct_2(-vec3<i32>(firstLeadingBit(global0.a.x), abs(1i), -1i), func_1(func_1(func_1(Struct_1(global1.www, vec2<bool>(global1.x, global0.b.a.x), global0.b.c), true, _wgslsmith_f_op_f32(min(921f, -775f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, 1000f))).b, global1.x, -384f, vec2<f32>(_wgslsmith_f_op_f32(558f + 112f), -590f)).b, !(!global0.b.a.x), _wgslsmith_f_op_f32(round(-1295f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(797f)), _wgslsmith_f_op_f32(f32(-1f) * -1466f)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-395f)), _wgslsmith_f_op_f32(915f * 1089f)))).b);
    var_0 = Struct_2(vec3<i32>(_wgslsmith_clamp_i32(global0.b.c, ~0i, ~1i) ^ (1i & _wgslsmith_mult_i32(-1i, global0.b.c)), -4105i, var_0.b.c), func_1(func_1(global2[_wgslsmith_index_u32(u_input.b, 24u)], !global0.b.a.x || true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f * -308f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-884f, -684f), vec2<f32>(-814f, -1000f)))).b, !(all(vec2<bool>(true, false)) && true), _wgslsmith_f_op_f32(f32(-1f) * -2360f), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1284f)))), _wgslsmith_f_op_f32(f32(-1f) * -1513f))).b);
    let var_1 = any(var_0.b.a);
    var var_2 = global0.b;
    let var_3 = Struct_1(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-429f, -948f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1456f)))), func_4(1f, select(vec4<bool>(false, global0.b.b.x, true, false), func_4(-569f, vec4<bool>(var_2.a.x, true, global0.b.a.x, var_2.b.x), Struct_1(vec3<bool>(true, global0.b.b.x, var_1), vec2<bool>(global0.b.b.x, var_1), -1i), true), select(false, false, true)), Struct_1(!global1.xwy, vec2<bool>(false, global0.b.a.x), select(-7143i, 18902i, global1.x)), false || all(vec3<bool>(true, false, var_0.b.b.x))), global0.b, !(!any(vec4<bool>(var_2.a.x, true, global0.b.b.x, global0.b.a.x)))).yyy, vec2<bool>(false | (countOneBits(var_2.c) > (global0.b.c ^ var_0.b.c)), global1.x), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1787f)), 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1296f - 634f), _wgslsmith_f_op_f32(1808f - 1609f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1020f, -1420f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1164f, -1877f, -1249f), vec3<f32>(570f, -564f, 2063f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-492f, -1415f, 861f)))))))), firstTrailingBit(u_input.a.x), ~(~(vec3<u32>(24638u, u_input.a.x, 4294967295u) << (~vec3<u32>(u_input.a.x, 1u, 190u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_div_f32(-594f, 315f)))));
}

