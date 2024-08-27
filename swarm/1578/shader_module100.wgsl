struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(15328i, 2147483647i, 2808i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    return select(!select(vec3<bool>(global0.x >= 21785i, false == arg_2.b.c, true), !select(vec3<bool>(true, arg_2.a.c, arg_1.b.c), vec3<bool>(arg_0.a, false, true), vec3<bool>(true, arg_1.a.d, false)), arg_0.c.b.d), select(!vec3<bool>(select(false, arg_0.c.a.d, arg_0.c.a.c), any(vec3<bool>(false, arg_0.a, arg_1.b.c)), !arg_1.a.d), select(select(vec3<bool>(true, true, false), !vec3<bool>(true, arg_2.b.d, arg_2.a.c), select(vec3<bool>(arg_0.c.b.d, arg_2.a.d, arg_2.b.d), vec3<bool>(true, arg_2.a.c, arg_1.a.d), false)), vec3<bool>(arg_2.a.d, arg_0.b, arg_1.a.d), arg_2.a.c), vec3<bool>(!(arg_0.e.a.b > arg_2.b.a.b), !all(vec3<bool>(true, arg_1.b.d, true)), any(!vec3<bool>(arg_0.a, false, false)))), vec3<bool>(any(!select(vec4<bool>(true, false, arg_2.a.d, true), vec4<bool>(true, arg_2.a.d, arg_2.b.c, arg_1.a.d), vec4<bool>(arg_2.b.d, arg_0.a, arg_0.e.d, false))), arg_1.a.d, !arg_2.b.c));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = any(select(select(func_3(Struct_4(false, true, Struct_3(Struct_2(Struct_1(global0.yx, arg_3), vec4<i32>(arg_1, -24552i, -266i, -465i), true, false), Struct_2(Struct_1(vec2<i32>(-1i, arg_2.x), u_input.b.x), vec4<i32>(arg_1, -23427i, -11784i, arg_1), true, false), 0i), Struct_1(vec2<i32>(-38614i, 1i), arg_3), Struct_2(Struct_1(vec2<i32>(global0.x, -3225i), u_input.b.x), vec4<i32>(-57114i, 73908i, arg_1, global0.x), false, true)), Struct_3(Struct_2(Struct_1(arg_2.xz, 1u), vec4<i32>(2147483647i, -3988i, -1i, arg_1), false, true), Struct_2(Struct_1(vec2<i32>(20170i, -1i), 1168u), vec4<i32>(arg_2.x, 1i, global0.x, arg_1), true, false), 16078i), Struct_3(Struct_2(Struct_1(global0.zz, 1u), vec4<i32>(global0.x, -1i, global0.x, -29947i), true, false), Struct_2(Struct_1(vec2<i32>(arg_1, arg_2.x), arg_3), vec4<i32>(2147483647i, arg_1, arg_1, -3374i), false, true), -1i)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), select(select(func_3(Struct_4(false, false, Struct_3(Struct_2(Struct_1(vec2<i32>(1i, arg_2.x), u_input.b.x), vec4<i32>(27296i, -1i, -38453i, arg_1), true, false), Struct_2(Struct_1(vec2<i32>(-1i, 1i), 4294967295u), vec4<i32>(-2147483647i, 2147483647i, global0.x, 3579i), false, false), -2508i), Struct_1(global0.yx, 0u), Struct_2(Struct_1(arg_2.xx, u_input.a), vec4<i32>(arg_1, -4195i, -28790i, global0.x), true, true)), Struct_3(Struct_2(Struct_1(global0.zx, 1u), vec4<i32>(arg_1, -2147483647i, 0i, arg_1), false, true), Struct_2(Struct_1(arg_2.xx, u_input.a), vec4<i32>(28743i, global0.x, -2147483647i, arg_2.x), true, false), -580i), Struct_3(Struct_2(Struct_1(arg_2.zx, u_input.a), vec4<i32>(26502i, arg_1, 2147483647i, arg_1), true, false), Struct_2(Struct_1(arg_2.zz, u_input.b.x), vec4<i32>(2147483647i, -18089i, arg_1, -1i), true, false), 270i)), vec3<bool>(true, true, true), 650f != arg_0), vec3<bool>(true, true, true), func_3(Struct_4(false, false, Struct_3(Struct_2(Struct_1(vec2<i32>(global0.x, -9010i), 1u), vec4<i32>(3257i, arg_1, arg_2.x, global0.x), true, false), Struct_2(Struct_1(global0.yz, u_input.b.x), vec4<i32>(-33851i, 110905i, 21768i, global0.x), true, true), -2147483647i), Struct_1(vec2<i32>(46238i, arg_1), arg_3), Struct_2(Struct_1(global0.zz, arg_3), vec4<i32>(arg_2.x, 1i, arg_2.x, arg_1), true, true)), Struct_3(Struct_2(Struct_1(vec2<i32>(arg_1, -1i), arg_3), vec4<i32>(11446i, -92376i, -1i, arg_1), true, false), Struct_2(Struct_1(vec2<i32>(58385i, 2147483647i), 4294967295u), vec4<i32>(arg_2.x, -1i, -25969i, global0.x), false, true), global0.x), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, arg_2.x), u_input.b.x), vec4<i32>(24194i, global0.x, 47516i, -3889i), true, false), Struct_2(Struct_1(arg_2.xz, u_input.b.x), vec4<i32>(arg_1, -1i, -3831i, global0.x), true, true), global0.x))), vec3<bool>(any(vec2<bool>(true, true)), true, !(arg_3 <= u_input.b.x))));
    var var_1 = Struct_1(reverseBits(select((vec2<i32>(global0.x, arg_1) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) ^ countOneBits(global0.yz), vec2<i32>(arg_2.x, 1i), !any(vec3<bool>(true, true, true)))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, ~select(4294967295u, arg_3, true), ~u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(122012u, u_input.a, u_input.a), u_input.b), (~arg_3 >> (~0u % 32u)) ^ ~77692u));
    var var_2 = _wgslsmith_f_op_f32(307f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_div_f32(842f, -331f))))));
    var_2 = 1000f;
    var var_3 = Struct_3(Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(-49433i, var_1.a.x), -arg_2.x), 0u), ~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-9145i, -2147483647i, var_1.a.x, -13753i), vec4<i32>(2147483647i, arg_1, var_1.a.x, 0i))), select(any(vec3<bool>(true, true, true)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true), Struct_2(Struct_1(var_1.a, arg_3), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, var_1.a.x, arg_2.x), vec4<i32>(1i, global0.x, 4542i, -19360i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, var_1.b, var_1.b, arg_3)) % vec4<u32>(32u)), vec4<i32>(arg_1, global0.x, abs(arg_2.x), global0.x)), all(vec2<bool>(any(vec2<bool>(false, false)), true)), !(!all(vec4<bool>(false, false, false, false)))), arg_2.x);
    return Struct_1(max(~vec2<i32>(arg_2.x, var_1.a.x) & vec2<i32>(arg_1, -arg_1), -vec2<i32>(1i, global0.x)), (u_input.a & _wgslsmith_mod_u32(arg_3, 4294967295u & u_input.b.x)) & 36775u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-258f)) * _wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(f32(-1f) * -1291f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(216f - 349f)))), _wgslsmith_f_op_f32(f32(-1f) * -1336f), 596f, -627f);
    let var_1 = 4294967295u;
    var var_2 = 51720u;
    global0 = ~select(vec3<i32>(-1i, min(-arg_0, firstLeadingBit(arg_0)), arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, firstLeadingBit(37827i), 0i), min(vec3<i32>(arg_0, 47359i, arg_0), vec3<i32>(0i, arg_0, -1i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(arg_0, 25705i, arg_0), vec3<i32>(global0.x, global0.x, -5229i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -197f, true)) * _wgslsmith_f_op_f32(max(-786f, var_0.x))) == var_0.x);
    global0 = max(vec3<i32>(2147483647i, abs(~(global0.x | global0.x)), -_wgslsmith_div_i32(0i, select(global0.x, 24857i, true))), vec3<i32>(-((global0.x & -15685i) | ~global0.x), 0i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-13256i, arg_0, -10158i, global0.x)), min(countOneBits(vec4<i32>(arg_0, 23821i, arg_0, -12651i)), countOneBits(vec4<i32>(arg_0, arg_0, arg_0, -2147483647i))))));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(628f))))), global0.x, _wgslsmith_sub_vec3_i32(min(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, global0.x, arg_0), vec3<i32>(arg_0, 0i, global0.x), false), vec3<i32>(arg_0, arg_0, global0.x) << (u_input.b % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2247i, global0.x), vec3<i32>(0i, -14571i, arg_0))), max(vec3<i32>(global0.x, global0.x, global0.x), max(vec3<i32>(2857i, 1i, -39059i), vec3<i32>(2147483647i, 1i, global0.x)))), -firstLeadingBit(vec3<i32>(global0.x, global0.x, 1i))), min(reverseBits(u_input.b.x), firstTrailingBit(~var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.x);
    global0 = _wgslsmith_div_vec3_i32(-vec3<i32>(min(-10359i, _wgslsmith_dot_vec2_i32(var_0.a, global0.yx)), _wgslsmith_sub_i32(countOneBits(-17932i), abs(global0.x)), -2147483647i), ~_wgslsmith_div_vec3_i32(~countOneBits(vec3<i32>(global0.x, 67165i, 1i)), select(countOneBits(vec3<i32>(-1i, var_0.a.x, 7370i)), vec3<i32>(6744i, -1i, global0.x), false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + -403f))));
    global0 = select(vec3<i32>(firstTrailingBit(~(var_0.a.x ^ var_0.a.x)), _wgslsmith_mod_i32(func_2(-888f, min(33557i, var_0.a.x), abs(vec3<i32>(-47805i, var_0.a.x, 28121i)), abs(u_input.b.x)).a.x, -(~4079i)), firstTrailingBit(var_0.a.x | -2147483647i)), ~_wgslsmith_add_vec3_i32(-(~vec3<i32>(-62i, 30896i, 43632i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(22488i, global0.x, 2147483647i), vec3<i32>(var_0.a.x, global0.x, 2147483647i) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 16169i, 923i), vec3<i32>(28725i, 2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1228f, 2111f))) > -374f);
    var_1 = -204f;
    var var_2 = -846f;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-875f + -1279f), _wgslsmith_f_op_f32(abs(-978f))), 1000f))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1495f, _wgslsmith_div_f32(-2563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 328f) * 1166f))), u_input.b.xz ^ (~vec2<u32>(1u, var_0.b) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 42712u, u_input.a, 4323u), vec4<u32>(u_input.a, 1u, var_0.b, var_0.b)), ~29035u)));
}

