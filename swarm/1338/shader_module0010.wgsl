struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29993u;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global0 = arg_0;
    let var_0 = 4294967295u;
    let var_1 = Struct_2(~(-vec3<i32>(global1.a.x, global1.a.x, global1.a.x) >> (max(vec3<u32>(arg_0, 1u, 0u), vec3<u32>(11965u, 67621u, arg_0)) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, global1.b ^ global1.b, ~0u), abs(~vec3<u32>(global1.b, 63096u, 48060u))) % vec3<u32>(32u)), Struct_1(global1.a >> (_wgslsmith_div_vec2_u32(~vec2<u32>(var_0, var_0), ~vec2<u32>(global1.b, global1.b)) % vec2<u32>(32u)), var_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(global1.c.x, 230f)), _wgslsmith_f_op_f32(trunc(934f))), global1.c, select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), Struct_1(global1.a, 57013u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c * global1.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c.x, global1.c.x), global1.c)) + vec2<f32>(global1.c.x, global1.c.x)))));
    global1 = Struct_1(var_1.a.xz, _wgslsmith_mod_u32(~(~u_input.a & arg_0), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(floor(1f)), var_1.c.c.x));
    global1 = Struct_1(_wgslsmith_mult_vec2_i32(var_1.b.a, max(~var_1.a.yz, firstTrailingBit(var_1.a.xx))) & var_1.b.a, arg_0, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, var_1.b.c.x))), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(select(var_1.c.c.x, -530f, true))))));
    return min(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, 1i, -40574i), vec3<i32>(22822i, global1.a.x, global1.a.x)) ^ var_1.c.a.x, -1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a.xy, ~select(vec2<i32>(-9228i, global1.a.x), vec2<i32>(-1i, var_1.a.x), vec2<bool>(true, false))), _wgslsmith_clamp_i32(~min(-2147483647i, global1.a.x), -_wgslsmith_div_i32(global1.a.x, 0i), -42462i)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    global0 = countOneBits(0u);
    let var_0 = Struct_2(vec3<i32>(arg_2.a.x, _wgslsmith_div_i32(abs(countOneBits(16225i)), _wgslsmith_mult_i32(arg_2.a.x, _wgslsmith_sub_i32(-1i, arg_2.a.x))), 2147483647i), Struct_1(vec2<i32>(arg_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, arg_2.a.x), global1.a)) ^ func_3(24957u), 1u, arg_2.c), arg_2);
    var var_1 = !(!select(vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), !(true || arg_0)));
    global1 = arg_2;
    global1 = var_0.c;
    return Struct_2(-abs(var_0.a), Struct_1(-(vec2<i32>(-1i) * -arg_2.a), arg_3.x, arg_1.xz), var_0.b);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global0 = firstTrailingBit(69218u);
    let var_0 = reverseBits(arg_3.a & vec3<i32>(-_wgslsmith_clamp_i32(global1.a.x, -83498i, global1.a.x), -_wgslsmith_mod_i32(1i, global1.a.x), -(~1i)));
    var var_1 = select(vec3<bool>(arg_2, any(vec4<bool>(any(vec2<bool>(true, arg_2)), true, true, arg_0)), false), vec3<bool>(true, !all(vec3<bool>(arg_2, arg_2, arg_2)), select(arg_2, true, arg_2)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-func_2(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(758f, 284f, 1353f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, 643f, arg_3.b.c.x))), vec3<f32>(arg_3.b.c.x, _wgslsmith_f_op_f32(step(arg_3.c.c.x, arg_3.b.c.x)), _wgslsmith_f_op_f32(-971f - arg_1)), !any(vec2<bool>(arg_2, true)))), arg_3.c, abs(~min(vec4<u32>(global1.b, 13296u, u_input.a, 34238u), vec4<u32>(u_input.a, 99109u, 28958u, u_input.a)))).c.c);
    var var_3 = arg_3.c;
    return arg_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = true;
    let var_2 = ~(~(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, 51530u) ^ vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(global1.b, arg_0.b)) >> (vec2<u32>(0u, arg_0.b << (u_input.a % 32u)) % vec2<u32>(32u))));
    global1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.a.x, 17666i, var_0.a.x << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, 2147483647i), vec3<i32>(arg_0.a.x, -1i, arg_0.a.x))), vec4<i32>(arg_0.a.x & global1.a.x, arg_0.a.x & arg_0.a.x, arg_0.a.x, -1i)), 1i), ~abs(_wgslsmith_add_u32(42118u, _wgslsmith_mod_u32(19822u, u_input.a))), _wgslsmith_f_op_vec2_f32(global1.c + _wgslsmith_f_op_vec2_f32(-arg_0.c)));
    let var_3 = vec3<f32>(var_0.c.x, -504f, -1923f);
    return var_0;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.c.x);
    global1 = func_4(select(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), global1.a.x <= 2147483647i, false), _wgslsmith_f_op_f32(-arg_0.b.c.x), !any(vec3<bool>(true, true, true)), func_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, -419f, arg_0.c.c.x), vec3<f32>(arg_0.b.c.x, 507f, global1.c.x), true))))), func_2(!all(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -1000f, -803f))), func_2(any(vec3<bool>(false, false, false)), vec3<f32>(-1000f, arg_0.b.c.x, -430f), Struct_1(global1.a, u_input.a, arg_0.b.c), ~vec4<u32>(4294967295u, 1u, 59541u, 46990u)).b, firstLeadingBit(vec4<u32>(global1.b, 1u, u_input.a, global1.b))).b, select(_wgslsmith_mult_vec4_u32(vec4<u32>(10580u, arg_0.b.b, 21528u, 80816u), vec4<u32>(31367u, u_input.a, global1.b, 0u) << (vec4<u32>(0u, 91328u, 0u, u_input.a) % vec4<u32>(32u))), select(select(vec4<u32>(48902u, arg_0.b.b, arg_0.b.b, 6034u), vec4<u32>(47195u, global1.b, 4294967295u, 686u), vec4<bool>(true, false, false, false)), abs(vec4<u32>(1u, 13860u, 1u, 4294967295u)), vec4<bool>(true, false, false, false)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true))));
    global1 = arg_0.b;
    var var_1 = func_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2155f, global1.c.x, global1.c.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.x, 1000f, arg_0.b.c.x))), true)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1329f, arg_0.b.c.x, 784f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.c.x, -1026f, arg_0.c.c.x), vec3<f32>(arg_0.c.c.x, -154f, 1000f)))))), Struct_1(abs(vec2<i32>(0i, global1.a.x) | firstTrailingBit(arg_0.c.a)), ~_wgslsmith_mult_u32(~arg_0.b.b, func_4(true, arg_0.b.c.x, true, arg_0).b), arg_0.c.c), vec4<u32>(~26893u, _wgslsmith_dot_vec4_u32(~vec4<u32>(69783u, global1.b, global1.b, 0u), ~vec4<u32>(global1.b, arg_0.c.b, global1.b, 20856u)) ^ arg_0.c.b, abs(4294967295u) & ~u_input.a, ~(~26049u)));
    var_1 = arg_0;
    return Struct_2(arg_0.a, var_1.b, var_1.b);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = global1.c;
    let var_1 = func_6(Struct_2(-_wgslsmith_sub_vec3_i32(vec3<i32>(43048i, 6408i, global1.a.x), -vec3<i32>(global1.a.x, global1.a.x, -2147483647i)), func_5(func_4(false, _wgslsmith_f_op_f32(var_0.x + global1.c.x), -986f == global1.c.x, func_2(true, vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_1(vec2<i32>(-15786i, global1.a.x), global1.b, vec2<f32>(1741f, -260f)), vec4<u32>(38921u, arg_0, 3054u, arg_0))), ~countOneBits(5818u)), func_5(func_4(true, 348f, any(vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(global1.a.x, 48573i, global1.a.x), Struct_1(global1.a, 88025u, vec2<f32>(142f, var_0.x)), Struct_1(global1.a, u_input.a, global1.c))), arg_0)));
    global0 = firstTrailingBit(u_input.a);
    global1 = func_2(any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), false), vec2<bool>(false, true), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, global1.c.x, -266f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, -971f, var_1.b.c.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(237f, 474f, -284f))), vec3<f32>(709f, var_0.x, var_0.x), vec3<bool>(true, false, false))))) - vec3<f32>(-472f, -1715f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 709f)))), func_5(Struct_1(vec2<i32>(var_1.b.a.x, -2147483647i), func_2(true, vec3<f32>(-720f, var_0.x, 1516f), func_6(Struct_2(vec3<i32>(global1.a.x, var_1.b.a.x, 2147483647i), Struct_1(global1.a, 4294967295u, vec2<f32>(var_0.x, global1.c.x)), Struct_1(global1.a, var_1.b.b, var_1.b.c))).b, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, var_1.b.b, 0u), vec4<u32>(var_1.b.b, arg_0, global1.b, 1u))).b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.c.x, -459f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c.x, 1147f))))), reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0, 28327u), 3925u))), vec4<u32>(14302u & global1.b, ~var_1.c.b, 48441u, var_1.c.b)).b;
    global1 = var_1.c;
    return var_1;
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = vec4<u32>(select(~_wgslsmith_div_u32(arg_2, 1u), u_input.a, !(!all(vec3<bool>(false, arg_3.x, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, global1.b, global1.b)), countOneBits(vec3<u32>(1u, 0u, global1.b))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(26483u, global1.b), vec2<u32>(global1.b, 17046u)), vec2<u32>(44277u, var_0.b) & vec2<u32>(4069u, 41828u))), firstTrailingBit(vec2<u32>(20787u, _wgslsmith_add_u32(78447u, var_0.b)))), ~func_4(!all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(401f, 1054f)))), !all(arg_3), Struct_2(arg_0.a, var_0, Struct_1(vec2<i32>(var_0.a.x, 2147483647i), var_0.b, global1.c))).b, arg_0.c.b << (arg_2 % 32u));
    global1 = func_6(Struct_2(arg_0.a, Struct_1(global1.a, ~func_6(Struct_2(arg_0.a, var_0, var_0)).c.b, _wgslsmith_div_vec2_f32(vec2<f32>(-2665f, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c.x, arg_0.c.c.x)))), arg_0.b)).b;
    global1 = func_6(arg_0).b;
    var_1 = vec4<u32>(countOneBits(firstLeadingBit(1u)), 1u, arg_0.b.b, _wgslsmith_add_u32(~10484u | ~var_1.x, 84464u));
    return func_1(u_input.a).b;
}

fn func_8(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    let var_0 = func_2(arg_1.x, vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) * arg_2.b.c.x), arg_0.c.x), func_5(Struct_1(arg_0.a, 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.c, arg_2.c.c, vec2<bool>(false, arg_1.x))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.x, 187f), vec2<f32>(347f, 294f)))), 4294967295u), ~(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, global1.b, u_input.a), vec3<u32>(u_input.a, 53493u, arg_2.c.b)), arg_2.c.b, arg_2.c.b) & ((vec4<u32>(arg_2.c.b, arg_0.b, arg_2.b.b, global1.b) & vec4<u32>(0u, 0u, arg_0.b, 24118u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(96551u, 0u, global1.b, arg_2.c.b), vec4<u32>(global1.b, 0u, 54030u, 1u)) % vec4<u32>(32u)))));
    let var_1 = arg_0.c;
    global0 = 4294967295u;
    var var_2 = min(vec4<u32>(min(global1.b | global1.b, ~36703u) | (func_6(var_0).c.b | global1.b), 0u, u_input.a, 16475u), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(8445u, 4294967295u, var_0.c.b, u_input.a), vec4<u32>(1u, 0u, 1966u, arg_0.b), ~vec4<u32>(10662u, 32u, 0u, 1u)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b, 1u), 28016u), ~arg_0.b, 0u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 69577u), func_7(arg_2, 2005f, u_input.a, vec2<bool>(arg_1.x, arg_1.x)).b)), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-145f * arg_2.b.c.x)) != 1910f));
    let var_3 = Struct_2(abs(arg_2.a), func_1(global1.b).b, Struct_1(vec2<i32>(~0i, func_6(Struct_2(arg_2.a, arg_0, var_0.c)).c.a.x), global1.b, func_1(u_input.a).b.c));
    return any(vec3<bool>(arg_1.x, false, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.b;
    let var_0 = vec3<bool>(any(vec2<bool>(select(global1.b <= u_input.a, true, 37450u > global1.b), true)), !any(vec2<bool>(true, true)), func_8(func_7(func_1(~global1.b), _wgslsmith_f_op_f32(-global1.c.x), func_5(Struct_1(global1.a, global1.b, global1.c), _wgslsmith_add_u32(0u, 0u)).b, vec2<bool>(any(vec4<bool>(true, false, true, false)), global1.b < 0u)), !vec2<bool>(all(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, true, true, true))), func_1(global1.b)));
    let var_1 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(global1.a.x, min(global1.a.x, global1.a.x), ~global1.a.x), global1.a.x) & ~(-32342i);
    global1 = Struct_1(global1.a, ~((~u_input.a ^ 40832u) | global1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(global1.c))))));
    var var_2 = ~0i;
    var_2 = global1.a.x;
    global1 = func_6(func_2(any(var_0.yz) != (select(var_0.x, true, var_0.x) && func_8(Struct_1(vec2<i32>(global1.a.x, 1i), 4294967295u, global1.c), vec2<bool>(var_0.x, var_0.x), Struct_2(vec3<i32>(-4319i, var_1, -2147483647i), Struct_1(vec2<i32>(-2147483647i, -2563i), global1.b, vec2<f32>(515f, global1.c.x)), Struct_1(vec2<i32>(var_1, var_1), u_input.a, global1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-698f, -1000f)), global1.c.x, global1.c.x)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_1), global1.a, global1.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_1, 2147483647i), vec2<i32>(2147483647i, global1.a.x)), 26941u, vec2<f32>(func_5(Struct_1(vec2<i32>(global1.a.x, var_1), 1u, global1.c), 27748u).c.x, _wgslsmith_f_op_f32(-global1.c.x))), countOneBits(vec4<u32>(87961u, u_input.a, global1.b, u_input.a) >> (vec4<u32>(global1.b, u_input.a, 4294967295u, 0u) % vec4<u32>(32u))))).c;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(func_2(any(var_0.yy), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 540f, global1.c.x) * vec3<f32>(global1.c.x, global1.c.x, 334f)), func_7(Struct_2(vec3<i32>(18361i, -19849i, global1.a.x), Struct_1(vec2<i32>(-1i, -6447i), global1.b, global1.c), Struct_1(vec2<i32>(-2147483647i, -8481i), u_input.a, global1.c)), 508f, global1.b, vec2<bool>(true, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(28424u, 43939u, 4294967295u, global1.b), vec4<u32>(global1.b, global1.b, 52743u, 4294967295u), vec4<u32>(56887u, u_input.a, 1944u, 1u))).c.c.x, _wgslsmith_f_op_f32(-global1.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1533f, 1084f)), global1.c.x)));
    let var_4 = -4307i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_div_vec2_i32(global1.a, vec2<i32>(20726i, 1i))));
}

