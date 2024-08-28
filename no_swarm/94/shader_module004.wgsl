struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(62615u, 4294967295u, 41u), vec3<u32>(17511u, 0u, 4294967295u), vec3<u32>(56352u, 92712u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(18280u, 15112u, 441u), vec3<u32>(1u, 2043u, 0u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(35547u, 32216u, 47066u), vec3<u32>(13426u, 302u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 41833u, 4294967295u), vec3<u32>(44359u, 1u, 4294967295u), vec3<u32>(54833u, 103511u, 54569u), vec3<u32>(69712u, 25618u, 88587u), vec3<u32>(4294967295u, 31447u, 1u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    var var_0 = select(vec3<i32>(arg_0 ^ -(arg_0 >> (35815u % 32u)), u_input.a, -3076i), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(2147483647i, u_input.a, 0i)), select(vec3<i32>(arg_0, u_input.a, -1i), vec3<i32>(arg_0, 16088i, -22987i), vec3<bool>(arg_1.a, true, false)) >> (vec3<u32>(4294967295u, 4294967295u, 20138u) % vec3<u32>(32u))) << (~vec3<u32>(45683u, ~31165u, _wgslsmith_mod_u32(0u, 4294967295u)) % vec3<u32>(32u)), !(!(arg_1.a == true)) == arg_1.a);
    var var_1 = u_input.a;
    global0 = array<vec3<u32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1415f + -164f) + 185f)))));
    var_1 = _wgslsmith_sub_i32((4465i << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 4294967295u), ~22863u) % 32u)) & ~arg_0, _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, ~(-2147483647i & var_0.x)), -1i));
    return ~4294967295u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true, u_input.a, false, vec4<u32>(0u, min(func_3(2147483647i, Struct_3(true), Struct_3(true), vec4<bool>(true, true, false, true)), 7193u), abs(~arg_0.x), ~36862u << (select(0u, 4294967295u, false) % 32u))), Struct_1(firstTrailingBit(23618i >> (arg_0.x % 32u)) > -_wgslsmith_add_i32(-2147483647i, u_input.a), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))) && true, u_input.a, true, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(31582u, arg_0.x), arg_0.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(63702u, arg_0.x, arg_0.x, 23339u) | vec4<u32>(1u, arg_0.x, 99795u, 30742u), vec4<u32>(30328u, arg_0.x, 35762u, arg_0.x)), 26425u)));
    let var_1 = all(!select(!(!vec4<bool>(var_0.a.a, true, true, var_0.b.a)), !(!vec4<bool>(var_0.b.a, true, true, var_0.a.a)), true == var_0.b.a));
    global0 = array<vec3<u32>, 16>();
    let var_2 = vec4<bool>(true, !var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1858f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1132f * -1054f), _wgslsmith_div_f32(1527f, -163f))))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f * -765f)))), false);
    var var_3 = Struct_2(var_0.b, Struct_1(var_2.x, true, _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), -u_input.a), any(select(select(var_2.zxy, vec3<bool>(false, true, false), var_2.zxw), select(vec3<bool>(var_1, true, false), vec3<bool>(false, false, false), false), true)), var_0.a.e));
    return var_3.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = all(!(!select(!vec2<bool>(false, arg_1.a.d), !vec2<bool>(arg_1.b.a, true), vec2<bool>(arg_1.a.a, arg_1.a.a))));
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.e.x, arg_1.b.e.x, 8435u, 12771u), ~vec4<u32>(arg_1.a.e.x, 0u, arg_2.e.x, arg_1.a.e.x), ~vec4<u32>(26818u, 1u, arg_2.e.x, arg_1.b.e.x))), vec4<u32>(arg_1.a.e.x << (~arg_2.e.x % 32u), max(max(arg_1.b.e.x, arg_1.b.e.x), ~arg_2.e.x), countOneBits(arg_1.b.e.x | arg_2.e.x), ~func_2(vec3<u32>(arg_2.e.x, arg_2.e.x, 1u)).e.x)) ^ ~arg_1.a.e.x;
    let var_2 = vec2<i32>(countOneBits(~(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_1.a.c, 26962i), vec3<i32>(arg_2.c, -9908i, -8550i)) ^ -arg_2.c)), -u_input.a);
    var_0 = !(!(!any(vec4<bool>(arg_1.b.d, true, arg_2.d, arg_1.a.a))));
    global0 = array<vec3<u32>, 16>();
    return vec3<i32>(max(-arg_1.a.c | _wgslsmith_dot_vec2_i32(var_2, var_2), ~(~arg_2.c)), _wgslsmith_mult_i32(max(-34319i, ~(-2147483647i)), select(i32(-1i) * -41029i, 2147483647i, !arg_2.d)), (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.c, arg_2.c, u_input.a, 2147483647i), vec4<i32>(arg_2.c, 8008i, var_2.x, 52621i)) << (abs(arg_1.b.e.x) % 32u)) | _wgslsmith_sub_i32(arg_0.x, 1i)) << (arg_1.b.e.wzw % vec3<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, arg_1.a.b.c, arg_1.a.a.c), firstTrailingBit(vec3<i32>(arg_1.a.b.c, arg_1.a.a.c, arg_1.a.b.c))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-8295i, arg_1.a.a.c, arg_1.a.b.c), vec3<i32>(arg_1.a.a.c, arg_1.a.b.c, -1i), vec3<i32>(2147483647i, 24827i, arg_1.a.a.c)) | select(vec3<i32>(20341i, arg_1.a.b.c, arg_1.a.a.c), vec3<i32>(arg_1.a.b.c, arg_1.a.b.c, -4195i), vec3<bool>(arg_1.a.a.d, arg_1.a.b.b, true))), -(~44811i));
    let var_2 = Struct_3(arg_1.a.a.d);
    let var_3 = -func_4(abs(_wgslsmith_sub_vec2_i32(max(vec2<i32>(0i, arg_1.a.b.c), vec2<i32>(u_input.a, 1i)), vec2<i32>(2147483647i, u_input.a) >> (arg_1.a.a.e.yx % vec2<u32>(32u)))), Struct_2(arg_1.a.a, func_2(vec3<u32>(arg_1.a.b.e.x, 1803u, arg_1.a.b.e.x))), func_2(vec3<u32>(arg_1.a.a.e.x, ~arg_1.a.b.e.x, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(19900u, 16u)], vec3<u32>(96280u, arg_1.a.b.e.x, arg_1.a.b.e.x)))));
    return Struct_1(func_2(arg_1.a.a.e.zwz).a, select(false, any(!(!vec4<bool>(var_2.a, false, false, arg_1.a.a.a))), all(vec3<bool>(any(vec4<bool>(var_2.a, arg_1.a.a.a, true, true)), true, true))), 2147483647i, arg_1.a.a.d, arg_1.a.b.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<f32> {
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    var var_0 = Struct_3(firstLeadingBit(13661i) < (-55000i << (arg_0.e.x % 32u)));
    var var_1 = arg_1.e.zz;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(528f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1293f, -2206f) + _wgslsmith_f_op_f32(f32(-1f) * -701f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-220f, -189f, 288f) * vec3<f32>(-2208f, -595f, -2484f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1617f, 620f, -338f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(911f)), -549f, _wgslsmith_f_op_f32(step(1618f, 1000f))), select(select(vec3<bool>(var_0.a, false, true), vec3<bool>(arg_1.d, arg_0.b, arg_1.b), vec3<bool>(arg_1.a, true, arg_0.a)), vec3<bool>(false, false, false), !vec3<bool>(true, false, arg_1.b)))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1726f)), -746f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -381f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2532f + 330f), _wgslsmith_f_op_f32(f32(-1f) * -689f)))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = ~(select(~(~vec2<u32>(0u, 2912u)), vec2<u32>(_wgslsmith_mult_u32(123219u, 6706u), func_2(global0[_wgslsmith_index_u32(1u, 16u)]).e.x), vec2<bool>(all(vec4<bool>(false, true, true, false)), select(true, false, false))) | firstTrailingBit(~(~vec2<u32>(0u, 4294967295u))));
    var var_1 = true;
    var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~0u, var_0.x), vec2<u32>(var_0.x, var_0.x)), vec2<u32>(1951u, var_0.x)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(10482u << (var_0.x % 32u), ~24644u), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.x, var_0.x), reverseBits(vec2<u32>(56335u, 15263u)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u) >> (vec2<u32>(var_0.x, 41624u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(var_0.x, 4294967295u))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(49299i, -max(-208i, i32(-1i) * -28762i)), arg_1.xz);
    global0 = array<vec3<u32>, 16>();
    return vec4<i32>(_wgslsmith_div_i32(arg_1.x, ~(-arg_1.x)), arg_1.x, func_1(true, Struct_4(Struct_2(Struct_1(true, true, 1i, true, vec4<u32>(4294967295u, 15236u, 1775u, var_0.x)), Struct_1(false, true, 20370i, false, vec4<u32>(var_0.x, 6332u, var_0.x, var_0.x))))).c, -35178i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(241f, 100f, -1502f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2264f, -797f, 1398f))))), _wgslsmith_f_op_vec3_f32(func_5(Struct_1(false, true, 0i, false, vec4<u32>(0u, 37087u, 4294967295u, 0u)), func_1(false, Struct_4(Struct_2(Struct_1(false, true, u_input.a, false, vec4<u32>(50317u, 1u, 8872u, 4294967295u)), Struct_1(true, true, -2147483647i, false, vec4<u32>(80619u, 11767u, 0u, 81549u))))), ~vec2<u32>(4294967295u, 1u)))), vec3<i32>(-24416i, ~u_input.a, _wgslsmith_sub_i32(-2147483647i, -2147483647i & u_input.a))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 49406i, 2147483647i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 46808i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), -1i), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(select(-994f, -1151f, select(false, func_2(select(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], false)).a, u_input.a != (u_input.a >> (23949u % 32u))))));
}

