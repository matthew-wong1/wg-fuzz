struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> f32 {
    let var_0 = vec4<bool>(arg_0.b.x, any(arg_0.b), false, !any(!select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), arg_0.b, vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x))));
    var var_1 = ~vec3<u32>(~min(u_input.c << (u_input.d.x % 32u), firstLeadingBit(arg_1.c)), u_input.d.x, arg_1.c);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, abs(u_input.a), _wgslsmith_sub_i32(-40797i, u_input.e.x), firstTrailingBit(0i)), -countOneBits(vec4<i32>(-7365i, u_input.e.x, -10134i, arg_1.a.x))), (~vec4<i32>(-1i, 0i, -1i, -19636i) << (vec4<u32>(_wgslsmith_add_u32(var_1.x, 17541u), u_input.b.x, 25438u, arg_1.c << (var_1.x % 32u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_1.c), vec2<u32>(u_input.c, arg_1.c)), min(vec2<u32>(4294967295u, 4294967295u), u_input.b.xz)), ~0u, abs(0u), ~(~u_input.c)) % vec4<u32>(32u)));
    var_1 = max(u_input.b, max(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(43958u, var_1.x, 4294967295u)), ~u_input.d.zwy), min(u_input.b, reverseBits(reverseBits(u_input.b)))));
    let var_3 = Struct_3(_wgslsmith_mod_vec3_i32(abs(arg_1.a), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, u_input.e.x), var_2.wwy ^ vec3<i32>(-59997i, 2147483647i, arg_1.a.x)) >> (u_input.b % vec3<u32>(32u))), arg_1.b, arg_1.c);
    return arg_1.b.x;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = Struct_1(true, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(515f)), 935f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -896f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec2<f32>(arg_1, -2640f), vec4<bool>(arg_0, arg_0, true, arg_0)), Struct_3(vec3<i32>(-2147483647i, u_input.a, u_input.e.x), vec3<f32>(1162f, -1380f, 709f), 1u))) - _wgslsmith_f_op_f32(f32(-1f) * -441f))), arg_1));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.yw) * var_0.b.yz), select(vec4<bool>(!arg_0, !(false & arg_0), false, var_0.a), select(select(!vec4<bool>(arg_0, false, true, var_0.a), !vec4<bool>(var_0.a, false, var_0.a, false), all(vec3<bool>(var_0.a, true, false))), !vec4<bool>(arg_0, true, arg_0, false), !any(vec4<bool>(true, arg_0, true, false))), -371f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1773f)));
    var var_2 = var_1.b.wy;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, _wgslsmith_mult_i32(-u_input.a, firstTrailingBit(94i))), -vec3<i32>(~u_input.a, _wgslsmith_clamp_i32(u_input.e.x, u_input.a, -41593i), u_input.e.x)) | _wgslsmith_div_i32(-1i, max(select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-51271i, u_input.e.x, -23543i, u_input.e.x), vec4<i32>(-11028i, -2147483647i, u_input.a, -2147483647i)), true), _wgslsmith_mult_i32(max(u_input.e.x, u_input.e.x), 1i)));
    var_0 = Struct_1(var_2.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(-1279f * var_1.a.x))))), _wgslsmith_f_op_f32(ceil(-654f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 1000f) - var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, -1000f))));
    return Struct_4(Struct_2(Struct_1(any(vec3<bool>(var_1.b.x, var_1.b.x, true)), var_0.b)), reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.xy, ~firstLeadingBit(u_input.b.yz))), -406f);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = -vec3<i32>(select(_wgslsmith_add_i32(arg_3 >> (0u % 32u), ~0i), u_input.a, any(vec2<bool>(arg_2.x, arg_2.x)) | true), abs(42964i) & (~arg_3 & _wgslsmith_add_i32(-1i, arg_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -543i), -u_input.e) >> (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -144f);
    let var_2 = func_2(!arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1681f * _wgslsmith_div_f32(1478f, _wgslsmith_f_op_f32(-362f + -976f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-174f, _wgslsmith_f_op_f32(127f - -497f))))));
    var_0 = vec3<i32>(_wgslsmith_mod_i32(reverseBits(u_input.a), 1i), arg_3, max(select(2147483647i >> (1u % 32u), -1i, false), -_wgslsmith_mult_i32(1552i, var_0.x)));
    var var_3 = reverseBits(u_input.d.yx);
    return var_2.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 12u), vec3<u32>(u_input.b.x, u_input.d.x, 15366u) << (vec3<u32>(4294967295u, 35941u, u_input.d.x) % vec3<u32>(32u))), func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, -964f)))).b), 10972u);
    var var_1 = (u_input.c ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1846u, var_0.x, 73313u) >> ((vec3<u32>(var_0.x, 1u, var_0.x) >> (u_input.d.zyz % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, u_input.b.x, 1u))) & select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, var_0.x, 0u, 97226u), vec4<u32>(0u, u_input.d.x, u_input.b.x, 78540u)), ~vec4<u32>(1u, 59514u, 30877u, u_input.b.x)), ~reverseBits(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x))), 29042u, arg_0.a | any(select(vec4<bool>(false, arg_1.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, true), arg_1.a)));
    var var_2 = _wgslsmith_sub_u32(53887u, firstTrailingBit(~(0u << (~u_input.c % 32u))));
    let var_3 = func_2(arg_1.a & any(select(select(vec4<bool>(false, true, arg_0.a, false), vec4<bool>(arg_0.a, false, false, false), false), select(vec4<bool>(arg_0.a, true, arg_1.a, arg_0.a), vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), true), var_0.x == 0u)), _wgslsmith_f_op_f32(-arg_0.b.x)).a;
    var_2 = ~4294967295u;
    return !(!vec4<bool>(func_2(true, _wgslsmith_f_op_f32(step(455f, -434f))).a.a.a, true, select(func_2(var_3.a.a, 1000f).a.a.a, all(vec4<bool>(false, arg_1.a, arg_1.a, var_3.a.a)), any(vec3<bool>(true, false, arg_1.a))), func_2(func_1(u_input.e, var_0.x, vec2<bool>(arg_1.a, true), 392i).a, _wgslsmith_f_op_f32(arg_0.b.x + arg_1.b.x)).a.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10061u;
    var var_1 = select(vec4<bool>(all(vec2<bool>(true, true)) | true, any(func_4(Struct_1(false, vec4<f32>(195f, -193f, -993f, -268f)), func_1(vec2<i32>(1i, 15628i), 0u, vec2<bool>(true, false), -23256i))), false, false), vec4<bool>(true, func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1033f)).a.a.a, func_4(func_2(func_4(Struct_1(true, vec4<f32>(-899f, -367f, -353f, 685f)), Struct_1(true, vec4<f32>(-1342f, 1693f, -289f, -865f))).x, _wgslsmith_f_op_f32(f32(-1f) * -709f)).a.a, Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-585f, -843f, -1470f, 733f) + vec4<f32>(-1000f, -458f, 1126f, 1000f)))).x, u_input.a < -4228i), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)), true, false)), func_4(Struct_1(u_input.a == -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(663f, 658f, 1242f, -1000f) + vec4<f32>(845f, -677f, 563f, -339f))), func_2(true, 824f).a.a), vec4<bool>(true, true, true, true)));
    var_0 = 43909u;
    let var_2 = Struct_3(-countOneBits(vec3<i32>(u_input.e.x, _wgslsmith_clamp_i32(-1i, u_input.e.x, u_input.a), 2147483647i)), _wgslsmith_f_op_vec3_f32(-func_1(abs(abs(u_input.e)), 4294967295u, var_1.xx, u_input.e.x).b.zyx), ~u_input.d.x);
    var var_3 = Struct_5(var_2.b.zx, select(select(func_4(func_2(var_1.x, var_2.b.x).a.a, Struct_1(var_1.x, vec4<f32>(var_2.b.x, var_2.b.x, -810f, -913f))), vec4<bool>(true, !var_1.x, false, var_1.x && var_1.x), !select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x)), select(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, false), select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, false, true, false), vec4<bool>(false, false, var_1.x, var_1.x))), !(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), true), select(func_4(func_1(vec2<i32>(u_input.e.x, var_2.a.x), u_input.b.x, var_1.wy, u_input.e.x), func_1(u_input.e, u_input.d.x, var_1.xy, 9716i)), vec4<bool>(true, var_1.x, !var_1.x, var_1.x), !select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(var_2.a.x, 2147483647i, ~u_input.e.x, u_input.e.x), var_2.c);
}

