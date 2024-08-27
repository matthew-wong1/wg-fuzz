struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), !select(!vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x), vec3<bool>(true, true, true), true), ~select(global0.x, -2147483647i, true), _wgslsmith_div_i32(_wgslsmith_div_i32(select(max(u_input.b.x, u_input.d), u_input.b.x, true), _wgslsmith_add_i32(u_input.d, i32(-1i) * -1i)), -6167i), -(~vec3<i32>(abs(0i), ~0i, -1i)));
    var_0 = Struct_1(vec4<f32>(350f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(405f, arg_0.x))) - -262f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1002f)), var_0.a.x)), select(arg_3.b, select(!(!vec3<bool>(true, true, var_0.b.x)), vec3<bool>(57119u > arg_1, arg_3.c >= 4272i, select(false, var_0.b.x, false)), !(!vec3<bool>(true, false, var_0.b.x))), arg_3.b.x), -(-(u_input.d & u_input.b.x) >> (_wgslsmith_mult_u32(~arg_1, ~55982u) % 32u)), _wgslsmith_dot_vec3_i32(max(u_input.b, ~vec3<i32>(7080i, -41083i, 9369i)), vec3<i32>(_wgslsmith_add_i32(-2147483647i, abs(u_input.b.x)), _wgslsmith_mod_i32(1i, 1i), ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), _wgslsmith_mult_vec3_i32(max(-arg_3.e, _wgslsmith_mult_vec3_i32(arg_3.e, -vec3<i32>(0i, 48343i, var_0.e.x))), vec3<i32>(-41348i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, global0.x), reverseBits(u_input.a.x)), global0.x)));
    global0 = abs(firstLeadingBit(abs(select(arg_3.e, vec3<i32>(arg_3.c, global0.x, 0i), vec3<bool>(var_0.b.x, true, var_0.b.x)))) ^ abs(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, 1i, var_0.e.x), -arg_3.e)));
    global0 = firstLeadingBit(reverseBits(reverseBits(vec3<i32>(-5847i, var_0.e.x, var_0.c) << ((vec3<u32>(27655u, 5187u, arg_2.x) ^ vec3<u32>(arg_1, arg_2.x, 64646u)) % vec3<u32>(32u)))));
    let var_1 = select(vec3<i32>(~2147483647i, reverseBits(arg_3.d), u_input.b.x), vec3<i32>(var_0.c, max(max(arg_3.d, 0i), 1i), arg_3.c) | vec3<i32>(-max(-61900i, u_input.a.x), 2147483647i, global0.x), !vec3<bool>(any(vec4<bool>(true, var_0.b.x, false, var_0.b.x)) | true, true, true));
    return vec3<bool>(true, all(!arg_3.b.zz), !select(arg_3.b.x, var_0.b.x, !var_0.b.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec2<i32> {
    var var_0 = abs(_wgslsmith_div_u32(23051u, 9369u));
    let var_1 = Struct_1(vec4<f32>(-488f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), func_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(524f)) * _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1630f + arg_0.x), -264f)), _wgslsmith_f_op_f32(f32(-1f) * -2246f)), _wgslsmith_mod_u32(arg_1.x, 34879u), arg_1, Struct_1(vec4<f32>(-1634f, -167f, _wgslsmith_f_op_f32(-arg_0.x), -1202f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~(i32(-1i) * -1i), 0i, vec3<i32>(_wgslsmith_div_i32(global0.x, 21249i), u_input.d << (arg_1.x % 32u), 31900i ^ global0.x))), u_input.b.x, max(~(-(-2147483647i << (0u % 32u))), u_input.d), -u_input.a.yyz);
    var var_2 = -select(firstLeadingBit(vec2<i32>(u_input.b.x, -global0.x)), vec2<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 1i, 2147483647i), min(u_input.a.wxy, var_1.e))), select(select(vec2<bool>(false, false), vec2<bool>(true, var_1.b.x), true), vec2<bool>(false, true), !var_1.b.x));
    global0 = var_1.e;
    var var_3 = Struct_2(var_1, _wgslsmith_f_op_f32(-637f * var_1.a.x), ~select(vec2<u32>(_wgslsmith_div_u32(1u, u_input.e.x), ~u_input.e.x), select(u_input.e.xx, abs(u_input.e.xx), !var_1.b.x), vec2<bool>(select(var_1.b.x, true, true), all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false)))));
    return -max(-u_input.b.xy, vec2<i32>(_wgslsmith_sub_i32(-28948i, 1i), max(1i, countOneBits(-2147483647i))));
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = true;
    global0 = u_input.a.zxx;
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(~firstLeadingBit(global0.x), -(-1i | global0.x), -4812i), reverseBits(vec3<i32>(u_input.a.x ^ global0.x, 0i, 1i))));
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 886f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f - arg_0.x)))), arg_0.x), reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x) ^ min(vec4<u32>(1u, 1u, u_input.e.x, u_input.e.x), vec4<u32>(67618u, u_input.e.x, 9867u, 85388u))) ^ ~(vec4<u32>(25213u, u_input.e.x, u_input.e.x, u_input.e.x) << (vec4<u32>(u_input.e.x, 11085u, u_input.e.x, u_input.e.x) % vec4<u32>(32u))));
    global0 = vec3<i32>(-2147483647i, -2147483647i, _wgslsmith_sub_i32(u_input.c, -(~(-2811i >> (0u % 32u)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x), 818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -354f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 848f, arg_0.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-350f, arg_0.x, arg_0.x), vec3<f32>(246f, arg_0.x, arg_0.x))), vec3<bool>(var_0, false, var_0))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1381f, arg_0.x, 296f) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), vec3<f32>(430f, arg_0.x, arg_0.x), func_3(vec4<f32>(arg_0.x, -1532f, arg_0.x, arg_0.x), u_input.e.x, vec4<u32>(1u, 1u, 90775u, 50063u), Struct_1(vec4<f32>(arg_0.x, 1340f, arg_0.x, 1012f), vec3<bool>(var_0, var_0, var_0), var_2.x, global0.x, var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1218f, arg_0.x) - vec3<f32>(685f, 345f, 964f)))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = vec4<bool>(all(vec3<bool>(true, false, !any(vec4<bool>(true, false, true, true)))), any(func_3(vec4<f32>(arg_0.x, arg_0.x, 881f, arg_0.x), ~1u, vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(arg_0.x, 1699f, -2058f, 1886f), vec3<bool>(false, false, false), -16797i, global0.x, vec3<i32>(global0.x, -50509i, u_input.c)))) || any(!func_3(vec4<f32>(arg_0.x, 1745f, -419f, arg_0.x), u_input.e.x, vec4<u32>(u_input.e.x, 1816u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-2154f, 753f, -513f, arg_0.x), vec3<bool>(false, true, false), 5827i, global0.x, vec3<i32>(-44472i, global0.x, u_input.d))).xx), !(global0.x != 0i), !((_wgslsmith_add_u32(1u, u_input.e.x) << (1u % 32u)) < 17890u));
    global0 = reverseBits(~u_input.a.zyy);
    var var_1 = -1376f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1913f, -858f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(select(1748f, arg_0.x, true))) + vec4<f32>(-277f, 452f, _wgslsmith_f_op_f32(round(145f)), arg_0.x)), select(vec3<bool>(any(vec2<bool>(var_0.x, false)), false, var_0.x), !func_3(vec4<f32>(-783f, arg_0.x, -2468f, arg_0.x), 17563u, vec4<u32>(u_input.e.x, 25586u, 10870u, u_input.e.x), Struct_1(vec4<f32>(-284f, arg_0.x, arg_0.x, arg_0.x), var_0.xww, -9015i, u_input.c, u_input.b)), func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-179f, arg_0.x, -471f, arg_0.x), vec4<f32>(437f, -1295f, 1455f, arg_0.x))), 70177u, select(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 75794u), vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x), var_0), Struct_1(vec4<f32>(-471f, 1258f, 1344f, -501f), vec3<bool>(true, var_0.x, var_0.x), 0i, 1i, vec3<i32>(1i, global0.x, -2147483647i)))), 29528i, global0.x, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-798f))), vec2<u32>(u_input.e.x, 4294967295u));
    let var_3 = all(!func_3(var_2.a.a, _wgslsmith_sub_u32(10721u, 0u), ~vec4<u32>(20008u, u_input.e.x, 49010u, 1u), var_2.a).zz) || select(true, (var_2.a.b.x || true) | false, !(var_2.a.b.x | !var_0.x));
    return Struct_2(var_2.a, arg_0.x, ~(~(~_wgslsmith_mod_vec2_u32(u_input.e.yz, u_input.e.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, 904f, 449f)) - _wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(2757f, -475f))))))));
    var var_1 = Struct_5(Struct_3(true, var_0), false);
    let var_2 = Struct_2(var_0.a, _wgslsmith_f_op_f32(step(var_0.a.a.x, var_1.a.b.b)), max(~(~(vec2<u32>(0u, 22571u) >> (var_1.a.b.c % vec2<u32>(32u)))), select(select(~vec2<u32>(u_input.e.x, 99308u), var_1.a.b.c & vec2<u32>(u_input.e.x, u_input.e.x), !var_0.a.b.yy), func_4(vec3<f32>(668f, 1367f, var_1.a.b.a.a.x)).c, !func_4(var_1.a.b.a.a.zwz).a.b.x)));
    let var_3 = ~(-_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x << (u_input.e.x % 32u), _wgslsmith_add_i32(0i, global0.x)), ~var_0.a.c));
    global0 = ~(~vec3<i32>(_wgslsmith_clamp_i32(var_3, func_4(var_1.a.b.a.a.zxz).a.d, -1i), 1i, ~1i));
    let var_4 = Struct_4(var_2.a.a.yx, _wgslsmith_f_op_vec3_f32(func_1(var_2.a.a.yz)).x);
    var var_5 = func_4(_wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(-1000f, 896f)))).a.a.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(-2147483647i, -1i), -14059i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a.e, var_0.a.e) | countOneBits(var_2.a.e), u_input.a.zwz), ~_wgslsmith_clamp_i32(7698i, u_input.d, -var_0.a.d)), -2147483647i, _wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(var_5.x, 569f))).x, (var_3 << (1u % 32u)) & global0.x);
}

