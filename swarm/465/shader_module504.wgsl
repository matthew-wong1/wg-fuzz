struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    var var_0 = u_input.a.x & ~u_input.d;
    let var_1 = vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.d, ~_wgslsmith_mult_u32(u_input.b.x | 4294967295u, reverseBits(u_input.d))));
    var var_2 = vec3<bool>(~u_input.d == 15330u, var_1.x <= 33454u, true);
    var var_3 = -777f;
    var var_4 = ~_wgslsmith_div_u32(~var_1.x, ~0u);
    return _wgslsmith_f_op_f32(-471f - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    let var_0 = Struct_3(arg_0, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a.x)));
    var var_2 = select(vec3<u32>(u_input.d, 1u, arg_2.a.a.x), ~firstLeadingBit(~u_input.b.zxw | u_input.b.ywx), !var_0.a.d.b);
    var_2 = ~u_input.b.wxx;
    let var_3 = _wgslsmith_div_u32(1u, ~var_2.x);
    return ~vec3<u32>(var_3 & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_2.x, 16552u, arg_0.a.x)), vec3<u32>(arg_0.a.x, 44995u, arg_2.a.a.x)), countOneBits(abs(arg_2.a.a.x)) & abs(12611u), u_input.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, min(arg_2, arg_2 & arg_1.x)), ~arg_1.x ^ arg_2), ~vec2<u32>(0u, arg_1.x));
    let var_1 = Struct_3(Struct_2(countOneBits(u_input.b.wy & ~arg_1.yy), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 32429i, 1i), ~arg_0.zww), abs(-(vec3<i32>(1i, u_input.c, arg_0.x) | arg_0.xyy)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1468f, 704f, -131f)))), true, _wgslsmith_add_vec4_i32(vec4<i32>(48797i, u_input.c, -2147483647i, u_input.c) << (vec4<u32>(51316u, arg_1.x, 10142u, u_input.d) % vec4<u32>(32u)), abs(vec4<i32>(u_input.c, -1i, -1i, -5628i)))), ~(-2147483647i)), any(vec2<bool>(true, true)));
    let var_2 = Struct_4(var_1.a);
    let var_3 = select(select(select(vec4<bool>(var_1.a.d.b || var_1.b, var_1.b, var_1.a.d.b & true, select(var_1.b, false, var_1.b)), select(!vec4<bool>(var_1.a.d.b, true, var_2.a.d.b, false), select(vec4<bool>(false, var_1.a.d.b, var_1.a.d.b, false), vec4<bool>(false, var_1.a.d.b, var_1.a.d.b, false), vec4<bool>(var_2.a.d.b, var_1.a.d.b, var_2.a.d.b, var_1.b)), var_1.a.d.b), select(vec4<bool>(false, var_1.b, var_2.a.d.b, var_2.a.d.b), select(vec4<bool>(var_1.b, var_2.a.d.b, true, var_2.a.d.b), vec4<bool>(var_1.b, true, false, var_1.a.d.b), false), false)), select(vec4<bool>(var_1.b, false, true, true), select(!vec4<bool>(var_2.a.d.b, true, true, false), select(vec4<bool>(false, false, var_2.a.d.b, false), vec4<bool>(true, var_1.b, var_1.a.d.b, true), var_1.a.d.b), select(vec4<bool>(true, true, var_1.b, true), vec4<bool>(var_1.b, var_2.a.d.b, false, var_1.a.d.b), var_1.a.d.b)), all(vec3<bool>(false, false, var_2.a.d.b))), var_2.a.d.b), !vec4<bool>(true, false, var_2.a.d.b, var_2.a.d.b), select(select(vec4<bool>(true, !var_1.a.d.b, all(vec2<bool>(false, false)), true), !select(vec4<bool>(var_1.b, false, var_2.a.d.b, var_2.a.d.b), vec4<bool>(false, var_2.a.d.b, true, var_2.a.d.b), var_1.a.d.b), all(!vec2<bool>(false, var_2.a.d.b))), !(!select(vec4<bool>(var_2.a.d.b, false, false, var_1.a.d.b), vec4<bool>(var_2.a.d.b, false, false, false), false)), !select(select(vec4<bool>(var_2.a.d.b, true, var_2.a.d.b, true), vec4<bool>(var_1.b, false, var_1.b, false), var_1.b), vec4<bool>(var_2.a.d.b, false, true, var_2.a.d.b), any(vec3<bool>(var_2.a.d.b, false, false)))));
    var var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.d.a * vec3<f32>(1657f, _wgslsmith_div_f32(-1165f, var_2.a.d.a.x), 884f)), var_2.a.d.a), !var_2.a.d.b | true, var_2.a.d.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.a.d.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d.a.x, 299f, var_4.a.x) + vec3<f32>(-280f, var_1.a.d.a.x, var_2.a.d.a.x)))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.a.d.a.x + -313f), 753f, var_4.a.x)))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = arg_2.a.d.b;
    var var_1 = Struct_3(Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(42288u, 112557u), ~vec2<u32>(arg_3.a.a.x, 0u)), select(vec2<u32>(35125u, 103485u), arg_2.a.a, arg_3.b) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, arg_2.a.a.x), vec2<u32>(arg_3.a.a.x, u_input.a.x)) % vec2<u32>(32u))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 17031i), vec2<i32>(arg_2.a.c.x, arg_2.a.d.c.x)), u_input.c), vec3<i32>(~firstTrailingBit(-2147483647i), 2147483647i, -u_input.c | abs(-26128i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000f, 284f))), true, vec4<i32>(_wgslsmith_div_i32(24266i, -2147483647i), 0i, u_input.c, 1i | arg_2.a.b)), 0i), any(vec4<bool>(var_0, arg_3.a.d.b, select(var_0, false, -376f > arg_2.a.d.a.x), !(true | arg_2.a.d.b))));
    var var_2 = (_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_1.a.d.c.x), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 1i), var_1.a.c.yz)), arg_2.a.d.c.zz, reverseBits(countOneBits(var_1.a.d.c.yy))) >> (vec2<u32>(var_1.a.a.x, max(~41234u, 0u | u_input.b.x)) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.a.e, -16361i), vec2<i32>(u_input.c, -63228i)), vec2<i32>(~arg_3.a.d.c.x, arg_2.a.b)), ~(~vec2<i32>(-54809i, var_1.a.d.c.x)));
    let var_3 = Struct_2(vec2<u32>(abs(17344u), ~(~(var_1.a.a.x | arg_2.a.a.x))), var_1.a.c.x & (max(-1i, -19666i) << (1u % 32u)), arg_3.a.d.c.ywx, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-754f, 1345f, arg_2.a.d.a.x), vec3<f32>(arg_3.a.d.a.x, var_1.a.d.a.x, arg_1.x))) + _wgslsmith_f_op_vec3_f32(arg_1 - arg_2.a.d.a))), true, arg_2.a.d.c), arg_0 & reverseBits(-7211i));
    var_1 = arg_2;
    return max(u_input.b.zwz, _wgslsmith_sub_vec3_u32(u_input.b.yxx << (~vec3<u32>(1u, var_1.a.a.x, arg_3.a.a.x) % vec3<u32>(32u)), u_input.b.yxw));
}

fn func_2() -> u32 {
    var var_0 = u_input.c;
    let var_1 = true;
    let var_2 = Struct_2(vec2<u32>(max(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, reverseBits(u_input.a.x))), u_input.b.x), abs(-40069i), max(firstLeadingBit(~(~vec3<i32>(0i, u_input.c, -32218i))), vec3<i32>(~2147483647i, -u_input.c, -34603i) << (vec3<u32>(u_input.d, ~0u, 1u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-366f, 1118f, 2006f), vec3<f32>(-121f, -986f, 1562f), vec3<bool>(false, false, var_1)))) * vec3<f32>(1f, -1489f, _wgslsmith_f_op_f32(f32(-1f) * -693f))), select(any(!vec3<bool>(var_1, false, false)), true, !var_1), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(77805i, 0i, u_input.c, u_input.c)), ~vec4<i32>(1i, u_input.c, u_input.c, -31022i))), u_input.c);
    var var_3 = u_input.b.wwz << (func_5(~(-var_2.b), _wgslsmith_f_op_vec3_f32(func_4(select(abs(var_2.d.c), -vec4<i32>(var_2.c.x, -2147483647i, var_2.b, -10410i), any(vec3<bool>(true, var_2.d.b, var_2.d.b))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(14821u, var_2.a.x, 47001u)), func_3(Struct_2(u_input.a, var_2.b, var_2.c, Struct_1(vec3<f32>(1544f, -1369f, var_2.d.a.x), false, var_2.d.c), var_2.c.x), vec3<i32>(var_2.c.x, u_input.c, -44735i), Struct_4(Struct_2(var_2.a, var_2.d.c.x, var_2.c, Struct_1(vec3<f32>(866f, -536f, var_2.d.a.x), var_2.d.b, var_2.d.c), var_2.b)), 2147483647i)), 89055u)), Struct_3(var_2, true), Struct_3(var_2, all(!vec3<bool>(var_1, false, var_1)))) % vec3<u32>(32u));
    var_0 = i32(-1i) * -2147483647i;
    return _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(68709u, var_2.a.x, 83990u, 22457u)) >> (var_2.a.x % 32u)) ^ ~((var_3.x >> (u_input.b.x % 32u)) ^ (reverseBits(var_2.a.x) << (func_3(var_2, var_2.d.c.xyw, Struct_4(Struct_2(u_input.b.wz, var_2.d.c.x, var_2.d.c.xxx, var_2.d, var_2.b)), var_2.b).x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, 320f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, 1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(767f + 1393f), 154f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(454f, 541f), vec2<f32>(-652f, -228f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-976f, -685f), vec2<f32>(-1371f, 171f)))))));
    let var_1 = (27828i | u_input.c) < -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), u_input.c, _wgslsmith_add_i32(u_input.c, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 45733i, u_input.c), vec3<i32>(1i, u_input.c, 2147483647i))), ~(vec4<i32>(u_input.c, u_input.c, 48113i, 0i) << (vec4<u32>(u_input.b.x, 3785u, 106942u, 0u) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(-880f)), var_0.x))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 692f), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -470f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.x, 771f)), _wgslsmith_f_op_f32(-var_0.x)) * var_2.zy)) * vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(func_1())), var_0.x));
    var var_3 = select(~vec4<u32>(u_input.b.x, ~u_input.b.x, ~_wgslsmith_mod_u32(4294967295u, 69296u), ~_wgslsmith_clamp_u32(30038u, 4294967295u, u_input.a.x)), ~(~(~u_input.b)), any(vec4<bool>(select(var_1, var_1, false), any(vec4<bool>(var_1, false, true, var_1)), var_1 || true, var_1)));
    var_3 = ~(~vec4<u32>(51815u, 42272u, ~u_input.b.x, 95143u));
    var_3 = countOneBits(vec4<u32>(u_input.d, func_2(), 36635u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2319f, -125f, 622f)))), _wgslsmith_mod_u32(7621u, _wgslsmith_add_u32(_wgslsmith_mult_u32(26636u, 38960u), 76840u)));
}

