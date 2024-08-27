struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1241f)), arg_0.d.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -651f)))), _wgslsmith_f_op_vec3_f32(select(arg_0.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-155f, -1627f, arg_0.e.a.x)))), !vec3<bool>(true, arg_0.a, arg_0.a)))), ~abs(firstLeadingBit(firstLeadingBit(0u))));
    let var_1 = arg_0.e;
    let var_2 = u_input.e.x;
    let var_3 = 1658f;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(531f, arg_0.e.a.x)))) * _wgslsmith_f_op_f32(-1137f + 200f));
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, 812f, 1116f)), vec3<f32>(-1678f, -546f, 2155f)))))), _wgslsmith_mult_u32((abs(u_input.c) ^ func_3(Struct_3(false, 34155i, 8570i, Struct_2(vec3<f32>(-310f, 2134f, -911f), u_input.c), Struct_2(vec3<f32>(-1000f, -1000f, 340f), u_input.c)), arg_0.xz, vec4<u32>(u_input.a.x, 86138u, u_input.c, u_input.c))) >> (0u % 32u), ~(~(~u_input.c))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1357f, var_0.a.x, var_0.a.x)))), vec3<bool>(true, all(vec2<bool>(true, true)), true))), var_0.b & (u_input.a.x << (func_3(Struct_3(true, -20066i, 1i, Struct_2(var_0.a, u_input.a.x), Struct_2(var_0.a, var_0.b)), ~vec2<i32>(-20213i, u_input.b), vec4<u32>(u_input.a.x, 62869u, u_input.a.x, 4294967295u) << (vec4<u32>(39749u, var_0.b, 0u, var_0.b) % vec4<u32>(32u))) % 32u)));
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-599f, -347f, var_0.a.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, var_0.a.x, -813f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a, var_0.a))))), 26455u);
    var_0 = var_1;
    var var_2 = !select(vec3<bool>(true, false, !(1i != arg_0.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), true);
    return Struct_3(!var_2.x, _wgslsmith_mult_i32(arg_0.x, ~_wgslsmith_mod_i32(u_input.e.x, -55287i) << (~(~0u) % 32u)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -19132i, 11668i, 27393i), arg_0), reverseBits(1i) ^ u_input.e.x), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -116f))), _wgslsmith_f_op_f32(step(-186f, _wgslsmith_f_op_f32(662f - 158f))), var_1.a.x), 93322u), Struct_2(var_1.a, 52467u));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    let var_0 = ~39118u;
    let var_1 = func_2(firstLeadingBit(vec4<i32>(arg_0, ~(-53380i), 1i, _wgslsmith_mod_i32(1i, 18688i))));
    var var_2 = min(select(vec4<i32>(max(var_1.b, _wgslsmith_clamp_i32(u_input.b, -13588i, 1i)), ~(u_input.d.x ^ arg_0), (14979i << (u_input.a.x % 32u)) << (abs(4294967295u) % 32u), _wgslsmith_clamp_i32(1i, arg_0, var_1.b >> (15662u % 32u))), vec4<i32>(arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, arg_0, u_input.b, arg_2), vec4<i32>(u_input.e.x, 1i, 0i, var_1.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, var_1.c, u_input.b, -33055i), vec4<i32>(arg_2, arg_0, var_1.b, -6513i))), 1i, select(_wgslsmith_add_i32(-2147483647i, 0i), reverseBits(2147483647i), !var_1.a)), !(!all(arg_3.xw))), ~_wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(-1i, arg_2, arg_0, arg_2)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_2, var_1.c, arg_0), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, var_1.b), vec4<i32>(var_1.b, u_input.d.x, 7861i, -2147483647i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(43543u, u_input.a.x, 14156u, u_input.c), vec4<u32>(1u, var_1.d.b, var_1.d.b, var_0)) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_clamp_u32(1u, var_1.d.b, ~(37055u >> (select(1u, 9383u, true) % 32u))) >= ~(~54538u);
    var var_4 = true;
    return _wgslsmith_f_op_f32(max(1234f, _wgslsmith_f_op_f32(max(var_1.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.a.x * var_1.e.a.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.d.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f - _wgslsmith_f_op_f32(f32(-1f) * -389f))), _wgslsmith_f_op_f32(func_1(-(i32(-1i) * -u_input.b), ~u_input.c, -(_wgslsmith_add_i32(u_input.d.x, -3494i) >> (_wgslsmith_mod_u32(u_input.a.x, 6791u) % 32u)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(min(vec4<i32>(13369i, -1i, u_input.d.x, -1i), vec4<i32>(u_input.e.x, 1i, u_input.d.x, u_input.b))).d.a.x) - -1000f));
    var var_1 = select(-(-u_input.d | _wgslsmith_clamp_vec2_i32(~u_input.d, vec2<i32>(43254i, u_input.e.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -1i)))), select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.e.x, 2147483647i), firstTrailingBit(u_input.d)), min(~vec2<i32>(23949i, -11677i), u_input.e)), ~u_input.d & _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, u_input.d.x), ~u_input.e), vec2<bool>(true, true)), _wgslsmith_mod_i32(-13460i >> (u_input.a.x % 32u), u_input.e.x) != _wgslsmith_mult_i32(-(u_input.b >> (u_input.a.x % 32u)), _wgslsmith_div_i32(max(-1i, u_input.d.x), ~u_input.e.x)));
    var_1 = (vec2<i32>(var_1.x, _wgslsmith_add_i32(u_input.b, 0i)) << (select(_wgslsmith_mult_vec2_u32(~u_input.a, reverseBits(vec2<u32>(27921u, u_input.c))), ~vec2<u32>(u_input.c, 1u), false) % vec2<u32>(32u))) >> (vec2<u32>(u_input.c, ~(reverseBits(u_input.c) << (30074u % 32u))) % vec2<u32>(32u));
    var_1 = vec2<i32>(var_1.x, u_input.b);
    let var_2 = vec4<u32>(func_3(Struct_3(!select(false, false, true), -(var_1.x & var_1.x), 16151i, func_2(-vec4<i32>(u_input.d.x, 0i, u_input.d.x, 1i)).e, Struct_2(vec3<f32>(-810f, var_0.x, var_0.x), ~21238u)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, var_1.x), ~u_input.e, ~vec2<i32>(var_1.x, u_input.d.x)), _wgslsmith_clamp_vec2_i32(u_input.e, vec2<i32>(-50355i, var_1.x), -u_input.e)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(60738u, u_input.c, u_input.c, u_input.a.x), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.a.x)), vec4<u32>(_wgslsmith_div_u32(25772u, u_input.a.x), 36156u, 23525u, u_input.c), select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), true))), ~(u_input.a.x ^ ~u_input.c), u_input.c, 752u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-669f)), func_2(vec4<i32>(0i, var_1.x, 1i, -28165i)).d.a.x), -1706f, _wgslsmith_f_op_f32(-815f + _wgslsmith_f_op_f32(select(-791f, 499f, false))), -534f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, 455f, var_0.x))), vec4<f32>(829f, var_0.x, 279f, var_0.x)))))));
}

