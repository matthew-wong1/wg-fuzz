struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(all(vec2<bool>(all(vec2<bool>(false, false)), u_input.d <= u_input.d)) || all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, -711f, -1277f)))), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(20541u, u_input.d), u_input.d), vec2<bool>(!(any(vec2<bool>(false, false)) | true), true));
    let var_1 = _wgslsmith_f_op_f32(-341f + 1358f);
    var_0 = Struct_3(!(_wgslsmith_add_i32(firstTrailingBit(u_input.a), firstLeadingBit(u_input.c)) != u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1264f, 1120f, 684f) - var_0.b)))), abs(4294967295u), !var_0.d);
    let var_2 = ~vec3<u32>(~0u, 0u, var_0.c);
    let var_3 = false;
    return vec4<i32>(-(~((i32(-1i) * -64999i) & _wgslsmith_clamp_i32(-2147483647i, u_input.c, 0i))), -7723i, reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(u_input.c, u_input.b, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -52195i, u_input.b), vec3<i32>(2147483647i, u_input.b, u_input.c)), select(vec3<bool>(var_0.d.x, var_0.d.x, true), vec3<bool>(true, true, true), vec3<bool>(var_3, false, true)))), vec3<i32>(select(u_input.b, _wgslsmith_mod_i32(u_input.a, u_input.c), !var_0.d.x), -80340i, u_input.a)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = select(select(vec2<bool>(true, arg_0.d.b.a.a), arg_0.e.d.d, arg_0.c.d), select(!vec2<bool>(true, any(vec2<bool>(true, false))), select(vec2<bool>(!arg_2, !arg_2), select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.d.c.x), arg_0.d.d.a), select(vec2<bool>(arg_2, arg_0.c.a), arg_0.c.d, arg_0.e.c.yy), true), vec2<bool>(any(arg_0.d.c), arg_0.d.a.a.a)), vec2<bool>(true, !arg_0.d.e.a)), false);
    let var_1 = !(!(!(!arg_0.d.c)));
    var var_2 = vec4<bool>(var_0.x, any(!(!select(var_1, vec4<bool>(arg_0.c.a, false, false, true), var_1))), !all(arg_0.d.c), any(!vec2<bool>(true, 9031u >= arg_0.c.c)));
    let var_3 = u_input.d;
    var_2 = vec4<bool>(any(vec2<bool>(true, all(var_1.xx))), true, (arg_0.d.d.c ^ 1u) <= 4294967295u, all(arg_0.d.c));
    return !any(select(select(!arg_0.e.d.d, select(var_0, vec2<bool>(false, true), false), !var_2.yx), !select(var_1.zz, var_0, vec2<bool>(arg_0.c.d.x, true)), !select(var_0, vec2<bool>(false, false), vec2<bool>(arg_0.d.a.a.a, false))));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_1(func_4(Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -13935i, arg_0.x, 11471i), func_3()), (vec2<i32>(0i, -1i) | vec2<i32>(u_input.a, u_input.a)) >> (max(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u)), Struct_3(6163i != arg_0.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1583f, -769f, -1416f), vec3<f32>(1030f, 362f, 659f))), min(10395u, u_input.d), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), vec4<bool>(false, true, true, false), Struct_3(true, vec3<f32>(1582f, -2635f, -1055f), u_input.d, vec2<bool>(true, false)), Struct_1(false)), Struct_4(Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), vec4<bool>(true, false, false, false), Struct_3(false, vec3<f32>(-638f, -1000f, -235f), 38888u, vec2<bool>(false, true)), Struct_1(false))), vec2<u32>(u_input.d, ~(~u_input.d)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), 1705f));
    let var_1 = _wgslsmith_mod_i32(1i, -(~arg_0.x));
    var_0 = Struct_1(select(var_0.a, abs(u_input.a | -1i) >= _wgslsmith_add_i32(arg_0.x, _wgslsmith_mod_i32(arg_0.x, u_input.c)), true));
    var var_2 = _wgslsmith_f_op_f32(-1439f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1057f)))));
    var_0 = Struct_1(var_1 > 3177i);
    return abs(u_input.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(_wgslsmith_div_u32(select(4294967295u, u_input.d, true), 4294967295u)), u_input.d), ~(_wgslsmith_mod_u32(u_input.d, u_input.d) & 74545u));
    var var_1 = vec3<i32>(u_input.b, firstLeadingBit(_wgslsmith_mod_i32(1i, arg_2.x)), _wgslsmith_mod_i32(-arg_2.x, -35337i));
    let var_2 = _wgslsmith_mod_vec2_u32(((max(vec2<u32>(1u, u_input.d), vec2<u32>(0u, var_0)) | ~vec2<u32>(var_0, var_0)) ^ vec2<u32>(14124u, countOneBits(var_0))) ^ ~vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, _wgslsmith_add_u32(var_0, var_0)));
    var_1 = vec3<i32>(max(var_1.x, -2147483647i), ~(-12632i), -50600i ^ _wgslsmith_mult_i32(var_1.x, select(func_2(arg_2), max(4465i, -56954i), all(vec4<bool>(arg_1.x, false, arg_1.x, false)))));
    var var_3 = _wgslsmith_mod_i32(countOneBits(~(~_wgslsmith_dot_vec2_i32(arg_2.yx, vec2<i32>(u_input.c, u_input.a)))), 1i);
    return _wgslsmith_add_u32(u_input.d, u_input.d);
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec2<u32>(4294967295u, 1u);
    var_0 = ~vec2<u32>(min(26057u, arg_2.d.c), ~(~4294967295u));
    var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(max(~vec2<u32>(arg_1.c.c, arg_0), vec2<u32>(var_0.x, 28305u) >> (vec2<u32>(var_0.x, arg_1.e.d.c) % vec2<u32>(32u))), reverseBits(vec2<u32>(67707u, 1u) & vec2<u32>(arg_2.d.c, 4294967295u))), vec2<u32>(arg_0, abs(55475u))), abs(vec2<u32>(u_input.d, ~arg_1.d.d.c) & firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.d.c, 0u), vec2<u32>(1716u, 1u)))));
    let var_1 = arg_1.d.d;
    var var_2 = Struct_4(arg_1.d.b, Struct_2(Struct_1(arg_1.e.e.a & (arg_1.a.x < -208i))), arg_1.e.c, arg_1.e.d, arg_1.e.b.a);
    return Struct_1(select(arg_1.e.c.x, all(vec4<bool>(true, -359f <= arg_2.d.b.x, arg_1.e.d.c < u_input.d, true)), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(11832u <= _wgslsmith_mod_u32(~1u, u_input.d)));
    let var_1 = Struct_4(Struct_2(func_5(_wgslsmith_clamp_u32(u_input.d, func_1(vec2<f32>(856f, -2031f), vec2<bool>(var_0.a, var_0.a), vec3<i32>(-26687i, -2147483647i, -2147483647i)), 16974u >> (1u % 32u)), Struct_5(~vec4<i32>(1i, 59574i, -1i, -26364i), vec2<i32>(u_input.a, u_input.c) ^ vec2<i32>(-86615i, u_input.a), Struct_3(var_0.a, vec3<f32>(-126f, 1343f, 1759f), 65992u, vec2<bool>(false, var_0.a)), Struct_4(Struct_2(Struct_1(false)), Struct_2(var_0), vec4<bool>(var_0.a, true, false, var_0.a), Struct_3(var_0.a, vec3<f32>(100f, 767f, -2762f), u_input.d, vec2<bool>(false, false)), var_0), Struct_4(Struct_2(var_0), Struct_2(Struct_1(false)), vec4<bool>(true, false, false, false), Struct_3(var_0.a, vec3<f32>(-1798f, -1389f, 1075f), u_input.d, vec2<bool>(var_0.a, false)), Struct_1(true))), Struct_4(Struct_2(var_0), Struct_2(Struct_1(var_0.a)), vec4<bool>(true, true, false, var_0.a), Struct_3(var_0.a, vec3<f32>(-126f, -318f, 276f), u_input.d, vec2<bool>(true, var_0.a)), var_0))), Struct_2(Struct_1(!any(vec3<bool>(true, false, var_0.a)))), !(!(!(!vec4<bool>(var_0.a, var_0.a, var_0.a, true)))), Struct_3((0i | u_input.a) != u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(735f, 1216f, 399f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1075f, -2228f, -130f))) - vec3<f32>(-330f, -514f, -352f))), ~1u, !vec2<bool>(var_0.a, u_input.a != u_input.a)), Struct_1(any(!vec3<bool>(var_0.a, var_0.a, var_0.a))));
    var var_2 = !(!select(!(!vec4<bool>(true, var_1.d.d.x, var_1.a.a.a, true)), !select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_1.c, false), var_0.a));
    var var_3 = Struct_5(vec4<i32>(u_input.c, u_input.c, ~_wgslsmith_mod_i32(u_input.a ^ u_input.a, u_input.a ^ u_input.c), 57565i), ~(reverseBits(vec2<i32>(u_input.c, 49675i)) & vec2<i32>(u_input.a, 56202i)) >> (~(~vec2<u32>(var_1.d.c, u_input.d)) % vec2<u32>(32u)), Struct_3(true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.b.x, var_1.d.b.x, 342f))))), abs(~0u), vec2<bool>(var_2.x, var_0.a)), var_1, Struct_4(Struct_2(Struct_1(false)), Struct_2(Struct_1(var_2.x)), var_1.c, var_1.d, var_1.e));
    var_2 = !vec4<bool>(var_0.a, true, all(select(var_2.xxw, vec3<bool>(var_1.c.x, var_2.x, false), var_2.zzy)) & all(select(var_1.c.ywx, var_2.wwx, vec3<bool>(false, false, true))), var_1.e.a);
    var_2 = var_3.e.c;
    let x = u_input.a;
    s_output = StorageBuffer(-28397i, _wgslsmith_f_op_f32(1657f + -452f), select(~(vec4<u32>(var_1.d.c, u_input.d, 1u, var_3.d.d.c) ^ (vec4<u32>(var_3.c.c, u_input.d, 0u, var_1.d.c) ^ vec4<u32>(25524u, 0u, var_1.d.c, u_input.d))), vec4<u32>(~var_3.c.c, var_1.d.c, var_1.d.c, (u_input.d ^ var_3.e.d.c) | 1u), !var_3.d.c));
}

