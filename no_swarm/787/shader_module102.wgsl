struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -32055i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec2<f32> {
    let var_0 = all(select(vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), u_input.a < abs(u_input.c)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x))))))), arg_1.x, 1401f, 794f);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(234f)))), _wgslsmith_f_op_f32(-arg_1.x));
    let var_3 = u_input.b.yzw;
    return arg_1.xy;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1468f, 1241f), vec2<f32>(1000f, -340f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(280f, 1166f), vec2<f32>(-1123f, -193f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1053f, -169f), vec2<f32>(345f, 508f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1346f, -632f))))), vec3<u32>(1u, u_input.b.x, ~u_input.e), Struct_1(max(min(vec4<i32>(2524i, -17171i, 2317i, u_input.c) ^ vec4<i32>(1i, 27498i, 1i, u_input.a), countOneBits(vec4<i32>(u_input.c, -9520i, 2147483647i, u_input.d.x))), max(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, -1i), vec4<i32>(u_input.a, -1i, -10969i, u_input.c))), vec2<bool>(false, any(vec4<bool>(true, true, true, true)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(97494u, abs(var_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x)))))), vec3<u32>(53397u, _wgslsmith_div_u32(~var_0.b.x, abs(_wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(1u, 4294967295u)))), _wgslsmith_sub_u32(u_input.e, min(0u, ~var_0.b.x))), var_0.c);
    var var_1 = var_0.b.x;
    var_1 = u_input.e;
    var var_2 = u_input.d;
    return vec2<bool>(!(!(~var_0.c.a.x == -var_0.c.a.x)), true);
}

fn func_1() -> Struct_1 {
    var var_0 = all(select(vec2<bool>((u_input.a | u_input.d.x) > select(1i, u_input.a, false), true), !vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(any(func_2()), true)));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(-(abs(u_input.d) ^ u_input.d), u_input.d), _wgslsmith_div_i32(~u_input.d.x, u_input.a), -11395i);
    var_1 = -reverseBits(~select(-vec3<i32>(-24635i, 30435i, 2147483647i), select(vec3<i32>(-6201i, 2147483647i, 52704i), vec3<i32>(u_input.a, var_1.x, u_input.d.x), vec3<bool>(false, false, true)), vec3<bool>(false, false, false)));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(~_wgslsmith_add_u32(40214u, u_input.b.x)), 4294967295u), min(~(~u_input.b.yw), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.e, 4294967295u)), vec2<u32>(u_input.e, u_input.b.x)) ^ abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.zy, u_input.b.xw))));
    var var_3 = 1u;
    return Struct_1(min(~vec4<i32>(0i, 0i, u_input.d.x, u_input.c) >> (select(~vec4<u32>(var_2.x, u_input.b.x, 13387u, u_input.e), ~u_input.b, vec4<bool>(false, true, true, true)) % vec4<u32>(32u)), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 46542i, u_input.c, -1810i), vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, 0i)))), select(vec2<bool>(true, true), !func_2(), select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec2<bool>(true, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    var var_0 = vec4<i32>(-70262i, -u_input.a, 0i, -reverseBits(_wgslsmith_mult_i32(-2147483647i, u_input.c)) >> (~min(u_input.b.x, ~0u) % 32u));
    var_0 = _wgslsmith_sub_vec4_i32(-min(~arg_0.e.a, ~(arg_0.c.a >> (vec4<u32>(arg_2.x, 30715u, 4315u, 0u) % vec4<u32>(32u)))), vec4<i32>(-var_0.x, -arg_0.e.a.x, 0i, _wgslsmith_mult_i32(6650i, -1i)));
    var var_1 = vec4<bool>(!any(vec2<bool>(true, true)), u_input.c > (-1i >> (arg_2.x % 32u)), all(func_2()), arg_0.c.b.x);
    var var_2 = any(select(var_1.wzz, var_1.zwx, var_1.yxz));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(4294967295u, arg_1.x) & vec2<u32>(arg_2.x, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, arg_3, arg_0.b)))), vec2<f32>(arg_0.d, arg_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, 261f) * vec2<f32>(1466f, 102f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(779f, 518f), vec2<f32>(arg_3, arg_3), vec2<bool>(arg_0.c.b.x, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2281f, 246f)))))))));
    return ~_wgslsmith_sub_i32(arg_0.a.x, abs(u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.b.x & u_input.e);
    var var_1 = false && (firstTrailingBit(~(~1u)) == ~(_wgslsmith_add_u32(13483u, u_input.e) | _wgslsmith_dot_vec3_u32(u_input.b.ywy, vec3<u32>(39184u, 1u, u_input.b.x))));
    let var_2 = func_4(Struct_2(u_input.d, 832f, Struct_1(vec4<i32>(~u_input.a, firstLeadingBit(u_input.c), ~u_input.a, u_input.d.x), vec2<bool>(true, true)), 484f, func_1()), ~vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(4294967295u, 8696u))), 6388u), ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(43862u)), 16456u, u_input.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-284f, _wgslsmith_f_op_f32(f32(-1f) * -626f), !func_2().x)), -926f)));
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1078f, 386f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))), firstLeadingBit(~vec3<u32>(u_input.b.x, 29665u, u_input.b.x) << (u_input.b.xwx % vec3<u32>(32u))), Struct_1(min(vec4<i32>(_wgslsmith_sub_i32(var_2, -1i), _wgslsmith_add_i32(u_input.c, var_2), var_2, var_2), firstLeadingBit(vec4<i32>(18238i, -44222i, 1i, 23272i))), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_3.b.zx, ~(~var_3.b.zz)), ~u_input.b.x);
}

