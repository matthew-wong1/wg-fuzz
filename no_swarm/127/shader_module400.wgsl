struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_1(vec2<i32>(~arg_0.c, _wgslsmith_mod_i32(0i, i32(-1i) * -40036i)), any(vec2<bool>(true, !arg_1.x || true)), arg_0.a.x);
    global1 = !select(vec4<bool>((global0[_wgslsmith_index_u32(u_input.b.x, 15u)] | true) & global0[_wgslsmith_index_u32(~0u, 15u)], global1.x, arg_0.b, global2.x), select(select(!vec4<bool>(true, var_0.b, true, global0[_wgslsmith_index_u32(41441u, 15u)]), !vec4<bool>(var_0.b, false, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], arg_1.x), true), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)], global2.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], false, arg_1.x), true), vec4<bool>(false, true, arg_1.x, arg_0.b), arg_0.a.x >= var_0.a.x), true), !all(!vec4<bool>(true, var_0.b, true, global1.x)));
    let var_1 = arg_0;
    var var_2 = Struct_1(var_1.a, true, _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_0.c, 19917i, -48398i, 1i) & _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.c, 1i, var_0.c), vec4<i32>(53703i, var_0.c, arg_0.a.x, var_1.a.x))), countOneBits(_wgslsmith_div_vec4_i32(min(vec4<i32>(var_1.a.x, var_1.c, var_0.a.x, var_1.c), vec4<i32>(-1i, -1i, -14063i, var_0.a.x)), vec4<i32>(var_0.a.x, var_1.a.x, 23584i, -20801i) | vec4<i32>(var_1.c, 10519i, -2147483647i, -7016i)))));
    var var_3 = ~max(u_input.a, u_input.a);
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1790f), 1176f, 1269f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(-arg_0.a, true, 4240i);
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2054f, 607f, 285f) - vec3<f32>(487f, 727f, 361f))))), _wgslsmith_f_op_vec3_f32(func_3(var_0, vec2<bool>(4294967295u == u_input.a.x, select(var_1.b, false, var_0.b)))))), vec3<f32>(_wgslsmith_f_op_f32(max(-123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1166f * -1090f) + _wgslsmith_f_op_f32(1151f - 1107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-528f)) - -191f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-305f - _wgslsmith_f_op_f32(floor(-1463f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1296f + 362f), _wgslsmith_f_op_f32(select(-922f, 139f, global0[_wgslsmith_index_u32(34409u, 15u)])))))), _wgslsmith_add_u32(_wgslsmith_mult_u32(78942u, u_input.d | u_input.d), ~_wgslsmith_mult_u32(8853u, 2907u)) > _wgslsmith_dot_vec4_u32(~firstTrailingBit(u_input.a), ~u_input.a)));
    var_1 = var_2;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-2147483647i, arg_0.c, -35949i, 1i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 67838u, u_input.a.x) % vec4<u32>(32u))), ((vec4<i32>(arg_0.c, var_2.a.x, arg_0.c, -25038i) | vec4<i32>(-1i, -1i, var_1.a.x, -6520i)) & vec4<i32>(var_2.c, -1i, -2147483647i, var_2.a.x)) ^ _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_0.c, -37809i, 0i, var_1.a.x)), ~vec4<i32>(arg_0.c, 0i, arg_0.a.x, arg_0.a.x), vec4<i32>(-1i, arg_0.a.x, 32866i, var_0.c) & vec4<i32>(var_1.a.x, -1i, var_0.a.x, var_0.a.x))), ~max(arg_0.c, _wgslsmith_mult_i32(1i, i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), arg_1.c), 2147483647i), false, ~(-16511i));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(arg_2.xw, reverseBits(var_0.a))), vec2<i32>((-32877i >> (u_input.a.x % 32u)) ^ reverseBits(var_0.a.x), -firstLeadingBit(var_0.c))), global0[_wgslsmith_index_u32(~(~(~(arg_0.x ^ u_input.c.x))), 15u)], var_0.c);
    var var_2 = Struct_1(arg_2.ww, any(global2.zz), arg_1.c);
    global1 = select(vec4<bool>(!global0[_wgslsmith_index_u32(0u, 15u)], true, true, select(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, 61073u, u_input.b.x), u_input.a), 15u)] && false, global1.x)), !vec4<bool>(var_2.b, false, (arg_1.b & arg_3) | (global0[_wgslsmith_index_u32(arg_0.x, 15u)] | var_2.b), 1i > _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(-2147483647i, -18004i, var_0.c, -13801i))), !select(vec4<bool>(arg_1.b, arg_3, all(global1.zw), var_2.b == global1.x), vec4<bool>(true, true && global2.x, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 15u)], false, true, true)), true | var_1.b), !select(vec4<bool>(global2.x, arg_1.b, true, true), vec4<bool>(global2.x, false, arg_1.b, false), vec4<bool>(var_2.b, global1.x, global0[_wgslsmith_index_u32(arg_0.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))));
    var var_3 = vec4<bool>(any(!vec4<bool>(arg_0.x < u_input.b.x, false, true, !arg_1.b)), global2.x, !(!any(vec4<bool>(arg_1.b, var_1.b, global0[_wgslsmith_index_u32(13755u, 15u)], true))), all(global2.zz) & false);
    return !var_3.xzw;
}

fn func_1() -> Struct_1 {
    global2 = func_4(u_input.b, Struct_1(vec2<i32>(0i | func_2(Struct_1(vec2<i32>(7501i, -9531i), global2.x, -1i), true), countOneBits(~15233i)), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 15u)], false)), i32(-1i) * -10448i), -vec4<i32>(-35009i, _wgslsmith_mod_i32(2147483647i, -6055i), ~2147483647i, 12699i) & _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -49565i, -21147i), vec3<i32>(-13435i, -40246i, 13630i)), 2042i, 1i, 2147483647i >> (u_input.c.x % 32u)), firstLeadingBit(-vec4<i32>(-55185i, -2147483647i, -54546i, 1i))), global0[_wgslsmith_index_u32(abs(49374u), 15u)]);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1484f, _wgslsmith_f_op_f32(sign(-2205f)), 331f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-403f, 1580f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1759f)), _wgslsmith_f_op_f32(1432f + -209f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-699f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1606f, 1744f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -336f, 944f, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-249f, var_0.x, 1000f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 586f, var_0.x, 1000f) * vec4<f32>(var_0.x, 215f, 924f, -349f)))))));
    global0 = array<bool, 15>();
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -42071i, -15138i), -17442i), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-195i, 1239i), countOneBits(vec2<i32>(2147483647i, -12947i))), _wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(-23807i, 56576i), global2.zx), abs(vec2<i32>(0i, -1i))))), true, ~(-1i));
    return Struct_1(var_1.a, true, var_1.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec3_u32(~u_input.c, ~(~u_input.a.wxx & (u_input.a.zzx | u_input.a.yxz)));
    var var_1 = _wgslsmith_mult_i32(-(~0i), _wgslsmith_div_i32(-1i, 1i));
    let var_2 = arg_0;
    var var_3 = var_2;
    var var_4 = func_1();
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = 347f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-567f * -206f), _wgslsmith_f_op_f32(-121f - 604f), _wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(-922f + -1507f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1523f)), -673f, _wgslsmith_f_op_f32(f32(-1f) * -1709f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(940f, 1892f, 1929f, -1224f) - vec4<f32>(-1000f, -964f, 303f, -998f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, -1362f, -2126f, 1000f)), vec4<bool>(global1.x, true, global1.x, arg_0.b)))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-440f + -306f), _wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1521f * -679f) * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-825f, 516f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1097f - -271f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, -1814f)), 1248f))));
    var_0 = var_1.x;
    let var_2 = _wgslsmith_div_i32(1i, arg_0.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.wwy, var_1.xww)) - vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(705f, 1606f, var_1.x))), var_1.wzx))))));
    return Struct_1(~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-56379i, -1i), vec2<i32>(0i, var_2)), ~arg_0.a) & vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.c), arg_1.a), 1i), func_2(arg_0, arg_1.b)), global0[_wgslsmith_index_u32(u_input.d, 15u)], -max(_wgslsmith_div_i32(arg_1.a.x, firstTrailingBit(arg_0.c)), ~arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-828f, -795f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2281f * -526f) * _wgslsmith_f_op_f32(round(154f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1110f)), -611f)));
    var var_1 = func_6(func_5(func_1(), var_0.x), Struct_1(-(~vec2<i32>(-2726i, 2147483647i)), (global1.x || any(global1.wzx)) && false, select(1i, 2147483647i, all(vec2<bool>(true, true))) >> (9668u % 32u)), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(~vec2<i32>(-4549i, 2147483647i), vec2<i32>(9926i, -2147483647i)), !(!global1.x));
    let var_2 = func_5(Struct_1(max(~vec2<i32>(-1i, -1i), ~var_1.a), global2.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 91334i, -1i, -34683i), countOneBits(vec4<i32>(var_1.c, -68547i, -8860i, 0i)))), 549f);
    let var_3 = ~(~(70192u << (u_input.c.x % 32u)));
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(~0u, 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 1u, u_input.c.x), u_input.a.yxz) % 32u), 1u), ~u_input.c);
    var var_5 = Struct_1(vec2<i32>(abs(var_1.a.x), -1i), false, _wgslsmith_add_i32(~(~1i), func_6(func_6(func_6(var_2, var_2, var_1.a, true), func_1(), var_1.a & vec2<i32>(37452i, var_2.c), true), func_1(), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a.x, -42306i) << (vec2<u32>(u_input.b.x, 7911u) % vec2<u32>(32u)), func_5(Struct_1(vec2<i32>(11466i, -1i), var_2.b, var_2.a.x), var_0.x).a, var_1.a), any(!global1.yz)).c));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 954f))))));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -1124f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1601f), var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1145f), 154f))));
    let var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(61918u, _wgslsmith_div_u32(reverseBits(~u_input.a.x), _wgslsmith_clamp_u32(select(1u, 1u, var_1.b), ~4294967295u, _wgslsmith_clamp_u32(1u, 4294967295u, var_3))), var_3), firstTrailingBit(~(~reverseBits(vec4<i32>(var_1.c, 1i, 19918i, var_2.c)))), 366f, _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_6))));
}

