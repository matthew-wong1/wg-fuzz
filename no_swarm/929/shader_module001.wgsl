struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false));

var<private> global1: Struct_1 = Struct_1(520f, vec3<f32>(1000f, -268f, 1444f), vec4<i32>(0i, -9336i, -36409i, i32(-2147483648)), true);

var<private> global2: array<Struct_2, 27>;

var<private> global3: vec3<bool>;

var<private> global4: Struct_5 = Struct_5(vec2<f32>(-333f, 488f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(487f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(924f))))))));
    var var_1 = select(~global1.c.zz, arg_0.c.yz, arg_2);
    global2 = array<Struct_2, 27>();
    var var_2 = all(!vec3<bool>(any(vec4<bool>(global3.x, false, true, arg_2)), !arg_2, (arg_0.c.x | 26918i) == _wgslsmith_clamp_i32(78676i, 0i, 4990i)));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b, 12u)];
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global4.a.x) * -1276f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global1.b.x))), -1105f)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_5 {
    var var_0 = Struct_3(~global1.c.yww | _wgslsmith_add_vec3_i32(-(vec3<i32>(u_input.a, -1112i, arg_0) | global1.c.xzz), vec3<i32>(arg_0, global1.c.x, reverseBits(2147483647i))), Struct_1(195f, _wgslsmith_f_op_vec3_f32(sign(global1.b)), (global1.c << (~vec4<u32>(1u, 4294967295u, 31572u, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), abs(38964u), _wgslsmith_mult_u32(61290u, 1u), u_input.b) % vec4<u32>(32u)), global1.d), true, Struct_1(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-196f, global4.a.x)), _wgslsmith_f_op_f32(global1.b.x - -1000f))), global3.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(max(-361f, 1295f)), vec3<f32>(global1.b.x, -1542f, 1280f), global1.c, global3.x && true), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global4.a.x))), global1.d)), firstTrailingBit(vec4<i32>(u_input.a, max(global1.c.x, 0i), arg_0, -global1.c.x)), true), all(!vec3<bool>(global1.d, global3.x, false)) || (false || (_wgslsmith_mod_u32(u_input.b, u_input.b) != u_input.b)));
    var var_1 = false;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.a.x - global4.a.x), -1317f)), global1.a);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(1u, ~1u), ~min(~u_input.b, 1u)), 27u)];
    global1 = Struct_1(-203f, _wgslsmith_f_op_vec3_f32(max(global1.b, var_0.b.b)), firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(30891i, 0i, arg_0, 13303i), -(~var_0.d.c))), select(true, false, !all(vec3<bool>(true, true, true))));
    return Struct_5(_wgslsmith_f_op_vec2_f32(-var_0.b.b.yx));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_3(global1.c.yxw, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(481f, 426f, arg_0.a.x != global4.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-957f, global1.a, -580f))))), global1.c, true), true, Struct_1(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-global4.a.x)), vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(trunc(1436f))), abs(firstLeadingBit(vec4<i32>(global1.c.x, 34434i, -1i, -2147483647i))), !any(!vec2<bool>(arg_1.x, false))), true);
    global4 = Struct_5(arg_0.a);
    var var_1 = !(!global0[_wgslsmith_index_u32(22749u, 12u)]);
    var_1 = select(!select(vec4<bool>(all(var_1.zyz), true, true, any(vec2<bool>(var_1.x, global3.x))), vec4<bool>(true, global3.x, !var_0.d.d, global3.x), (global1.b.x == global1.a) == false), global0[_wgslsmith_index_u32(1u, 12u)], all(select(select(!var_1.zy, select(vec2<bool>(global1.d, global3.x), vec2<bool>(global1.d, var_1.x), arg_1.yz), select(var_1.ww, vec2<bool>(var_0.e, global1.d), true)), !(!var_1.wy), !select(vec2<bool>(true, global1.d), var_1.xw, true))));
    return var_0.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_5 {
    let var_0 = Struct_3(~arg_1.c.wwx, func_4(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global4.a)))), !vec3<bool>(arg_0 >= global4.a.x, global1.d, true), global2[_wgslsmith_index_u32(reverseBits(~u_input.b | _wgslsmith_mult_u32(4294967295u, u_input.b)), 27u)], Struct_5(_wgslsmith_f_op_vec2_f32(-global1.b.yy))), false, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a.x + _wgslsmith_f_op_f32(arg_1.b.x - -1233f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1556f)), global4.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, -628f, 900f) - vec3<f32>(-1998f, -229f, 781f)), _wgslsmith_f_op_vec3_f32(-global1.b)) + vec3<f32>(_wgslsmith_f_op_f32(global4.a.x - global1.b.x), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(513f + -1000f))), _wgslsmith_div_vec4_i32(func_4(Struct_5(vec2<f32>(-2454f, global4.a.x)), vec3<bool>(global1.d, arg_1.d, global3.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 0u, 59755u, u_input.b), vec4<u32>(1107u, 63601u, 24793u, arg_2)), 27u)], func_2(u_input.a, arg_1.b.x)).c, arg_1.c), select(global1.d, true, false)), all(global3.zy));
    let var_1 = vec4<bool>(!(global1.d & (true & !global3.x)), false, all(select(select(select(vec3<bool>(global1.d, arg_1.d, var_0.c), vec3<bool>(var_0.d.d, true, false), vec3<bool>(arg_1.d, true, var_0.e)), vec3<bool>(true, true, false), !vec3<bool>(var_0.e, true, true)), vec3<bool>(any(global0[_wgslsmith_index_u32(34040u, 12u)]), global3.x && false, false), vec3<bool>(true, var_0.b.b.x <= -522f, true))), any(!(!vec2<bool>(false, global1.d))));
    var var_2 = Struct_4(~firstTrailingBit(arg_1.c), select(!select(!var_1.wyx, var_1.zxz, vec3<bool>(arg_1.d, var_0.e, global3.x)), select(vec3<bool>(all(var_1), !var_0.d.d, true), select(select(var_1.zyw, var_1.zxz, var_1.wzw), !var_1.yzx, select(var_1.yxx, vec3<bool>(true, arg_1.d, var_1.x), arg_1.d)), true), !select(!var_1.wxz, select(var_1.zxw, vec3<bool>(global3.x, true, true), var_1.wwz), true)), any(vec3<bool>(_wgslsmith_f_op_f32(arg_1.a + 371f) >= _wgslsmith_f_op_f32(-arg_1.b.x), var_1.x, true)), arg_1, 1420f);
    var var_3 = vec4<i32>(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.c.x, arg_1.c.x, 0i), vec3<i32>(1i & global1.c.x, _wgslsmith_div_i32(var_2.d.c.x, 2147483647i), ~arg_1.c.x)), ~(~(-20249i))), 27917i, max(_wgslsmith_add_i32(~(-u_input.a), global1.c.x), ~abs(~var_2.d.c.x)), _wgslsmith_dot_vec2_i32(global1.c.wx, var_2.a.wx) | -_wgslsmith_dot_vec2_i32(~global1.c.wx, firstTrailingBit(vec2<i32>(var_2.d.c.x, 9078i))));
    let var_4 = Struct_3(vec3<i32>(var_2.d.c.x, -_wgslsmith_mod_i32(var_0.a.x, var_0.d.c.x) | firstLeadingBit(0i), var_2.a.x), Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-var_2.d.b), vec4<i32>(1i, var_3.x, 0i, select(1i, -86443i, global1.d)), true & all(!vec3<bool>(global1.d, false, global1.d))), all(!global0[_wgslsmith_index_u32(arg_2, 12u)]), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.a * var_0.d.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f + var_2.e) + _wgslsmith_f_op_f32(round(arg_1.b.x)))), _wgslsmith_f_op_vec3_f32(arg_1.b * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(434f, 1222f, var_0.d.b.x)))))), -var_2.a, false), true);
    return func_2(-(16417i << (0u % 32u)), _wgslsmith_f_op_f32(-var_4.b.b.x));
}

fn func_1(arg_0: Struct_2) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(global1.b));
    return func_5(global4.a.x, func_4(func_2(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x))), !vec3<bool>(global1.d & global3.x, global3.x & global1.d, true), Struct_2(vec3<u32>(4294967295u ^ arg_0.a.x, arg_0.a.x & 25951u, abs(u_input.b))), func_2(1i, global4.a.x)), 0u);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_4(countOneBits(~global1.c), !(!(!vec3<bool>(true, global3.x, false))), func_4(func_1(global2[_wgslsmith_index_u32(79755u, 27u)]), vec3<bool>(true, (arg_3.x & arg_3.x) >= 20554u, !arg_1.x), global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_3.x), vec2<u32>(4294967295u, u_input.b)), ~arg_3.x), arg_3.x, all(select(vec4<bool>(true, arg_0.d, false, global1.d), global0[_wgslsmith_index_u32(u_input.b, 12u)], false))), 27u)], arg_2).d, Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(min(arg_2.a.x, -739f)), arg_2.a.x) * global1.b), select(func_4(func_5(global4.a.x, arg_0, 16358u), vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(arg_3.x, 27u)], func_5(arg_0.b.x, Struct_1(arg_0.b.x, vec3<f32>(arg_0.b.x, -862f, global1.a), global1.c, true), 1u)).c, vec4<i32>(~(-1i), _wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(arg_0.c.x, 2147483647i, global1.c.x, 2147483647i)), arg_0.c.x, _wgslsmith_div_i32(arg_0.c.x, u_input.a)), !select(vec4<bool>(true, global1.d, true, arg_0.d), vec4<bool>(arg_1.x, arg_0.d, false, arg_0.d), vec4<bool>(false, false, global1.d, false))), true | global1.d), global1.a);
    let var_1 = Struct_3(_wgslsmith_clamp_vec3_i32(~(select(var_0.a.zyz, vec3<i32>(6679i, u_input.a, var_0.d.c.x), var_0.b) & var_0.a.zxw), vec3<i32>(_wgslsmith_mod_i32(u_input.a, 31794i), 1i, -func_4(Struct_5(arg_2.a), var_0.b, global2[_wgslsmith_index_u32(29734u, 27u)], arg_2).c.x), vec3<i32>(-2147483647i, firstLeadingBit(-1i), arg_0.c.x)), Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_0.d.b)), _wgslsmith_f_op_vec3_f32(-global1.b), !var_0.b)) + global1.b), select(arg_0.c, _wgslsmith_mod_vec4_i32(~vec4<i32>(-79396i, u_input.a, global1.c.x, -17709i), vec4<i32>(-38381i, 6023i, u_input.a, -1i)), !(-2147483647i > var_0.d.c.x)), func_4(Struct_5(vec2<f32>(arg_2.a.x, 301f)), vec3<bool>(global1.d, !global1.d, true), global2[_wgslsmith_index_u32(22036u, 27u)], arg_2).d), global1.d, Struct_1(global1.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.d.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global4.a.x, arg_0.b.x))))), -(~abs(vec4<i32>(global1.c.x, arg_0.c.x, arg_0.c.x, -30322i))), !(!arg_1.x)), arg_1.x);
    global3 = vec3<bool>(all(vec2<bool>(false, _wgslsmith_clamp_i32(8130i, -39425i, 0i) <= min(u_input.a, u_input.a))), !(all(global0[_wgslsmith_index_u32(firstLeadingBit(arg_3.x), 12u)]) && all(select(global0[_wgslsmith_index_u32(3027u, 12u)], vec4<bool>(global1.d, true, true, global1.d), var_0.b.x))), (global4.a.x < -1026f) || (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, u_input.b), arg_3.yx)) > _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(8565u, 1u, u_input.b, arg_3.x), vec4<u32>(arg_3.x, 59824u, arg_3.x, arg_3.x)), vec4<u32>(arg_3.x, 38294u, 47525u, arg_3.x) | vec4<u32>(u_input.b, 29478u, u_input.b, u_input.b))));
    global3 = !select(var_0.b, var_0.b, select(vec3<bool>(true, true, true), !var_0.b, vec3<bool>(!arg_0.d, !var_0.d.d, global1.b.x != 714f)));
    var_0 = Struct_4(-vec4<i32>(30909i, arg_0.c.x | -50636i, _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 26308i), firstTrailingBit(0i)), _wgslsmith_div_i32(-1i, max(-1i, 1i))), vec3<bool>(!all(select(vec3<bool>(true, true, false), var_0.b, false)), var_0.b.x, func_4(arg_2, select(vec3<bool>(true, global3.x, false), vec3<bool>(true, arg_0.d, var_0.c), var_0.b), global2[_wgslsmith_index_u32(u_input.b, 27u)], Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, arg_2.a.x)))).d), global3.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2045f + var_1.b.b.x), _wgslsmith_f_op_f32(1292f - var_1.b.b.x)), _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(-global1.a))), arg_0.c, false), func_4(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(184f, 129f)))), var_0.b, Struct_2(vec3<u32>(_wgslsmith_mult_u32(arg_3.x, 10811u), ~5635u, 13549u)), arg_2).b.x);
    return func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e), var_0.e)), func_4(Struct_5(arg_0.b.yz), !var_0.b, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(~arg_3.x, u_input.b), 1u), 27u)], func_2(i32(-1i) * -u_input.a, 850f)), u_input.b);
}

fn func_7(arg_0: f32, arg_1: Struct_5, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_4(-((~global1.c >> ((vec4<u32>(u_input.b, u_input.b, u_input.b, 37504u) & vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))) ^ abs(_wgslsmith_add_vec4_i32(global1.c, global1.c))), select(select(vec3<bool>(true, any(global3.zx), true), vec3<bool>(global1.d, true, global3.x), global3.x), vec3<bool>(true, true & select(global1.d, global3.x, global1.d), any(select(global0[_wgslsmith_index_u32(u_input.b, 12u)], vec4<bool>(global3.x, global1.d, global1.d, global3.x), true))), u_input.a > -global1.c.x), false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * 1346f))), _wgslsmith_f_op_vec3_f32(global1.b - global1.b), abs(-firstLeadingBit(vec4<i32>(-2147483647i, 962i, 1i, u_input.a))), any(global3.zy)), 271f);
    global1 = Struct_1(-1333f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a, global4.a.x)), 1000f)), 209f, _wgslsmith_f_op_f32(f32(-1f) * -1122f)), var_0.a, any(global3.xx) || global1.d);
    let var_1 = func_4(arg_1, !vec3<bool>(all(vec2<bool>(global1.d, false)), !(global1.d | true), true), Struct_2(select(abs(vec3<u32>(0u, 77437u, u_input.b)) >> (~vec3<u32>(u_input.b, 10612u, u_input.b) % vec3<u32>(32u)), (vec3<u32>(u_input.b, u_input.b, 14145u) >> (vec3<u32>(u_input.b, 66785u, 40459u) % vec3<u32>(32u))) >> (~vec3<u32>(41641u, 4294967295u, 40369u) % vec3<u32>(32u)), true)), func_5(521f, var_0.d, _wgslsmith_mult_u32(u_input.b, min(1u, ~58221u))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.x, global4.a.x)) - -713f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global4.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, 309f, var_1.d)) - func_1(Struct_2(vec3<u32>(u_input.b, 0u, u_input.b))).a.x))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(229f, var_1.a)), vec4<i32>(~(~var_0.d.c.x), i32(-1i) * -19042i, u_input.a, _wgslsmith_mult_i32(var_1.c.x, func_4(Struct_5(vec2<f32>(598f, -834f)), !var_0.b, Struct_2(vec3<u32>(u_input.b, 1470u, u_input.b)), Struct_5(var_1.b.zy)).c.x)), false);
    global0 = array<vec4<bool>, 12>();
    return var_1;
}

fn func_8(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global4 = Struct_5(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d.b.x)))))));
    let var_0 = func_7(_wgslsmith_f_op_f32(-func_7(func_5(global1.a, Struct_1(arg_1.b.a, vec3<f32>(1621f, -347f, -1000f), arg_1.b.c, arg_1.c), max(arg_2.a.x, u_input.b)).a.x, Struct_5(vec2<f32>(global4.a.x, arg_1.b.a)), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1708f, arg_0.d.a)))).b.x), Struct_5(_wgslsmith_f_op_vec2_f32(-arg_0.d.b.xx)), Struct_5(_wgslsmith_f_op_vec2_f32(-func_1(arg_2).a)));
    let var_1 = arg_0;
    global3 = !(!(!(!select(var_1.b, vec3<bool>(var_0.d, true, false), vec3<bool>(var_0.d, var_1.d.d, arg_0.d.d)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.b.x, 1258f), _wgslsmith_div_vec3_f32(arg_0.d.b, vec3<f32>(-350f, arg_0.e, arg_0.d.b.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, -495f, 485f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - arg_1.b.b) - func_4(Struct_5(arg_0.d.b.yx), vec3<bool>(var_0.d, true, false), Struct_2(arg_2.a), Struct_5(global1.b.xx)).b))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    let var_1 = func_8(Struct_4(global1.c, !(!(!vec3<bool>(global1.d, false, global1.d))), global3.x, func_7(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, var_0)), func_6(Struct_1(371f, vec3<f32>(global1.b.x, var_0, global4.a.x), global1.c, global1.d), vec2<bool>(global3.x, true), func_1(Struct_2(vec3<u32>(1u, u_input.b, 58391u))), vec3<u32>(u_input.b, u_input.b, u_input.b)), func_2(u_input.a, 1589f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f - var_0)) - func_2(~global1.c.x, var_0).a.x)), Struct_3(vec3<i32>(-42728i, -2219i, global1.c.x), func_7(func_7(_wgslsmith_f_op_f32(max(global1.a, 220f)), func_1(global2[_wgslsmith_index_u32(u_input.b, 27u)]), func_2(-1i, 1672f)).b.x, func_2(53153i, -1780f), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1934f, -361f) - global1.b.yx))), true, Struct_1(global4.a.x, _wgslsmith_f_op_vec3_f32(abs(global1.b)), global1.c, true), -2147483647i < _wgslsmith_clamp_i32(-u_input.a, countOneBits(u_input.a), -u_input.a)), Struct_2(vec3<u32>(~(~u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 3433u, 1u, 4294967295u), vec4<u32>(102568u, 1u, 9331u, 18574u)), _wgslsmith_div_u32(u_input.b, u_input.b) ^ (u_input.b ^ 4294967295u))));
    var var_2 = firstLeadingBit(~_wgslsmith_clamp_u32(u_input.b, u_input.b, 8824u));
    let var_3 = func_5(186f, func_4(func_5(_wgslsmith_f_op_f32(-global1.a), func_7(global4.a.x, func_1(global2[_wgslsmith_index_u32(1u, 27u)]), func_5(-910f, Struct_1(global4.a.x, global1.b, global1.c, global1.d), u_input.b)), ~4294967295u & u_input.b), !(!select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(global1.d, true, false), vec3<bool>(var_1, var_1, false))), global2[_wgslsmith_index_u32(~select(47938u, 1u, !var_1), 27u)], Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, var_0) * vec2<f32>(1397f, var_0)), global4.a, false)))), ~u_input.b);
    global4 = var_3;
    var_2 = ~u_input.b;
    var var_4 = func_7(var_0, func_2(u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1569f - global4.a.x) * _wgslsmith_f_op_f32(min(-1395f, -1000f)))))), func_1(Struct_2(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, u_input.b) | vec3<u32>(0u, u_input.b, u_input.b))))).c.wyy;
    var var_5 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, ~(global1.c.x ^ var_4.x) | global1.c.x, -1521i), _wgslsmith_div_vec3_i32(global1.c.wyy, vec3<i32>(max(31592i, u_input.a), u_input.a, var_4.x) << (vec3<u32>(~56098u, ~1u, ~u_input.b) % vec3<u32>(32u))), select(_wgslsmith_sub_vec3_i32(global1.c.zxx, global1.c.yzw), global1.c.xxx, !global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-9763i, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(func_7(_wgslsmith_f_op_f32(var_0 + global4.a.x), var_3, Struct_5(var_3.a)), var_3, true)).x, _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(func_2(var_4.x, 1476f).a.x * func_7(var_3.a.x, var_3, Struct_5(var_3.a)).a)), _wgslsmith_f_op_f32(round(443f)), -297f), -837f);
}

