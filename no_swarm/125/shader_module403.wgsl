struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec4<bool>, arg_3: bool) -> bool {
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)) & u_input.e.x, max(u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(39308u, u_input.e.x), 1u)), (max(1u, 0u) ^ u_input.e.x) << (u_input.e.x % 32u), ~62438u));
    let var_1 = _wgslsmith_sub_u32(39223u << (u_input.e.x % 32u), var_0.x);
    let var_2 = _wgslsmith_f_op_f32(-744f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))));
    let var_3 = vec3<i32>(select(i32(-1i) * -13196i, -(~(~u_input.d)), any(!arg_2.xwy)), (_wgslsmith_dot_vec3_i32(max(u_input.b.yyy, vec3<i32>(-28836i, -14261i, arg_0.a.x)), ~u_input.b.ywy) ^ arg_0.c) | arg_0.a.x, -arg_0.a.x);
    var var_4 = Struct_5(Struct_3(Struct_1(var_0.x, arg_2.x, firstTrailingBit(var_0.zyy)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(543f, 605f, var_2) + vec3<f32>(-1000f, 292f, -1157f))), Struct_1(~42045u, false, ~var_0.wyz), _wgslsmith_dot_vec2_u32(reverseBits(u_input.e.zw), var_0.xz & var_0.xw), _wgslsmith_mult_vec2_i32(~var_3.xz, vec2<i32>(-38036i, var_3.x) << (var_0.wz % vec2<u32>(32u))), vec3<i32>(abs(var_3.x), u_input.a.x, -arg_0.b.x))), ~abs(var_0.www));
    return arg_3;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(~_wgslsmith_div_u32(_wgslsmith_mod_u32(6055u, arg_2), u_input.e.x), func_3(Struct_4(u_input.a.wwy, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 1i, 31384i, u_input.d), u_input.b), -19546i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), vec4<bool>(arg_0.x, false, true, true), all(arg_0.zx)), u_input.e.yww), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1322f * arg_1), 1061f)), Struct_1(abs(73080u), !arg_0.x, vec3<u32>(arg_2, 1u, ~arg_2)), arg_3, vec2<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), -2147483647i) ^ (-vec2<i32>(u_input.a.x, 37680i) | -u_input.b.xy), vec3<i32>(u_input.c, u_input.a.x >> (u_input.e.x % 32u), ~(-u_input.b.x))));
    var var_1 = Struct_4(vec3<i32>(3848i, var_0.b.d.x, -2147483647i), _wgslsmith_sub_vec4_i32(~abs(select(vec4<i32>(1i, 13558i, 2147483647i, var_0.b.e.x), u_input.a, var_0.b.b.b)), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 44549i, var_0.b.e.x, 2147483647i), u_input.a), vec4<i32>(2147483647i, u_input.b.x, 1i, -13328i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -u_input.d, max(var_0.b.e.x, u_input.c), ~u_input.c), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.d.x, u_input.d, -36496i), var_0.b.e) | u_input.b.yyx)));
    global0 = false;
    var var_2 = _wgslsmith_f_op_f32(sign(1396f));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> f32 {
    var var_0 = true;
    let var_1 = 46300u | ~(~u_input.e.x);
    let var_2 = Struct_4(min(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, -1i, u_input.c), -max(arg_0.b.e, arg_2.b.e)), firstTrailingBit(select(-arg_2.b.e, u_input.a.xzw, vec3<bool>(arg_1, true, arg_1)))), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, arg_2.b.e.x, u_input.d)) << (_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(arg_0.a.a, 0u, var_1, 75384u)) % 32u), reverseBits(min(23760i, -6698i)), _wgslsmith_sub_i32(u_input.b.x, ~2147483647i), arg_0.b.e.x | (arg_0.b.e.x ^ -2147483647i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.e.x, arg_2.a.c.x), ~var_1, ~var_1, abs(1u)), countOneBits(vec4<u32>(27428u, 15236u, 0u, 38140u))) % vec4<u32>(32u)), u_input.c >> (1u % 32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a.x) * arg_0.b.a.x);
    global0 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.b.a.x)), _wgslsmith_f_op_f32(arg_2.b.a.x + arg_0.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.x - arg_0.b.a.x)))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = ~reverseBits(_wgslsmith_div_vec3_u32(u_input.e.yyy, vec3<u32>(u_input.e.x, 44192u, 4476u))) | (~countOneBits(~vec3<u32>(26526u, u_input.e.x, u_input.e.x)) & ~u_input.e.xzz);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1443f, -1014f) - vec2<f32>(975f, -310f))))), vec2<f32>(_wgslsmith_f_op_f32(-1545f + 3918f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec3<bool>(true, true, true), 188f, 575u, 9472u), true, func_2(vec3<bool>(false, true, false), 2201f, 0u, 33540u))) - 1034f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x * 1045f)) - vec2<f32>(-733f, _wgslsmith_f_op_f32(-var_1.x)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1));
    let var_3 = func_2(select(vec3<bool>(true, true, false), !vec3<bool>(true, func_3(Struct_4(u_input.b.ywx, vec4<i32>(0i, arg_0, arg_1.x, arg_1.x), arg_0), var_2.x, vec4<bool>(true, true, false, true), false), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)), ~(~min(4294967295u, ~var_0.x)), _wgslsmith_div_u32(firstLeadingBit(~firstLeadingBit(u_input.e.x)), var_0.x)).b.b;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, -166f, var_1.x))))), func_2(!select(vec3<bool>(true, true, true), !vec3<bool>(false, true, var_3.b), select(vec3<bool>(false, var_3.b, true), vec3<bool>(false, true, true), var_3.b)), -736f, var_3.a << ((u_input.e.x << (~var_0.x % 32u)) % 32u), ~var_0.x).b.b, 4294967295u, ~(-vec2<i32>(i32(-1i) * -8557i, select(1i, arg_0, var_3.b))), firstLeadingBit(vec3<i32>(min(func_2(vec3<bool>(false, true, var_3.b), 334f, var_0.x, 28313u).b.d.x, 18528i), u_input.a.x, -20635i)));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = arg_3;
    let var_1 = Struct_1(~((5958u ^ u_input.e.x) ^ u_input.e.x) | ~var_0.c, false, vec3<u32>(_wgslsmith_add_u32(0u, arg_3.c), _wgslsmith_mod_u32(abs(1u), arg_3.b.c.x), ~abs(var_0.c)));
    let var_2 = -vec3<i32>(-(~arg_1.x) << (u_input.e.x % 32u), _wgslsmith_mult_i32(~arg_2.x, i32(-1i) * -arg_1.x), -1i);
    let var_3 = Struct_3(func_2(vec3<bool>(var_1.b, true, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c, var_0.b.c.x, arg_3.b.a, var_0.c), u_input.e) < countOneBits(var_0.c)), -1213f, arg_3.c, _wgslsmith_mult_u32(abs(arg_3.c), 1u)).b.b, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, arg_3.a.x, 763f)) * vec3<f32>(143f, arg_0, var_0.a.x))), Struct_1(59624u >> (reverseBits(u_input.e.x) % 32u), true, abs(~var_1.c)), ~(~4294967295u | _wgslsmith_add_u32(var_1.a, var_1.a)), func_2(vec3<bool>(any(vec3<bool>(true, false, arg_3.b.b)), true, arg_3.b.b), 1009f, u_input.e.x, (arg_3.c ^ 104880u) & _wgslsmith_sub_u32(arg_3.c, var_0.b.a)).b.d, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.zyy, vec3<i32>(2147483647i, 1i, var_0.d.x)), -reverseBits(arg_1.yyx))));
    var_0 = Struct_2(var_3.b.a, Struct_1(func_2(select(vec3<bool>(var_3.a.b, true, arg_3.b.b), vec3<bool>(var_1.b, false, true), var_3.a.b), 622f, 0u, 4294967295u).a.c.x & _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.c.x, 50224u), func_2(vec3<bool>(true, var_3.a.b, var_3.a.b), 1435f, var_1.a, 8224u).b.c), func_2(vec3<bool>(var_1.b || false, true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.a.x)), arg_3.a.x)), abs(91877u), ~4294967295u).a.b, vec3<u32>(0u, ~var_0.c, _wgslsmith_mod_u32(func_2(vec3<bool>(false, false, arg_3.b.b), -1000f, var_3.a.c.x, 1u).b.b.c.x, var_0.c))), var_1.c.x, var_3.b.d, ~(-(countOneBits(vec3<i32>(arg_1.x, arg_1.x, 614i)) | arg_2.wyy)));
    return Struct_4(firstLeadingBit(_wgslsmith_mod_vec3_i32(arg_3.e, vec3<i32>(0i, var_0.e.x, -2147483647i)) << (~(~vec3<u32>(u_input.e.x, var_1.a, var_0.b.a)) % vec3<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(min(func_1(u_input.a.x, var_2.yz).e.zy, arg_3.e.xx), ~_wgslsmith_mult_vec2_i32(arg_3.d, var_2.xz)), firstLeadingBit(1i << (0u % 32u)) >> (_wgslsmith_div_u32(~arg_3.c, _wgslsmith_div_u32(1u, 4294967295u)) % 32u), func_2(vec3<bool>(any(vec3<bool>(arg_3.b.b, var_0.b.b, var_3.b.b.b)), false, all(vec4<bool>(false, arg_3.b.b, true, var_1.b))), arg_0, 1u, reverseBits(reverseBits(4294967295u))).b.d.x, ~6537i), _wgslsmith_mult_i32(var_3.b.d.x, (u_input.b.x << (_wgslsmith_sub_u32(var_3.b.b.a, arg_3.b.a) % 32u)) >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_i32((u_input.b.x ^ 60440i) | _wgslsmith_sub_i32(min(u_input.d, u_input.a.x), ~(-41561i)), u_input.c) > 0i;
    global0 = true;
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) - _wgslsmith_div_f32(-2210f, -1107f)) + _wgslsmith_f_op_f32(780f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-665f, -583f) - _wgslsmith_f_op_f32(min(-332f, -2264f))))), -vec4<i32>(_wgslsmith_clamp_i32(~u_input.d, ~u_input.d, u_input.c), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.yw, vec2<i32>(u_input.d, u_input.b.x))), 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, 42372i, 8912i, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.d, -2147483647i, -26616i), u_input.b))), -vec4<i32>(u_input.b.x, -_wgslsmith_mod_i32(u_input.c, -2147483647i), 2147483647i, -1i), func_1(~(-32547i << (u_input.e.x % 32u)), firstTrailingBit(u_input.b.yw)));
    var var_1 = var_0;
    var_1 = func_5(1f, vec4<i32>(var_0.a.x, ~u_input.a.x & -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 31031i), ~vec2<i32>(u_input.d, var_0.a.x)), -abs(2147483647i)) | vec4<i32>(~(-1i), func_1(_wgslsmith_dot_vec4_i32(var_0.b, var_1.b), _wgslsmith_sub_vec2_i32(vec2<i32>(23664i, -17390i), vec2<i32>(var_1.b.x, u_input.a.x))).e.x, var_0.a.x, -24604i), -firstLeadingBit(var_0.b), func_1(-2147483647i, var_0.b.xy));
    var var_2 = Struct_1(26791u, func_1(var_1.b.x, select(~vec2<i32>(60727i, var_0.b.x), func_5(-1000f, u_input.a, vec4<i32>(5327i, 1707i, 1i, 0i), Struct_2(vec3<f32>(120f, -566f, 1404f), Struct_1(u_input.e.x, false, u_input.e.wxx), u_input.e.x, vec2<i32>(var_0.a.x, -1i), var_1.a)).a.zx, vec2<bool>(true, false))).b.b | !((1u & u_input.e.x) >= _wgslsmith_clamp_u32(8049u, u_input.e.x, u_input.e.x)), vec3<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.e.x, 109629u, 4294967295u)) << (u_input.e.x % 32u), ~44222u, ~u_input.e.x));
    let var_3 = _wgslsmith_mod_u32(62461u, max(~1u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-547f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1411f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)), false)), vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_div_i32(var_0.b.x, u_input.c), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, var_0.b.x), -5433i)), -29910i));
}

