struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: f32 = 342f;

var<private> global2: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec3<bool> {
    let var_0 = select(~abs(u_input.d), vec4<u32>(31283u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.zy, vec2<u32>(0u, 1u)), ~u_input.d.xw), u_input.d.x, _wgslsmith_sub_u32(select(0u, u_input.d.x, true) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.a), u_input.d) % 32u), countOneBits(~u_input.d.x))), !((_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-405f - arg_1)) != !all(vec3<bool>(false, true, true))));
    global1 = arg_1;
    global2 = true;
    let var_1 = 1i;
    var var_2 = Struct_1(arg_0.x, true, arg_0.zzy);
    return vec3<bool>(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_2.a) > 647f), false);
}

fn func_2() -> Struct_1 {
    var var_0 = all(select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1062f, 1841f, 557f, 694f), vec4<f32>(916f, -1019f, -703f, 1366f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_div_f32(296f, 899f))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), select(func_3(vec4<f32>(2541f, -137f, 1000f, -622f), _wgslsmith_f_op_f32(f32(-1f) * -1692f)), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(f32(-1f) * -2235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2478f, 1345f)))), !(!(-4174i < u_input.b)))), !(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, -1000f, -1000f) - vec3<f32>(-258f, 664f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(213f, -895f, 182f), vec3<f32>(834f, 204f, 395f), vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1576f, 1083f), vec3<f32>(604f, 976f, 241f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, 1247f, 1000f) - vec3<f32>(1750f, 1183f, -819f)))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-757f, _wgslsmith_f_op_f32(trunc(506f)), -1245f)))));
    global1 = 532f;
    var_0 = all(select(!vec4<bool>(var_1.b, true || var_1.b, all(vec3<bool>(var_1.b, var_1.b, false)), 27717i == u_input.c.x), !(!(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b))), select(vec4<bool>(var_1.b, any(vec3<bool>(var_1.b, true, false)), var_1.b, var_1.b), select(!vec4<bool>(var_1.b, true, false, var_1.b), !vec4<bool>(var_1.b, var_1.b, true, true), var_1.b), var_1.b)));
    var_0 = any(!func_3(vec4<f32>(-1586f, var_1.a, 1000f, 162f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.a) * _wgslsmith_f_op_f32(-1152f - -152f))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.c.x))))) * _wgslsmith_f_op_f32(-var_1.c.x)), var_1.b, vec3<f32>(var_1.a, var_1.a, -1618f));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> vec3<i32> {
    var var_0 = abs(~_wgslsmith_add_vec4_i32(vec4<i32>(abs(arg_2), ~u_input.c.x, -2147483647i, 21782i), abs(vec4<i32>(0i, -2147483647i, arg_2, 7322i) | vec4<i32>(arg_2, 2147483647i, -2147483647i, -4721i))));
    var var_1 = ~44305u;
    global1 = -1117f;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(568f, _wgslsmith_div_f32(-479f, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -540f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1258f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(773f, arg_1.x, arg_1.x), arg_1.wzz)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))));
    let var_3 = func_2();
    return firstLeadingBit((-var_0.yxz << (abs(_wgslsmith_add_vec3_u32(u_input.d.yzw, u_input.d.zwz)) % vec3<u32>(32u))) ^ (vec3<i32>(1i, 1i | var_0.x, 1i) >> (vec3<u32>(arg_3, u_input.a, _wgslsmith_mult_u32(4294967295u, arg_3)) % vec3<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.c.zx);
    var var_2 = var_0.c.zz;
    var var_3 = i32(-1i) * -(i32(-1i) * -(~14540i));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2.x, func_2().c.x, func_2().a) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1215f), -2283f, _wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(step(var_1.x, -576f)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = Struct_1(-1178f, any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(-1376f + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(-603f, 1247f, true)))), _wgslsmith_f_op_f32(152f - -166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f))));
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    let var_1 = !(!(!vec4<bool>(false, var_0.b, true, false)));
    let var_2 = var_1.x;
    var_0 = func_4(u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b), _wgslsmith_mod_vec3_i32(func_1(var_1, vec4<f32>(792f, -604f, -1000f, var_0.c.x), 14744i, 0u), abs(vec3<i32>(u_input.b, 1i, 39632i))), ~(~vec3<i32>(u_input.b, u_input.c.x, -70481i))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(4294967295u), reverseBits(4294967295u)) | countOneBits(reverseBits(u_input.a)), 12u)]));
    var var_3 = vec4<u32>(countOneBits(abs(~(u_input.d.x >> (20169u % 32u)))), ~(~firstLeadingBit(4294967295u)) ^ ~_wgslsmith_div_u32(~u_input.a, 1u), ~_wgslsmith_sub_u32(1u, ~firstLeadingBit(u_input.a)), abs(u_input.a));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_2, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), 368f, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(max(198f, var_0.a)))), func_2().c, func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, -707f, 434f, 602f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 178f, 1027f, 1000f) - vec4<f32>(var_0.a, -1184f, -480f, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(!(!var_1), select(vec4<bool>(var_4.b, var_0.b, var_0.b, var_1.x), var_1, false), vec4<bool>(!var_4.b, var_4.b, true, func_3(vec4<f32>(var_0.a, 684f, var_4.c.x, var_4.a), -100f).x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1004f, 736f, var_4.c.x, 1611f), vec4<f32>(-650f, -1262f, var_0.c.x, var_0.c.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -1000f, var_4.c.x, 1298f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, var_0.c.x, var_0.a, -1337f) + vec4<f32>(484f, -184f, var_0.c.x, -667f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-2099f, var_0.c.x, var_4.a, var_0.c.x), vec4<f32>(var_0.a, -1645f, var_0.c.x, var_0.c.x)))), select(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_mod_i32(u_input.b, -2147483647i << (u_input.d.x % 32u)), true), _wgslsmith_div_u32(4294967295u, u_input.a)).x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(615f, -433f, var_4.a, var_0.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(step(169f, var_0.a)), _wgslsmith_f_op_f32(-var_4.c.x), var_0.c.x, var_4.a)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(150f, -957f, var_4.a))) * vec3<f32>(-153f, -134f, 231f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1298f, 304f, 553f))) + _wgslsmith_f_op_vec3_f32(step(var_0.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.c.x, var_0.c.x, var_4.c.x)))))))));
}

