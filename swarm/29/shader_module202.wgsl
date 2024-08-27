struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-69175i, vec3<i32>(-23606i, i32(-2147483648), 0i)), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, -1i, 0i)), Struct_1(-47259i, vec3<i32>(i32(-2147483648), 0i, 28364i)), Struct_1(-17058i, vec3<i32>(i32(-2147483648), -3701i, -19687i)), Struct_1(0i, vec3<i32>(48741i, 0i, -1i)), Struct_1(0i, vec3<i32>(-18510i, 1i, 53764i)), Struct_1(0i, vec3<i32>(-39233i, -16660i, -1i)), Struct_1(1i, vec3<i32>(-9231i, -7814i, -22642i)), Struct_1(2147483647i, vec3<i32>(30540i, 0i, -12275i)), Struct_1(i32(-2147483648), vec3<i32>(-15544i, -6622i, 0i)), Struct_1(10000i, vec3<i32>(-12373i, i32(-2147483648), 6541i)), Struct_1(29529i, vec3<i32>(0i, -1i, 2147483647i)), Struct_1(-55295i, vec3<i32>(i32(-2147483648), -4856i, -1i)), Struct_1(-1i, vec3<i32>(0i, 4782i, 9370i)), Struct_1(20019i, vec3<i32>(-55363i, -60589i, -42913i)), Struct_1(2147483647i, vec3<i32>(23007i, -39604i, 2147483647i)), Struct_1(0i, vec3<i32>(-1i, 39909i, -20251i)), Struct_1(-17687i, vec3<i32>(i32(-2147483648), -6762i, 47750i)), Struct_1(1i, vec3<i32>(-45753i, -1i, 0i)), Struct_1(-22503i, vec3<i32>(i32(-2147483648), 3640i, 2147483647i)), Struct_1(i32(-2147483648), vec3<i32>(-21178i, 1i, 46305i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f - -1753f)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> i32 {
    global2 = array<Struct_1, 21>();
    global0 = any(vec3<bool>((max(u_input.b.x, 4294967295u) != _wgslsmith_add_u32(u_input.b.x, 0u)) && true, global1.x, select(true, global1.x, false)));
    global1 = select(!(!(!select(vec2<bool>(true, global1.x), vec2<bool>(true, true), true))), select(select(vec2<bool>(true, true), !(!vec2<bool>(global1.x, true)), vec2<bool>(!global1.x, global1.x)), !(!select(vec2<bool>(false, true), vec2<bool>(global1.x, false), vec2<bool>(true, global1.x))), !vec2<bool>(arg_1 > 3086u, global1.x)), vec2<bool>(global1.x, global1.x));
    var var_0 = global1.x;
    let var_1 = select(select(!select(!vec4<bool>(true, false, global1.x, true), !vec4<bool>(false, global1.x, true, true), !global1.x), select(select(!vec4<bool>(global1.x, false, false, false), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, true, true, false)), global1.x), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(vec4<bool>(false, global1.x, false, false), !vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(true, true, true, false), vec4<bool>(true, global1.x, true, global1.x), false))), global1.x), !(!vec4<bool>(all(vec3<bool>(false, false, false)), false, true, global1.x)), false);
    return select(-9675i, _wgslsmith_add_i32(25781i ^ (arg_0.b.x ^ arg_0.a), 15655i), _wgslsmith_mod_u32(1u, u_input.b.x >> (arg_1 % 32u)) >= firstTrailingBit(0u)) & 2147483647i;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = array<Struct_1, 21>();
    let var_0 = arg_0.b.x;
    let var_1 = vec4<i32>(func_4(Struct_1(2147483647i, ~arg_0.b), ~(~42989u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1797f, 438f)) + _wgslsmith_f_op_f32(func_3()))), func_4(Struct_1(var_0 >> (u_input.c % 32u), vec3<i32>(arg_0.b.x, -2147483647i, 2147483647i)), u_input.c, 1000f), ~(-73492i), countOneBits(var_0)) >> (abs(reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(39825u, u_input.d.x, u_input.c, 0u), vec4<u32>(u_input.d.x, u_input.c, u_input.b.x, 29059u)))) % vec4<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(countOneBits(firstLeadingBit(0i)), -(-1290i | var_1.x))), select(vec3<i32>(var_0, _wgslsmith_add_i32(arg_0.b.x, -6725i), -2147483647i), select(_wgslsmith_div_vec3_i32(var_1.xxz, -vec3<i32>(-1i, var_0, -28356i)), var_1.www, !vec3<bool>(global1.x, false, true)), any(vec3<bool>(false, false, -1i == arg_0.b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1072f - 1083f), 160f, _wgslsmith_f_op_f32(step(-2066f, 1507f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2266f, -627f, -675f) - vec3<f32>(268f, -338f, 713f)), _wgslsmith_div_vec3_f32(vec3<f32>(1646f, 1498f, 684f), vec3<f32>(-101f, -1326f, 1243f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-162f, -1728f, -1000f), vec3<f32>(-480f, -593f, -1523f)))))))));
    return 4294967295u;
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(func_2(Struct_1(27994i, ~vec3<i32>(u_input.a.x, -18136i << (u_input.c % 32u), u_input.a.x))), 21u)];
    var var_1 = Struct_1(min(~abs(-1i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 19967i), vec2<i32>(var_0.a, arg_0.x)), var_0.b.xz)), arg_0.zxx);
    var_1 = Struct_1(firstLeadingBit(2147483647i), vec3<i32>(-arg_0.x, abs(i32(-1i) * -1i), ~(-2147483647i)));
    var var_2 = abs(vec2<u32>(u_input.c, reverseBits(u_input.b.x)));
    var var_3 = u_input.a;
    return !select(!(!vec2<bool>(global1.x, global1.x)), vec2<bool>(_wgslsmith_clamp_u32(var_2.x, var_2.x, 71778u) == ~1u, (18725i != var_3.x) || global1.x), vec2<bool>(global1.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(select(select(!vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x)), vec2<bool>(global1.x, u_input.a.x != u_input.a.x), global1.x), !vec2<bool>(global1.x && true, all(vec3<bool>(true, false, false))), func_1(~firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_0 = -1573f;
    let var_1 = -32311i;
    var_0 = 407f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -750f, 142f))))))));
    let var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(4294967295u), u_input.c), ~u_input.d.x & 6990u, 11719u)), 21u)];
    var var_4 = Struct_1(reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(var_3.b, var_3.b) << (~48468u % 32u))), -(~(vec3<i32>(25568i, -16472i, -1i) ^ vec3<i32>(u_input.a.x, -1i, var_1))) << (~(~u_input.d) % vec3<u32>(32u)));
    global0 = any(select(!select(vec4<bool>(global1.x, true, true, false), !vec4<bool>(global1.x, true, global1.x, true), global1.x), !(!(!vec4<bool>(global1.x, true, global1.x, global1.x))), global1.x));
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(193f - -1058f) + _wgslsmith_f_op_f32(sign(-225f))) - var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_2.x))) + var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.b.zy, reverseBits(select(u_input.b.xz, u_input.b.yy, true))), abs(abs(~(-var_1))), 0i, abs(u_input.d.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1373f, 325f), _wgslsmith_div_f32(1693f, var_5.x)) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1257f)), _wgslsmith_f_op_f32(-var_5.x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(107f * 710f), var_5.x), vec2<f32>(_wgslsmith_f_op_f32(var_2.x * var_5.x), _wgslsmith_f_op_f32(var_2.x + -1000f))))));
}

