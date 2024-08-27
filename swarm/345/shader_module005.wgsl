struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = ~109388u;
    var var_1 = Struct_2(arg_1.d, 0i, _wgslsmith_f_op_vec2_f32(-arg_2), arg_1.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1852f, 1096f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b, -686f, arg_1.c.x) * vec3<f32>(-1017f, arg_1.c.x, var_1.d.b))), vec3<f32>(-609f, var_1.c.x, _wgslsmith_f_op_f32(round(arg_1.a.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, -829f, -207f) + vec3<f32>(arg_2.x, 211f, var_1.d.b))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(835f - arg_1.d.b), _wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(-arg_1.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1182f - var_1.d.b))), _wgslsmith_f_op_f32(trunc(1544f)), _wgslsmith_f_op_f32(-arg_2.x))), arg_1.d.a));
    return arg_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = arg_0;
    return arg_1.b;
}

fn func_1() -> vec2<bool> {
    let var_0 = 2147483647i;
    global0 = -(~abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, global0.x, 25249i), select(vec3<i32>(var_0, var_0, -29534i), vec3<i32>(24585i, var_0, -2147483647i), false))));
    global0 = select(-vec3<i32>(func_3(Struct_2(Struct_1(true, 546f), -1i, vec2<f32>(856f, -363f), Struct_1(true, -1166f)), Struct_3(true, 2147483647i), func_2(u_input.a, Struct_2(Struct_1(false, -252f), -40803i, vec2<f32>(481f, -392f), Struct_1(false, -1392f)), vec2<f32>(-1947f, 379f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1059f))), ~global0.x, ~(-1i)), vec3<i32>(~0i, (i32(-1i) * -1i) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, u_input.a, 36606u)) % 32u), 1i >> (firstTrailingBit(~45844u) % 32u)), select(!vec3<bool>(true, true, any(vec2<bool>(false, false))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, false), true), true));
    global0 = vec3<i32>(~(0i & global0.x), func_3(Struct_2(func_2(u_input.b, Struct_2(Struct_1(true, 266f), global0.x, vec2<f32>(568f, 1141f), Struct_1(false, -1795f)), vec2<f32>(-1000f, -160f)), 2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, -1406f)), func_2(u_input.b, Struct_2(Struct_1(true, -773f), -9457i, vec2<f32>(-887f, 1144f), Struct_1(false, -959f)), vec2<f32>(-1127f, -1786f))), Struct_3(true, -2147483647i), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(876f, -2548f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1284f, 1166f)))), var_0) & _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~global0.x, -var_0), var_0, max(global0.x, -59091i)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-44505i, -19608i, global0.x), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-2147483647i, global0.x, var_0)), firstTrailingBit(vec3<i32>(-2147483647i, var_0, 0i)))));
    let var_1 = global0.zy;
    return vec2<bool>(-509f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1131f, 193f) * _wgslsmith_f_op_f32(abs(219f))) + func_2(4294967295u, Struct_2(Struct_1(false, 116f), var_1.x, vec2<f32>(142f, 2512f), Struct_1(true, -910f)), _wgslsmith_div_vec2_f32(vec2<f32>(279f, -306f), vec2<f32>(967f, -836f))).b), true);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(select(-1605f, _wgslsmith_f_op_f32(-arg_0.x), arg_1.x))), max(-2147483647i, global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -1000f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.xy)))))), func_2(arg_3 ^ arg_3, Struct_2(func_2(arg_3, Struct_2(Struct_1(false, 440f), -14466i, vec2<f32>(1311f, 1790f), Struct_1(arg_1.x, arg_0.x)), vec2<f32>(arg_0.x, -763f)), 60333i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-446f))), func_2(52751u, Struct_2(Struct_1(arg_1.x, arg_0.x), global0.x, arg_0.yy, Struct_1(true, arg_0.x)), _wgslsmith_div_vec2_f32(arg_0.zz, vec2<f32>(arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * arg_0.ww)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), var_0.d.b, var_0.c.x, _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = Struct_3(true, -select(firstLeadingBit(countOneBits(-8318i)), -2147483647i, true));
    let var_3 = i32(-1i) * -arg_2.x;
    var_0 = Struct_2(func_2(u_input.b, Struct_2(func_2(~4294967295u, Struct_2(Struct_1(arg_1.x, var_0.d.b), -2147483647i, var_0.c, var_0.d), vec2<f32>(var_1.x, var_1.x)), -countOneBits(global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -941f)), func_2(~0u, Struct_2(var_0.a, var_0.b, vec2<f32>(-1000f, arg_0.x), Struct_1(var_2.a, -299f)), _wgslsmith_f_op_vec2_f32(var_1.ww + vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) + _wgslsmith_f_op_vec2_f32(-var_1.yx)))), var_2.b, vec2<f32>(-424f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x * -526f), -254f))), var_0.a);
    return Struct_2(var_0.d, 43360i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - -446f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * 1011f), _wgslsmith_div_f32(arg_0.x, arg_0.x)))), var_0.d);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = vec4<bool>(func_1().x, all(vec3<bool>(true, arg_3.a, arg_2.a.a)), false, !all(!vec3<bool>(arg_3.a, arg_2.a.a, arg_2.d.a)));
    var var_1 = 1011f;
    var var_2 = arg_2.d;
    let var_3 = arg_2.c;
    let var_4 = arg_3;
    return StorageBuffer(abs(arg_2.b), global0.x, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-global0.x, arg_3.b, _wgslsmith_clamp_i32(global0.x, arg_3.b, 6673i), _wgslsmith_div_i32(var_4.b, -2147483647i)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.b, 1i, -2147483647i, -63591i), vec4<i32>(-41091i, 1924i, arg_2.b, global0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_3.b, arg_2.b, arg_2.b), vec4<i32>(0i, global0.x, var_4.b, 1i))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(192f, -377f, _wgslsmith_f_op_f32(-397f - _wgslsmith_div_f32(var_2.b, arg_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1334f)), _wgslsmith_f_op_f32(floor(-909f)), -1228f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -_wgslsmith_mult_i32(global0.x, 2147483647i), _wgslsmith_div_i32(-global0.x, global0.x)), vec3<i32>(0i, global0.x, global0.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-481f * -783f))))));
    global0 = -vec3<i32>(reverseBits(_wgslsmith_mult_i32(global0.x, -8553i)) >> (u_input.b % 32u), global0.x, global0.x);
    global0 = countOneBits(vec3<i32>(-1i, _wgslsmith_sub_i32(global0.x, ~77502i), global0.x));
    let var_1 = var_0.x;
    global0 = max(vec3<i32>(-global0.x, global0.x, global0.x), abs(vec3<i32>(60378i, firstTrailingBit(_wgslsmith_dot_vec2_i32(global0.zy, global0.zx)), min(global0.x ^ global0.x, _wgslsmith_sub_i32(-10480i, 10023i)))));
    var var_2 = 266f;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(ceil(var_0.x)), 1u, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(953f, 458f, -496f, 776f) + vec4<f32>(927f, 342f, -431f, var_0.x)))), func_1(), global0.xy, ~u_input.b), Struct_3(min(u_input.b | 1u, 123324u) < u_input.a, ~global0.x));
}

