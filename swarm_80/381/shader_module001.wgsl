struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<f32>(-119f, -1058f), true, false), Struct_2(vec2<f32>(551f, -657f), true, true), Struct_2(vec2<f32>(-618f, -302f), true, false), Struct_2(vec2<f32>(972f, -171f), false, true), Struct_2(vec2<f32>(-621f, 1070f), true, true), Struct_2(vec2<f32>(-752f, 1000f), false, true), Struct_2(vec2<f32>(1326f, -864f), true, false), Struct_2(vec2<f32>(461f, -1031f), false, false), Struct_2(vec2<f32>(303f, 883f), false, false), Struct_2(vec2<f32>(-1413f, -117f), true, true), Struct_2(vec2<f32>(182f, -2121f), false, false), Struct_2(vec2<f32>(-1190f, -1463f), false, true), Struct_2(vec2<f32>(-1109f, 3721f), false, false));

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-891f))), 294f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x)))));
    let var_1 = countOneBits(select(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 31930u, 0u, 1u), vec4<u32>(3516u, u_input.a, 10672u, 34751u)), select(vec4<u32>(u_input.c, u_input.a, u_input.c, 15881u), vec4<u32>(63725u, 8592u, 1u, u_input.c), vec4<bool>(global1.c, false, global1.b, false))), u_input.c, ~1u, u_input.c), ~(~vec4<u32>(22331u, 1u, 0u, u_input.c) | firstTrailingBit(vec4<u32>(u_input.a, u_input.c, 24210u, 16056u))), true));
    var var_2 = max(_wgslsmith_mult_u32(~(~1u), _wgslsmith_dot_vec4_u32(abs(var_1), ~firstTrailingBit(vec4<u32>(4294967295u, 0u, var_1.x, 17944u)))), u_input.a);
    var var_3 = ~((~firstTrailingBit(vec3<u32>(18683u, var_1.x, 60174u)) & ~var_1.yxx) >> (vec3<u32>(select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(7266u, u_input.c, 47943u), var_1.yyx), true), 14708u, 11202u & abs(u_input.c)) % vec3<u32>(32u)));
    let var_4 = vec4<bool>(!global1.b | true, true, firstLeadingBit(-17519i) != _wgslsmith_mod_i32(-u_input.b.x, ~arg_0.b.x), all(!select(vec4<bool>(true, true, global1.b, global1.b), select(vec4<bool>(true, global1.c, global1.b, global1.b), vec4<bool>(true, true, false, true), global1.b), vec4<bool>(true, true, true, true))));
    return 1000f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    global0 = array<Struct_2, 13>();
    let var_0 = Struct_1(vec2<f32>(-692f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(322f, -590f, false))) + 357f)), _wgslsmith_add_vec3_i32(abs(arg_3), _wgslsmith_mult_vec3_i32(vec3<i32>(~(-1i), _wgslsmith_sub_i32(arg_3.x, u_input.b.x), ~2147483647i), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, 0i, -27117i)), u_input.b.xxz << (vec3<u32>(0u, 12486u, 32914u) % vec3<u32>(32u))))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.a), all(vec3<bool>((true & global1.b) == global1.b, true, true)), true);
    return (!global1.b & (all(select(vec4<bool>(false, arg_2.c, false, arg_2.c), vec4<bool>(global1.c, arg_2.c, arg_2.b, arg_2.b), vec4<bool>(true, global1.c, true, false))) != global1.c)) || true;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -1007f)))), true, func_4(1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.x, 211f, global1.a.x, -1322f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(global1.a.x, 929f), u_input.b.zzx), u_input.b.x, vec2<f32>(-519f, global1.a.x))), _wgslsmith_f_op_f32(min(-721f, global1.a.x)), -1000f, _wgslsmith_f_op_f32(-1927f + 982f))), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) + vec2<f32>(-2232f, global1.a.x)))), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-944f, -340f), vec3<i32>(0i, u_input.b.x, -50454i)), u_input.b.x, vec2<f32>(global1.a.x, global1.a.x))) > -676f, all(select(vec3<bool>(false, arg_1, false), arg_0.yzw, true))), _wgslsmith_clamp_vec3_i32(select(u_input.b.xwx, firstTrailingBit(u_input.b.xxw), true), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), ~max(u_input.b.zxw, u_input.b.ywy))));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(58243u, 13u)];
    let var_1 = vec4<f32>(895f, _wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x))));
    var var_2 = ~u_input.a ^ ~4294967295u;
    var var_3 = func_2(!(!(!(!vec4<bool>(global1.b, true, var_0.c, var_0.b)))), !(u_input.c > 0u));
    var_0 = func_2(!(!select(vec4<bool>(true, global1.b, true, var_3.b), !vec4<bool>(false, global1.c, true, var_3.c), var_0.b)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1702u, u_input.a, u_input.a | u_input.c), ~4294967295u) != ~_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(9213u, u_input.a, u_input.c)));
    return vec4<u32>(u_input.a, _wgslsmith_mod_u32(0u, abs(7485u)), u_input.a, firstLeadingBit(_wgslsmith_mod_u32(reverseBits(~57421u), 12410u)));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 13>();
    global1 = func_2(vec4<bool>(global1.c & all(!vec3<bool>(global1.b, global1.c, global1.c)), global1.b, global1.c, global1.b), all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(global1.b, global1.b, false)))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, vec3<i32>(u_input.b.x, -2147483647i, arg_0)), arg_0, vec2<f32>(1000f, global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))))), true, global1.c);
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yyz, _wgslsmith_mult_vec3_i32(select(u_input.b.zxz, u_input.b.yxz, func_4(-1428f, vec4<f32>(481f, global1.a.x, global1.a.x, 890f), global0[_wgslsmith_index_u32(107937u, 13u)], vec3<i32>(arg_0, u_input.b.x, arg_0))), abs(u_input.b.xxy) & vec3<i32>(-2147483647i, arg_0, arg_0))), vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.xzz, vec3<i32>(u_input.b.x, -29633i, u_input.b.x)), max(vec3<i32>(1i, arg_0, 1i), u_input.b.yxy))), arg_0, _wgslsmith_clamp_i32(~reverseBits(24846i), -31632i, u_input.b.x)));
    var var_1 = Struct_1(func_2(!vec4<bool>(false, !global1.c, global1.c, -377f <= global1.a.x), !(func_2(vec4<bool>(global1.b, false, true, global1.b), global1.c).c & true)).a, abs(_wgslsmith_mod_vec3_i32(u_input.b.zyy, u_input.b.zxz)));
    return Struct_1(var_1.a, ~u_input.b.xzy);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_5(~countOneBits(-u_input.b.x), countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, 1u, 44695u)), ~vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u)))).a.x - _wgslsmith_f_op_f32(sign(arg_0.a.x)));
    global0 = array<Struct_2, 13>();
    let var_1 = vec3<bool>(arg_2.c, func_4(_wgslsmith_f_op_f32(floor(arg_2.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(arg_0.a.x - 141f), arg_0.a.x, func_2(select(vec4<bool>(global1.b, global1.c, arg_2.b, false), vec4<bool>(global1.b, arg_2.b, global1.c, global1.c), vec4<bool>(global1.c, global1.b, global1.c, false)), true).a.x), Struct_2(_wgslsmith_f_op_vec2_f32(arg_2.a + vec2<f32>(var_0, arg_0.a.x)), true, select(func_4(-271f, vec4<f32>(1000f, 1167f, arg_2.a.x, -598f), arg_2, vec3<i32>(-78849i, arg_0.b.x, -7237i)), any(vec2<bool>(false, arg_2.b)), false | arg_2.b)), u_input.b.xyw), !func_2(!vec4<bool>(false, true, global1.b, arg_2.c), arg_2.b & true).b);
    var var_2 = all(var_1.zx);
    let var_3 = u_input.c;
    return Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(global1.a.x - arg_0.a.x)), arg_2.a.x))), u_input.b.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(u_input.a, 13u)];
    let var_0 = _wgslsmith_f_op_f32(-323f + -786f);
    let var_1 = func_6(func_5(-1i, func_1(Struct_1(global1.a, ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), global1.a.x, global0[_wgslsmith_index_u32(62927u, 13u)]);
    let var_2 = var_1;
    let var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x & var_1.b.x, ~24396i, ~2147483647i, i32(-1i) * -39127i), select(vec4<i32>(-5176i, u_input.b.x, var_2.b.x, 2147483647i), select(u_input.b, vec4<i32>(var_2.b.x, 1i, var_2.b.x, var_1.b.x), vec4<bool>(global1.b, global1.c, true, global1.c)), !global1.c)) >= _wgslsmith_dot_vec3_i32(var_1.b, var_1.b << (abs(~vec3<u32>(0u, u_input.a, 0u)) % vec3<u32>(32u)));
    let var_4 = !(!(!(!var_3)));
    let var_5 = _wgslsmith_f_op_f32(abs(-231f));
    let var_6 = _wgslsmith_f_op_f32(func_3(func_5(12246i, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(11391u, 6288u), vec2<u32>(u_input.c, u_input.a)), u_input.c, ~u_input.a, ~u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(38619u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.c, 82238u, 0u, u_input.c) << (vec4<u32>(0u, 4294967295u, u_input.c, u_input.a) % vec4<u32>(32u))))), u_input.b.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(~(-563i), min(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))).a * global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) * _wgslsmith_f_op_f32(620f - var_1.a.x)), var_0)), abs(firstLeadingBit(~(~vec3<u32>(u_input.c, 54950u, 38012u)))));
}

