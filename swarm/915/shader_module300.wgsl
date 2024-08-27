struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    var var_0 = arg_0.a.x;
    var var_1 = arg_1.d;
    let var_2 = arg_0;
    let var_3 = arg_1.d;
    var var_4 = arg_1;
    return -459f;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + 1294f)), -1064f, _wgslsmith_f_op_f32(f32(-1f) * -1159f)), -2147483647i);
    let var_1 = var_0;
    let var_2 = arg_0.d;
    var var_3 = ~(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_0.b), vec3<i32>(1i, u_input.a.x, u_input.a.x)), firstTrailingBit(_wgslsmith_mod_i32(var_0.b, arg_0.a)), 0i, _wgslsmith_mod_i32(10121i, ~27262i)) >> (abs(~vec4<u32>(arg_0.d.c, 40237u, 1u, var_2.c)) % vec4<u32>(32u)));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -261f);
}

fn func_1(arg_0: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1210f + 1510f) - _wgslsmith_f_op_f32(func_2(Struct_3(vec3<f32>(1012f, 615f, -827f), arg_0), Struct_2(1i, -47473i, vec2<bool>(true, true), Struct_1(false, vec2<bool>(false, true), 50646u), vec2<f32>(1527f, 638f)))))), 282f));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-721f, 1000f, -1488f, 108f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, 334f, 638f, 1259f) - vec4<f32>(1074f, 1951f, 215f, -996f)))))))));
    let var_2 = Struct_1(true, vec2<bool>(false, !any(vec4<bool>(false, false, true, false))), 0u);
    var var_3 = var_2;
    var var_4 = vec4<bool>(true, true, true, true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(-1i, 16322i, var_4.xz, var_2, var_1.yw), var_1.wz, vec4<f32>(-647f, 242f, 233f, -402f))), _wgslsmith_f_op_f32(-835f * var_1.x), _wgslsmith_f_op_f32(var_1.x - -1643f)))) - _wgslsmith_f_op_vec3_f32(select(var_1.wyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.zyz, vec3<f32>(var_1.x, var_1.x, -1786f)))), select(!vec3<bool>(var_2.b.x, var_4.x, true), var_4.wxz, var_4.wyz)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1586f, _wgslsmith_f_op_f32(sign(962f)), -622f), vec3<f32>(_wgslsmith_f_op_f32(floor(973f)), var_1.x, var_1.x), vec3<bool>(!var_3.a, -1000f <= var_1.x, false | var_3.a)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(all(select(vec3<bool>(arg_0.x > -180f, true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), select(select(vec2<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(false, true, false)) && (arg_1.a.x < arg_1.a.x), true), vec2<bool>(!(arg_1.a.x > 326f), all(vec3<bool>(true, true, true)))), abs(~max(_wgslsmith_sub_u32(4294967295u, 33829u), reverseBits(45539u))));
    let var_1 = 46582i;
    var var_2 = vec4<u32>(var_0.c, var_0.c, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(6035u, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.c, var_0.c, var_0.c) >> ((vec4<u32>(40219u, var_0.c, 4294967295u, 4294967295u) | vec4<u32>(0u, 64833u, var_0.c, var_0.c)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.c, var_0.c, var_0.c, var_0.c), abs(vec4<u32>(0u, 0u, 1u, 0u))))), var_0.c);
    var_0 = Struct_1(var_0.a && ((var_1 << (var_2.x % 32u)) <= (-53792i >> ((var_2.x >> (4294967295u % 32u)) % 32u))), var_0.b, ~1u);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x + 695f), _wgslsmith_f_op_f32(f32(-1f) * -615f))), _wgslsmith_add_i32(u_input.a.x, -2147483647i));
    return Struct_2(1i, var_1, var_0.b, Struct_1(any(!var_0.b), select(select(var_0.b, select(vec2<bool>(false, var_0.b.x), var_0.b, var_0.b), !vec2<bool>(var_0.b.x, var_0.a)), !select(var_0.b, vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true)), false), ~var_0.c), arg_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -1141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1110f + -1183f)), -1084f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, -1000f, -668f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1254f, 1117f, 1297f)))))), Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(1688f)), _wgslsmith_f_op_f32(ceil(947f)), 778f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(25733i))))), _wgslsmith_clamp_i32(reverseBits(u_input.a.x), ~(-1i), -u_input.a.x) | -u_input.a.x));
    var var_1 = var_0.d;
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.e.x, 1795f, var_0.e.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-114f, var_0.e.x, -498f), vec3<f32>(var_0.e.x, -874f, var_0.e.x), vec3<bool>(var_1.b.x, var_1.b.x, false))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x)) + vec3<f32>(var_0.e.x, 243f, var_0.e.x))))), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(968f, -1692f, var_0.e.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1592f, 155f, var_0.e.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x)), !vec3<bool>(false, true, var_1.a)))), max(1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(528i, u_input.a.x, -5960i), var_0.a, min(u_input.a.x, u_input.a.x)))));
    var_0 = Struct_2(6083i, 515i, !select(vec2<bool>(all(vec2<bool>(false, var_1.b.x)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(vec3<f32>(var_0.e.x, var_0.e.x, 386f), Struct_3(vec3<f32>(-1800f, -506f, -1544f), -1i)).d.b), var_1.a), Struct_1((!var_0.c.x && var_0.c.x) & var_1.b.x, vec2<bool>(false == (var_0.d.b.x & var_1.a), any(!var_0.d.b)), var_1.c & ~27719u), var_0.e);
    var_0 = func_4(vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))), var_0.e.x), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1000f, -878f), vec3<f32>(-147f, -1564f, -1016f)) * vec3<f32>(-542f, var_0.e.x, var_0.e.x))), u_input.a.x));
    var var_2 = _wgslsmith_div_f32(2787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)));
    var_2 = var_0.e.x;
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, -1100f, -401f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x + var_0.e.x)))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, -735f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, 811f, var_0.e.x)))), 7494i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(min(-4193i, ~u_input.a.x), var_3.b), var_0.b, 1i, ~_wgslsmith_mult_i32(-var_0.a, 1i)));
}

