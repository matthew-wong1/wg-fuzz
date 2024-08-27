struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(abs(-1i)), ~arg_0.d.x), ~(-3550i), i32(-1i) * -select(-37295i, 1i, all(vec3<bool>(arg_0.a.x, true, arg_0.a.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.x)))) + arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(abs(107f)), _wgslsmith_f_op_f32(step(-725f, arg_0.b.x)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -540f);
    var var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.wx))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(784f, 873f))))))), vec2<i32>(reverseBits(u_input.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (~13184u % 32u), 2147483647i)), arg_0.d >> (~vec4<u32>(u_input.b.x & 0u, ~u_input.b.x, u_input.b.x, 23401u) % vec4<u32>(32u)));
    return 487f == arg_0.b.x;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<bool> {
    var var_0 = Struct_1(vec2<bool>(func_3(Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, -220f) * vec2<f32>(arg_1, arg_1)), vec2<i32>(76i, u_input.c) & vec2<i32>(21701i, u_input.a.x), ~vec4<i32>(2147483647i, -10050i, 1i, arg_0))), select(select(true, false, true), false, func_3(Struct_1(vec2<bool>(false, false), vec2<f32>(arg_1, 1290f), vec2<i32>(u_input.c, arg_0), vec4<i32>(0i, -44136i, 1i, u_input.c))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-2309f, -2557f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, -2025f), vec2<f32>(-499f, -340f), vec2<bool>(false, true)))))))), countOneBits(u_input.a.yy), max(-_wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_0, 33816i, -1i, arg_0), vec4<i32>(1i, u_input.a.x, arg_0, -51832i), true), vec4<i32>(arg_0, -29414i, u_input.a.x, -1i)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -5428i, 2147483647i, -10578i), ~vec4<i32>(u_input.a.x, -30114i, 2147483647i, -39825i)), -(~vec4<i32>(u_input.a.x, 7399i, -4332i, u_input.a.x)))));
    return select(vec4<bool>(all(select(!vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, var_0.a.x, var_0.a.x), select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(false, false, true)))), true, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(max(var_0.b.x, arg_1))) >= _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-510f + var_0.b.x)), true || var_0.a.x), vec4<bool>(var_0.a.x, !(!(!var_0.a.x)), var_0.a.x, var_0.c.x > var_0.d.x), vec4<bool>(false, false, var_0.a.x, all(!(!vec2<bool>(var_0.a.x, var_0.a.x)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    global0 = arg_1.b.x;
    var var_0 = countOneBits(_wgslsmith_div_u32(1u, u_input.b.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(569f))) * 1715f)));
    return true;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(-max(select(vec4<i32>(-1i, 1i, -68536i, u_input.a.x) >> (vec4<u32>(u_input.b.x, 1501u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, 1i, u_input.c, 27446i), func_2(u_input.c, -1000f)), abs(-vec4<i32>(1i, -5007i, u_input.a.x, u_input.c))), Struct_1(vec2<bool>(select(any(vec4<bool>(false, arg_0.x, true, false)), true, arg_0.x), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2269f + -1000f), -745f)), ~u_input.a.yz, vec4<i32>(-20052i, 0i, -u_input.a.x, u_input.a.x) >> (u_input.b % vec4<u32>(32u))), !arg_0.x, -58439i);
    var_0 = !(func_4(~(vec4<i32>(-1i, u_input.c, u_input.a.x, -52016i) << (u_input.b % vec4<u32>(32u))), Struct_1(arg_0.wx, vec2<f32>(1f, 1f), min(vec2<i32>(41399i, 0i), u_input.a.xy), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, -2147483647i)), false, -u_input.a.x) | !(0i > u_input.c));
    let var_1 = Struct_1(func_2(_wgslsmith_mod_i32(u_input.a.x, -42680i), 1946f).yx, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-235f, -1158f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1427f, -1367f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(839f, -279f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(427f * 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -209f)))), min(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.c) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(11788i, -2147483647i), u_input.a.zy), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 9418i, 47898i), vec4<i32>(u_input.c, -2147483647i, u_input.a.x, u_input.c)), u_input.c)), u_input.a.yx), vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(1i, u_input.a.x), u_input.a.xz, arg_0.x)), u_input.a.xz), u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -1i), _wgslsmith_mult_i32((u_input.a.x | 10434i) | 14699i, -u_input.c)));
    var var_2 = Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2415f, -240f), var_1.b, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x))))), var_1.d.zw, ~(-var_1.d) << (u_input.b % vec4<u32>(32u))), Struct_1(!(!var_1.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(var_1.b)))), vec2<f32>(-539f, _wgslsmith_f_op_f32(f32(-1f) * -991f)), arg_0.x)), ~vec2<i32>(9272i, u_input.c), firstTrailingBit(vec4<i32>(-u_input.c, _wgslsmith_add_i32(u_input.a.x, -5381i), u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.x, -1i, -2147483647i), var_1.d.zxz)))));
    var var_3 = 1948f;
    return Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.b.x + var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b.x + 740f))))), reverseBits(min(vec2<i32>(-40478i, var_2.b.c.x), vec2<i32>(u_input.c, reverseBits(-2147483647i)))), vec4<i32>(-1i, _wgslsmith_clamp_i32(var_1.c.x, abs(var_2.a.d.x), _wgslsmith_mod_i32(var_1.d.x, -38301i)) ^ -35145i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x << (u_input.b.x % 32u), 1i), ~reverseBits(-28079i)), -2147483647i));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_0.a.x;
    var_0 = any(!vec4<bool>(arg_0.b.x < 392f, any(select(vec4<bool>(true, true, arg_2.a.x, false), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_0.a.x, true), true)), any(select(arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.x)), func_4(arg_0.d, func_1(vec4<bool>(false, arg_0.a.x, false, false)), select(arg_0.a.x, arg_2.a.x, arg_0.a.x), u_input.c)));
    var var_1 = Struct_2(arg_2, Struct_1(select(func_2(-1i, _wgslsmith_div_f32(-1000f, arg_2.b.x)).wy, func_1(!vec4<bool>(false, arg_0.a.x, false, true)).a, (u_input.c < arg_0.c.x) && true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x)))), select(~vec2<i32>(arg_2.d.x, 40315i), arg_0.c, !arg_2.a.x), vec4<i32>(u_input.c & 25647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -32305i, arg_2.d.x), vec3<i32>(u_input.c, arg_0.c.x, arg_2.d.x)), arg_0.d.x, arg_0.d.x) >> (firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)) % vec4<u32>(32u))));
    var_0 = any(select(func_2(firstLeadingBit(-1i), -1628f), !vec4<bool>(false, var_1.a.a.x, false, var_1.a.a.x), !(!vec4<bool>(true, var_1.a.a.x, true, false)))) & true;
    var var_2 = func_1(vec4<bool>(false, arg_0.a.x || true, true, any(vec4<bool>(true, arg_2.a.x, false, false))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<bool>(true, false), vec2<f32>(405f, -741f), u_input.a.zz, vec4<i32>(8871i, u_input.c, -2147483647i, -21417i)), vec3<f32>(-759f, 532f, 1498f), func_1(vec4<bool>(true, false, true, false))))), select(vec2<i32>(_wgslsmith_mult_i32(35469i, -38685i), 1i), u_input.a.xy ^ u_input.a.xx, true), vec4<i32>(u_input.c, ~1i, 2147483647i, -2147483647i)), Struct_1(func_2(firstLeadingBit(-u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(623f, 521f)) - _wgslsmith_f_op_f32(select(-107f, -1126f, true)))).wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(974f, -845f), vec2<f32>(1690f, 981f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1788f)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))), ~(~vec2<i32>(u_input.a.x, u_input.c)), -((vec4<i32>(u_input.c, -2147483647i, u_input.c, 1i) & vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i)) >> (vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u) % vec4<u32>(32u)))));
    let var_1 = 45429u;
    var var_2 = Struct_1(!var_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b.x), 1068f), var_0.b.b.x)), abs(_wgslsmith_sub_vec2_i32(var_0.b.d.yz >> (select(u_input.b.xw, vec2<u32>(var_1, u_input.b.x), var_0.a.a.x) % vec2<u32>(32u)), -vec2<i32>(-1i, 29319i))), -_wgslsmith_sub_vec4_i32(max(var_0.b.d, ~vec4<i32>(var_0.b.d.x, var_0.b.d.x, 15720i, -79761i)), var_0.b.d));
    var var_3 = _wgslsmith_sub_vec4_u32(~(~u_input.b), ~vec4<u32>(~u_input.b.x, ~11099u, u_input.b.x | var_1, _wgslsmith_div_u32(u_input.b.x, 49198u))) >> ((u_input.b >> (abs(vec4<u32>(1u, 1u << (u_input.b.x % 32u), 7085u, ~6164u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_3 = u_input.b;
    let var_4 = u_input.b.wy;
    var var_5 = Struct_2(var_0.b, func_1(select(select(vec4<bool>(false, var_2.a.x, var_0.b.a.x, var_2.a.x), !vec4<bool>(true, var_0.a.a.x, true, true), vec4<bool>(false, var_0.a.a.x, var_2.a.x, var_2.a.x)), select(!vec4<bool>(false, var_0.a.a.x, false, var_2.a.x), !vec4<bool>(var_0.a.a.x, var_2.a.x, var_0.a.a.x, var_2.a.x), var_2.a.x), func_2(u_input.a.x, -403f))));
    var_5 = Struct_2(var_5.b, func_1(vec4<bool>(var_5.b.a.x, any(vec3<bool>(true, true, true)), 1u < _wgslsmith_div_u32(23545u, var_3.x), any(vec4<bool>(true, true, var_0.a.a.x, var_0.b.a.x)) && false)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, abs(abs(~(~2147483647i))), 1000f, _wgslsmith_f_op_f32(-var_5.a.b.x));
}

