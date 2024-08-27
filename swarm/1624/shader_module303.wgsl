struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(arg_2.c.e * 1345f), _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(193u, u_input.a, 4294967295u)), ~vec3<u32>(1u, arg_2.b, arg_2.c.a), true), abs(vec3<u32>(min(4294967295u, 0u), ~4294967295u, 0u))), Struct_1(_wgslsmith_add_u32(max(~arg_2.c.a, arg_2.b), arg_2.b), arg_2.a, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(32886i, arg_2.c.c, 2147483647i), vec3<i32>(arg_2.c.c, arg_2.c.c, -1i)), -vec3<i32>(47544i, 1i, 2796i), select(vec3<i32>(8191i, arg_2.c.c, arg_2.c.c), vec3<i32>(arg_2.c.c, 1i, 0i), vec3<bool>(false, arg_2.c.d, false))), vec3<i32>(1i, -arg_2.c.c, 2147483647i)), any(select(vec4<bool>(false, true, arg_2.c.d, arg_0), select(vec4<bool>(false, false, arg_2.c.d, true), vec4<bool>(arg_0, arg_2.c.d, false, false), vec4<bool>(arg_2.c.d, false, arg_2.c.d, false)), arg_0)), arg_1.x));
    var var_1 = Struct_1(28826u, 265f, -82941i, arg_0, arg_2.a);
    let var_2 = arg_2.c;
    let var_3 = _wgslsmith_div_i32(-2147483647i | var_2.c, var_1.c);
    let var_4 = vec3<bool>(true, any(select(!vec2<bool>(var_2.d, true), select(vec2<bool>(true, var_1.d), vec2<bool>(var_1.d, true), var_0.c.d), any(vec4<bool>(true, true, var_0.c.d, false)))), arg_0);
    return -2147483647i;
}

fn func_2() -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(-44778i, select(-2147483647i, 1i, false)), -4948i, _wgslsmith_div_i32(_wgslsmith_add_i32(-52347i, -31750i), -1i | func_3(true, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1000f), vec2<f32>(886f, 916f))), Struct_2(-745f, 1u, Struct_1(14916u, 1326f, 24316i, false, -498f)))), 1i);
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1560f, -136f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, -1116f)))))));
    var var_3 = (4294967295u & ~u_input.b) >= 1u;
    var var_4 = Struct_1(13522u, var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -27576i, _wgslsmith_dot_vec3_i32(vec3<i32>(-4323i, 14784i, var_0.x), vec3<i32>(var_0.x, -15230i, var_0.x))), -14012i, func_3(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-607f, var_2.x)), Struct_2(839f, 73310u, Struct_1(1u, var_2.x, 20423i, false, var_2.x)))), firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.wwx, vec3<i32>(5809i, var_0.x, 3566i)) | _wgslsmith_mod_vec3_i32(var_0.zxx, vec3<i32>(var_0.x, var_0.x, 40528i)))), any(vec2<bool>(true, true)), var_2.x);
    return 153461u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<bool>(true, true && any(vec2<bool>(true, !arg_3.x)));
    var_0 = !select(vec2<bool>(var_0.x, true), arg_3, vec2<bool>(all(select(arg_3, arg_3, arg_3)), any(vec4<bool>(true, true, false, true))));
    let var_1 = select(select(!select(vec4<bool>(true, arg_3.x, false, arg_3.x), !vec4<bool>(true, true, var_0.x, true), true), vec4<bool>(true, any(!vec4<bool>(arg_0.c.d, false, arg_0.c.d, true)), firstLeadingBit(1i) < arg_2, ~arg_2 >= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.c, 27604i), vec2<i32>(arg_2, -1i))), select(select(!vec4<bool>(false, var_0.x, arg_3.x, true), !vec4<bool>(true, arg_0.c.d, var_0.x, arg_0.c.d), select(vec4<bool>(false, true, false, true), vec4<bool>(false, arg_0.c.d, arg_3.x, false), true)), !select(vec4<bool>(true, arg_0.c.d, false, true), vec4<bool>(var_0.x, true, true, arg_3.x), true), select(!vec4<bool>(false, true, true, arg_3.x), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, arg_3.x), vec4<bool>(arg_0.c.d, false, arg_3.x, arg_3.x)), !var_0.x))), !select(!select(vec4<bool>(true, true, arg_3.x, arg_0.c.d), vec4<bool>(true, true, var_0.x, arg_3.x), vec4<bool>(false, true, arg_0.c.d, arg_3.x)), !(!vec4<bool>(arg_0.c.d, var_0.x, true, var_0.x)), select(vec4<bool>(arg_0.c.d, true, arg_0.c.d, true), vec4<bool>(true, false, true, arg_0.c.d), select(vec4<bool>(false, arg_0.c.d, false, true), vec4<bool>(false, true, var_0.x, true), true))), vec4<bool>(false, true, arg_0.c.d, (false | select(true, true, true)) | (u_input.b < countOneBits(arg_1.x))));
    let var_2 = arg_0.c;
    let var_3 = all(arg_3);
    return Struct_2(_wgslsmith_div_f32(arg_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * _wgslsmith_f_op_f32(-1479f + var_2.e)))), _wgslsmith_sub_u32(73190u, 65070u), Struct_1(~func_2(), -161f, -var_2.c, any(select(!var_1.wzw, !vec3<bool>(var_0.x, false, true), true)), -592f));
}

fn func_1() -> f32 {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * 1024f), func_2(), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(1368f, 1657f))), ~1i, false, 463f)), vec3<u32>(max(103u, ~u_input.a & ~4294967295u), 13462u, _wgslsmith_dot_vec2_u32(~reverseBits(u_input.c), ~vec2<u32>(u_input.a, u_input.c.x))), ~firstTrailingBit(func_3(all(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1458f, -906f))), Struct_2(-696f, 0u, Struct_1(u_input.b, 1539f, -22682i, false, 664f)))), select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), any(vec2<bool>(all(vec2<bool>(false, false)), false))));
    let var_1 = firstTrailingBit(select(_wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(var_0.c.c, var_0.c.c, var_0.c.c)), -vec3<i32>(0i, 2147483647i, var_0.c.c), !var_0.c.d), countOneBits(min(vec3<i32>(var_0.c.c, var_0.c.c, -1i), vec3<i32>(1i, var_0.c.c, var_0.c.c)))), ~_wgslsmith_add_i32(-var_0.c.c, var_0.c.c), var_0.c.c >= (12582i >> (func_4(var_0, vec3<u32>(var_0.b, 1u, 4294967295u), 2147483647i, vec2<bool>(var_0.c.d, false)).c.a % 32u))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(623f)), var_0.a);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), 385f));
    var var_4 = !(var_3 == var_0.c.b);
    return _wgslsmith_f_op_f32(-var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1045f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-689f, _wgslsmith_f_op_f32(f32(-1f) * -131f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-100f, 1289f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))));
    let var_1 = func_4(func_4(Struct_2(_wgslsmith_f_op_f32(-370f + _wgslsmith_f_op_f32(-var_0.x)), ~(~1u), Struct_1(~4294967295u, var_0.x, ~(-25502i), all(vec3<bool>(true, true, false)), var_0.x)), vec3<u32>(u_input.c.x, u_input.c.x, ~(~u_input.a)), 1i << (u_input.a % 32u), select(vec2<bool>(true, true), vec2<bool>(true, -1322f > var_0.x), true)), ~vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, 25223u, 7904u), vec4<u32>(0u, u_input.b, 34051u, 24185u)) | ~u_input.b, 67491u), countOneBits(-16945i), select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), false), select(vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(true, true), all(vec2<bool>(false, true))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(select(vec2<i32>(var_1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.c, var_1.c), vec3<i32>(2147483647i, -36420i, -19552i))), vec2<i32>(abs(var_1.c), var_1.c ^ var_1.c), !var_1.d), vec2<i32>(0i, var_1.c & var_1.c) ^ vec2<i32>(-var_1.c, var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(401f, -317f, 933f), vec3<f32>(var_1.e, var_1.b, -199f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(132f, var_0.x, 647f), vec3<f32>(var_1.e, var_0.x, -1606f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2623f, 658f, var_1.b))))), var_1.a);
}

