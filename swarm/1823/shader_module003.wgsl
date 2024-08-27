struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -752f;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global1 = Struct_2(any(!(!vec4<bool>(false, arg_0.a, arg_0.a, true))), true, Struct_1(max(reverseBits(global1.c.a), ~(-vec3<i32>(-1i, -2147483647i, global1.d))), global1.c.c.xy, !select(vec3<bool>(false, true, arg_0.a), !global1.c.c, global1.c.c), vec3<f32>(global1.c.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.c.d.x, 674f)), _wgslsmith_f_op_f32(408f - global1.c.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1287f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global1.c.d.x))))), (i32(-1i) * -1i) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, 0u, 1u, 0u))) % 32u));
    let var_0 = Struct_4(true, Struct_1(vec3<i32>(_wgslsmith_sub_i32(min(global1.c.a.x, 2147483647i), 0i), countOneBits(max(-53599i, global1.d)), -(~1i)), vec2<bool>(any(global1.c.c), global1.a), !select(vec3<bool>(true, true, global1.b), vec3<bool>(arg_0.a, arg_0.a, false), select(global1.c.c, global1.c.c, arg_0.a)), vec3<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1212f)) + _wgslsmith_f_op_f32(f32(-1f) * -190f)), 195f), _wgslsmith_div_f32(global1.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.e, 1509f, global1.a))))), Struct_3(!(_wgslsmith_f_op_f32(ceil(-1388f)) > _wgslsmith_f_op_f32(select(global1.c.d.x, global1.c.e, false)))), arg_0);
    let var_1 = var_0.b;
    global0 = 1000f;
    let var_2 = Struct_3(global1.a);
    return _wgslsmith_f_op_vec3_f32(step(var_0.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.d + global1.c.d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, var_0.b.e, var_0.b.d.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.d), vec3<f32>(1000f, global1.c.e, var_0.b.e), vec3<bool>(true, true, true)))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_5 {
    let var_0 = -2455f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.d + global1.c.d)))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_3(!(u_input.a.x <= 4294967295u)))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(34294u, 1u, 67283u) & u_input.a.x, ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(min(1u >> (u_input.a.x % 32u), u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, firstLeadingBit(60867u), u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u)), select(vec4<u32>(select(0u << (1u % 32u), u_input.a.x ^ 1u, false), 0u, firstTrailingBit(~u_input.a.x), u_input.a.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 5775u, u_input.a.x, u_input.a.x)) & vec4<u32>(abs(1u), 38640u, 1u, 15577u >> (u_input.a.x % 32u)), vec4<bool>(true, true, all(!arg_0), any(select(arg_0.ww, global1.c.c.zz, global1.c.b)))));
    var var_3 = 44896i == global1.c.a.x;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_div_f32(-809f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1048f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1497f - 1442f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(var_0 - global1.c.e))), -218f)));
    return Struct_5(global1.c.d.x);
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_1 {
    global1 = Struct_2((13063u & _wgslsmith_sub_u32(~u_input.a.x, 1u)) != _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), max(vec4<u32>(26527u, u_input.a.x, 1u, 3971u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 41151u))), vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x | u_input.a.x, ~1u, firstLeadingBit(u_input.a.x))), any(global1.c.c), global1.c, 2147483647i);
    let var_0 = firstTrailingBit(~(~vec4<i32>(-6790i, global1.c.a.x, 1929i, global1.c.a.x))) >> (select(firstLeadingBit(vec4<u32>(u_input.a.x, select(0u, u_input.a.x, true), ~u_input.a.x, 1u)), ~(~firstLeadingBit(vec4<u32>(u_input.a.x, 30315u, 17278u, 51408u))), (u_input.a.x > u_input.a.x) | (select(true, false, global1.b) | all(global1.c.c))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(exp2(arg_0.a));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f - -1378f)) - arg_1) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-989f, 2334f)))) + global1.c.e), any(select(!(!vec4<bool>(true, false, global1.a, global1.c.c.x)), vec4<bool>(global1.b, !global1.a, true, true), vec4<bool>(all(vec4<bool>(false, global1.c.b.x, global1.b, global1.c.b.x)), global1.c.b.x, false, true))), global1.c, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.c.a.x, select(10993i >> (0u % 32u), var_0.x << (u_input.a.x % 32u), true)), var_0.x));
    var var_1 = !all(!select(select(vec4<bool>(global1.a, global1.a, true, global1.c.b.x), vec4<bool>(false, true, global1.c.b.x, false), true), select(vec4<bool>(global1.b, true, false, global1.a), vec4<bool>(global1.c.c.x, global1.c.b.x, true, global1.c.b.x), vec4<bool>(true, true, global1.c.b.x, global1.c.b.x)), all(vec3<bool>(true, global1.b, global1.a))));
    return Struct_1(abs(global1.c.a), vec2<bool>(global1.c.c.x, global1.a), global1.c.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(global1.c.d, vec3<f32>(arg_1, 1946f, arg_0.a))), _wgslsmith_f_op_vec3_f32(global1.c.d - vec3<f32>(global1.c.e, -1736f, 772f)))))), _wgslsmith_f_op_f32(trunc(arg_0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_4(all(select(vec4<bool>(!arg_1.a, global1.c.c.x, true, false), !select(vec4<bool>(arg_1.a, false, true, arg_0.c.x), vec4<bool>(global1.a, global1.a, false, arg_1.a), vec4<bool>(true, arg_0.c.x, true, true)), global1.c.b.x)), arg_0, arg_1, arg_1);
    var var_1 = Struct_4(any(!vec3<bool>(global1.b, arg_0.c.x, false)), func_4(func_2(!select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.b.x, var_0.b.b.x, global1.a, true), vec4<bool>(var_0.a, arg_1.a, global1.a, false))), global1.c.d.x), arg_1, arg_1);
    var var_2 = 14325u;
    var_2 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(trunc(-1000f));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = ~523i;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global1.c.d.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.e))), -1079f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.c.e)), 706f))));
    global1 = Struct_2(any(vec2<bool>(true, true)), false, func_5(func_4(func_2(vec4<bool>(global1.a, false, false, arg_0.x)), _wgslsmith_f_op_f32(floor(-175f))), Struct_3(0u != u_input.a.x), -7490i, _wgslsmith_mult_vec3_i32(global1.c.a, _wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.a.x, -38529i, global1.c.a.x), reverseBits(global1.c.a)))), min(reverseBits(15474i), _wgslsmith_mult_i32(10171i, 1306i)));
    let var_2 = global1.c.e;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 187f, var_1.x, _wgslsmith_f_op_f32(-282f - 334f)))))));
    return Struct_2(arg_0.x, arg_0.x, global1.c, select(global1.d, -(~arg_1), global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.c.d.x;
    global0 = -416f;
    var var_0 = vec2<f32>(global1.c.e, _wgslsmith_f_op_f32(-133f - 824f));
    var var_1 = ~(-1i);
    global1 = func_1(select(global1.c.b, vec2<bool>(global1.b, !global1.c.c.x), global1.c.c.x && true), ~(-1i));
    let var_2 = any(vec4<bool>(true, all(func_4(Struct_5(1000f), _wgslsmith_f_op_f32(min(-143f, -617f))).b), true, true));
    var_0 = _wgslsmith_f_op_vec2_f32(global1.c.d.yz + vec2<f32>(_wgslsmith_f_op_f32(sign(-2046f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(1u, 35383u, 16680u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 35364u, 4294967295u), true), ~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 29223u) & vec4<u32>(u_input.a.x, u_input.a.x, 38478u, 46001u))), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.d.yx * global1.c.d.zz) - func_1(!global1.c.b, _wgslsmith_clamp_i32(global1.c.a.x >> (19662u % 32u), -51521i, 0i)).c.d.zx));
}

