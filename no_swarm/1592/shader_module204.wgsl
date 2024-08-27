struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec3<u32>(0u, 37114u, 4294967295u), 671f, vec4<bool>(true, false, false, true));

var<private> global2: bool;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    global1 = Struct_1(select(select(arg_1, select(vec3<bool>(false, arg_1.x, false), select(vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.a.x), global1.a, vec3<bool>(false, arg_2.d.x, arg_1.x)), arg_2.a), vec3<bool>(true, global1.d.x != arg_2.a.x, global1.a.x)), vec3<bool>(!any(vec4<bool>(true, false, true, arg_2.a.x)), !(1000f < arg_2.c), true), !select(arg_2.d.wyx, vec3<bool>(global1.a.x, global1.d.x, arg_1.x), select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), arg_2.a.x))), vec3<u32>(4294967295u, ~(~(~arg_2.b.x)), global0.x), -396f, global1.d);
    global0 = ~abs(firstTrailingBit(~min(vec4<u32>(17554u, 1u, global1.b.x, 94801u), vec4<u32>(1u, arg_2.b.x, 0u, 1u))));
    let var_0 = u_input.a.x;
    let var_1 = -(~(-_wgslsmith_add_i32(arg_0.x, -19009i)));
    var var_2 = ~var_1;
    return all(!vec2<bool>(true, all(select(vec2<bool>(true, false), global1.d.wy, global1.a.xz))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = select(select(global1.d.xxx, !global1.a, true), select(select(vec3<bool>(global1.d.x | arg_0, global1.c <= 542f, true), vec3<bool>(true, all(vec2<bool>(global1.a.x, arg_0)), arg_0), func_3(vec3<i32>(2147483647i, 1i, u_input.a.x), vec3<bool>(global1.d.x, false, false), Struct_1(vec3<bool>(false, true, arg_0), global1.b, global1.c, global1.d)) && true), global1.d.xyy, !(!arg_0)), global1.d.xww);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f) + _wgslsmith_f_op_f32(467f - global1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1337f - _wgslsmith_f_op_f32(-global1.c))))));
    global0 = vec4<u32>(_wgslsmith_mod_u32(~(~(global0.x << (4294967295u % 32u))), _wgslsmith_add_u32(70959u ^ min(global1.b.x, global0.x), ~(~global0.x))), global1.b.x, 1u & (global0.x >> (21308u % 32u)), global0.x);
    let var_2 = Struct_1(!vec3<bool>(true, any(vec2<bool>(var_0.x, false)), arg_0), ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 78021u, global0.x), global1.b) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1.b.x), vec3<u32>(global1.b.x, global0.x, 13148u)), abs(global0.zzx) ^ global0.yzx), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2262f + _wgslsmith_f_op_f32(-global1.c)))))), !select(global1.d, !vec4<bool>(true, false, var_0.x, var_0.x), true));
    var var_3 = _wgslsmith_f_op_f32(-global1.c);
    return Struct_1(!vec3<bool>(var_2.a.x, false, _wgslsmith_sub_u32(global0.x, 5668u) < ~var_2.b.x), select(var_2.b, global0.yyy, -1123f < _wgslsmith_f_op_f32(global1.c * 1092f)) << ((_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, global0.x, var_2.b.x), vec3<u32>(0u, 3107u, 59067u), ~global1.b) << (~(~var_2.b) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_f32(-791f, 152f), select(select(vec4<bool>(!var_2.d.x, false, !global1.d.x, global1.c != var_2.c), global1.d, select(vec4<bool>(true, true, global1.d.x, var_0.x), vec4<bool>(arg_0, var_0.x, true, var_2.a.x), !global1.d)), select(!vec4<bool>(var_0.x, true, true, arg_0), vec4<bool>(false, true, all(var_2.a), arg_0), select(global1.d, !global1.d, !arg_0)), global1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global2 = true;
    var var_0 = Struct_1(!vec3<bool>(!func_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(arg_0.d.x, false, false), arg_0), any(arg_0.d), ~global1.b.x < 1u), firstLeadingBit(vec3<u32>(~(global0.x << (0u % 32u)), ~global0.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.b.x, global0.x)), _wgslsmith_div_vec2_u32(global0.wy, vec2<u32>(4294967295u, arg_0.b.x))))), global1.c, func_2(global1.a.x).d);
    var_0 = func_2(_wgslsmith_f_op_f32(trunc(arg_0.c)) > _wgslsmith_f_op_f32(f32(-1f) * -574f));
    global2 = all(global1.a);
    global0 = vec4<u32>(0u, ~1u, _wgslsmith_div_u32(global0.x, global0.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(global0.ww, vec2<u32>(var_0.b.x, var_0.b.x)), ~vec2<u32>(4294967295u, global0.x)), vec2<u32>(50246u, global0.x)));
    return arg_0;
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(false), func_3(select(vec3<i32>(u_input.a.x << (global1.b.x % 32u), u_input.a.x, _wgslsmith_mod_i32(-18932i, -1i)), select(abs(vec3<i32>(-18006i, 2147483647i, u_input.a.x)), min(vec3<i32>(4339i, u_input.a.x, 7784i), vec3<i32>(55775i, u_input.a.x, u_input.a.x)), vec3<bool>(global1.a.x, global1.d.x, true)), global1.d.xxz), global1.d.zyy, func_2(false && global1.a.x)));
    let var_1 = countOneBits(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a))));
    var var_2 = Struct_1(select(!func_2(false).a, !vec3<bool>(any(vec3<bool>(false, false, false)), global1.a.x & var_0.a.x, global1.d.x), func_4(func_2(true), var_0.a.x).d.yxw), select(~global0.zyz, vec3<u32>(global1.b.x, ~(~19493u), _wgslsmith_add_u32(select(var_0.b.x, global1.b.x, true), ~28727u)), true | !global1.a.x), _wgslsmith_f_op_f32(-global1.c), !var_0.d);
    var_2 = func_2(true);
    let var_3 = -u_input.a;
    return ~var_0.b.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 204f;
    var_0 = _wgslsmith_f_op_f32(-global1.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.c))));
    var var_2 = 0u;
    var var_3 = func_4(arg_3, -48764i > (1i | _wgslsmith_dot_vec2_i32(arg_1, -vec2<i32>(-1i, 1i)))).d.wxx;
    return Struct_1(global1.d.zzw, _wgslsmith_mult_vec3_u32(~vec3<u32>(180u, 1u, global0.x), max(arg_3.b, arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -330f), !vec4<bool>(arg_3.d.x, false, true, 0u <= global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.c, -1743f))), -333f)) + vec3<f32>(-1580f, 544f, -423f));
    let var_1 = global1.d.zxw;
    var var_2 = func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(func_1(), reverseBits(4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(38u, global0.x, global1.b.x << (global1.b.x % 32u)), countOneBits(4294967295u))), ~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(0i, u_input.a.x), vec2<i32>(-12243i, u_input.a.x)) << (_wgslsmith_mod_vec2_u32(global0.yz, vec2<u32>(global1.b.x, 11809u)) % vec2<u32>(32u)), -select(vec2<i32>(0i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x), var_1.zy)), ~(((vec3<u32>(4294967295u, global0.x, global1.b.x) | global1.b) & vec3<u32>(global0.x, 27448u, global1.b.x)) << (~global0.wwy % vec3<u32>(32u))), Struct_1(select(func_4(Struct_1(global1.d.yzy, global1.b, global1.c, global1.d), any(global1.a)).d.yxx, vec3<bool>(var_1.x, true, !var_1.x), var_1.x), _wgslsmith_div_vec3_u32(global0.zwz, (vec3<u32>(0u, global1.b.x, 29987u) ^ global0.yyx) & (global0.ywz & vec3<u32>(global1.b.x, 1u, 1u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c))), vec4<bool>(false, false, var_1.x, true)));
    global0 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global1.b.x, 4294967295u, 71725u, var_2.b.x), vec4<u32>(global1.b.x, 0u, var_2.b.x, 50227u), true), select(vec4<u32>(82953u, global0.x, var_2.b.x, global1.b.x), vec4<u32>(1u, 0u, var_2.b.x, 55592u), var_2.d)), ~(~vec4<u32>(global0.x, global1.b.x, 4294967295u, 4294967295u))), ~(~(~vec4<u32>(global0.x, var_2.b.x, global0.x, global0.x)))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 35295u, 1u, global0.x), abs(~vec4<u32>(var_2.b.x, 38876u, 1u, 6318u))), max(min(vec4<u32>(var_2.b.x, var_2.b.x, 3262u, 0u), vec4<u32>(var_2.b.x, 46498u, 0u, 4294967295u)) & vec4<u32>(var_2.b.x, 63447u, 22518u, 126219u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 36052u, global0.x, global0.x), vec4<u32>(global1.b.x, 4294967295u, 45732u, 19024u), vec4<u32>(var_2.b.x, 4294967295u, global0.x, 0u)), vec4<u32>(var_2.b.x, global0.x, var_2.b.x, 0u) | vec4<u32>(29323u, 31265u, 0u, 76315u))), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(76831u, global1.b.x, global1.b.x, var_2.b.x), vec4<u32>(global0.x, 28459u, var_2.b.x, global0.x))));
    let var_3 = select(~global0.x, _wgslsmith_div_u32(~94998u & min(global1.b.x, ~global1.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 0u, var_2.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(64584u, global1.b.x, 55757u, 2597u), vec4<u32>(37323u, var_2.b.x, 1u, global0.x), vec4<u32>(global1.b.x, var_2.b.x, var_2.b.x, 36842u))) >> (_wgslsmith_mod_u32(1u, 49052u) % 32u)), true);
    var var_4 = Struct_1(vec3<bool>(any(!vec2<bool>(global1.d.x, true)), all(!var_2.d), var_2.d.x), _wgslsmith_mult_vec3_u32(~(vec3<u32>(var_3, 22219u, global1.b.x) & vec3<u32>(4294967295u, 35407u, 4294967295u)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.x, 0u, 0u), _wgslsmith_add_vec3_u32(global1.b, vec3<u32>(61580u, 25172u, var_2.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, 59722u, 4294967295u), vec3<u32>(var_3, 12162u, 0u))))), global1.c, !vec4<bool>(!any(vec4<bool>(true, global1.d.x, global1.a.x, global1.a.x)), true != select(false, true, true), global1.a.x, !var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~(~abs(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + 1492f), global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1289f))), -1443f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_4.c))))), max(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(14334i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 13070i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 44613i, 36447i)))), ~u_input.a.x));
}

