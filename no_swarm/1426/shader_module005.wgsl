struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<f32>(-363f, 1308f), vec4<bool>(true, false, true, false), true), Struct_1(vec2<f32>(-290f, -1000f), vec4<bool>(false, false, true, false), false), Struct_1(vec2<f32>(1410f, 1414f), vec4<bool>(false, false, true, false), true), Struct_1(vec2<f32>(382f, 1952f), vec4<bool>(true, false, true, true), true), Struct_1(vec2<f32>(652f, -1000f), vec4<bool>(true, false, true, false), false), Struct_1(vec2<f32>(-392f, 479f), vec4<bool>(false, false, true, true), true), Struct_1(vec2<f32>(902f, 1000f), vec4<bool>(false, false, true, false), true), Struct_1(vec2<f32>(119f, -356f), vec4<bool>(false, false, false, false), true), Struct_1(vec2<f32>(-604f, -671f), vec4<bool>(false, true, false, true), true), Struct_1(vec2<f32>(-1690f, 1000f), vec4<bool>(false, true, false, true), false), Struct_1(vec2<f32>(623f, 230f), vec4<bool>(false, true, false, false), true), Struct_1(vec2<f32>(2735f, -1174f), vec4<bool>(true, true, false, true), true), Struct_1(vec2<f32>(-966f, -1287f), vec4<bool>(true, false, false, true), true), Struct_1(vec2<f32>(904f, -2251f), vec4<bool>(false, true, true, false), false), Struct_1(vec2<f32>(268f, -822f), vec4<bool>(false, false, false, false), false), Struct_1(vec2<f32>(1470f, 933f), vec4<bool>(false, false, false, true), true), Struct_1(vec2<f32>(-447f, -737f), vec4<bool>(false, false, false, false), false), Struct_1(vec2<f32>(1573f, -581f), vec4<bool>(true, false, false, false), true), Struct_1(vec2<f32>(232f, -2053f), vec4<bool>(true, true, false, false), true), Struct_1(vec2<f32>(1061f, 1237f), vec4<bool>(true, false, true, true), true), Struct_1(vec2<f32>(-443f, 437f), vec4<bool>(false, false, false, true), false), Struct_1(vec2<f32>(-590f, 1000f), vec4<bool>(false, false, true, true), true), Struct_1(vec2<f32>(1856f, 817f), vec4<bool>(true, true, false, true), false), Struct_1(vec2<f32>(-1523f, 553f), vec4<bool>(true, true, false, true), false), Struct_1(vec2<f32>(-1900f, 1000f), vec4<bool>(true, false, false, false), false), Struct_1(vec2<f32>(-1469f, 101f), vec4<bool>(true, true, false, true), false), Struct_1(vec2<f32>(1240f, -1760f), vec4<bool>(true, false, true, true), true), Struct_1(vec2<f32>(-1065f, -2168f), vec4<bool>(false, true, false, true), true), Struct_1(vec2<f32>(101f, -300f), vec4<bool>(false, true, false, true), true));

var<private> global1: array<vec3<bool>, 32>;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(3122f, Struct_1(vec2<f32>(923f, 1200f), vec4<bool>(true, true, true, false), false), -989f, Struct_1(vec2<f32>(1588f, -1149f), vec4<bool>(true, true, true, false), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = 390f;
    var var_1 = _wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_u32(0u, ~(3786u ^ u_input.b.x), u_input.b.x)) << (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x | _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), ~48947u)) % 32u);
    let var_2 = min(_wgslsmith_add_u32(4294967295u, u_input.b.x), _wgslsmith_add_u32(27545u, _wgslsmith_sub_u32(~16995u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 4294967295u), ~vec4<u32>(35983u, u_input.b.x, u_input.b.x, 0u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-337f, -878f, 1661f), vec3<f32>(722f, global3.a, 257f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1783f, global2.d.a.x, 1000f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global3.a, 1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1084f, global2.d.a.x, 710f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global3.b.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, global2.b.a.x)), var_3.yx))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_div_f32(global3.b.a.x, -1439f))), !select(select(select(global2.b.b, vec4<bool>(false, global2.d.b.x, global3.b.b.x, false), false), global3.b.b, select(vec4<bool>(true, true, true, global2.d.c), global3.d.b, global2.d.b)), vec4<bool>(true, 40551u > var_2, global2.b.c, false), select(global3.b.b, !vec4<bool>(false, true, global2.d.b.x, true), !global2.b.b)), any(!vec3<bool>(true, var_2 != 0u, global3.d.b.x)));
    return (-(~(vec4<i32>(u_input.a.x, arg_0, u_input.a.x, 0i) ^ vec4<i32>(arg_0, arg_0, 1i, u_input.a.x))) | vec4<i32>(-abs(-39462i), u_input.a.x, min(-2897i, 42680i), countOneBits(arg_0))) >> (~(~(vec4<u32>(var_2, u_input.b.x, 1u, 7868u) | vec4<u32>(u_input.b.x, 7342u, 9100u, u_input.b.x)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(83925u, 0u, 29609u, var_2), vec4<u32>(1u, var_2, 0u, var_2)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = -_wgslsmith_div_vec3_i32(reverseBits(-firstTrailingBit(vec3<i32>(1i, arg_1.x, arg_1.x))), ~_wgslsmith_clamp_vec3_i32(~arg_1.zxz, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, -19603i), vec3<i32>(-26250i, arg_1.x, u_input.a.x)), arg_1.xyw));
    let var_1 = ~_wgslsmith_div_i32(abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1.x, 2147483647i, u_input.a.x), var_0, vec3<bool>(global3.d.b.x, global2.d.c, true)), _wgslsmith_clamp_vec3_i32(var_0, var_0, arg_1.zxx))), var_0.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~55319u), ~u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b >> (reverseBits(u_input.b) % vec3<u32>(32u))), countOneBits(_wgslsmith_div_u32(countOneBits(18956u), 129050u)))), 29u)];
    global3 = Struct_2(-1277f, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(774f, -2249f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1054f, var_2.a.x), global3.b.a)), vec2<bool>(any(global1[_wgslsmith_index_u32(37748u, 32u)]), global3.d.c))), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, global3.d.b.x, false), true)), var_2.c, all(vec2<bool>(true, true)), global2.d.c), global3.d.b.x), arg_0.x, global2.b);
    let var_3 = abs(-(1i & (_wgslsmith_mod_i32(var_0.x, var_0.x) & (i32(-1i) * -16140i))));
    return var_0.xy;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    global1 = array<vec3<bool>, 32>();
    var var_0 = func_4(vec2<f32>(global2.a, 1823f), func_3(select(-(~u_input.a.x), max(_wgslsmith_sub_i32(arg_0, -1i), _wgslsmith_clamp_i32(-18301i, 1i, u_input.a.x)), global2.d.b.x)));
    var var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.a)), vec2<f32>(global2.a, _wgslsmith_f_op_f32(floor(global2.a))))) - _wgslsmith_f_op_vec2_f32(global3.d.a + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1024f, -320f), vec2<f32>(1000f, global2.b.a.x))))))), select(select(vec4<bool>(!global3.b.c, true, !global3.b.b.x, true), global3.d.b, vec4<bool>(select(true, true, global3.d.b.x), true, true || global3.b.c, any(global3.d.b))), global2.b.b, global2.d.b), any(!global2.d.b.zz));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(trunc(global2.b.a.x)))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    return Struct_2(-171f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1830f, global2.c)), vec2<f32>(global2.a, global2.c), false)), vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<u32>(23083u, u_input.b.x), vec2<f32>(global2.c, 355f), u_input.a.x)), _wgslsmith_f_op_f32(-global2.b.a.x))), global2.d.b, !global2.d.b.x), _wgslsmith_f_op_f32(global3.b.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), global3.b.a.x))))), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    var var_0 = global3.c;
    let var_1 = global3.d;
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(abs(-313f))), _wgslsmith_f_op_f32(floor(global2.c))), global2.b.b, global3.b.c), -308f, global3.d);
    global2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global2.c)))) * _wgslsmith_div_f32(-424f, _wgslsmith_div_f32(-790f, global2.d.a.x)))));
    var var_2 = u_input.b.x | u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b.a.x)))), _wgslsmith_f_op_f32(min(global2.b.a.x, global2.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-(i32(-1i) * -1i)), -(abs(-1i) | (u_input.a.x << (u_input.b.x % 32u)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i) >> (~vec3<u32>(u_input.b.x, 4294967295u, 0u) % vec3<u32>(32u)), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -452f))), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(124f, global2.c, 206f, global2.c)))), vec4<f32>(_wgslsmith_f_op_f32(-960f * var_1.a.x), _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(exp2(var_1.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x + -1384f), _wgslsmith_f_op_f32(var_3.x - -104f))), -154f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)));
}

