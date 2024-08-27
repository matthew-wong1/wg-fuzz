struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(4294967295u), Struct_3(1u), Struct_3(16004u), Struct_3(4294967295u), Struct_3(1u), Struct_3(1u), Struct_3(1u), Struct_3(1u), Struct_3(0u), Struct_3(1u), Struct_3(40712u), Struct_3(65694u), Struct_3(1u), Struct_3(4294967295u), Struct_3(8854u), Struct_3(4294967295u), Struct_3(1u), Struct_3(1367u), Struct_3(10946u), Struct_3(36865u), Struct_3(1u), Struct_3(101546u), Struct_3(0u), Struct_3(22333u), Struct_3(0u), Struct_3(69431u), Struct_3(21196u), Struct_3(62125u), Struct_3(1u), Struct_3(68957u));

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(1u, 4294967295u, 3980u), vec3<u32>(9194u, 0u, 4294967295u), vec3<u32>(60643u, 4294967295u, 114906u), vec3<u32>(0u, 0u, 0u), vec3<u32>(7225u, 4294967295u, 103010u), vec3<u32>(1u, 0u, 14169u), vec3<u32>(34650u, 0u, 4294967295u), vec3<u32>(21598u, 41431u, 0u), vec3<u32>(40263u, 4294967295u, 0u), vec3<u32>(132480u, 17659u, 17746u), vec3<u32>(1u, 16215u, 81661u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(5290u, 14683u, 24646u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(59680u, 13631u, 31852u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(16314u, 0u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), false, !all(vec4<bool>(true, true, true, true)));
    global2 = array<vec3<u32>, 17>();
    return 1757u;
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = func_3();
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1108f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-641f - 697f), _wgslsmith_f_op_f32(-1206f + 640f))))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(400f, -230f), _wgslsmith_div_f32(-561f, 1179f), _wgslsmith_f_op_f32(1673f - 1000f), -963f), vec4<f32>(-297f, _wgslsmith_f_op_f32(sign(-969f)), -263f, _wgslsmith_f_op_f32(sign(-1115f))))), u_input.a.x);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x + 1071f)))), var_1.a.x)), -1000f);
    global1 = var_1.a.x;
    let var_2 = _wgslsmith_add_i32(countOneBits(~(-15630i)), -1i);
    return Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x - -770f))), _wgslsmith_f_op_f32(var_1.b.a.x - 190f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, var_1.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.x, -355f), vec2<f32>(-1271f, 147f))))))), true)), var_1.b, max(-(~1i), 1i));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4) -> i32 {
    let var_0 = reverseBits(~u_input.b.x);
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(~1u, countOneBits(var_0))), vec2<u32>(_wgslsmith_div_u32(~25526u, 1u), 0u), u_input.b.zz), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~40864u, var_0 | 4294967295u), var_0), 0u));
    var var_2 = arg_0;
    let var_3 = arg_1.x;
    var var_4 = 0i;
    return -arg_0 & firstTrailingBit(_wgslsmith_clamp_i32(arg_2.c, 22383i, ~arg_2.c));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(func_2(~_wgslsmith_mult_i32(countOneBits(-2147483647i), 1i)).a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1112f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2002f)) - -1380f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-648f * -1608f), 1f)))));
    global1 = _wgslsmith_f_op_f32(-func_2(arg_0).a.x);
    var var_0 = func_2(18526i).b;
    var var_1 = func_2(select(-15694i, -1i, all(vec3<bool>(true, false, any(vec3<bool>(false, true, false))))));
    return func_2(-1i);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> bool {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-482f * 400f), 1f))), -1168f));
    var var_0 = func_5(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, func_4(u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(663f, -1120f), vec2<f32>(-930f, 615f)), func_2(u_input.a.x))), ~2147483647i ^ _wgslsmith_mod_i32(1i << (arg_0.a.x % 32u), arg_2)), Struct_2(vec4<u32>(~max(arg_0.a.x, u_input.b.x), select(~4294967295u, arg_0.a.x, arg_0.a.x != 4294967295u), func_3(), arg_0.a.x)));
    let var_1 = abs(countOneBits(abs(vec3<u32>(4294967295u, ~u_input.b.x, arg_0.a.x & 28335u))));
    var var_2 = Struct_3(_wgslsmith_sub_u32(arg_0.a.x, 4294967295u));
    var var_3 = Struct_2(_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x | 1u, 1u, var_2.a, _wgslsmith_mod_u32(1u, u_input.b.x)))));
    return all(vec4<bool>(arg_1, true, arg_1, !(!arg_1))) | arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_1(Struct_2(select(u_input.b, u_input.b, vec4<bool>(true, true, true, false))), true, 2147483647i) & any(vec2<bool>(true, all(vec3<bool>(false, false, true)))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(528f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)))), 649f));
    let var_1 = _wgslsmith_sub_vec2_u32(~max(_wgslsmith_mult_vec2_u32(vec2<u32>(104417u, 42996u) | vec2<u32>(88356u, u_input.b.x), vec2<u32>(19161u, u_input.b.x)), select(vec2<u32>(1u, u_input.b.x), u_input.b.zz, vec2<bool>(false, false))), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(reverseBits(vec2<u32>(u_input.b.x, 10952u))))));
    let var_2 = Struct_2(select(u_input.b, u_input.b, var_0) & (u_input.b & vec4<u32>(var_1.x, ~u_input.b.x, 28945u, select(var_1.x, 62718u, false))));
    let var_3 = Struct_2(~_wgslsmith_mod_vec4_u32(~var_2.a, abs(max(vec4<u32>(var_2.a.x, 0u, 37995u, var_2.a.x), u_input.b))));
    let var_4 = func_2(~func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.zwx, u_input.c.zyx, u_input.c.xxw), vec3<i32>(u_input.c.x, 2147483647i, 63446i)), var_3).c);
    var var_5 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, u_input.b.x) >> (~u_input.b.xwx % vec3<u32>(32u)), ~(~_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], vec3<u32>(u_input.b.x, 4294967295u, var_1.x)))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(select(~countOneBits(func_3()), _wgslsmith_clamp_u32(56232u, ~select(var_2.a.x, var_2.a.x, var_0), ~(~u_input.b.x)), !var_0), u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(min(-1096f, _wgslsmith_f_op_f32(-606f - _wgslsmith_f_op_f32(-var_4.b.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) * _wgslsmith_f_op_f32(trunc(2383f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.a.x, _wgslsmith_f_op_f32(-var_4.a.x))))), var_4.b.a.x);
}

