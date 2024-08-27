struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
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

var<private> global0: f32 = -768f;

var<private> global1: vec4<f32>;

var<private> global2: vec4<u32> = vec4<u32>(32692u, 22180u, 32751u, 120777u);

var<private> global3: bool = false;

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - 1071f)));
    global2 = ~(~(~firstLeadingBit(~vec4<u32>(global2.x, global4.c, 28937u, global4.c))));
    return 19709u;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = any(select(arg_1.a, select(arg_1.a, select(select(vec4<bool>(false, false, global4.b, global4.b), arg_1.a, vec4<bool>(global4.b, false, true, false)), !vec4<bool>(true, global4.b, false, false), true), all(vec3<bool>(arg_1.a.x, true, false))), !(global4.a.x == global4.a.x)));
    global2 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global2.x, 40809u, 4294967295u, u_input.b.x), reverseBits(vec4<u32>(48936u, global2.x, 0u, global4.c))), vec4<u32>(9624u, 63640u, global2.x ^ global2.x, u_input.a.x)));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.d))), _wgslsmith_f_op_f32(-664f + _wgslsmith_f_op_f32(-global4.a.x)), true)), global1.x), global4.b, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.x, 74513u, global4.c)), ~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x)))), global1.x);
    let var_2 = Struct_5(Struct_3(!vec3<bool>(true, all(vec3<bool>(false, arg_1.a.x, global4.b)), false)), Struct_4(arg_1, arg_1, 205f, 1u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global4.d + -982f)), !any(vec3<bool>(var_1.b, var_1.b, true)), ~_wgslsmith_mod_u32(27636u, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f - var_1.d)))));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f), global1.x), -192f)), global4.d), !(!(var_1.d <= var_1.d)), 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x + global1.x), global4.d)));
    return -1i;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = vec3<i32>(1i, ~firstTrailingBit(countOneBits(func_3(u_input.a, Struct_2(arg_0)))), abs(u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-608f)), -614f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-418f, 166f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global4.a.x)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d, global4.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2093f, global4.d) * vec2<f32>(1566f, 942f))))));
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, _wgslsmith_f_op_f32(2088f + global4.d)))), (firstTrailingBit(_wgslsmith_clamp_i32(-11532i, -19783i, 30521i)) >= _wgslsmith_mult_i32(i32(-1i) * -1i, abs(-4243i))) || true, countOneBits(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(~0u, global2.x))), -2418f);
    var var_2 = ~(~(~(~vec4<u32>(0u, u_input.a.x, global2.x, 3892u)))) >> (~(~vec4<u32>(_wgslsmith_clamp_u32(global2.x, global4.c, global4.c), 4294967295u >> (u_input.b.x % 32u), 82702u, ~global2.x)) % vec4<u32>(32u));
    let var_3 = select(abs(var_0.yy), _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(-1i << (global2.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.x), ~var_0.xx)), vec2<i32>(-1i) * -(~var_0.yy)), select(!arg_0.xy, select(!select(vec2<bool>(false, global4.b), vec2<bool>(arg_0.x, global4.b), global4.b), select(vec2<bool>(arg_0.x, global4.b), !arg_0.zx, !arg_0.zy), arg_0.zx), ~(~var_0.x) >= max(u_input.c.x, _wgslsmith_clamp_i32(var_0.x, -25937i, var_0.x))));
    return Struct_2(vec4<bool>(false, select(true, !global4.b, global4.b), select(true, global4.b && (false & global4.b), true), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_3(arg_0.a.zxz);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1379f) * _wgslsmith_f_op_f32(global4.d - 421f)))), global4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-269f)), global1.x)))) - _wgslsmith_f_op_f32(-global1.x)));
    global3 = all(vec2<bool>(!(false & (arg_3.x <= -31379i)), all(select(select(vec4<bool>(var_0.a.x, true, arg_1.x, true), vec4<bool>(true, false, arg_0.a.x, arg_2), true), vec4<bool>(arg_0.a.x, true, arg_2, arg_1.x), !arg_0.a))));
    global4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), global4.d), global4.b, u_input.a.x, -749f);
    global2 = ~max(countOneBits(vec4<u32>(global4.c ^ global4.c, 38361u ^ u_input.b.x, ~u_input.b.x, reverseBits(70298u))), vec4<u32>(global2.x, 82141u, abs(abs(u_input.a.x)), u_input.a.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.wyz, global1.zwz, !vec3<bool>(false, true, arg_2))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.d, -111f, 1027f))) * global1.yzy)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), global1.x, _wgslsmith_f_op_f32(global1.x - -1146f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, 1335f, -1025f, 1000f) + vec4<f32>(global4.a.x, 1552f, global1.x, global4.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, -1119f, 536f, 1083f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(433f - 1074f), -1315f), global4.a.x, _wgslsmith_f_op_f32(-global4.a.x), global1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, 1164f, global1.x, global4.a.x)))));
    let var_1 = func_1();
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-392f)), global4.a.x, global1.x), _wgslsmith_f_op_vec3_f32(func_4(func_2(select(!vec4<bool>(global4.b, global4.b, global4.b, false), vec4<bool>(global4.b, global4.b, true, false), vec4<bool>(true, true, false, global4.b))), func_2(vec4<bool>(any(vec3<bool>(global4.b, global4.b, true)), global4.b && true, func_2(vec4<bool>(global4.b, global4.b, true, true)).a.x, false)).a.yx, !((global2.x >> (4424u % 32u)) > ~0u), countOneBits(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) << ((global2.wyz >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, u_input.b.x, 4294967295u), global2.wyx, vec3<u32>(59239u, var_1, var_1)) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, -1335f), _wgslsmith_f_op_vec2_f32(var_0.zy * global1.zw)))) - var_2.zz), any(!(!vec2<bool>(global4.b, true))), 0u, _wgslsmith_f_op_vec3_f32(func_4(func_2(select(!vec4<bool>(global4.b, true, global4.b, global4.b), vec4<bool>(false, global4.b, global4.b, global4.b), vec4<bool>(global4.b, true, false, true))), vec2<bool>(false, true), any(select(vec2<bool>(global4.b, global4.b), !vec2<bool>(global4.b, false), !global4.b)), firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-37428i, -45384i), 1i >> (var_1 % 32u), -1i)))).x);
    var var_4 = var_3.b;
    var var_5 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(27344u, global4.c) << (global2.yx % vec2<u32>(32u)), global2.zz), countOneBits(firstTrailingBit(9070u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1175f);
}

