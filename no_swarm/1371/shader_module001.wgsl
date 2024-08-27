struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(4518i);

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(270f, -929f, 1362f, 916f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1029f, 396f, -373f, 1356f)))))), vec2<i32>(global0.a, global0.a), false);
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.a.x);
    var_1 = 1f;
    var var_2 = u_input.e.xzz;
    var_2 = u_input.e.wwy;
    return Struct_4(min(var_0.b.x, _wgslsmith_mod_i32(0i, ~var_0.b.x)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> f32 {
    let var_0 = ~vec4<i32>(reverseBits(2147483647i), -u_input.a, ~reverseBits(arg_0.c ^ arg_2), arg_0.c);
    var var_1 = _wgslsmith_div_f32(-177f, _wgslsmith_f_op_f32(-arg_1.a.a.a.a.x));
    let var_2 = u_input.c;
    global1 = vec3<bool>(global1.x, global1.x, arg_1.a.a.c);
    let var_3 = firstLeadingBit(arg_1.b);
    return arg_0.a.a.a.a.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    global0 = func_2();
    let var_0 = 13420i;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.b.xz, ~u_input.b.zz), _wgslsmith_dot_vec4_i32(min(abs(~vec4<i32>(u_input.b.x, global0.a, -21060i, var_0)), ~(vec4<i32>(var_0, global0.a, var_0, -24951i) >> (u_input.e % vec4<u32>(32u)))), countOneBits(vec4<i32>(-52920i, var_0 | 0i, min(1220i, 16369i), _wgslsmith_mult_i32(64746i, -1i)))));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), 782f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1243f - -1301f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(arg_0.x, 1000f, 399f, 964f)), vec2<i32>(u_input.b.x, -1i), global1.x), u_input.e.wxw, vec3<bool>(global1.x, global1.x, true), 57245u, vec4<bool>(global1.x, false, true, true)), u_input.c, var_0, vec2<bool>(global1.x, global1.x)), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(arg_0.x, arg_0.x, 675f, arg_0.x)), u_input.b.xz, global1.x), vec3<u32>(u_input.d, 1u, 0u), vec3<bool>(false, false, false), 4294967295u, vec4<bool>(false, global1.x, global1.x, true)), vec2<u32>(arg_1, u_input.c.x), global0.a, vec2<bool>(global1.x, global1.x)), u_input.b.x))))));
    var var_3 = select(global1.xy, vec2<bool>(global1.x, true), select(!global1.x, all(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true))), true));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-934f, var_2.a.x, -806f, var_2.a.x), var_2.a, vec4<bool>(global1.x, true, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a.x, 678f, var_2.a.x, var_2.a.x))))), u_input.b.yy, !(var_3.x || false)), u_input.e.zyx & firstTrailingBit(vec3<u32>(u_input.d, ~arg_1, ~arg_1)), select(vec3<bool>(select(global1.x || false, var_3.x, all(vec3<bool>(global1.x, global1.x, var_3.x))), any(!vec4<bool>(true, global1.x, global1.x, var_3.x)), false), select(vec3<bool>(true, false, all(vec2<bool>(true, false))), select(!vec3<bool>(false, false, global1.x), !vec3<bool>(true, var_3.x, global1.x), !vec3<bool>(var_3.x, true, false)), select(select(vec3<bool>(true, true, var_3.x), vec3<bool>(false, false, global1.x), true), !vec3<bool>(global1.x, true, true), !vec3<bool>(global1.x, false, true))), !(arg_0.x < arg_0.x)), arg_1, vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(abs(arg_0.x))), any(vec3<bool>(false, true, true)), false, !var_3.x));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    return Struct_2(arg_0.a.a.a, vec2<i32>(_wgslsmith_div_i32(14582i, u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, global0.a, -1i), vec4<i32>(-2627i, u_input.a, arg_0.a.a.b.x, u_input.a)), _wgslsmith_clamp_i32(22519i, 0i, 66371i)), -34823i)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    let var_1 = func_4(Struct_5(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1156f, 1071f, -323f) * vec3<f32>(-1517f, 377f, -613f))), ~_wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(119454u, u_input.d))), abs(u_input.e.zx), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, global0.a, u_input.a, 2147483647i)), max(vec4<i32>(u_input.b.x, -1136i, -43674i, -1i), vec4<i32>(-1i, u_input.b.x, -1i, u_input.a))), !(!vec2<bool>(true, global1.x))));
    var var_2 = func_4(Struct_5(func_1(var_1.a.a.zww, ~(~59211u)), u_input.e.zw & ~(vec2<u32>(1u, u_input.e.x) ^ u_input.e.zy), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_1.b.x, -u_input.a), -19045i), vec2<bool>(var_1.b.x <= 1i, global1.x))).a.a.x;
    global0 = Struct_4(min(_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_1.b.x, -2147483647i, var_1.b.x))), _wgslsmith_sub_i32(-1i, 0i)), ~(-reverseBits(var_1.b.x))));
    let var_3 = _wgslsmith_sub_vec4_i32(~(-(~(-vec4<i32>(1i, u_input.b.x, u_input.a, -1i)))), min(min(reverseBits(~vec4<i32>(global0.a, 0i, -1i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(12487i, u_input.b.x, -32262i, 4745i), vec4<i32>(global0.a, var_1.b.x, global0.a, u_input.b.x)) | (vec4<i32>(global0.a, 52179i, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, 1u, u_input.e.x, u_input.c.x) % vec4<u32>(32u)))), max(vec4<i32>(-23050i, -23906i, _wgslsmith_mod_i32(-20681i, -10585i), _wgslsmith_mod_i32(39160i, var_1.b.x)), min(~vec4<i32>(28193i, 0i, global0.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, -61810i, 0i), vec4<i32>(-27005i, global0.a, 28780i, -2147483647i))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1031f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(Struct_2(Struct_1(var_1.a.a), vec2<i32>(2147483647i, 1i), false), vec3<u32>(u_input.d, u_input.d, u_input.c.x), vec3<bool>(true, var_1.c, false), 1u, vec4<bool>(var_1.c, global1.x, global1.x, global1.x)), vec2<u32>(u_input.d, 80207u), 34510i, global1.yx), Struct_5(Struct_3(var_1, u_input.e.xww, vec3<bool>(false, global1.x, false), 1u, vec4<bool>(var_1.c, var_1.c, true, var_1.c)), u_input.e.zw, -1i, vec2<bool>(global1.x, var_1.c)), 20810i << (u_input.d % 32u))))) - _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(var_1, u_input.e.wxw, select(vec3<bool>(true, true, true), vec3<bool>(var_1.c, false, true), global1.x), ~u_input.e.x, vec4<bool>(global1.x, global1.x, false, global1.x)), ~func_1(var_1.a.a.wwz, 1u).b.yz, ~func_1(vec3<f32>(var_1.a.a.x, 892f, -1484f), 0u).a.b.x, vec2<bool>(1u >= u_input.d, true)), Struct_5(Struct_3(var_1, countOneBits(vec3<u32>(13941u, 20466u, 1u)), !vec3<bool>(false, var_1.c, true), 1u, vec4<bool>(var_1.c, true, true, global1.x)), select(u_input.c, vec2<u32>(u_input.c.x, 3721u), global1.x | var_1.c), ~reverseBits(0i), vec2<bool>(true, true)), -21967i)));
    var var_4 = u_input.c.x;
    var var_5 = global0.a;
    var var_6 = Struct_3(var_1, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.e.x, u_input.c.x, ~4294967295u), _wgslsmith_div_vec3_u32(u_input.e.zyz, u_input.e.zyw) >> ((u_input.e.ywy ^ ~vec3<u32>(1u, u_input.e.x, 35525u)) % vec3<u32>(32u))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.a.www * vec3<f32>(-2771f, -353f, var_1.a.a.x)) * func_4(Struct_5(Struct_3(Struct_2(Struct_1(var_1.a.a), vec2<i32>(0i, global0.a), var_1.c), vec3<u32>(0u, 81766u, u_input.c.x), vec3<bool>(var_1.c, false, false), 27598u, vec4<bool>(true, var_1.c, global1.x, global1.x)), u_input.e.zx, global0.a, vec2<bool>(global1.x, true))).a.a.wxw), 22652u).e.xzz, u_input.d, !(!vec4<bool>(true, !var_1.c, var_1.c, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, func_1(vec3<f32>(func_4(Struct_5(Struct_3(Struct_2(var_6.a.a, var_6.a.b, false), vec3<u32>(29060u, 4294967295u, u_input.e.x), var_6.e.xyy, var_6.b.x, vec4<bool>(false, var_6.a.c, false, true)), u_input.e.ww, var_1.b.x, vec2<bool>(true, false))).a.a.x, _wgslsmith_div_f32(var_1.a.a.x, _wgslsmith_f_op_f32(-659f + 373f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.a.a.a.x - 993f))), ~var_6.d).a.a.a.zx, var_3.xxy);
}

