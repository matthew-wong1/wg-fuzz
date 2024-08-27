struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 40667u);

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: Struct_3;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<Struct_3, 22>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    let var_0 = !all(select(vec4<bool>(true, global2.b, true, true), !(!vec4<bool>(false, true, global2.b, global3.x)), false));
    var var_1 = global3.x;
    global1 = array<vec2<u32>, 27>();
    global1 = array<vec2<u32>, 27>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, -408f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(sign(-134f))))));
    return vec2<u32>(reverseBits(u_input.a), ~u_input.b.x);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec3<f32> {
    global4 = array<Struct_3, 22>();
    var var_0 = 4294967295u;
    var var_1 = vec2<u32>(~arg_0, (0u ^ ~global0.x) & u_input.b.x) | func_3();
    var_0 = 0u;
    global1 = array<vec2<u32>, 27>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-151f, _wgslsmith_f_op_f32(629f + 321f), _wgslsmith_f_op_f32(trunc(-1000f))), vec3<f32>(-964f, -493f, _wgslsmith_f_op_f32(round(-406f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1363f, -453f) - vec3<f32>(-2032f, -1305f, 1156f))))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_1(i32(-1i) * -37182i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_u32(global0.x, global0.x), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(28628i, u_input.d.x, global2.a.x)), vec4<bool>(true, true, global2.b, global3.x)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1487f * -1443f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1176f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f - 1474f)))), !global2.b, vec4<f32>(-2057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_u32(12119u, 1u), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(1i, -19947i, global2.a.x)), select(vec4<bool>(global3.x, global3.x, global2.b, global3.x), vec4<bool>(true, false, true, global3.x), global3.x))).x), -1310f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1649f) + -986f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) - 3765f))));
    global3 = select(select(arg_0.zy, vec2<bool>(-914f < var_0.d.x, var_0.c), true), vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -185f) == _wgslsmith_f_op_f32(-724f - var_0.b.x)), false), arg_0.yz);
    var var_1 = Struct_3(firstTrailingBit(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(u_input.c.zy, global2.a, vec2<i32>(-1i, var_0.a))), ~(vec2<i32>(var_0.a, u_input.c.x) >> (u_input.b.zy % vec2<u32>(32u))))), var_0.c | any(arg_0));
    var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global0.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(5080u, global0.x, 4294967295u) % vec3<u32>(32u)), abs(u_input.b ^ vec3<u32>(0u, 1u, u_input.a))), countOneBits(vec3<u32>(select(global0.x, 0u, global2.b), ~u_input.a, global0.x & 4294967295u))), global0.x), 22u)];
    let var_2 = u_input.a;
    return Struct_3(countOneBits(min(abs(vec2<i32>(2147483647i, global2.a.x)), ~u_input.c.yx)), true);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    global2 = Struct_3(u_input.c.zx, true);
    global2 = func_1(select(vec3<bool>(global3.x, global3.x, true), !(!vec3<bool>(false, arg_1.b, global2.b)), true));
    let var_0 = Struct_1(~u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(880f, arg_0.x))) * 817f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), arg_0.x), arg_1.b, vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1180f + arg_0.x)))), arg_0.x));
    global2 = global4[_wgslsmith_index_u32(0u, 22u)];
    var var_1 = var_0;
    return Struct_3(select(~vec2<i32>(global2.a.x, var_0.a), vec2<i32>(-12548i, 52388i & -global2.a.x), vec2<bool>(true, true)), global3.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    global2 = Struct_3(vec2<i32>(global2.a.x, -12397i), global3.x);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(479f, _wgslsmith_f_op_f32(-456f * 601f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-918f, 658f)) - _wgslsmith_f_op_f32(514f * 102f))) - 517f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)))))), 300f);
    global3 = select(!select(vec2<bool>(!global2.b, arg_0.b), !vec2<bool>(arg_1.b, arg_1.b), select(!vec2<bool>(false, global3.x), select(vec2<bool>(false, false), vec2<bool>(global2.b, true), vec2<bool>(false, arg_1.b)), all(vec2<bool>(false, false)))), vec2<bool>((_wgslsmith_f_op_f32(-var_0.x) != var_0.x) || !global3.x, all(!vec3<bool>(arg_0.b, global2.b, false))), arg_1.b);
    global0 = u_input.b.zz;
    let var_1 = false;
    return Struct_1(arg_1.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yzz) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * -268f), var_0.x)))), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1183f, 581f, 1000f, var_0.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 783f, -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), !any(select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_0.b, false), true)))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> StorageBuffer {
    let var_0 = true;
    let var_1 = 4294967295u;
    var var_2 = arg_0;
    var var_3 = Struct_2(func_5(global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 20964u), vec4<u32>(1u, 46792u, 31504u, var_1))), 22u)], Struct_3(~min(vec2<i32>(global2.a.x, global2.a.x), u_input.c.yx), true)), Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(u_input.c, u_input.c), u_input.c), _wgslsmith_f_op_vec3_f32(-arg_0.d.yxx), global2.b, _wgslsmith_f_op_vec4_f32(ceil(var_2.d))), arg_0, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, ~3832u, u_input.a, ~4294967295u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, var_1, var_1, 36097u), ~vec4<u32>(global0.x, u_input.a, global0.x, 4693u)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.zyx))))));
    var var_4 = -1212f;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d.x, -1164f, -2095f), var_2.d.yyz) - _wgslsmith_f_op_vec3_f32(var_3.b.b - vec3<f32>(var_3.e.x, arg_0.d.x, var_3.e.x))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-362f, var_3.c.b.x, var_3.a.b.x), arg_0.d.yww)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.wyw * _wgslsmith_f_op_vec3_f32(-var_2.d.wwx)))), vec4<i32>(26847i, func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c.d.x, var_3.c.b.x, 558f, 1000f))), var_2.d)), func_1(vec3<bool>(true, arg_0.c, false)), any(!vec3<bool>(true, var_0, var_3.a.c))).a.x, ~min(_wgslsmith_add_i32(var_3.a.a, -1i), func_4(var_3.b.d, global4[_wgslsmith_index_u32(var_3.d.x, 22u)], arg_0.c).a.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 64583i, arg_0.a, var_3.b.a) << (vec4<u32>(global0.x, 2472u, 80631u, global0.x) % vec4<u32>(32u))), ~vec4<i32>(var_3.b.a, var_2.a, arg_0.a, var_2.a))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 27>();
    global1 = array<vec2<u32>, 27>();
    let x = u_input.a;
    s_output = func_6(func_5(func_4(vec4<f32>(1f, 1f, 1f, 1f), func_1(!vec3<bool>(global2.b, false, true)), true), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-134f, 781f, -605f, 2249f), vec4<f32>(1494f, -1301f, -315f, -1208f), global3.x))), Struct_3(func_4(vec4<f32>(-1000f, -1271f, -107f, -375f), Struct_3(global2.a, global2.b), global2.b).a, true), any(select(vec3<bool>(global2.b, global2.b, true), vec3<bool>(false, global2.b, global2.b), true)))), any(select(select(vec2<bool>(global2.b, false), !vec2<bool>(global2.b, global2.b), !vec2<bool>(global2.b, true)), select(select(vec2<bool>(true, global2.b), vec2<bool>(global2.b, true), vec2<bool>(global2.b, global2.b)), select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, global2.b), false)), !select(vec2<bool>(global2.b, false), vec2<bool>(global2.b, false), vec2<bool>(true, global3.x)))), 1282f);
}

