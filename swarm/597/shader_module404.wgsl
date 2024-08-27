struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = select(arg_2.c, -arg_2.c, arg_0.b.b.x);
    var var_1 = i32(-1i) * -11016i;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a.d.zy >> ((vec2<u32>(0u, u_input.b) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~arg_0.a.d.x, countOneBits(u_input.a))), arg_2.b), 1u, ~reverseBits(0u), 0u);
    var var_3 = Struct_1(66998u, vec3<bool>(!(!(u_input.b == 0u)), arg_2.e | arg_0.b.b.x, true));
    var_1 = (reverseBits(var_0.x ^ _wgslsmith_sub_i32(var_0.x, -2793i)) ^ (var_0.x >> (1u % 32u))) & reverseBits(~1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -482f));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(((vec2<u32>(60277u, u_input.a) & vec2<u32>(26296u, 44849u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, u_input.b)) % vec2<u32>(32u))) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(84265u, u_input.b) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(6980u, 4294967295u))), vec2<u32>(~1u, u_input.b)), countOneBits(select(vec2<u32>(65529u, min(u_input.b, u_input.a)), vec2<u32>(reverseBits(u_input.b), 1u), !(!arg_0.ww))), vec2<i32>(-1315i, 61930i), vec2<u32>(0u, 4294967295u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, -283f))))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.x))))));
    let var_1 = Struct_1(~0u, arg_0.ywy);
    var_0 = Struct_2(abs(~(~vec2<u32>(var_0.d.x, 0u))), vec2<u32>(abs(~var_1.a ^ var_1.a), 0u), _wgslsmith_clamp_vec2_i32(~max(var_0.c, -var_0.c), vec2<i32>(firstTrailingBit(max(var_0.c.x, var_0.c.x)), var_0.c.x), var_0.c), _wgslsmith_add_vec2_u32(~var_0.d, vec2<u32>(87774u, 0u)), !any(var_1.b));
    var var_2 = arg_0;
    var_0 = Struct_2(var_0.d, ~var_0.b, vec2<i32>(var_0.c.x, var_0.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 40020u), vec2<u32>(u_input.a, _wgslsmith_add_u32(0u, var_0.a.x))), true);
    return vec3<bool>(-select(_wgslsmith_mult_i32(1i, 2147483647i), -var_0.c.x, !var_0.e) > -min(var_0.c.x, 12894i), !(select(i32(-1i) * -17493i, 2147483647i, -942f == arg_1.x) >= min(var_0.c.x, var_0.c.x)), all(select(select(select(arg_0, arg_0, vec4<bool>(var_2.x, var_0.e, false, false)), arg_0, !arg_0), !(!arg_0), vec4<bool>(all(arg_0), select(var_0.e, true, true), !var_2.x, var_0.c.x < 0i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(arg_1.x, Struct_1(41775u, select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_3(vec4<bool>(false, true, true, true), arg_1.zz)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), arg_1.zx, ~(~vec3<u32>(~u_input.a, 1u, ~arg_0.x)));
    var var_1 = 1000f;
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-774f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(-1101f, Struct_1(4294967295u, vec3<bool>(false, false, true)), vec2<f32>(387f, -216f), vec3<u32>(18221u, u_input.b, 4294967295u)), Struct_1(4008u, vec3<bool>(false, false, true))), vec2<f32>(991f, 2134f), Struct_2(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.b), vec2<i32>(-1i, -33138i), vec2<u32>(u_input.a, 0u), true), -459f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -145f)), func_4(func_2(firstTrailingBit(~vec4<u32>(u_input.a, 23103u, u_input.b, 10841u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1855f, 1000f, 1316f, -1060f)))), Struct_4(Struct_3(_wgslsmith_f_op_f32(519f * 944f), Struct_1(u_input.b, vec3<bool>(false, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(146f, -1368f) * vec2<f32>(547f, 204f)), vec3<u32>(u_input.a, 1u, 0u) ^ vec3<u32>(4294967295u, u_input.a, 0u)), func_2(vec4<u32>(60096u, u_input.a, u_input.a, 33793u), vec4<f32>(-1040f, 1080f, -543f, 563f))), vec3<bool>(func_2(countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -365f, 154f, 1000f))).b.x, false, true))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(-228f * 1487f))))) - -467f) * _wgslsmith_f_op_f32(min(-1675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)))));
    let var_1 = Struct_2(~_wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a, u_input.b)), vec2<u32>(0u, 4294967295u), ~(~vec2<u32>(u_input.a, u_input.b))), ~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4292u, u_input.b, u_input.a, u_input.b), vec4<u32>(1u, 1u, 41955u, u_input.a)), 15514u << (1u % 32u)) | (abs(vec2<u32>(25114u, u_input.b)) | vec2<u32>(1u, 11151u))), ~vec2<i32>(reverseBits(select(-10948i, -2147483647i, false)), _wgslsmith_mult_i32(abs(-1i), 1i)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(0u), u_input.b), vec2<u32>(0u, ~0u))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, true)), true)));
    var var_2 = Struct_3(1086f, Struct_1(~(~1u << (0u % 32u)), vec3<bool>(true, all(vec3<bool>(var_1.e, false, var_1.e)), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1604f, -1481f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-214f, 1002f), vec2<f32>(-295f, -1758f))))))), vec3<u32>(_wgslsmith_add_u32(28453u >> (0u % 32u), var_1.a.x), 1u, u_input.b));
    var var_3 = func_3(vec4<bool>(true, func_4(Struct_1(~93282u, vec3<bool>(false, var_2.b.b.x, true)), Struct_4(Struct_3(-879f, var_2.b, var_2.c, vec3<u32>(u_input.b, u_input.b, var_1.b.x)), var_2.b), var_2.b.b), var_2.b.b.x & var_2.b.b.x, func_2(max(vec4<u32>(0u, 4969u, 0u, var_1.a.x), vec4<u32>(var_1.d.x, 28647u, 6354u, 4294967295u)), vec4<f32>(var_2.a, var_2.a, 312f, var_2.a)).b.x && any(vec2<bool>(true, true))), var_2.c).yx;
    var var_4 = var_1;
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(213f, 387f, 1000f), vec3<f32>(-170f, var_2.a, 1214f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2003f, 172f, 274f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a, -698f, var_2.c.x))), vec3<f32>(-793f, 2146f, 472f), vec3<bool>(true, true, var_1.e))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1130f, -591f, 585f), vec3<f32>(-389f, var_2.a, var_2.a))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.c.x, var_2.a, var_2.a), vec3<f32>(-458f, 195f, 1721f))), true)))));
    var_3 = var_2.b.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(~var_4.c.x << ((78726u ^ var_2.d.x) % 32u), min(2147483647i, var_4.c.x) ^ -var_4.c.x), var_4.c.x ^ -(var_1.c.x << (var_4.a.x % 32u)), 2147483647i, ~(~_wgslsmith_mult_i32(var_4.c.x, var_1.c.x))), var_2.d.yy, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.x))));
}

