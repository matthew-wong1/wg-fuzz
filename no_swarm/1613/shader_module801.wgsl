struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 23>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_2 = Struct_2(6299u, false, Struct_1(vec4<f32>(398f, -876f, 1842f, -573f), vec3<u32>(40558u, 4294967295u, 676u), vec3<u32>(286u, 23431u, 26739u), true, vec4<i32>(-15159i, -6066i, 2147483647i, -18972i)), vec4<i32>(0i, -580i, -48561i, -3358i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = ~1i;
    let var_1 = min(abs(vec3<i32>(global4.c.e.x, ~arg_0.x, ~arg_1.d.d.x)) & arg_0.xxz, firstTrailingBit(min(firstLeadingBit(-vec3<i32>(59569i, u_input.b, -5123i)), ~vec3<i32>(u_input.e.x, global4.c.e.x, arg_1.b.x))));
    var var_2 = Struct_5(max(_wgslsmith_sub_i32(_wgslsmith_div_i32(min(var_1.x, -1i), _wgslsmith_dot_vec2_i32(global4.c.e.yy, vec2<i32>(1237i, arg_0.x))), -9539i), _wgslsmith_clamp_i32(select(i32(-1i) * -2147483647i, var_1.x, true), ~var_1.x, -2147483647i)));
    let var_3 = firstLeadingBit(global4.c.e);
    var var_4 = global4.c;
    return ~arg_1.d.c.c;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = arg_1.x;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global4.c.a)), ~(~func_3(u_input.e, Struct_3(true, u_input.e.yxx, 53793u, Struct_2(0u, global4.c.d, Struct_1(vec4<f32>(597f, 1000f, -339f, -1646f), vec3<u32>(0u, 1u, global4.a), vec3<u32>(1u, u_input.d, 115570u), global4.b, global4.c.e), vec4<i32>(2970i, 0i, global4.d.x, arg_0))))), _wgslsmith_add_vec3_u32(~(~global4.c.b), abs(arg_2.yzw)), (_wgslsmith_div_i32(-4875i, -29443i) > _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_2.x, 23u)], 59406i)) & true, global4.c.e));
    let var_2 = var_1.a.d;
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(var_1.a.a, var_1.a.a, select(select(vec4<bool>(false, arg_1.x, global4.c.d, false), vec4<bool>(global4.b, true, false, global4.b), arg_1.x), !vec4<bool>(false, var_1.a.d, true, true), select(vec4<bool>(false, var_1.a.d, var_1.a.d, false), vec4<bool>(false, arg_1.x, var_1.a.d, false), vec4<bool>(var_1.a.d, false, var_1.a.d, true))))), ~(~var_1.a.b), arg_2.xwy ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, var_1.a.c.x, 1u), global4.c.c), var_1.a.d, vec4<i32>(global4.c.e.x, -18114i, u_input.a >> (~var_1.a.c.x % 32u), -global4.d.x)));
    var var_3 = _wgslsmith_add_vec4_u32(reverseBits(select(firstTrailingBit(vec4<u32>(4294967295u, u_input.c, var_1.a.c.x, 41188u)), arg_2, arg_1.x || var_1.a.d)) ^ ~max(arg_2, vec4<u32>(global4.c.c.x, var_1.a.c.x, 19190u, var_1.a.c.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.a.c >> (~arg_2.yyy % vec3<u32>(32u)), ~var_1.a.c), 54391u, ~(global4.c.c.x | ~arg_2.x), arg_2.x));
    return Struct_4(global2[_wgslsmith_index_u32(~(~var_1.a.b.x | ~arg_2.x), 26u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = true;
    var var_1 = select(vec3<bool>(any(vec3<bool>(any(vec2<bool>(false, global4.c.d)), true, global4.c.d)), !all(vec4<bool>(global4.c.d, true, true, false)) || global4.c.d, !global4.b), !vec3<bool>(true, (arg_0.a.d || global4.c.d) | true, arg_0.a.d), !(!(!select(vec3<bool>(false, arg_0.a.d, arg_0.a.d), vec3<bool>(arg_0.a.d, true, false), vec3<bool>(false, arg_0.a.d, true)))));
    let var_2 = 0u;
    global3 = _wgslsmith_clamp_u32(~4294967295u, ~92616u, ~(arg_0.a.b.x << (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 97509u, global4.a)), vec3<u32>(global4.c.c.x, 17693u, global4.c.c.x)) % 32u)));
    let var_3 = select(min(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, arg_0.a.b.x), vec2<u32>(u_input.c, 4294967295u) ^ vec2<u32>(var_2, 25016u)), ~arg_1.zy >> (vec2<u32>(~32312u, ~arg_1.x) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>((var_2 ^ arg_1.x) | var_2, ~abs(arg_1.x)), vec2<u32>(_wgslsmith_div_u32(36921u, 22506u) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 23717u), arg_0.a.b.zx), func_2(-global4.c.e.x, select(vec3<bool>(var_1.x, true, arg_0.a.d), vec3<bool>(var_1.x, true, global4.b), vec3<bool>(global4.c.d, true, var_1.x)), vec4<u32>(15424u, arg_0.a.b.x, global4.a, 4294967295u)).a.c.x)), any(vec4<bool>(func_2(_wgslsmith_add_i32(2147483647i, -7151i), vec3<bool>(false, true, false), _wgslsmith_mod_vec4_u32(vec4<u32>(2693u, 0u, 1u, 1u), arg_1)).a.d, u_input.c >= _wgslsmith_mult_u32(1u, var_2), true, abs(arg_0.a.b.x) == arg_0.a.c.x)));
    return Struct_4(func_2(u_input.b, !(!select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, arg_0.a.d, global4.c.d), true)), vec4<u32>(_wgslsmith_dot_vec3_u32(global4.c.b, global4.c.c), max(25796u, 49478u), ~var_3.x, min(45308u, var_3.x)) << ((~vec4<u32>(var_3.x, 0u, 0u, 36035u) ^ vec4<u32>(1u, var_2, u_input.c, var_3.x)) % vec4<u32>(32u))).a);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = ~(~(~(~(~global4.c.b.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.a.a.wxz)));
    let var_2 = global4.c.a.wwy;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.a.x * global4.c.a.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) > arg_2.a.a.x;
    global1 = array<i32, 23>();
    return Struct_2(~4294967295u, !((_wgslsmith_mod_u32(arg_2.a.b.x, u_input.d) << (~1u % 32u)) > ~4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-503f, global4.c.a.x, var_1.x, var_1.x), global4.c.a) - arg_2.a.a), arg_2.a.a)), global4.c.c, ~vec3<u32>(4294967295u, 45863u, u_input.c) >> (func_4(arg_2, countOneBits(vec4<u32>(4294967295u, u_input.c, 1u, arg_2.a.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-875f, 565f, -390f) * vec3<f32>(1000f, var_2.x, global0.x))).a.b % vec3<u32>(32u)), all(vec2<bool>(all(vec3<bool>(arg_2.a.d, true, global4.b)), false)), vec4<i32>(arg_1.x, -(~(-2147483647i)), u_input.e.x, max(u_input.a & -22093i, -1i))), -vec4<i32>(-1385i, countOneBits(4782i), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2.a.e.x, 9427i, 1604i), vec4<i32>(2147483647i, 1798i, 2147483647i, -109326i)), -func_2(u_input.a, vec3<bool>(true, false, false), vec4<u32>(u_input.c, 0u, u_input.c, 1u)).a.e.x));
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    global2 = array<Struct_1, 26>();
    let var_0 = func_2(-global4.c.e.x, vec3<bool>(true, global4.c.d, global4.b), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(41979u, 1u, u_input.c, 4294967295u), vec4<u32>(33360u, global4.c.b.x, 50796u, 12792u)))));
    let var_1 = global4.c.a.x;
    var var_2 = 23118i;
    var var_3 = _wgslsmith_add_vec2_i32(u_input.e.zy, arg_0.d.ww);
    return var_0.a.e.yx;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> f32 {
    global3 = arg_2.d.a;
    let var_0 = -1046f;
    global3 = ~4294967295u;
    var var_1 = vec2<i32>(arg_2.b.x, -1i);
    var var_2 = func_6(func_5(arg_0.d, vec2<i32>((2147483647i ^ arg_2.b.x) >> (arg_0.c.x % 32u), arg_0.e.x), func_4(func_2(max(0i, 52119i), vec3<bool>(global4.b, true, true), ~vec4<u32>(49524u, 2498u, 64053u, global4.a)), reverseBits(vec4<u32>(global4.a, 1u, arg_2.c, 4294967295u)) >> (~vec4<u32>(22616u, arg_2.d.a, 4294967295u, global4.a) % vec4<u32>(32u)), vec3<f32>(-1000f, 928f, _wgslsmith_f_op_f32(floor(1000f))))), -1966f);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(countOneBits(_wgslsmith_mod_u32(u_input.d, min(9992u, ~global4.c.c.x))), global4.c.b.x & _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, global4.a, 1u), ~global4.c.c), ~reverseBits(vec3<u32>(u_input.d, 7741u, global4.c.c.x))));
    global4 = Struct_2(global4.c.b.x, true, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(func_1(global4.c, u_input.b, Struct_3(global4.c.d, vec3<i32>(global4.d.x, global1[_wgslsmith_index_u32(global4.c.c.x, 23u)], 1i), global4.c.c.x, Struct_2(u_input.c, global4.b, global4.c, u_input.e))))), global4.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1593f)), _wgslsmith_f_op_f32(f32(-1f) * -656f)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.c.c.x, ~0u, u_input.d & u_input.d), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), global4.c.b, global4.c.c), vec3<u32>(96353u, global4.a, u_input.c)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<u32>(1u, 15120u, global4.c.b.x)) << ((global4.c.b | global4.c.b) % vec3<u32>(32u))), vec3<u32>(15482u, func_2(~global1[_wgslsmith_index_u32(global4.a, 23u)], select(vec3<bool>(global4.c.d, false, global4.b), vec3<bool>(global4.c.d, true, global4.b), global4.b), ~vec4<u32>(16397u, 1u, global4.a, 43105u)).a.c.x, ~1u ^ ~global4.a), false, -vec4<i32>(_wgslsmith_dot_vec2_i32(global4.c.e.yy, u_input.e.zz), func_6(Struct_2(u_input.d, true, global2[_wgslsmith_index_u32(1u, 26u)], u_input.e), -146f).x, _wgslsmith_mod_i32(-15341i, global1[_wgslsmith_index_u32(15969u, 23u)]), -84414i)), _wgslsmith_sub_vec4_i32(-(vec4<i32>(global1[_wgslsmith_index_u32(1u, 23u)], u_input.b, 85052i, global4.c.e.x) >> (~vec4<u32>(u_input.c, global4.a, 1u, 0u) % vec4<u32>(32u))), u_input.e));
    global1 = array<i32, 23>();
    var var_1 = ~global4.d.x;
    let var_2 = func_2(abs(-u_input.e.x), select(!(!select(vec3<bool>(true, global4.b, global4.c.d), vec3<bool>(global4.c.d, true, true), true)), select(!vec3<bool>(global4.c.d, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, global4.c.d), vec3<bool>(global4.b, true, global4.c.d), false), vec3<bool>(global4.c.d, global4.c.d, global4.b)), countOneBits(-1i) >= select(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], false)), !(global4.a < 37356u)), ~vec4<u32>(_wgslsmith_mult_u32(abs(18835u), global4.c.c.x), _wgslsmith_sub_u32(countOneBits(70088u), u_input.c), _wgslsmith_mult_u32(~u_input.c, 22858u), 1u)).a.a.ww;
    let x = u_input.a;
    s_output = StorageBuffer(46581i);
}

