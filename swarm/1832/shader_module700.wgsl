struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-98631i, 29720i, 35744i, 46127i), -1i, vec2<bool>(true, false), Struct_1(true, vec2<u32>(21042u, 1u), vec3<bool>(false, false, true), 11409i, vec4<bool>(true, true, true, true)), 9913u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = Struct_4(Struct_1(firstTrailingBit(_wgslsmith_add_u32(14694u, 47938u)) < arg_0.a, reverseBits(reverseBits(~global0.d.b)), select(vec3<bool>(false, any(global0.d.e.zzy), false), vec3<bool>(global0.d.c.x, false, false), vec3<bool>(!global0.d.e.x, true, all(vec2<bool>(true, global0.d.c.x)))), -11958i, !global0.d.e), _wgslsmith_mult_i32(38279i, _wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(-1i), ~u_input.a), _wgslsmith_div_i32(~u_input.a, ~global0.b))), _wgslsmith_add_i32(u_input.a, ~2147483647i), -50321i & _wgslsmith_clamp_i32(-2147483647i, select(~(-18680i), global0.a.x, all(vec3<bool>(false, global0.d.a, global0.c.x))), _wgslsmith_mod_i32(76236i, 21378i)));
    let var_1 = var_0.a;
    var_0 = Struct_4(Struct_1(var_1.a, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, arg_2), vec2<u32>(4294967295u, 4294967295u)), select(!(!global0.d.c), vec3<bool>(var_1.a, global0.d.a, any(var_0.a.e)), any(vec2<bool>(var_1.a, false))), var_0.a.d, vec4<bool>(true, false, any(!var_0.a.c), _wgslsmith_f_op_f32(f32(-1f) * -665f) > _wgslsmith_f_op_f32(-arg_0.b))), global0.d.d >> (1538u % 32u), -52480i, ~1i);
    var var_2 = ~global0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b - -473f), _wgslsmith_f_op_f32(f32(-1f) * -152f))))) + arg_1));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-676f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 849f)))))), -1084f));
    var_0 = _wgslsmith_f_op_f32(step(-570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + 1334f), -363f, arg_1.a)))));
    var var_1 = arg_1.e.zzw;
    return Struct_3(global0.a, _wgslsmith_sub_i32(92443i, _wgslsmith_mult_i32(arg_2.b, 2147483647i & u_input.a)), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -619f) <= arg_0.x, all(!arg_1.c) == var_1.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_1.b.x, -386f, vec3<f32>(-335f, -501f, arg_0.x)), 1240f, global0.e))) != -686f, vec2<u32>(global0.e, reverseBits(1u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 1u) >> (arg_2.a.b % vec2<u32>(32u)), vec2<u32>(arg_2.a.b.x, 37007u)), arg_2.a.c, min(u_input.a, arg_2.b & _wgslsmith_add_i32(global0.d.d, arg_2.c)), global0.d.e), global0.d.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<f32> {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1064f, -417f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, -2336f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(433f, -1000f))) * vec2<f32>(147f, 1039f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1360f, -2015f) - vec2<f32>(1f, 1f)), arg_2.c.x)))), arg_2.d, Struct_4(global0.d, _wgslsmith_sub_i32(i32(-1i) * -arg_2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b, -17079i, global0.b) >> (arg_1 % vec3<u32>(32u)), abs(global0.a.wzy))), -8819i, _wgslsmith_sub_i32(4301i, ~(-arg_0.d.d))));
    var var_0 = vec3<f32>(1f, 1f, 1f);
    global0 = arg_3;
    global0 = arg_2;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zy - vec2<f32>(var_0.x, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 415f) * vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_0.x - var_0.x))))), arg_2.d, Struct_4(Struct_1(arg_0.c.x, vec2<u32>(~4294967295u, min(4294967295u, global0.d.b.x)), !arg_3.d.e.xxx, _wgslsmith_mult_i32(1i, 1i), !(!arg_0.d.e)), global0.d.d, arg_3.b >> (_wgslsmith_add_u32(45489u, arg_1.x) % 32u), ~firstLeadingBit(arg_0.a.x))).d;
    return var_0.yx;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_3(global0.a, -2147483647i, vec2<bool>(global0.d.e.x, false), global0.d, 0u), vec3<u32>(u_input.b, 0u, 0u), func_2(vec2<f32>(-601f, -1019f), global0.d, Struct_4(global0.d, -40740i, -5829i, -2147483647i)), func_2(vec2<f32>(221f, 1618f), global0.d, Struct_4(Struct_1(true, global0.d.b, vec3<bool>(false, global0.c.x, true), global0.d.d, global0.d.e), 0i, global0.a.x, -6747i))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(182f, 1067f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, -149f) - vec2<f32>(-888f, 963f)), all(vec4<bool>(false, false, false, true)))))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1144f, -105f) * vec2<f32>(-1340f, -751f))))))), global0.c));
    var var_1 = vec3<bool>(any(select(func_2(var_0, func_2(var_0, global0.d, Struct_4(global0.d, u_input.a, 0i, global0.b)).d, Struct_4(global0.d, -2147483647i, -1i, u_input.a)).c, global0.c, any(global0.d.e) | true)), global0.d.a, global0.c.x);
    var var_2 = _wgslsmith_mod_vec2_i32(~(~global0.a.ww), select(~(-vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.x, -9717i), global0.a.wz)), select(_wgslsmith_div_vec2_i32(global0.a.xz, vec2<i32>(u_input.a, global0.b)), global0.a.zy, vec2<bool>(false, true))), false));
    return _wgslsmith_sub_i32(~17279i << (((reverseBits(43276u) << ((global0.e >> (global0.d.b.x % 32u)) % 32u)) << (~29468u % 32u)) % 32u), _wgslsmith_div_i32(~u_input.a, -44272i));
}

fn func_5(arg_0: Struct_4) -> i32 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-517f + 792f), 1f))), arg_0.a, arg_0);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~2825u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(202f))), _wgslsmith_f_op_f32(1671f * 1582f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(243f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(2395f, -1092f)), -1000f, _wgslsmith_f_op_f32(floor(-284f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, 367f, -1682f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 235f, 397f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1450f, -463f, 1000f) + vec3<f32>(-1000f, -2112f, -904f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-688f, 666f, -1005f) - vec3<f32>(163f, 122f, 2526f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_4(global0.d, u_input.a, max(func_1(), u_input.a), global0.d.d)), func_5(Struct_4(Struct_1(true, vec2<u32>(43570u, 53630u), !vec3<bool>(global0.d.a, global0.c.x, global0.c.x), global0.b >> (global0.d.b.x % 32u), vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x)), min(_wgslsmith_div_i32(-671i, u_input.a), u_input.a), -2147483647i, -2147483647i)), global0.e, vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(global0.d.b, vec2<u32>(_wgslsmith_sub_u32(u_input.b, 34303u), 0u)), ~var_0.a));
}

