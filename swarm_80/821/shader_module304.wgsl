struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: u32 = 0u;

var<private> global2: vec3<f32> = vec3<f32>(1797f, -170f, -1594f);

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec3<f32> {
    global0 = array<vec2<f32>, 10>();
    var var_0 = Struct_2(vec3<f32>(443f, -125f, _wgslsmith_f_op_f32(-839f - _wgslsmith_f_op_f32(-global2.x))), Struct_1(!(!select(global3.c, true, false)), global3.a, u_input.b.x <= 61336u, (global3.d >> (u_input.b.x % 32u)) & 11963u, global3.e), _wgslsmith_f_op_f32(-2104f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1049f - 791f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(select(global2.x, -815f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1377f)))));
    global1 = min(select(1u, 4294967295u, global3.a), ~abs(u_input.b.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 980f, -962f)) * vec3<f32>(-1821f, global2.x, var_0.a.x))))), var_0.b, var_0.d.x, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global3.d, 10u)]));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.a)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<f32> {
    global1 = ~global3.d;
    global2 = _wgslsmith_f_op_vec3_f32(func_3());
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1458f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-474f, global2.x)))), 387f));
    let var_0 = u_input.c;
    var var_1 = Struct_1(!(!all(arg_0.yyw)), arg_0.x, false, ~min(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.d, u_input.b.x, 39650u), select(vec3<u32>(u_input.b.x, 61695u, 0u), vec3<u32>(u_input.b.x, global3.d, u_input.b.x), arg_0.zzz)), _wgslsmith_sub_u32(4294967295u, 4294967295u)), countOneBits(global3.e));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 918f, _wgslsmith_f_op_f32(global2.x * global2.x)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 900f, global2.x))))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(true, false, global3.b, global3.c)))), vec3<f32>(_wgslsmith_div_f32(-1924f, _wgslsmith_f_op_f32(global2.x + global2.x)), -1804f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -422f))), select(vec3<bool>(select(true, global3.b, global3.a), global3.c, global3.b), vec3<bool>(all(vec2<bool>(true, global3.a)), any(vec2<bool>(global3.a, true)), !global3.b), firstTrailingBit(global3.e.x) < -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, 712f), vec3<f32>(global2.x, global2.x, global2.x), global3.c))) * vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(min(1243f, 1000f)), _wgslsmith_f_op_f32(global2.x - global2.x))) + _wgslsmith_f_op_vec3_f32(func_2(select(vec4<bool>(global3.c, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, global3.c), false), all(vec2<bool>(true, global3.a))))))));
    global1 = 1u;
    var var_1 = !vec3<bool>(global3.a, all(select(vec2<bool>(global3.a, true), !vec2<bool>(true, global3.b), !global3.b)), 1159f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x));
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b);
    var_2 = vec2<u32>(~1u, reverseBits(~countOneBits(var_2.x)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, 617f, var_0.x)), Struct_1(all(vec3<bool>(any(vec4<bool>(true, false, var_1.x, false)), !var_1.x, global3.a)), true, any(vec4<bool>(true, all(vec3<bool>(false, true, false)), any(vec3<bool>(var_1.x, true, global3.a)), all(vec2<bool>(var_1.x, false)))), 0u, -global3.e), -289f, global0[_wgslsmith_index_u32(~12020u, 10u)]);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = arg_0.d.x;
    global1 = 47396u;
    var var_1 = all(select(vec4<bool>(!global3.c, arg_0.b.b && true, true, arg_0.b.c), vec4<bool>(true, !global3.c, false, true), true)) | (countOneBits(u_input.b.x) >= u_input.b.x);
    var var_2 = vec4<i32>(u_input.c, arg_0.b.e.x, -29460i, select(_wgslsmith_mult_i32(global3.e.x, -34007i), global3.e.x, false));
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.a.x, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_0, 626f, false)), 592f, -1403f))));
    return ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b.d, global3.d, 6995u, 22774u)), ~vec4<u32>(global3.d, 13324u, global3.d, arg_0.b.d)), _wgslsmith_mod_u32(46209u, 17673u)), select(~arg_0.b.d, 44337u, any(vec4<bool>(global3.a, global3.a, false, false))) | arg_0.b.d, global3.d, reverseBits(~36157u >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, 1u, global3.d, global3.d) << ((vec4<u32>(global3.d, 1u, global3.d, u_input.b.x) >> (vec4<u32>(1u, global3.d, global3.d, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~func_4(func_1())) | (min(u_input.b.x, 42041u) & 51773u);
    global0 = array<vec2<f32>, 10>();
    let var_1 = select(!select(!select(vec4<bool>(global3.c, true, global3.b, global3.a), vec4<bool>(true, global3.b, false, global3.b), true), vec4<bool>(u_input.b.x <= 4294967295u, global3.b, global3.a && true, global3.a), false), !vec4<bool>(false, global3.a, all(select(vec3<bool>(true, global3.c, true), vec3<bool>(false, true, global3.c), global3.b)), global3.c), global3.b);
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1588f), -504f, _wgslsmith_f_op_vec3_f32(func_3()).x) + vec3<f32>(-1166f, -141f, _wgslsmith_f_op_vec3_f32(func_2(select(vec4<bool>(global3.b, global3.a, var_1.x, true), vec4<bool>(false, global3.b, true, var_2.b.a), select(vec4<bool>(global3.b, var_2.b.b, var_1.x, false), vec4<bool>(global3.a, var_2.b.b, false, var_2.b.a), var_1)))).x));
    var var_4 = 71930u & _wgslsmith_dot_vec3_u32(~(~vec3<u32>(13760u, u_input.b.x, 1u)), abs(vec3<u32>(0u, var_2.b.d, global3.d)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(var_2.b.d, 20748u, 14568u), ~vec3<u32>(u_input.b.x, 33910u, 18378u)));
    let var_5 = var_2.b.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(max(vec4<i32>(global3.e.x, u_input.c, 67040i, var_2.b.e.x), vec4<i32>(global3.e.x, global3.e.x, global3.e.x, u_input.c)), vec4<i32>(var_2.b.e.x, -8608i, u_input.a, 1i)), firstLeadingBit(~(vec4<i32>(global3.e.x, var_2.b.e.x, -1i, 944i) << (vec4<u32>(61818u, u_input.b.x, global3.d, var_2.b.d) % vec4<u32>(32u))))), -(~(-1i)) >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.b), abs(1u)) % 32u), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, u_input.c), select(vec2<i32>(1i, -1i), var_2.b.e.zy, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(global3.e.x, u_input.a) & vec2<i32>(2147483647i, global3.e.x), max(vec2<i32>(global3.e.x, var_2.b.e.x), var_2.b.e.yy))), firstTrailingBit(firstLeadingBit(global3.e.zz) >> (countOneBits(vec2<u32>(global3.d, 4294967295u)) % vec2<u32>(32u)))), _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b.x, 33965u, u_input.b.x)), ~vec3<u32>(~1u, 1u, _wgslsmith_add_u32(u_input.b.x, global3.d))));
}

