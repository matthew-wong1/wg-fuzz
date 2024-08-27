struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1231f + 1081f), _wgslsmith_f_op_f32(min(495f, -1000f)), -1000f, _wgslsmith_f_op_f32(trunc(1144f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, 163f, 1000f, 1267f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, 320f, -1017f, 890f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-250f, 1281f, 943f, -497f) + vec4<f32>(355f, 380f, 529f, -416f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), -581f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-893f))))));
    var var_2 = -(i32(-1i) * -_wgslsmith_add_i32(-36705i, u_input.c));
    var_2 = u_input.c;
    var_2 = _wgslsmith_mod_i32(u_input.d.x, ~(i32(-1i) * -1i));
    return var_1.x;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(Struct_1(true, u_input.c), true, Struct_1(!(!(u_input.d.x <= -7677i)), ~(u_input.d.x ^ 18021i) >> (0u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 14624u), vec2<u32>(u_input.b.x, 0u)), u_input.b.x), 1u) | 36575u, firstTrailingBit(~(_wgslsmith_add_u32(u_input.b.x, u_input.a.x) | ~4294967295u)), 4294967295u);
    var_2 = reverseBits(abs(vec3<u32>(4294967295u, _wgslsmith_add_u32(var_2.x, 4294967295u & u_input.b.x), 1u)));
    var_2 = vec3<u32>(4294967295u, select(~u_input.a.x, var_2.x, (var_0.c.a | var_0.b) && var_0.a.a), var_2.x);
    return Struct_3(_wgslsmith_f_op_f32(min(427f, 1f)), !select(!(!vec3<bool>(var_0.b, var_0.a.a, var_0.b)), vec3<bool>(select(true, var_0.a.a, var_0.c.a), var_0.a.a, true), !select(vec3<bool>(var_0.a.a, false, false), vec3<bool>(var_0.c.a, true, false), true)), var_0.c.a || select(var_0.b, false, true), Struct_2(max(var_2.x, firstTrailingBit(var_2.x)), u_input.b, true), u_input.d);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = select(select(vec4<bool>(select(true, arg_0.d.c & arg_0.d.c, select(false, true, true)), false, arg_0.b.x, select(false, all(vec3<bool>(arg_0.c, true, false)), arg_0.c)), vec4<bool>(false, false, !(arg_0.e.x > -2147483647i), any(select(vec4<bool>(arg_0.d.c, arg_0.b.x, arg_0.d.c, arg_0.b.x), vec4<bool>(true, false, false, false), vec4<bool>(arg_0.c, arg_0.d.c, true, true)))), select(!select(vec4<bool>(false, false, arg_0.c, true), vec4<bool>(arg_0.d.c, true, arg_0.b.x, true), vec4<bool>(arg_0.d.c, arg_0.d.c, arg_0.d.c, true)), vec4<bool>(true, true, true, true), true)), !select(select(select(vec4<bool>(false, arg_0.c, arg_0.d.c, arg_0.d.c), vec4<bool>(false, false, true, false), arg_0.d.c), select(vec4<bool>(true, false, arg_0.b.x, arg_0.c), vec4<bool>(arg_0.d.c, true, arg_0.b.x, arg_0.c), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x)), !arg_0.c), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, arg_0.c, arg_0.d.c, arg_0.c), false), !select(vec4<bool>(false, arg_0.c, true, arg_0.b.x), vec4<bool>(true, arg_0.c, false, arg_0.d.c), vec4<bool>(false, false, arg_0.b.x, false))), true && arg_0.d.c);
    var var_2 = arg_2.x;
    let var_3 = arg_0.c;
    var_2 = -reverseBits(_wgslsmith_div_i32(arg_2.x, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(u_input.c, var_0.x, var_0.x)))));
    return Struct_1(all(var_1), arg_2.x);
}

fn func_1(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = 10710u;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(868f, -1645f) - vec2<f32>(756f, -1000f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1898f, -1000f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(481f, _wgslsmith_f_op_f32(f32(-1f) * -1068f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-446f, var_1.x))));
    let var_2 = func_4(func_2(), var_1.x, arg_0.yzy);
    let var_3 = _wgslsmith_f_op_f32(abs(1191f));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * var_1.x))), var_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x * var_3))), func_2().a)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-959f + 1230f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-335f, _wgslsmith_div_f32(-181f, 1669f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-858f, 1581f)), _wgslsmith_f_op_f32(-2159f + 315f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c, _wgslsmith_mult_i32(10189i, u_input.d.x), _wgslsmith_clamp_i32(-2147483647i, u_input.c, -2147483647i), u_input.d.x), select(vec4<i32>(u_input.c, u_input.c, 48252i, -21513i) | vec4<i32>(-1i, 391i, u_input.c, 5778i), vec4<i32>(u_input.c, u_input.c, -1i, 2147483647i), vec4<bool>(true, true, true, true))), vec4<i32>(-2147483647i, u_input.c, _wgslsmith_mod_i32(u_input.c, -u_input.d.x), max(u_input.d.x, 0i)))));
    var_1 = vec4<f32>(var_1.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(-665f)));
    let var_2 = select(select(!vec4<bool>(1514f < var_1.x, true, true, false), select(vec4<bool>(true, func_4(Struct_3(-2493f, vec3<bool>(false, true, true), false, Struct_2(u_input.a.x, u_input.b, true), vec2<i32>(14693i, u_input.d.x)), 1000f, vec3<i32>(u_input.d.x, 31526i, 11526i)).a, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), false), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), select(true, true, select(false, true, false))), vec4<bool>(false, true, (0u << (u_input.b.x % 32u)) == (u_input.a.x << (0u % 32u)), true), ((u_input.a.x & 14391u) > u_input.b.x) == false), !((any(vec4<bool>(true, true, false, true)) && all(vec4<bool>(true, true, false, true))) || (_wgslsmith_f_op_f32(var_0.x - -819f) >= _wgslsmith_f_op_f32(var_1.x - 371f))));
    var var_3 = var_2.x;
    let var_4 = Struct_2(~countOneBits(u_input.b.x), u_input.b, true);
    var var_5 = _wgslsmith_f_op_f32(-1056f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-857f)) - 111f))) >= _wgslsmith_f_op_f32(round(var_0.x));
    var var_6 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -602f)), !(!(!(!vec3<bool>(false, var_2.x, false)))), all(var_2.zz), func_2().d, u_input.d);
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(57910u);
}

