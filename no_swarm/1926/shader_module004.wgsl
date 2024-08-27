struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_sub_u32(u_input.a.x, ~(~(~reverseBits(u_input.a.x))));
    var var_1 = (true | all(vec4<bool>(true, any(vec2<bool>(false, true)), true, true))) | any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, false, true)));
    let var_2 = ~_wgslsmith_mult_i32(53987i, -firstLeadingBit(arg_1.x & arg_1.x));
    var_1 = select(true, false, select(var_2 >= ~(-18851i), true, true));
    var var_3 = Struct_2(arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(-192f, _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 1045f), _wgslsmith_f_op_f32(round(1780f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1838f, -767f, -1100f) + vec3<f32>(818f, arg_0, arg_0)))), true != all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), -2147483647i, Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1362f))), (u_input.a.x << (min(27156u, u_input.a.x) % 32u)) | ~(~u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 + -2091f)))));
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))), _wgslsmith_mult_vec4_i32((~vec4<i32>(1i, -18993i, -36323i, -1i) >> (~vec4<u32>(23860u, 10321u, 3936u, arg_1) % vec4<u32>(32u))) >> (max(~vec4<u32>(arg_1, u_input.a.x, 1u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 21180u, 25286u, 24010u), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u))) % vec4<u32>(32u)), ~(-(~vec4<i32>(-4640i, -21037i, 51995i, 89531i)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 249f))) - arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1638f, 412f, 2250f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-530f, arg_0, 360f) + vec3<f32>(-492f, arg_0, arg_0))))), true, _wgslsmith_mod_i32(0i, ~46963i), Struct_1(vec2<u32>(arg_1, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_0), arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(368f)))), max(arg_1 >> (var_0 % 32u), abs(45032u)) & arg_1, _wgslsmith_f_op_f32(-996f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(step(1133f, arg_0))))));
    let var_2 = vec4<bool>(all(select(!vec2<bool>(var_1.c, false), vec2<bool>(!var_1.c, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_1.c, var_1.c)))), !var_1.c, !any(!(!vec4<bool>(true, var_1.c, var_1.c, var_1.c))), true);
    var var_3 = !(!select(select(true, var_0 > var_0, true), any(vec4<bool>(false, false, true, false)) & !var_2.x, true));
    var_3 = any(var_2.zzy);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(461f, _wgslsmith_div_f32(-264f, -1287f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(var_1.e.c, 2411f), _wgslsmith_f_op_f32(min(707f, arg_0)), arg_0))))), !var_1.c, ~15302i, Struct_1(~vec2<u32>(min(78191u, var_0), ~var_1.e.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(139f, _wgslsmith_f_op_f32(sign(arg_0)), -484f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e.b + var_1.b), var_1.b)), -246f, 45303u, -2075f));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_clamp_u32(reverseBits(~4294967295u), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(arg_0.x, 90807u, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 2506u, arg_0.x), vec3<u32>(40807u, 2101u, u_input.a.x)), ~71167u)));
    var var_1 = var_0;
    var var_2 = var_1.e;
    let var_3 = func_2(arg_2.x, 1u).e;
    var_1 = Struct_2(-360f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(ceil(var_2.e)), _wgslsmith_f_op_f32(var_3.b.x - var_0.e.c))), var_3.b), all(!vec2<bool>(var_1.c, !var_0.c)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_1.d, 13137i, _wgslsmith_mod_i32(-1i, var_0.d)), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.d, 1i, var_1.d), ~vec3<i32>(var_1.d, var_0.d, -1i)), var_0.d) & (firstLeadingBit(58471i) ^ var_0.d), var_0.e);
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.a.x, arg_1, var_2.d, 0u), vec4<u32>(1u, arg_1, u_input.a.x, u_input.a.x)), vec4<u32>(1u, 0u, _wgslsmith_add_u32(1u, arg_1), _wgslsmith_clamp_u32(var_2.a.x, var_2.a.x, arg_0.x))), ~(5902u & var_2.a.x)), var_1.e.b, -366f, 0u, _wgslsmith_f_op_f32(ceil(arg_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = vec2<bool>(select(false, all(!vec4<bool>(arg_3, false, false, true)), func_2(-2629f, 39128u).d <= arg_0.d), -arg_2.x == arg_0.d);
    let var_1 = 583f;
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(arg_0.e.a, arg_1.a), func_1(~firstTrailingBit(vec3<u32>(24743u, u_input.a.x, arg_1.d)) << ((~vec3<u32>(arg_0.e.d, arg_0.e.a.x, u_input.a.x) << (min(vec3<u32>(arg_1.a.x, 54042u, arg_0.e.a.x), vec3<u32>(u_input.a.x, 1u, arg_1.d)) % vec3<u32>(32u))) % vec3<u32>(32u)), 43126u, arg_1.b).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), 6452u, -1760f);
    let var_3 = func_1(~vec3<u32>(~1u, 1u, 1u), _wgslsmith_clamp_u32(~func_2(arg_0.e.e, ~0u).e.a.x, arg_0.e.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, arg_1.d) ^ arg_0.e.a, vec2<u32>(arg_0.e.a.x, var_2.d)) % 32u), arg_1.a.x), _wgslsmith_f_op_vec3_f32(arg_1.b * arg_1.b));
    var var_4 = arg_0;
    return !select(!(!select(vec3<bool>(true, arg_3, var_0.x), vec3<bool>(true, false, arg_0.c), arg_3)), !vec3<bool>(func_2(var_1, var_4.e.a.x).c, arg_0.e.d <= 84023u, arg_3), select(var_0.x, (false || var_4.c) && all(vec3<bool>(arg_3, arg_3, var_4.c)), arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, 2147483647i, 0i, -19729i)), vec4<i32>(-1i, 34118i, 27426i, -1i)), firstTrailingBit(countOneBits(vec4<i32>(15597i, -23616i, 0i, -2147483647i)))));
    let var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(var_0.x >= -2147483647i, any(vec4<bool>(false, false, true, false))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)))), true);
    let var_2 = select(vec3<bool>(false, false, !(!any(vec4<bool>(false, var_1.x, false, true)))), !func_4(Struct_2(_wgslsmith_f_op_f32(722f * -2267f), vec3<f32>(-2562f, -1913f, 1929f), true, var_0.x, func_1(vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.x, vec3<f32>(395f, -532f, -568f))), func_1(vec3<u32>(53301u, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(59559u, 78634u), u_input.a), vec3<f32>(201f, -306f, -486f)), vec3<i32>(i32(-1i) * -1i, var_0.x, -var_0.x), func_2(_wgslsmith_f_op_f32(round(1337f)), reverseBits(u_input.a.x)).c), !select(!vec3<bool>(var_1.x, false, var_1.x), !select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, var_1.x), true), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-348f, func_1(~(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_sub_u32(1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, 985f, 1447f))).c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-261f)))), _wgslsmith_f_op_f32(f32(-1f) * -2193f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, -832f, 487f, -1000f)))))))));
    var_0 = select(countOneBits(~(~vec4<i32>(2147483647i, 3649i, 1i, -51239i))), _wgslsmith_mod_vec4_i32(-select(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), abs(vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x)), !vec4<bool>(false, var_1.x, true, true)), _wgslsmith_clamp_vec4_i32(~min(vec4<i32>(var_0.x, 2147483647i, -2147483647i, var_0.x), vec4<i32>(var_0.x, -29752i, 2147483647i, 51567i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, -24i, 2717i, var_0.x)), ~vec4<i32>(var_0.x, -67076i, var_0.x, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-6952i, var_0.x, 16395i, var_0.x), vec4<i32>(2147483647i, 1i, -8733i, var_0.x), vec4<i32>(6564i, var_0.x, -73111i, 8757i) >> (vec4<u32>(6551u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), !(any(!vec2<bool>(false, var_1.x)) && true));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.ww, 4294967295u, var_3.xxy, func_2(-1619f, 1u).e.a);
}

