struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: array<Struct_1, 15>;

var<private> global3: vec4<i32> = vec4<i32>(1i, 4084i, 1i, -23842i);

var<private> global4: vec3<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    let var_0 = -(~(-vec2<i32>(min(global3.x, arg_0.x), u_input.b.x)));
    var var_1 = vec4<bool>(false, min(~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global0.b.x), vec2<u32>(0u, 35698u)), global4.x ^ global4.x) >= _wgslsmith_sub_u32(48000u, ~global0.b.x), all(vec3<bool>(-53192i <= _wgslsmith_div_i32(global0.a.x, u_input.b.x), any(!global1[_wgslsmith_index_u32(29981u, 2u)]), true)), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), true)));
    var_1 = vec4<bool>(-(1i | _wgslsmith_div_i32(global3.x, 1i)) >= -_wgslsmith_clamp_i32(2147483647i, 1i, u_input.b.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-635f, arg_2.x))))), all(!(!vec2<bool>(var_1.x, var_1.x))), !any(!var_1.zxy));
    var var_2 = Struct_1(vec3<bool>(any(!select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1.x)), all(vec4<bool>(true, any(global1[_wgslsmith_index_u32(global0.b.x, 2u)]), arg_2.x == arg_2.x, true)), !(false & any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)))));
    var var_3 = select(var_2.a.yx, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global4.x), 2u)], var_1.x);
    return -_wgslsmith_sub_i32(-arg_0.x, ~(-1i));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> Struct_4 {
    var var_0 = select(global4.x, select(u_input.c.x, u_input.c.x, any(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, false, arg_0, arg_0)))), arg_1.x <= arg_1.x);
    global0 = Struct_2(_wgslsmith_div_vec3_i32(global0.a, vec3<i32>(_wgslsmith_mod_i32(func_3(u_input.b, -823f, vec4<f32>(-659f, -884f, arg_2, arg_2), 46555i), countOneBits(u_input.b.x)), ~(~u_input.b.x), 34136i)), ~(vec3<u32>(~arg_1.x, arg_1.x, 112681u) | max(u_input.c.yxz, ~vec3<u32>(4294967295u, 4960u, 1u))));
    let var_1 = vec2<u32>(arg_3, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~1u), firstTrailingBit(4294967295u))) ^ ~(global4.yy ^ arg_1.xw);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - -855f))));
    var var_3 = Struct_2(-(global0.a << ((reverseBits(u_input.a.wwx) >> (vec3<u32>(91982u, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(14440u, 1u, 59452u));
    return Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(81812u, ~u_input.c.x), ~_wgslsmith_dot_vec2_u32(u_input.a.xy, arg_1.zy)) << (select(1u, min(global4.x, _wgslsmith_clamp_u32(var_1.x, 29641u, 0u)), false) % 32u), 15u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - -1132f), arg_2, 1280f, _wgslsmith_f_op_f32(arg_2 - arg_2)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -490f, 244f, arg_2)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - arg_2))), 2898f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - arg_2))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(865f, _wgslsmith_f_op_f32(arg_2 + arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -131f)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = func_2(true, u_input.a, _wgslsmith_f_op_f32(-arg_1), firstLeadingBit(~1u));
    return Struct_2(vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-42198i, u_input.b.x)), ~global0.a.x, ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.ywx, vec3<i32>(51400i, global3.x, global3.x)), global0.a.x)), u_input.c.yzw ^ (u_input.a.wwz >> (vec3<u32>(~global0.b.x, ~44078u, _wgslsmith_clamp_u32(1u, 1u, global0.b.x)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = vec2<bool>(all(select(select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), !vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, arg_1, false, arg_1))) | !(~(-1i) == ~arg_0.a.x), !(_wgslsmith_add_i32(_wgslsmith_sub_i32(35067i, -20825i), 1i) > _wgslsmith_div_i32(global0.a.x, global0.a.x)));
    var var_1 = func_2(any(var_0), select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.b.x), global4.yy), ~global4.x, 20372u << (0u % 32u), abs(arg_0.b.x)), ~u_input.c), abs(select(~u_input.a, u_input.a ^ u_input.a, select(vec4<bool>(true, false, arg_1, false), vec4<bool>(true, var_0.x, false, var_0.x), true))), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f * 1000f)), global0.b.x).a;
    var_1 = Struct_1(vec3<bool>(true, 411f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -284f))), arg_1));
    global0 = arg_0;
    var var_2 = func_1(Struct_3(u_input.a.x), _wgslsmith_f_op_f32(func_2(all(func_2(false, u_input.a, -1307f, arg_0.b.x).a.a.xy), _wgslsmith_div_vec4_u32(~u_input.a, abs(u_input.c)), _wgslsmith_f_op_f32(ceil(-218f)), ~arg_0.b.x >> (arg_0.b.x % 32u)).b.x + _wgslsmith_f_op_f32(func_2(any(vec2<bool>(true, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, 60187u, global0.b.x), vec4<u32>(19118u, 0u, global0.b.x, 0u)), _wgslsmith_f_op_f32(903f + 1212f), _wgslsmith_dot_vec4_u32(u_input.c, u_input.a)).c.x + 443f)), Struct_4(global2[_wgslsmith_index_u32(64931u, 15u)], vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(678f, 431f)))), 1000f, 1f, _wgslsmith_f_op_f32(-1190f - _wgslsmith_f_op_f32(-1662f - -1926f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1771f, 389f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1633f, 1000f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1222f, -1007f), vec2<f32>(-1141f, -1000f)))))));
    return -func_3(vec4<i32>(26837i, _wgslsmith_mult_i32(u_input.b.x, -20319i), 0i, -arg_0.a.x), -512f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1185f, -648f, -1000f, -1067f))), _wgslsmith_div_i32(var_2.a.x, 1i >> (0u % 32u))) >> (u_input.c.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(abs(select(max(~u_input.b.x, ~2899i), func_4(func_1(Struct_3(36586u), -1328f, Struct_4(Struct_1(vec3<bool>(false, true, true)), vec4<f32>(1231f, 1000f, -1000f, -184f), vec2<f32>(1399f, -341f))), any(vec3<bool>(true, true, true))), func_2(true, firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 77182u, global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -565f), 4294967295u).a.a.x)), global3.x, u_input.b.x, firstLeadingBit(i32(-1i) * -14660i));
    var var_1 = func_2(false, ~u_input.a, -163f, 9871u).a;
    let var_2 = (i32(-1i) * -min(1i, ~u_input.b.x)) << (global4.x % 32u);
    var var_3 = 92384u;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-386f, 326f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f * -1330f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, 1296f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -156f), vec2<f32>(-1000f, 980f)))))));
    var var_5 = func_1(Struct_3(global4.x), _wgslsmith_f_op_f32(-var_4.x), Struct_4(Struct_1(var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, var_4.x, 428f, -1130f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.x, 251f, var_4.x, var_4.x))), var_1.a.x != var_1.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(515f, var_4.x))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2547f, var_4.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-610f, 536f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1341f, -841f) + vec2<f32>(668f, -805f))), true))));
    var var_6 = Struct_1(!(!(!(!var_1.a))));
    let var_7 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.a.yz, var_5.a.zx), -76612i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, var_0.x) ^ global3.yzy, vec3<i32>(1i, 46027i, u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b.xw, global0.a.zy)), -vec3<i32>(17664i, global0.a.x, 7116i), min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-15725i, var_0.x, global0.a.x), vec3<i32>(-17168i, 6567i, -50291i), ~vec3<i32>(global0.a.x, -4782i, -34319i)), global3.xwz)), ~(~var_5.b));
    var var_8 = global0.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wwx);
}

