struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    var var_0 = ~_wgslsmith_mod_i32(abs(~arg_0.c), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(arg_0.b.c.x), i32(-1i) * -2147483647i), -_wgslsmith_div_vec2_i32(arg_0.b.c.yz, arg_0.b.d.yy)));
    let var_1 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.c.zz, firstLeadingBit(firstTrailingBit(arg_0.b.d.yy))), select(min(abs(-2147483647i), arg_0.a), _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, arg_0.c), _wgslsmith_sub_i32(14593i, arg_0.c)), true), 38711i, ~arg_0.c << (_wgslsmith_mod_u32(41955u, u_input.c) % 32u));
    let var_2 = Struct_2(~_wgslsmith_div_i32(~var_1.x, arg_0.a), arg_0.b, _wgslsmith_add_i32(countOneBits(1i), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, -13613i, var_1.x), vec3<i32>(-2147483647i, 34487i, arg_0.c)), ~var_1.x)));
    var var_3 = arg_0.b.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1218f * arg_1), arg_1), arg_1, 246f, arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -679f, arg_1))) + vec4<f32>(546f, _wgslsmith_f_op_f32(select(1104f, -633f, true)), _wgslsmith_f_op_f32(679f * 1737f), arg_1)))));
    return _wgslsmith_mult_vec4_i32(-select(~var_1, vec4<i32>(10582i, 22083i, 1i, arg_0.b.c.x), vec4<bool>(true, true, true, true)) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.b.b, u_input.d.x, 29220u, 0u), ~vec4<u32>(4294967295u, 0u, u_input.a.x, 23001u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(var_1.x, 56212i, false) & -14079i, ~abs(-1i), ~var_1.x, firstLeadingBit(~var_2.c)), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(var_2.c, 0i, var_1.x, 18637i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1109i, -2147483647i, -46933i), var_2.b.d), 16337i, var_2.b.c.x >> (66467u % 32u), -17724i), vec4<i32>(var_2.c | -47405i, arg_0.b.c.x, var_1.x << (4294967295u % 32u), -20209i)), ~(countOneBits(vec4<i32>(arg_0.c, -1i, 0i, var_2.c)) & vec4<i32>(11302i, 46887i, -1i, -1i))));
}

fn func_2() -> Struct_5 {
    let var_0 = ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(i32(-1i) * -80735i, ~(-2147483647i), -2147483647i)));
    let var_1 = ~(~(-func_3(Struct_2(-2147483647i, Struct_1(false, 3222u, vec3<i32>(1i, var_0, 2147483647i), vec3<i32>(var_0, 1i, -2147483647i), vec2<bool>(false, true)), var_0), _wgslsmith_f_op_f32(785f * 1000f))));
    let var_2 = countOneBits(0u);
    var var_3 = true;
    var_3 = var_0 >= ~var_1.x;
    return Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1044f, 226f, -523f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-660f, 1223f, 141f), vec3<f32>(498f, -807f, -682f))) * vec3<f32>(-384f, 989f, 1123f))) + vec3<f32>(1672f, _wgslsmith_div_f32(_wgslsmith_div_f32(260f, -369f), _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1779f, 169f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - -273f))), -1068f, _wgslsmith_f_op_f32(f32(-1f) * -1399f), 691f), vec4<bool>(true, true, true, true));
}

fn func_1() -> bool {
    let var_0 = -1014f;
    var var_1 = func_2();
    var var_2 = 1i;
    var var_3 = u_input.c;
    let var_4 = ~vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-40638i, 11557i, 1i, 2147483647i), firstLeadingBit(vec4<i32>(-2147483647i, 1i, -35298i, -31178i))), 0i) >> (vec3<u32>(countOneBits(0u), ~1u, 70375u) % vec3<u32>(32u));
    return any(vec2<bool>(true, true));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(159f, 1u, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(func_1(), abs(~u_input.b), vec3<i32>(_wgslsmith_mult_i32(0i, -5691i), _wgslsmith_add_i32(1i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(47240i, 5089i, 1i, 2147483647i), vec4<i32>(20901i, 2147483647i, 2147483647i, 0i))), vec3<i32>(-2147483647i, -1i, 34863i) << (u_input.a % vec3<u32>(32u)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)), 710f)) > _wgslsmith_f_op_f32(f32(-1f) * -735f));
    let var_1 = func_2();
    let var_2 = func_2();
    var var_3 = vec4<u32>(~(var_0.a.b | _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a)), 1u, u_input.b, ~(~(~(~6630u))));
    var_3 = _wgslsmith_mod_vec4_u32(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_3.x, 5618u, 10832u), select(vec4<u32>(var_3.x, u_input.c, 26117u, var_0.a.b), vec4<u32>(1u, 19883u, 1u, 37779u), vec4<bool>(false, true, var_2.c.x, var_0.a.e.x))), vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(var_3.x, var_0.a.b), u_input.a.x << (var_0.a.b % 32u), firstLeadingBit(u_input.e)), _wgslsmith_f_op_f32(exp2(var_1.b.x)) >= -1000f), vec4<u32>(61826u, 1u, 1919u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(var_0.a.b, 48912u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(6448u, 1u) ^ var_3.xx, var_3.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4166u, 7034u, 114353u, 16810u), firstLeadingBit(vec4<u32>(var_0.a.b, 0u, 47435u, var_3.x))), ~(~var_3.x)), vec2<u32>(var_0.a.b, abs(var_3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-793f * _wgslsmith_f_op_f32(trunc(-1735f))), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(ceil(-1168f)) <= var_2.a.x)), _wgslsmith_dot_vec2_i32(var_0.a.d.yy, func_4(_wgslsmith_f_op_f32(select(func_2().b.x, -239f, !var_0.a.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, 1u, u_input.d.x), ~vec4<u32>(1u, var_0.a.b, u_input.a.x, 64000u)), vec2<bool>(!var_1.c.x, true), Struct_1(true, 1u, -vec3<i32>(var_0.a.d.x, var_0.a.c.x, var_0.a.c.x), var_0.a.d, !var_1.c.wx)).c.zz), -880f);
}

