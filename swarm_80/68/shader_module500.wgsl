struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_4(Struct_1(select(select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), vec4<bool>(arg_0.a.x, true, true, false), vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)), true), !select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), select(vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), !vec4<bool>(arg_0.a.x, false, true, false), !vec4<bool>(true, false, arg_0.a.x, arg_0.a.x)))), Struct_2(vec2<bool>(true, !any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), reverseBits(_wgslsmith_sub_i32(2888i, arg_0.b)) >> (u_input.b % 32u)), 0i, arg_0);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1005f))))) + 1000f), arg_0.a.x, var_0.a, var_0.a);
    var var_2 = Struct_4(var_0.a, arg_0, var_0.c, Struct_2(vec2<bool>(true, select(var_1.d.a.x != arg_0.a.x, var_0.c <= -1i, true)), arg_0.b));
    var var_3 = Struct_4(var_0.a, var_0.b, 2147483647i, Struct_2(!select(select(vec2<bool>(var_2.b.a.x, var_2.b.a.x), var_0.a.a.yy, true), vec2<bool>(false, false), arg_0.a.x), ~(~42401i)));
    let var_4 = _wgslsmith_clamp_vec4_u32((reverseBits(u_input.c | vec4<u32>(u_input.c.x, u_input.b, u_input.b, 1u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 25597u, u_input.b, u_input.c.x), vec4<u32>(u_input.c.x, 41054u, 0u, 64288u), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, vec4<u32>(0u, 4294967295u, 43102u, u_input.b)))) & _wgslsmith_add_vec4_u32(abs(max(vec4<u32>(u_input.c.x, 6112u, 22978u, u_input.b), vec4<u32>(u_input.b, 22903u, 4294967295u, u_input.b))), ~abs(vec4<u32>(0u, 54251u, u_input.c.x, u_input.c.x))), u_input.c, vec4<u32>(_wgslsmith_mult_u32(~(~u_input.c.x), u_input.c.x), ~(~(u_input.b ^ 32549u)), ~(countOneBits(16457u) >> (u_input.c.x % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.c.x, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 36589u, u_input.b, 0u), vec4<u32>(53448u, 53832u, 973u, 24114u), vec4<u32>(1u, u_input.b, u_input.c.x, 4294967295u))), reverseBits(max(u_input.c.x, 3246u)), u_input.c.x)));
    return var_1.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f - -1600f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(130f * -837f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, false), u_input.a.x))))) == -1485f, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), Struct_1(vec4<bool>(true, any(vec2<bool>(true, false)), true, true)));
    let var_1 = false;
    let var_2 = Struct_2(!(!select(select(vec2<bool>(var_0.d.a.x, var_1), vec2<bool>(var_0.d.a.x, var_0.b), var_1), !vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.d.a.x, false))), abs(-25324i));
    var var_3 = Struct_1(!var_0.c.a);
    var var_4 = vec2<i32>(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x) & vec4<i32>(-5306i, u_input.a.x, u_input.a.x, var_2.b)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, var_2.b, u_input.a.x)))), var_2.b);
    return ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, reverseBits(4294967295u)), _wgslsmith_dot_vec3_u32(u_input.c.zxw, _wgslsmith_mult_vec3_u32(vec3<u32>(37085u, 1187u, u_input.c.x), u_input.c.yzz)), _wgslsmith_div_u32(~15689u, u_input.c.x)));
}

fn func_1() -> u32 {
    var var_0 = false;
    var var_1 = !any(select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, u_input.a.x <= u_input.a.x, true), _wgslsmith_f_op_f32(ceil(-1804f)) >= _wgslsmith_f_op_f32(-714f * -2012f)));
    return _wgslsmith_dot_vec3_u32(~u_input.c.ywy, _wgslsmith_add_vec3_u32(select(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 1u, 14717u), _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 83678u)), 4294967295u), _wgslsmith_div_vec3_u32(select(vec3<u32>(1u, u_input.c.x, u_input.c.x), u_input.c.yyy, vec3<bool>(true, true, false)), abs(u_input.c.zyy)), true), vec3<u32>(func_2(), u_input.c.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(4294967295u, ~_wgslsmith_div_u32(~(u_input.c.x & 1u), _wgslsmith_div_u32(1u, func_1())), ~12921u, u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(836f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f))), 737f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 395f)), _wgslsmith_f_op_f32(max(-172f, 1000f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-138f, 518f, 812f, -1148f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(644f, -489f, 875f, -175f))))), vec4<f32>(1699f, _wgslsmith_f_op_f32(select(1142f, 1343f, true)), -620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(round(-504f)))))));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.wz, var_0.xy)), min(~u_input.c.x, _wgslsmith_div_u32(15642u, 72496u))), max(_wgslsmith_add_vec4_u32(u_input.c, reverseBits(u_input.c)), vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(14071u, 4294967295u), vec2<u32>(4294967295u, 0u)), 4294967295u, 6851u)), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(var_0.x, 0u, 27679u, 10815u)), _wgslsmith_sub_vec4_u32(vec4<u32>(29029u, var_0.x, 1u, u_input.c.x), ~u_input.c))), select(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, u_input.b, 4294967295u, var_0.x)), min(vec4<u32>(5245u, u_input.c.x, var_0.x, 27318u), u_input.c)), u_input.c, vec4<bool>(any(vec4<bool>(true, true, true, true)), (u_input.a.x != -28884i) & false, true, true)));
    var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.x), abs(var_0.zz))), 31183u), 48139u, 1u, ~4294967295u);
    let var_2 = Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, -1i > u_input.a.x, true), true));
    var var_3 = !select(vec4<bool>(true, 51842i < ~u_input.a.x, var_2.a.x, var_2.a.x || true), select(var_2.a, var_2.a, select(select(var_2.a, var_2.a, false), vec4<bool>(false, var_2.a.x, false, false), !var_2.a.x)), var_2.a);
    var_3 = !var_2.a;
    let var_4 = select(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, 41851i, u_input.a.x), ~vec4<i32>(-38082i, -1i, -2147483647i, u_input.a.x), -vec4<i32>(-78865i, -30347i, u_input.a.x, u_input.a.x))) | -(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -35693i, -55939i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)) & -vec4<i32>(u_input.a.x, -1i, -1i, -2147483647i)), vec4<i32>(0i, countOneBits(abs(u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 3861i), max(u_input.a.x, 39469i)), abs(_wgslsmith_mod_i32(0i, u_input.a.x >> (1u % 32u)))), any(!(!vec2<bool>(var_3.x, true))));
    var_3 = !(!select(vec4<bool>(70250u == var_0.x, all(vec4<bool>(true, var_2.a.x, var_3.x, var_2.a.x)), var_2.a.x | var_2.a.x, var_3.x), select(!var_2.a, select(var_2.a, var_2.a, vec4<bool>(var_2.a.x, var_2.a.x, var_3.x, false)), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x))))) + var_1.x), var_1);
}

