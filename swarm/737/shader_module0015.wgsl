struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

var<private> global0: array<vec3<f32>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec2<i32> {
    global0 = array<vec3<f32>, 10>();
    let var_0 = Struct_2(Struct_1(!all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 10u)]) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, 1657f, 876f)))), global0[_wgslsmith_index_u32(u_input.a, 10u)])), vec2<i32>(-(~(-1i)), countOneBits(min(1i, 0i))), _wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(49292i, 2147483647i, -1i, -43363i))), vec4<i32>(1i, 1i, 1i, 1i)), true), abs(firstTrailingBit(-2147483647i)), Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(22339u, 10u)])))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-34600i, -36035i) << (vec2<u32>(8126u, u_input.a) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), -vec2<i32>(1i, 1i)), _wgslsmith_mult_i32(~(~(-1i)), 2147483647i << ((u_input.b.x & u_input.b.x) % 32u)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)))), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(0u, 10u)] * global0[_wgslsmith_index_u32(16656u, 10u)]) * global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), abs(vec2<i32>(1i, 1i)), -(~13801i) >> (0u % 32u), any(vec2<bool>(true, true)) && ((u_input.a << (0u % 32u)) <= 42000u)));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1, vec2<f32>(1392f, -153f))));
    let var_3 = ~(-(-vec4<i32>(var_0.d.c.x, -3958i, var_1.d.c.x, 1i) >> (vec4<u32>(9950u, 48718u, u_input.a, u_input.a) % vec4<u32>(32u)))) ^ vec4<i32>(abs(-1i), -3289i, var_1.c.d ^ 206i, ~var_0.a.d & _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.b, 1i), firstLeadingBit(var_0.d.c.x)));
    return select(min(var_0.a.c, -(-vec2<i32>(var_1.a.c.x, var_3.x) | var_0.d.c)), vec2<i32>(~firstLeadingBit(0i), min(_wgslsmith_add_i32(1i, -22150i ^ var_3.x), min(var_0.c.c.x, var_3.x))), true);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b.x - arg_2.x) - _wgslsmith_f_op_f32(-arg_3.c.b.x)) != arg_3.b.x) & arg_3.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~(~u_input.b.x), 10u)])), _wgslsmith_clamp_vec2_i32(arg_3.a.a.c, -(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_1.d.c.x), vec2<i32>(arg_1.b, arg_3.a.d.d))), ~arg_3.c.c), _wgslsmith_dot_vec2_i32(-max(func_3(arg_1.a.b.x, vec2<f32>(648f, arg_1.d.b.x)), ~vec2<i32>(2147483647i, -2763i)), -vec2<i32>(-5659i, arg_1.c.c.x)), true);
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a) & 28132u, 81958u), u_input.b.x, 2962u);
    let var_2 = arg_1.c.b.xz;
    return arg_3.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = 19333i >= -(_wgslsmith_div_i32(arg_0.d.d << (49041u % 32u), arg_1 ^ arg_0.d.c.x) | (max(arg_1, 0i) & _wgslsmith_mod_i32(0i, arg_1)));
    global0 = array<vec3<f32>, 10>();
    var_0 = all(vec2<bool>(arg_0.d.a || any(vec3<bool>(true, arg_3.x, arg_3.x)), any(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(arg_2))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_0.c.b.x)))), _wgslsmith_f_op_f32(arg_0.a.b.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_2)))))))));
    var_1 = _wgslsmith_f_op_f32(-func_2(~(~(~arg_1)), arg_0, vec2<f32>(arg_0.c.b.x, 228f), Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-737f, -1000f, 1000f, arg_0.a.b.x) * vec4<f32>(754f, arg_2, arg_2, arg_0.d.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, -712f, arg_2, arg_2))), Struct_1(true, vec3<f32>(1269f, -1000f, arg_2), vec2<i32>(arg_0.b, 2147483647i), -51055i, any(vec4<bool>(arg_3.x, false, false, arg_3.x))))).b.x);
    return arg_0.c;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(func_4(Struct_2(func_2(-8046i, Struct_2(Struct_1(true, vec3<f32>(arg_0, arg_0, -798f), vec2<i32>(-1i, 1i), -2147483647i, true), 1i, Struct_1(true, vec3<f32>(arg_0, arg_0, 905f), vec2<i32>(-2147483647i, 77931i), -12979i, false), Struct_1(true, vec3<f32>(arg_0, 535f, -728f), vec2<i32>(1i, 51277i), 0i, true)), vec2<f32>(arg_0, arg_0), Struct_3(Struct_2(Struct_1(true, vec3<f32>(-433f, arg_0, arg_0), vec2<i32>(23552i, 22991i), 29664i, false), 1i, Struct_1(true, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(-2147483647i, 628i), 0i, false), Struct_1(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(0i, 5610i), 40072i, false)), vec4<f32>(1804f, arg_0, 752f, 1793f), Struct_1(true, vec3<f32>(arg_0, 1471f, 262f), vec2<i32>(-2147483647i, -1i), 8850i, true))), 1i, func_2(0i, Struct_2(Struct_1(true, vec3<f32>(-843f, arg_0, 578f), vec2<i32>(-2147483647i, 4555i), 7951i, true), -1i, Struct_1(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], vec2<i32>(-16994i, -13942i), 7913i, false), Struct_1(false, vec3<f32>(arg_0, arg_0, -1147f), vec2<i32>(30551i, 1376i), 2147483647i, true)), vec2<f32>(arg_0, 525f), Struct_3(Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<i32>(18300i, -13096i), 11858i, false), 20421i, Struct_1(false, vec3<f32>(-659f, arg_0, arg_0), vec2<i32>(17565i, 10795i), 2147483647i, true), Struct_1(false, vec3<f32>(arg_0, arg_0, arg_0), vec2<i32>(-2147483647i, -1i), 1i, false)), vec4<f32>(-882f, 267f, arg_0, 200f), Struct_1(false, vec3<f32>(arg_0, arg_0, -680f), vec2<i32>(2147483647i, 36335i), -2147483647i, false))), Struct_1(true, vec3<f32>(-1219f, arg_0, -1272f), vec2<i32>(0i, -2147483647i), -1i, false)), -10773i, _wgslsmith_f_op_f32(1209f * func_2(2147483647i, Struct_2(Struct_1(true, vec3<f32>(-763f, 1272f, 2085f), vec2<i32>(-1i, -54467i), 0i, false), 1i, Struct_1(false, vec3<f32>(-2258f, 1120f, arg_0), vec2<i32>(-1i, 21723i), -3517i, true), Struct_1(true, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(2147483647i, 0i), -51736i, false)), vec2<f32>(-1588f, arg_0), Struct_3(Struct_2(Struct_1(true, global0[_wgslsmith_index_u32(63585u, 10u)], vec2<i32>(2147483647i, 1i), 2698i, false), -21509i, Struct_1(false, vec3<f32>(arg_0, arg_0, arg_0), vec2<i32>(10049i, -26635i), 2147483647i, false), Struct_1(true, global0[_wgslsmith_index_u32(1u, 10u)], vec2<i32>(0i, 2147483647i), 1i, true)), vec4<f32>(2663f, -1499f, -238f, 2135f), Struct_1(false, vec3<f32>(arg_0, arg_0, -2175f), vec2<i32>(-26301i, -30114i), -1i, true))).b.x), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), _wgslsmith_sub_i32(abs(func_3(arg_0, vec2<f32>(661f, arg_0)).x), -1i), Struct_1(false, vec3<f32>(func_4(Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<i32>(2147483647i, 1i), 0i, false), -19013i, Struct_1(false, vec3<f32>(223f, -644f, arg_0), vec2<i32>(25175i, -2147483647i), -1i, true), Struct_1(true, global0[_wgslsmith_index_u32(12371u, 10u)], vec2<i32>(4843i, -23488i), 2147483647i, true)), 2147483647i, 1139f, vec3<bool>(true, false, false)).b.x, -1563f, _wgslsmith_f_op_f32(-arg_0)), vec2<i32>(1i, 1i), 1i, arg_0 >= _wgslsmith_f_op_f32(sign(715f))), Struct_1(!all(vec3<bool>(true, true, false)), global0[_wgslsmith_index_u32(37707u, 10u)], ~vec2<i32>(1i, 1i), _wgslsmith_mod_i32(abs(2147483647i), -1i), true & all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, -396f, arg_0, -385f) + vec4<f32>(1295f, -1000f, -1457f, 978f)))) + vec4<f32>(arg_0, 807f, _wgslsmith_f_op_f32(-arg_0), arg_0)))), Struct_1(any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(50363u, 10u)] * _wgslsmith_f_op_vec3_f32(vec3<f32>(-525f, arg_0, -606f) + global0[_wgslsmith_index_u32(~u_input.b.x, 10u)])), ~firstLeadingBit(-vec2<i32>(-2147483647i, 2147483647i)), ~(-2147483647i), func_4(Struct_2(func_4(Struct_2(Struct_1(false, vec3<f32>(arg_0, arg_0, arg_0), vec2<i32>(1i, 1i), 0i, true), -44874i, Struct_1(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(9372i, 0i), -9332i, false), Struct_1(true, vec3<f32>(arg_0, arg_0, arg_0), vec2<i32>(2147483647i, -20123i), 2147483647i, false)), -31749i, -853f, vec3<bool>(true, false, true)), _wgslsmith_div_i32(-17972i, 18607i), Struct_1(true, vec3<f32>(arg_0, arg_0, arg_0), vec2<i32>(-1i, 0i), 0i, true), func_2(2147483647i, Struct_2(Struct_1(false, vec3<f32>(arg_0, 1000f, -187f), vec2<i32>(0i, -39089i), 2147483647i, true), 9035i, Struct_1(true, global0[_wgslsmith_index_u32(43107u, 10u)], vec2<i32>(0i, -34496i), -54689i, false), Struct_1(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], vec2<i32>(-54482i, -1i), -2147483647i, true)), vec2<f32>(2707f, 1443f), Struct_3(Struct_2(Struct_1(true, vec3<f32>(arg_0, -1057f, -1396f), vec2<i32>(-44312i, -1i), 1i, false), 0i, Struct_1(true, global0[_wgslsmith_index_u32(49841u, 10u)], vec2<i32>(-2147483647i, 36379i), 92085i, true), Struct_1(false, vec3<f32>(arg_0, 950f, arg_0), vec2<i32>(21050i, 1860i), 3282i, false)), vec4<f32>(823f, arg_0, -1723f, arg_0), Struct_1(false, vec3<f32>(arg_0, arg_0, 721f), vec2<i32>(0i, -4293i), -3993i, true)))), i32(-1i) * -12708i, arg_0, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)).a));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(var_0.b)))))), var_0.c);
    var var_1 = var_0.c.e;
    let var_2 = u_input.b.x;
    let var_3 = func_2(var_0.a.c.d, var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -868f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b.xx))))), Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1315f, arg_0, -233f, 309f), var_0.b)))), var_0.a.c));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_3.b.x), -685f, -1128f);
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = vec3<u32>(0u, firstLeadingBit(47557u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a >> (u_input.a % 32u), reverseBits(41204u), firstLeadingBit(57448u)), max(vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(12257u, u_input.a, u_input.b.x, 1u), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u)))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a, 10042u), 70806u >> (1u % 32u), ~u_input.a), vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_mult_u32(1u, 61979u)))));
    var_0 = abs(u_input.b);
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    return Struct_3(Struct_2(func_2(~(-27453i), Struct_2(Struct_1(false, vec3<f32>(-1000f, -705f, 146f), vec2<i32>(66252i, -6486i), -2147483647i, false), firstLeadingBit(0i), Struct_1(false, vec3<f32>(arg_0.x, 699f, 584f), vec2<i32>(0i, 0i), -23983i, true), func_4(Struct_2(Struct_1(false, vec3<f32>(1116f, arg_0.x, arg_0.x), vec2<i32>(-2147483647i, 1i), -87719i, true), -1i, Struct_1(false, vec3<f32>(1265f, arg_0.x, arg_0.x), vec2<i32>(-2147483647i, -5691i), 2147483647i, true), Struct_1(true, global0[_wgslsmith_index_u32(50502u, 10u)], vec2<i32>(2014i, 22006i), 1i, false)), -5585i, -1741f, vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(trunc(-430f)))).zz, Struct_3(Struct_2(Struct_1(false, arg_0, vec2<i32>(-50602i, -1i), 2817i, false), 1i, Struct_1(true, vec3<f32>(arg_0.x, -854f, -737f), vec2<i32>(71064i, 20419i), -51380i, false), Struct_1(true, arg_0, vec2<i32>(-29080i, 30360i), -2147483647i, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, arg_0.x, arg_0.x, -665f)), Struct_1(false, global0[_wgslsmith_index_u32(1u, 10u)], vec2<i32>(12228i, 1i), -66024i, true))), ~1i, Struct_1(select(true, true, any(vec3<bool>(true, true, true))), arg_0, vec2<i32>(~6142i, select(4523i, -49711i, false)), -37461i, all(vec3<bool>(false, true, false)) | true), Struct_1(false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0, global0[_wgslsmith_index_u32(53466u, 10u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(1346f, arg_0.x, arg_0.x) + vec3<f32>(795f, -1260f, arg_0.x)), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 69113i), vec2<i32>(32505i, -38615i)), vec2<i32>(30601i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 15196i), vec2<i32>(-1i, -2147483647i), vec2<i32>(-1i, 2147483647i))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(9705i, -1i), 1i, 0i), !any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-794f, -916f, arg_0.x, -618f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1039f, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, -928f, arg_0.x, -414f))), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, -1245f, -620f, -105f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-642f, arg_0.x, -293f, -604f), vec4<f32>(arg_0.x, arg_0.x, 1253f, 889f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1645f, -1000f, arg_0.x, -320f) - vec4<f32>(arg_0.x, -1054f, arg_0.x, -715f)), vec4<bool>(true, false, false, false)))))), func_2(13341i, Struct_2(func_2(2147483647i, Struct_2(Struct_1(false, arg_0, vec2<i32>(68237i, 1i), 47892i, false), 3146i, Struct_1(true, arg_0, vec2<i32>(2147483647i, 2147483647i), -1i, false), Struct_1(false, vec3<f32>(1325f, arg_0.x, 384f), vec2<i32>(1i, 0i), -1i, true)), vec2<f32>(-920f, 205f), Struct_3(Struct_2(Struct_1(true, vec3<f32>(arg_0.x, 641f, arg_0.x), vec2<i32>(-5610i, -45121i), 0i, false), 0i, Struct_1(false, global0[_wgslsmith_index_u32(var_0.x, 10u)], vec2<i32>(2147483647i, -40444i), 11215i, false), Struct_1(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(2147483647i, -9496i), 8025i, false)), vec4<f32>(-473f, -1127f, arg_0.x, 1131f), Struct_1(false, global0[_wgslsmith_index_u32(26625u, 10u)], vec2<i32>(7806i, 27329i), 2147483647i, false))), 1i, Struct_1(true, func_2(-15612i, Struct_2(Struct_1(true, vec3<f32>(852f, 1095f, 641f), vec2<i32>(81828i, 2147483647i), 13201i, true), 0i, Struct_1(true, arg_0, vec2<i32>(-1181i, 2147483647i), 14215i, false), Struct_1(false, arg_0, vec2<i32>(43016i, -2147483647i), 2147483647i, false)), vec2<f32>(164f, arg_0.x), Struct_3(Struct_2(Struct_1(true, vec3<f32>(-510f, arg_0.x, arg_0.x), vec2<i32>(-42720i, 1i), -13721i, false), -2147483647i, Struct_1(true, vec3<f32>(-1000f, 376f, arg_0.x), vec2<i32>(0i, -19581i), 22957i, false), Struct_1(true, global0[_wgslsmith_index_u32(9351u, 10u)], vec2<i32>(-22390i, 2147483647i), 17802i, false)), vec4<f32>(416f, -1000f, arg_0.x, arg_0.x), Struct_1(true, arg_0, vec2<i32>(17813i, 2147483647i), 0i, false))).b, vec2<i32>(19776i, 0i), func_2(1i, Struct_2(Struct_1(false, vec3<f32>(485f, -334f, arg_0.x), vec2<i32>(4213i, -274i), 54648i, true), 2147483647i, Struct_1(true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<i32>(-2147483647i, 1i), -1i, false), Struct_1(false, vec3<f32>(-1307f, arg_0.x, arg_0.x), vec2<i32>(-9431i, 23488i), -34482i, false)), arg_0.zy, Struct_3(Struct_2(Struct_1(true, arg_0, vec2<i32>(-14943i, 15021i), 1i, false), -2147483647i, Struct_1(true, global0[_wgslsmith_index_u32(var_0.x, 10u)], vec2<i32>(8504i, -18775i), 25681i, true), Struct_1(true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<i32>(-30543i, -5867i), 10654i, true)), vec4<f32>(-1659f, 1786f, arg_0.x, 1354f), Struct_1(true, vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec2<i32>(19666i, 18746i), 2147483647i, true))).d, true), Struct_1(all(vec3<bool>(true, false, true)), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec2<i32>(1i, 1i), ~(-55836i), true)), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(2579f - arg_0.x)))).xx, Struct_3(Struct_2(Struct_1(false, arg_0, vec2<i32>(2147483647i, 26577i), -43827i, false), select(0i, 1842i, true), func_2(-3984i, Struct_2(Struct_1(true, arg_0, vec2<i32>(1i, 0i), 0i, true), -1i, Struct_1(true, global0[_wgslsmith_index_u32(61500u, 10u)], vec2<i32>(-1i, 2147483647i), -26025i, true), Struct_1(false, arg_0, vec2<i32>(3327i, -35980i), -1i, false)), vec2<f32>(arg_0.x, 591f), Struct_3(Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(var_0.x, 10u)], vec2<i32>(-29768i, 27785i), -1i, true), 14157i, Struct_1(true, vec3<f32>(1258f, arg_0.x, -859f), vec2<i32>(-33140i, -1i), 0i, false), Struct_1(true, vec3<f32>(arg_0.x, arg_0.x, 1000f), vec2<i32>(-33781i, 1i), 3687i, true)), vec4<f32>(1000f, 1177f, arg_0.x, -507f), Struct_1(false, vec3<f32>(arg_0.x, arg_0.x, -257f), vec2<i32>(1i, -33584i), 0i, true))), func_4(Struct_2(Struct_1(true, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(2147483647i, 2147483647i), 43848i, false), -2147483647i, Struct_1(true, vec3<f32>(1599f, -1000f, -224f), vec2<i32>(-1i, -2147483647i), -43704i, false), Struct_1(false, vec3<f32>(610f, arg_0.x, arg_0.x), vec2<i32>(20756i, 5023i), -1i, true)), -1i, -2073f, vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-630f, 329f, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 323f, -2012f) - vec4<f32>(arg_0.x, -1929f, arg_0.x, -316f))), Struct_1(true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), vec2<i32>(1i, 1i), func_3(-153f, vec2<f32>(-588f, arg_0.x)).x, func_2(-20264i, Struct_2(Struct_1(false, arg_0, vec2<i32>(-1i, -1i), 4452i, true), 1i, Struct_1(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], vec2<i32>(-5420i, -36504i), 25003i, true), Struct_1(true, vec3<f32>(-1445f, 2874f, -479f), vec2<i32>(40568i, 74234i), -1i, false)), arg_0.zz, Struct_3(Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(var_0.x, 10u)], vec2<i32>(-24272i, 0i), -1i, false), -25493i, Struct_1(false, vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec2<i32>(-41826i, 60632i), -72112i, true), Struct_1(true, vec3<f32>(arg_0.x, 1175f, arg_0.x), vec2<i32>(-1i, -66439i), 9869i, false)), vec4<f32>(-223f, -437f, arg_0.x, arg_0.x), Struct_1(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], vec2<i32>(0i, -1i), 13985i, true))).a))));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec3<f32>, 10>();
    let var_0 = Struct_1((arg_2.x >= ~1u) | arg_0.c.a, global0[_wgslsmith_index_u32(u_input.a, 10u)], max(vec2<i32>(~(-24585i), abs(func_2(arg_0.a.b, Struct_2(Struct_1(arg_0.a.a.a, arg_0.a.a.b, vec2<i32>(0i, arg_0.a.d.c.x), 21469i, true), arg_0.a.c.d, Struct_1(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.a.d.c, arg_0.a.a.c.x, arg_1), arg_0.c), arg_0.c.b.xz, Struct_3(arg_0.a, vec4<f32>(920f, 161f, -287f, arg_0.a.a.b.x), Struct_1(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<i32>(arg_0.c.c.x, -31710i), arg_0.a.b, true))).d)), arg_0.c.c << (arg_2 % vec2<u32>(32u))), _wgslsmith_sub_i32(firstLeadingBit(1i), -1i), true);
    let var_1 = ~firstTrailingBit(~u_input.a);
    let var_2 = min(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c.c.x, 0i), arg_0.c.c), -func_5(func_4(Struct_2(Struct_1(false, arg_0.c.b, vec2<i32>(var_0.d, 7545i), var_0.c.x, true), -2147483647i, var_0, Struct_1(true, vec3<f32>(arg_0.a.c.b.x, arg_0.b.x, 1412f), vec2<i32>(arg_0.c.c.x, -65939i), arg_0.c.c.x, true)), _wgslsmith_mult_i32(var_0.c.x, var_0.d), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), select(vec3<bool>(var_0.e, false, false), vec3<bool>(false, true, var_0.a), vec3<bool>(true, true, arg_0.c.e))).b).a.c.c);
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f + var_0.b.x)), arg_0.a.a.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x + -1902f), _wgslsmith_div_f32(-1133f, arg_0.a.a.b.x)))) * _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(53863u, 10u)], _wgslsmith_f_op_vec3_f32(round(var_0.b))))).a;
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    let var_0 = Struct_2(func_6(func_5(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -545f)))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false))), u_input.b.xy), countOneBits(~1i), func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, 1u) | countOneBits(_wgslsmith_add_u32(u_input.a, 1u)), 10u)]).c, Struct_1(false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(904f, 129f, -760f)))), global0[_wgslsmith_index_u32(abs(u_input.a), 10u)]), select(reverseBits(firstTrailingBit(vec2<i32>(10966i, 0i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(53897i, -2835i), vec2<i32>(29109i, -2147483647i)) ^ max(vec2<i32>(-1i, 0i), vec2<i32>(2650i, -2147483647i)), vec2<bool>(any(vec2<bool>(false, false)), true)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-33078i, -8950i, -53170i, -21767i), -vec4<i32>(27957i, 2147483647i, 1i, 2147483647i)), select(func_4(Struct_2(Struct_1(true, vec3<f32>(709f, -120f, -692f), vec2<i32>(16992i, -1i), 1i, true), -1i, Struct_1(false, global0[_wgslsmith_index_u32(1u, 10u)], vec2<i32>(-15148i, -2147483647i), 2147483647i, true), Struct_1(true, vec3<f32>(-1000f, 447f, 218f), vec2<i32>(1i, 15442i), 19450i, false)), -2147483647i, -1872f, vec3<bool>(true, true, true)).e, func_5(global0[_wgslsmith_index_u32(68119u, 10u)]).a.a.a, true) && true));
    let var_1 = func_5(var_0.a.b).a;
    let var_2 = Struct_2(Struct_1(any(select(select(vec2<bool>(var_0.d.e, false), vec2<bool>(true, var_1.c.e), true), !vec2<bool>(false, var_0.a.a), var_0.d.b.x == 1304f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(430f, 172f, 493f)))), var_1.a.b), var_0.a.c, reverseBits(16385i), false), -2147483647i, func_2(~var_1.b, func_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(-var_0.a.b.x), -250f)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1421f, var_0.a.b.x)))) + vec2<f32>(-108f, var_0.c.b.x)), func_5(var_0.c.b)), Struct_1(func_6(func_5(vec3<f32>(var_1.c.b.x, 622f, var_0.c.b.x)), var_1.d.e, u_input.b.yx).e, func_4(var_1, abs(1i), _wgslsmith_f_op_f32(trunc(1037f)), select(vec3<bool>(false, true, var_0.d.a), !vec3<bool>(var_1.c.a, false, var_0.c.e), !vec3<bool>(var_1.c.a, false, false))).b, _wgslsmith_div_vec2_i32(func_3(_wgslsmith_f_op_f32(-var_0.d.b.x), var_0.d.b.zx), var_0.c.c), var_1.a.c.x, false));
    var var_3 = select(!(!(!vec3<bool>(var_2.d.a, var_2.c.e, var_1.c.a))), !select(!select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.a.e, var_1.c.a), vec3<bool>(var_1.c.a, true, var_1.d.a)), select(!vec3<bool>(var_1.d.a, var_0.c.e, var_1.d.e), select(vec3<bool>(var_2.a.e, false, var_1.a.a), vec3<bool>(var_1.a.a, true, var_1.c.a), vec3<bool>(var_0.a.a, false, var_2.c.a)), select(vec3<bool>(var_0.c.a, false, var_2.c.e), vec3<bool>(var_2.c.e, true, true), true)), !var_1.d.e), select(select(select(!vec3<bool>(true, var_1.c.a, true), select(vec3<bool>(false, var_2.c.e, true), vec3<bool>(false, false, false), true), var_2.a.e), vec3<bool>(var_0.d.b.x == var_2.a.b.x, var_2.c.a, var_2.d.e), var_1.a.e), !(!vec3<bool>(var_0.a.e, false, false)), select(~u_input.a < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 50054u), vec2<u32>(u_input.a, u_input.b.x)), var_0.d.d != countOneBits(var_2.c.c.x), var_2.c.e)));
    let var_4 = Struct_3(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(var_0.d.b.x + -849f))) * vec3<f32>(-592f, _wgslsmith_f_op_f32(var_0.d.b.x + -499f), 1123f))).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b.x) + -866f), -678f, var_1.d.b.x) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d.b.x, -1000f, -729f, 811f), vec4<f32>(-1147f, var_1.d.b.x, 817f, var_0.a.b.x)))))))), func_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.x, 1992f, var_2.a.b.x) - _wgslsmith_f_op_vec3_f32(step(var_2.d.b, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))))).c);
    var var_5 = func_5(_wgslsmith_f_op_vec3_f32(abs(var_4.b.xyw))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.c.x);
}

