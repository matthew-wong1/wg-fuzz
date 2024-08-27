struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-269f, 2279f);

var<private> global1: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    return arg_0;
}

fn func_3() -> vec2<u32> {
    global1 = -582f;
    let var_0 = firstLeadingBit(-vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.a.x));
    var var_1 = func_1(Struct_1(all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), 0u, select(_wgslsmith_mult_u32(u_input.b, 1u) ^ (u_input.b & u_input.b), u_input.b, !any(vec4<bool>(true, false, true, false)))), firstLeadingBit(~max(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 59394u) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, 0u, 36746u, 28877u)))));
    let var_2 = 284f;
    let var_3 = vec4<i32>(u_input.a.x, 2147483647i, firstLeadingBit(~(-1i)), ~((~(-1i) | max(1i, u_input.c)) ^ select(-var_0.x, firstLeadingBit(u_input.c), var_1.a)));
    return vec2<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = true;
    let var_1 = arg_2.b;
    var var_2 = -_wgslsmith_mod_i32(-(~u_input.a.x), u_input.a.x) ^ u_input.a.x;
    let var_3 = select(vec2<u32>(var_1, 1881u), ~func_3(), !all(select(vec3<bool>(true, true, true), !vec3<bool>(var_0, false, arg_2.a), var_0)));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 316f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1047f, -620f)), -1062f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1655f, 124f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - -2057f), global0.x, arg_3.a)) - arg_0)), arg_3.a, func_1(arg_2, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(85372u, u_input.b, 73290u, arg_3.b), firstTrailingBit(vec4<u32>(arg_2.b, arg_2.b, 4294967295u, arg_3.c))), select(vec4<u32>(22199u, 1u, 55109u, 11978u), ~vec4<u32>(arg_2.c, arg_3.c, 63191u, 1u), vec4<bool>(true, arg_2.a, false, true)))))).x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-153f)));
    let var_0 = Struct_2(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-50743i, u_input.a.x, u_input.a.x), vec3<i32>(25128i, -75636i, 0i) | vec3<i32>(-258i, u_input.a.x, -4971i)), vec3<i32>(u_input.c, u_input.a.x, u_input.c))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), -1704f), Struct_1(arg_2.a, 1u, 39650u | ~(~arg_3.c)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~6972u, max(4294967295u, arg_2.b), select(0u, 7583u, true)), ~abs(vec3<u32>(56642u, 8338u, 1u))), ~1i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 891f)) + _wgslsmith_f_op_vec3_f32(var_0.b.zwy + _wgslsmith_f_op_vec3_f32(var_0.b.zzz + vec3<f32>(arg_0, var_0.b.x, global0.x)))), any(vec3<bool>(true, true, true)), func_1(arg_3, firstTrailingBit(~vec4<u32>(arg_2.c, var_0.c.c, 0u, var_0.c.c))))).zz);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -142f))), var_0.b.x));
    return -1588f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1(Struct_1(_wgslsmith_clamp_i32(38980i, u_input.c & 5910i, _wgslsmith_mult_i32(2147483647i, 0i)) == -2147483647i, min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), min(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(18278u, u_input.b, 11530u, u_input.b))), ~(~41282u)), 63444u), ~(vec4<u32>(0u, u_input.b, u_input.b, 69841u) & vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.b, 22498u, u_input.b, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(39354u, 6210u, u_input.b, 93850u), vec4<u32>(u_input.b, 1u, 50891u, 0u))) % vec4<u32>(32u)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(global0.x, -1000f, -884f), var_1.a, Struct_1(var_1.a, u_input.b, 38207u))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1381f, global0.x, global0.x))), var_1, Struct_1(var_1.a, countOneBits(var_1.b), u_input.b)))), 436f, _wgslsmith_f_op_f32(round(global0.x)));
    global0 = var_2.zx;
    var var_3 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0, true, false && var_1.a), !(var_1.a && false)), !vec4<bool>(true, all(vec3<bool>(true, var_0, false)), var_1.a, var_0), func_1(Struct_1(var_0, var_1.c, ~4294967295u), vec4<u32>(0u, 68836u, var_1.c, ~u_input.b)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + global0.x))));
}

