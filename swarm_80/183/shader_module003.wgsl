struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<f32>(552f, 1422f), true, vec4<i32>(2147483647i, -1i, 1i, 41715i), vec4<f32>(-259f, 1163f, -869f, -1456f), vec2<u32>(11488u, 80546u)), vec3<i32>(-61330i, 1i, -19640i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = vec3<i32>(~global0.b.x, ~reverseBits(min(_wgslsmith_add_i32(-1i, u_input.b.x), -15799i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(global0.a.c), ~(~(vec4<i32>(14772i, -2147483647i, arg_0.b.x, arg_0.b.x) ^ vec4<i32>(u_input.b.x, arg_0.b.x, global0.a.c.x, -7685i)))));
    var_0 = vec3<i32>(abs(global0.b.x), _wgslsmith_mod_i32(-54014i, ~(-(-32380i >> (global0.a.e.x % 32u)))), -34505i);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x & global0.b.x, ~(~2147483647i), u_input.b.x, -_wgslsmith_clamp_i32(global0.a.c.x, _wgslsmith_clamp_i32(-1i, u_input.b.x, 62355i), -1i)), vec4<i32>(select(arg_0.b.x, ~(~global0.b.x), any(vec4<bool>(false, global0.a.b, false, global0.a.b))), _wgslsmith_add_i32(arg_0.a.c.x, _wgslsmith_clamp_i32(1i, arg_0.a.c.x, var_0.x | -56693i)), countOneBits(_wgslsmith_add_i32(18579i, u_input.a)) | ~13335i, 1i));
    var var_2 = ~(~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(52u, 12977u, 1u) & vec3<u32>(0u, global0.a.e.x, 4294967295u), vec3<u32>(0u, 15848u, 4294967295u))));
    let var_3 = abs(-abs(2147483647i)) & _wgslsmith_div_i32(_wgslsmith_div_i32(select(global0.b.x, u_input.b.x, global0.a.b), countOneBits(reverseBits(u_input.b.x))), _wgslsmith_mod_i32(u_input.a, 2147483647i));
    return arg_0.a.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    let var_0 = !(!any(select(select(vec4<bool>(global0.a.b, arg_1.a, global0.a.b, false), vec4<bool>(global0.a.b, global0.a.b, true, arg_1.a), true), vec4<bool>(arg_1.a, global0.a.b, global0.a.b, global0.a.b), vec4<bool>(global0.a.b, false, true, false))));
    global0 = Struct_3(global0.a, -(~_wgslsmith_mult_vec3_i32(global0.a.c.xwy, reverseBits(global0.a.c.zww))));
    global0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-900f, -1330f), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec2<f32>(-1053f, global0.a.a.x), global0.a.b, global0.a.c, vec4<f32>(arg_2, arg_2, arg_2, global0.a.d.x), global0.a.e), global0.a.c.yxw))))), _wgslsmith_f_op_f32(arg_2 + 322f)), select(true, global0.a.b, true), -global0.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 596f, global0.a.d.x, 394f))))), ~arg_0 ^ max(arg_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(80127u, 4294967295u), global0.a.e, arg_0))), countOneBits(~select(global0.a.c.zwy, global0.a.c.zxw, all(vec2<bool>(arg_1.a, false)))));
    var var_1 = _wgslsmith_f_op_f32(-arg_2);
    var var_2 = -136f;
    return Struct_3(global0.a, -_wgslsmith_mult_vec3_i32(countOneBits(-vec3<i32>(u_input.b.x, -2147483647i, u_input.a)), vec3<i32>(-1i, ~global0.b.x, firstLeadingBit(-9393i))));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    let var_0 = global0.a.c.x;
    var var_1 = Struct_2(false, _wgslsmith_mult_u32(firstLeadingBit(abs(arg_1 | 0u)), 35112u));
    global0 = func_2(global0.a.e, Struct_2(!(_wgslsmith_f_op_f32(max(global0.a.d.x, global0.a.a.x)) < -400f), ~global0.a.e.x), global0.a.d.x);
    global0 = func_2(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, global0.a.e.x, 9529u), var_1.b), Struct_2(arg_0, ~((74334u << (arg_1 % 32u)) | ~61239u)), _wgslsmith_f_op_f32(-1f));
    global0 = Struct_3(global0.a, _wgslsmith_add_vec3_i32(-global0.b, vec3<i32>(~u_input.a, 60901i, u_input.b.x)) ^ (-vec3<i32>(-21772i, 53359i, global0.a.c.x) & (vec3<i32>(-1i) * -vec3<i32>(global0.a.c.x, -66014i, -6070i))));
    return func_2(~global0.a.e, Struct_2(func_2(vec2<u32>(4294967295u, arg_1), Struct_2(true, 31624u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(213f)))).a.b, min(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1, 23034u), 17641u), _wgslsmith_clamp_u32(1u, 50912u >> (global0.a.e.x % 32u), ~global0.a.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(292f, global0.a.a.x, var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.d.x + global0.a.a.x) * _wgslsmith_div_f32(global0.a.d.x, global0.a.a.x)), ~global0.a.e.x < reverseBits(0u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -706f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(true && all(vec3<bool>(global0.a.b, true, global0.a.b))), global0.a.e.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, -1000f, 499f, -868f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, 186f, global0.a.a.x, 325f))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.x, var_0.a.d.x) * _wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.a.a.x)))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1504f - _wgslsmith_div_f32(var_0.a.a.x, 1277f)))), _wgslsmith_f_op_f32(-1034f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(988f + var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 134f)))), func_1(!any(vec4<bool>(var_0.a.b, true, true, global0.a.b)), 4294967295u).a.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-598f)) - 1211f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-303f))))))), var_1.wzz, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.e.x, firstTrailingBit(~countOneBits(0u)), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(51109u, var_0.a.e.x, var_0.a.e.x), vec3<u32>(global0.a.e.x, global0.a.e.x, 0u))), abs((select(vec2<i32>(-54336i, var_0.b.x), vec2<i32>(-1i, u_input.b.x), true) & vec2<i32>(-53522i, 0i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.e.x, global0.a.e.x), _wgslsmith_add_vec2_u32(var_0.a.e, vec2<u32>(62607u, global0.a.e.x))) % vec2<u32>(32u))), -623f);
}

