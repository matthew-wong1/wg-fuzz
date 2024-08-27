struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(!(all(vec4<bool>(false, true, false, arg_0)) & (true && arg_0)));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1078f), 199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -164f) - -305f) * -150f)), Struct_2(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a))), 0i, ~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(41854u, u_input.a, u_input.a)) | ~vec3<u32>(63354u, 32156u, u_input.a)), Struct_1(1u != (1u << (u_input.a % 32u))), vec3<f32>(_wgslsmith_f_op_f32(abs(-112f)), -1746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1525f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, 1505f)) - vec2<f32>(-237f, 813f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(789f, 1089f), vec2<f32>(-1860f, 332f))))), !select(vec2<bool>(var_0.a, false), vec2<bool>(arg_0, false), select(vec2<bool>(var_0.a, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, var_0.a))))), select(select(!vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(!var_0.a, false, true, -9038i <= u_input.b.x), select(!vec4<bool>(var_0.a, true, false, var_0.a), select(vec4<bool>(false, true, arg_0, false), vec4<bool>(var_0.a, false, arg_0, true), arg_0), arg_0)), !select(vec4<bool>(arg_0, true, true, arg_0), select(vec4<bool>(var_0.a, true, arg_0, var_0.a), vec4<bool>(false, var_0.a, arg_0, true), vec4<bool>(var_0.a, true, var_0.a, var_0.a)), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, true, true, false), vec4<bool>(true, true, true, false))), select(vec4<bool>(false, true, arg_0 && false, any(vec4<bool>(var_0.a, true, false, false))), vec4<bool>(all(vec4<bool>(false, var_0.a, var_0.a, var_0.a)), arg_0 | true, false, true), var_0.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(select(4294967295u, 28025u, false), 14642u & u_input.a, _wgslsmith_mult_u32(u_input.a, 0u), 6661u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(24754u, 47034u, u_input.a, u_input.a)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, 47941u, 30520u))) ^ max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26624u, u_input.a, 1u), vec4<u32>(1u, 1u, 87782u, 0u)), ~u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 56394u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), u_input.a, 1u, u_input.a << (30798u % 32u))));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.e.x))), 851f, 113f) * var_1.a), var_1.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_1.b.e.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yz)), var_1.d.zx)))), var_1.d, vec4<u32>(u_input.a << ((49358u & reverseBits(u_input.a)) % 32u), _wgslsmith_sub_u32(~0u, ~(u_input.a >> (60368u % 32u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.e.x, var_1.b.c.x, var_1.e.x, var_1.b.c.x), vec4<u32>(4294967295u, var_1.e.x, 28241u, var_1.e.x)), var_1.e), ~801u));
    var_1 = Struct_3(vec3<f32>(var_1.c.x, var_1.b.e.x, -699f), Struct_2(abs(var_1.e.x), _wgslsmith_mult_i32(-reverseBits(-18017i), ~(~u_input.b.x)), abs(vec3<u32>(14393u, var_1.b.a, u_input.a << (var_1.e.x % 32u))), var_1.b.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.e) - _wgslsmith_f_op_vec3_f32(-var_1.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.e.x, var_1.c.x, 1916f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.a.x + 1441f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.b.e.x))))) + var_1.a.yx), select(select(vec4<bool>(any(vec4<bool>(var_1.d.x, true, false, true)), var_1.d.x, true, any(var_1.d.zw)), !(!var_1.d), select(select(vec4<bool>(var_1.d.x, true, false, true), vec4<bool>(false, false, var_0.a, var_1.d.x), vec4<bool>(arg_0, false, true, var_1.b.d.a)), select(var_1.d, vec4<bool>(true, var_1.b.d.a, true, var_1.b.d.a), var_1.d.x), -1236f > var_1.c.x)), var_1.d, all(vec4<bool>(any(var_1.d), false, !var_1.b.d.a, var_0.a))), vec4<u32>(u_input.a << (abs(var_1.e.x) % 32u), u_input.a, 1u, 4294967295u));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_1.a), var_1.b, _wgslsmith_f_op_vec2_f32(select(var_1.b.e.yx, vec2<f32>(-1421f, _wgslsmith_f_op_f32(-var_1.a.x)), all(var_1.d))), !select(vec4<bool>(false, any(vec2<bool>(arg_0, false)), true, var_1.b.d.a), select(var_1.d, select(var_1.d, var_1.d, var_1.d), !var_1.d), all(select(vec2<bool>(var_0.a, false), vec2<bool>(arg_0, var_1.b.d.a), false))), vec4<u32>(_wgslsmith_div_u32(abs(var_1.e.x), reverseBits(4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x, u_input.a) << (var_1.e.zx % vec2<u32>(32u)), var_1.e.yx), abs(41352u), _wgslsmith_clamp_u32(1u, 0u, 4294967295u)));
    return false;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = Struct_2(arg_0.e.x, u_input.b.x, ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 40324u, arg_0.b.c.x), ~vec3<u32>(arg_0.b.a, u_input.a, 0u)), arg_0.b.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1696f - arg_0.a.x)) * arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.a.x), arg_0.b.e.x));
    var var_1 = Struct_3(arg_0.b.e, Struct_2(max(~u_input.a, 4294967295u), _wgslsmith_div_i32(var_0.b, _wgslsmith_mod_i32(reverseBits(0i), 2147483647i << (var_0.a % 32u))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 31637u, 1u), vec3<u32>(91231u, arg_0.b.c.x, 58254u)) | vec3<u32>(1u, 4294967295u, u_input.a), ~(vec3<u32>(var_0.a, 97351u, 1u) & vec3<u32>(var_0.c.x, var_0.a, 7349u))), Struct_1(func_3(var_0.d.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1084f + 825f), 602f, var_0.e.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.e, var_0.e, var_0.d.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.e.zz))))), select(vec4<bool>(false, arg_0.d.x, ~1u <= (var_0.a << (var_0.a % 32u)), func_3(true)), vec4<bool>(all(vec3<bool>(arg_0.d.x, true, true)), _wgslsmith_f_op_f32(1011f - 190f) < _wgslsmith_f_op_f32(ceil(2320f)), any(!arg_0.d), all(vec4<bool>(false, true, false, var_0.d.a))), select(select(arg_0.d, arg_0.d, !arg_0.d), arg_0.d, arg_0.d)), select(arg_0.e, arg_0.e, any(!vec2<bool>(var_0.d.a, var_0.d.a))));
    var var_2 = !var_1.b.d.a;
    var_2 = arg_0.a.x <= -1259f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), 324f)));
    return u_input.b.wy ^ vec2<i32>(-2147483647i, ~_wgslsmith_dot_vec2_i32(~u_input.b.xx, vec2<i32>(u_input.b.x, var_0.b)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = !arg_2.d;
    let var_1 = arg_2.b;
    var var_2 = arg_1;
    let var_3 = Struct_2(~70708u, _wgslsmith_mult_i32(-var_1.b << ((4853u ^ max(u_input.a, arg_2.b.a)) % 32u), arg_0.x), firstTrailingBit(vec3<u32>(u_input.a, u_input.a ^ 1u, 34161u)), Struct_1(!(1u != _wgslsmith_add_u32(u_input.a, 8879u))), arg_3.wyx);
    var var_4 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -696f), 1810f, var_0.x || false)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e.x + var_4.a.x), var_3.e.x))) < -506f);
}

fn func_1() -> Struct_2 {
    return Struct_2(firstLeadingBit(_wgslsmith_add_u32(0u, reverseBits(u_input.a)) >> (48354u % 32u)), -34232i, _wgslsmith_sub_vec3_u32(~vec3<u32>(~18782u, u_input.a, ~u_input.a), ~vec3<u32>(u_input.a, 0u, u_input.a) | ~(~vec3<u32>(10022u, u_input.a, u_input.a))), func_4(_wgslsmith_mult_vec2_i32(func_2(Struct_3(vec3<f32>(1027f, 950f, 578f), Struct_2(u_input.a, u_input.b.x, vec3<u32>(u_input.a, 1546u, 4294967295u), Struct_1(false), vec3<f32>(-183f, 206f, 1282f)), vec2<f32>(235f, 795f), vec4<bool>(true, false, true, false), vec4<u32>(u_input.a, 14220u, u_input.a, 17077u))), u_input.b.zy), Struct_1(select(true, false, true) || true), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(707f, 1135f, -331f)))), Struct_2(~u_input.a, abs(0i), vec3<u32>(4294967295u, u_input.a, 4294967295u), Struct_1(false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, 1615f, 166f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec4<bool>(true, true, true, true), ~(~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, -1136f, -425f, 241f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, 410f, 1128f, -287f)))))), vec3<f32>(_wgslsmith_div_f32(1374f, 667f), _wgslsmith_f_op_f32(528f * -1598f), _wgslsmith_f_op_f32(f32(-1f) * -245f)));
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = reverseBits(arg_0.a);
    var var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(exp2(arg_0.e.x)) < arg_0.e.x, true));
    var_0 = u_input.a;
    var_1 = !vec2<bool>(true | (!var_1.x & var_1.x), false);
    let var_2 = Struct_2(max(~1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~arg_0.c.x, u_input.a), ~_wgslsmith_dot_vec3_u32(arg_0.c, arg_0.c))), _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), var_1.x), -22149i) & (-55722i >> (_wgslsmith_sub_u32(~arg_0.c.x, 11032u) % 32u)), firstTrailingBit(vec3<u32>(~u_input.a, _wgslsmith_div_u32(arg_0.c.x, arg_0.c.x), u_input.a) & vec3<u32>(func_1().c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, 31826u, arg_0.a), vec4<u32>(u_input.a, arg_0.a, u_input.a, arg_0.a)), u_input.a >> (70238u % 32u))), Struct_1(all(!select(vec2<bool>(false, arg_0.d.a), vec2<bool>(arg_0.d.a, false), true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, -868f, arg_0.e.x) * vec3<f32>(arg_0.e.x, 1906f, 182f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(300f, -1000f, arg_0.e.x) + vec3<f32>(-390f, arg_0.e.x, arg_0.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(792f, arg_0.e.x, arg_0.e.x) * vec3<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x))))))));
    return !arg_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(func_1());
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1124f, 172f))), vec2<f32>(func_1().e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-706f, 1415f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(289f, -524f)), select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0))))))));
    var var_2 = ~(reverseBits(~vec3<i32>(33325i, u_input.b.x, 0i)) & _wgslsmith_clamp_vec3_i32(min(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, 1i)), u_input.b.zwy, vec3<i32>(~u_input.b.x, ~u_input.b.x, max(2147483647i, -27102i))));
    var var_3 = select(!select(vec2<bool>(!var_0, func_4(vec2<i32>(var_2.x, var_2.x), Struct_1(var_0), Struct_3(vec3<f32>(var_1.x, -183f, -1000f), Struct_2(u_input.a, var_2.x, vec3<u32>(u_input.a, 72167u, u_input.a), Struct_1(true), vec3<f32>(var_1.x, -1415f, var_1.x)), var_1, vec4<bool>(false, true, var_0, true), vec4<u32>(30219u, u_input.a, 0u, u_input.a)), vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x)).a), !vec2<bool>(true, var_0), any(vec3<bool>(var_0, var_0, true))), vec2<bool>(select(var_0, false, var_0), func_3(any(vec4<bool>(var_0, var_0, true, var_0)) | (u_input.a == u_input.a))), vec2<bool>(~1u < _wgslsmith_mult_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, 6809u)), var_0 & true));
    let var_4 = Struct_2(~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 0u), u_input.a), min(77417u, min(21190u, u_input.a))), -abs(_wgslsmith_sub_i32(u_input.b.x, -1i)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 3679u) << (select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), var_0) % vec3<u32>(32u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 19588u), vec3<u32>(u_input.a, 3150u, u_input.a)))), func_4(vec2<i32>(-10481i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 16703u)) % 32u), _wgslsmith_mod_i32(u_input.b.x << (u_input.a % 32u), var_2.x)), Struct_1(var_0), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, -556f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -960f, var_1.x) + vec3<f32>(-512f, 1415f, -180f))), Struct_2(20099u, abs(13463i), vec3<u32>(0u, u_input.a, 1u), Struct_1(false), vec3<f32>(228f, var_1.x, 1015f)), var_1, vec4<bool>(false, var_3.x, var_3.x, true), reverseBits(~vec4<u32>(u_input.a, u_input.a, 0u, 51825u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), -825f, _wgslsmith_f_op_f32(round(-1267f)), _wgslsmith_f_op_f32(select(var_1.x, -281f, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, var_1.x, var_1.x, 502f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(131f, 1021f, var_1.x) + vec3<f32>(2590f, -289f, 655f))))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * 254f), _wgslsmith_f_op_f32(sign(2148f)), _wgslsmith_f_op_f32(round(var_1.x)))))));
    var var_5 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), 1000f, var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.e - var_4.e)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.e.x, 472f, var_4.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.e.x) * _wgslsmith_f_op_f32(ceil(-512f))) != _wgslsmith_f_op_f32(round(657f)))), var_4, var_1, vec4<bool>(var_4.d.a, !var_3.x, var_4.d.a, true), vec4<u32>(~abs(20139u), firstLeadingBit(8123u), var_4.a, var_4.c.x & 52718u));
    var_2 = -_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(u_input.b.zxw), select(select(u_input.b.zzw, u_input.b.zzw, vec3<bool>(false, var_4.d.a, var_4.d.a)), firstLeadingBit(u_input.b.wxz), 669f == var_4.e.x)), -vec3<i32>(u_input.b.x, u_input.b.x, 1i) ^ u_input.b.zyw);
    var_3 = select(vec2<bool>(var_4.d.a, all(select(vec4<bool>(false, var_4.d.a, false, false), var_5.d, false))), var_5.d.xz, vec2<bool>(var_3.x, true));
    var var_6 = Struct_1(all(vec3<bool>(var_4.d.a, !any(vec3<bool>(var_0, false, var_0)), !(u_input.a > 21174u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_5.b.b, u_input.b.x, -1i), u_input.b.xyz) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(61550i, ~6544i, var_4.b), select(-vec3<i32>(var_2.x, var_5.b.b, u_input.b.x), vec3<i32>(var_4.b, var_4.b, var_2.x) >> (var_4.c % vec3<u32>(32u)), var_5.d.wyw)), var_2.yz, ~var_5.e);
}

