struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-745f, -199f);

var<private> global1: vec3<i32>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_1.a;
    let var_1 = global3.a.zwy;
    var var_2 = arg_0;
    var_2 = Struct_3(vec4<bool>(select(any(global3.a), true, all(!vec4<bool>(false, false, global2.x, var_1.x))), true, all(vec2<bool>(var_1.x, var_1.x | var_1.x)), global2.x), arg_3.c.x, 101435u, arg_0.d, global3.e);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b.x))))));
    return arg_0;
}

fn func_3(arg_0: i32) -> vec4<f32> {
    let var_0 = global3.d;
    var var_1 = global1.yz;
    let var_2 = -1i;
    let var_3 = func_1(Struct_3(!vec4<bool>(global3.b < global3.b, true, global2.x != global2.x, !global2.x), global3.b, max(0u, global3.c), var_1.x, vec2<bool>(true, true)), Struct_2(3311i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(1288f * _wgslsmith_f_op_f32(step(global0.x, global0.x))))), countOneBits(vec4<u32>(1u ^ (u_input.a.x << (4294967295u % 32u)), u_input.a.x, 43254u, reverseBits(64319u) >> (~global3.c % 32u))), global4[_wgslsmith_index_u32(u_input.a.x, 2u)]).a;
    var var_4 = Struct_5(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~firstLeadingBit(100038u), 0u), global3.c), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-52852i, global1.x, var_1.x) ^ vec3<i32>(-24294i, global1.x, var_2), vec3<i32>(7945i, var_2, -11879i))) ^ vec3<i32>(arg_0, ~1i, arg_0), func_1(func_1(Struct_3(vec4<bool>(false, false, true, global2.x), 1u, 58095u, -arg_0, var_3.yy), Struct_2(0i, _wgslsmith_f_op_f32(-global0.x)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global3.b, u_input.a.x, u_input.a.x), vec4<u32>(2379u, global3.c, 1u, u_input.a.x)), vec4<u32>(u_input.a.x, 42000u, 1u, u_input.a.x), var_3.x), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(global3.b), 0u), 2u)]), Struct_2(1i, global0.x), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(124525u, u_input.a.x), u_input.a.zx) & 30651u, 75083u, ~firstTrailingBit(u_input.a.x), countOneBits(_wgslsmith_mod_u32(1u, global3.b))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 2u)]), 152f);
    return vec4<f32>(_wgslsmith_f_op_f32(-var_4.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.d))), _wgslsmith_f_op_f32(select(global0.x, var_4.d, all(var_3) | var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = ~(global3.d << (88690u % 32u));
    let var_1 = func_1(Struct_3(!vec4<bool>(false, false, false, global3.a.x), _wgslsmith_dot_vec2_u32(arg_0.c.yx, arg_0.c.yz), u_input.a.x, firstLeadingBit(-1i), !(!func_1(Struct_3(global3.a, u_input.a.x, global3.b, -1i, vec2<bool>(true, false)), Struct_2(global3.d, 298f), vec4<u32>(78257u, arg_0.a, 1u, 12765u), Struct_1(4294967295u, arg_0.e, vec3<u32>(37100u, u_input.a.x, 1u), arg_0.d, arg_0.e)).a.yy)), Struct_2(~(-2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x) - _wgslsmith_f_op_f32(-1381f - 1112f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.e.x, global0.x))))), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(0u, 4294967295u, 7305u, global3.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(5659u, 4294967295u, 6945u, 22968u), vec4<u32>(57007u, arg_0.a, 1804u, arg_0.a)), vec4<u32>(23515u, 4294967295u, 1u, u_input.a.x)), vec4<u32>(1u, ~12802u, 23753u, u_input.a.x & 0u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(30764u, arg_0.c.x, global3.c, arg_0.c.x)), vec4<u32>(18686u, arg_0.c.x, 35934u, 0u)))), Struct_1(select(_wgslsmith_dot_vec2_u32(arg_0.c.yz >> (u_input.a.zz % vec2<u32>(32u)), vec2<u32>(arg_0.c.x, 9035u)), abs(arg_0.c.x << (18225u % 32u)), (arg_0.d | arg_0.d) || true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.e + vec4<f32>(-148f, global0.x, global0.x, arg_0.e.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 332f, 1562f, 372f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.e, vec4<f32>(arg_0.e.x, 175f, -682f, -1529f), global3.a)))), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(arg_0.c.x, 68706u, 0u)), ~arg_0.c) | arg_0.c, arg_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global1.x)) * arg_0.e)))).a.yxw;
    let var_2 = Struct_2(global3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) * _wgslsmith_f_op_f32(-arg_0.e.x))) - 707f));
    global1 = _wgslsmith_mult_vec3_i32(~min(~vec3<i32>(2147483647i, -36018i, global1.x), abs(vec3<i32>(global1.x, var_2.a, var_2.a))) >> (abs(arg_0.c) % vec3<u32>(32u)), abs(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(17920i, var_2.a), vec2<i32>(-7987i, global1.x)), firstTrailingBit(-22938i), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.a, global3.d), -vec2<i32>(global3.d, global3.d)))));
    var var_3 = ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(87395u, 0u)), arg_0.c.xy | vec2<u32>(global3.c, global3.b)), arg_0.c.zy, ~_wgslsmith_sub_vec2_u32(vec2<u32>(18324u, u_input.a.x), u_input.a.yx)));
    return vec2<i32>(-1i) * -abs(~select(vec2<i32>(global1.x, -43989i), global1.yy, true));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_5 {
    var var_0 = Struct_4(arg_2, arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1171f, 495f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1250f, var_0.a.b))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, 1101f) * vec2<f32>(121f, -649f))), vec2<bool>(global2.x, arg_2.a != -2496i))))));
    var var_2 = Struct_4(Struct_2(select(abs(83575i) | (var_0.a.a << (arg_0.c % 32u)), arg_2.a, !var_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1f) + 605f)), func_1(var_0.b, arg_2, _wgslsmith_mult_vec4_u32(countOneBits(max(vec4<u32>(1u, u_input.a.x, 1u, 4294967295u), vec4<u32>(global3.b, global3.b, 30446u, 112478u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.b, arg_0.c, arg_0.c), vec4<u32>(4367u, global3.b, u_input.a.x, arg_0.b)) & vec4<u32>(var_0.b.c, 41069u, global3.c, 49219u)), Struct_1(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1070f, arg_2.b) * vec4<f32>(2942f, 252f, -1365f, 252f))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 24593u, 4294967295u), u_input.a), global3.a.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(2356f, 1011f, -1648f, -988f), vec4<f32>(var_0.a.b, var_0.a.b, -867f, -154f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(598f, 783f, var_1.x, global0.x)))))));
    var var_3 = _wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(_wgslsmith_sub_u32(54237u, (3995u | global3.c) >> (~var_2.b.c % 32u)), 4294967295u));
    var var_4 = Struct_4(arg_2, func_1(func_1(var_2.b, Struct_2(min(arg_1.x, arg_3.x), 1755f), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.b, 1u, var_0.b.c), vec4<u32>(46102u, 4294967295u, u_input.a.x, u_input.a.x))), global4[_wgslsmith_index_u32(~abs(34591u), 2u)]), var_0.a, vec4<u32>(~1u, 72860u, arg_0.c, ~1u), Struct_1(_wgslsmith_add_u32(u_input.a.x, 1u), vec4<f32>(_wgslsmith_f_op_f32(arg_2.b - -1440f), arg_2.b, var_1.x, var_0.a.b), vec3<u32>(0u, ~arg_0.c, ~4294967295u), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, var_0.a.b, arg_2.b, -1018f))))));
    return Struct_5(~40600u, arg_3, var_4.b, var_4.a.b);
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32) -> Struct_5 {
    var var_0 = ~((-3293i << (global3.b % 32u)) ^ _wgslsmith_mod_i32(func_4(arg_0.c, vec2<i32>(-2598i, global3.d), Struct_2(-8161i, -1011f), arg_0.b).c.d & (21698i << (1u % 32u)), global3.d));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0.d));
    let var_1 = abs(~(~select(~vec2<i32>(arg_0.c.d, arg_1.x), firstTrailingBit(arg_0.b.xy), func_1(arg_0.c, Struct_2(arg_0.c.d, 113f), vec4<u32>(arg_0.c.c, arg_0.c.b, u_input.a.x, u_input.a.x), Struct_1(1u, vec4<f32>(1933f, 1763f, -1000f, 1225f), vec3<u32>(89112u, u_input.a.x, global3.b), false, vec4<f32>(139f, arg_0.d, 102f, arg_0.d))).a.x)));
    var_0 = abs(_wgslsmith_clamp_i32(arg_1.x, -arg_1.x >> (43816u % 32u), global1.x)) ^ 1i;
    global1 = -_wgslsmith_div_vec3_i32(vec3<i32>(1812i, ~_wgslsmith_dot_vec2_i32(arg_0.b.yz, vec2<i32>(arg_1.x, global3.d)), select(global3.d, 0i, true)), abs(-vec3<i32>(1i, global1.x, arg_0.b.x)));
    return func_4(arg_0.c, vec2<i32>(23169i, -arg_0.b.x), Struct_2(19538i, arg_0.d), vec3<i32>(select(5677i, -5498i << (global3.b % 32u), false), 26307i << (arg_0.c.c % 32u), global1.x) << (u_input.a % vec3<u32>(32u)));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = Struct_2(-global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f))));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(global1.x, func_1(func_1(arg_0.c, var_0, vec4<u32>(29960u, arg_2.b, 33281u, arg_0.c.b), global4[_wgslsmith_index_u32(40643u, 2u)]), var_0, min(vec4<u32>(global3.b, 4294967295u, 36742u, 0u), vec4<u32>(0u, 0u, 31485u, global3.b)), global4[_wgslsmith_index_u32(arg_2.b, 2u)]).d), 23682i, firstTrailingBit(arg_0.c.d), max(34288i, 1i)) | (vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.d, -2205i, global3.d, global1.x), vec4<i32>(var_0.a, -1i, -2147483647i, global1.x), vec4<i32>(-1i, arg_0.c.d, arg_0.c.d, -18989i)), max(vec4<i32>(arg_2.d, global1.x, 1i, -49766i), vec4<i32>(global1.x, 0i, global1.x, -2147483647i))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) * arg_0.d), _wgslsmith_f_op_f32(-arg_0.d), var_0.b);
    var var_3 = Struct_4(Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(global1.x, var_0.a)), func_4(Struct_3(vec4<bool>(global2.x, global3.a.x, arg_3.x, global2.x), u_input.a.x, global3.c, arg_2.d, vec2<bool>(global2.x, false)), vec2<i32>(28931i, var_0.a) | arg_0.b.xz, var_0, var_1.wwx).b.x), var_2.x), func_5(func_5(arg_0, global1.yy, 29666u), vec2<i32>(27191i, func_1(Struct_3(vec4<bool>(arg_3.x, true, arg_0.c.e.x, arg_2.a.x), global3.c, 4294967295u, global1.x, arg_1.xx), var_0, _wgslsmith_add_vec4_u32(vec4<u32>(16930u, arg_0.c.b, arg_0.a, 0u), vec4<u32>(24049u, global3.c, 1u, 4294967295u)), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x), 2u)]).d), select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, arg_2.b, 56459u), vec4<u32>(46787u, 17173u, arg_0.c.b, arg_2.c), vec4<u32>(arg_2.b, 1u, 6896u, 78335u)), _wgslsmith_add_vec4_u32(vec4<u32>(7004u, arg_2.c, 21595u, 1u), vec4<u32>(arg_0.c.c, 0u, 114059u, arg_2.c))), abs(4294967295u), false)).c);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(483f, var_3.a.b, var_2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_0.b, arg_0.d))))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(420f - arg_0.d), 648f, _wgslsmith_f_op_f32(1000f - -374f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b, var_2.x, var_0.b)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, -364f, arg_0.d), vec3<f32>(-953f, 934f, arg_0.d)))), vec3<bool>(true, arg_0.c.a.x, -510f <= global0.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, arg_0.d)), _wgslsmith_f_op_f32(-var_2.x)), -944f, arg_0.d), select(vec3<bool>(select(false, true, global3.e.x), global1.x < var_1.x, true), !(!vec3<bool>(var_3.b.a.x, false, false)), select(var_3.b.a.zzw, !vec3<bool>(arg_2.a.x, arg_1.x, true), global3.a.xzx)))));
    return StorageBuffer(-1018f, -13470i, _wgslsmith_f_op_vec2_f32(trunc(var_2.xx)), -vec3<i32>(func_1(Struct_3(vec4<bool>(false, false, true, false), arg_2.b, 4294967295u, arg_2.d, arg_3.zy), Struct_2(var_0.a, var_2.x), ~vec4<u32>(u_input.a.x, 44104u, 0u, 4294967295u), global4[_wgslsmith_index_u32(~0u, 2u)]).d, 6648i, -(var_1.x << (84339u % 32u))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.yy;
    global1 = select(~min(-vec3<i32>(global3.d, global1.x, global1.x), vec3<i32>(global3.d, global3.d, global3.d) ^ vec3<i32>(global1.x, global3.d, global3.d)), -_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global3.d, global1.x) << (u_input.a % vec3<u32>(32u)), vec3<i32>(-1i, global3.d, global1.x) ^ vec3<i32>(8627i, -1i, -1089i)), any(global3.a.yyy)) ^ (vec3<i32>(global1.x & abs(1i), max(_wgslsmith_mult_i32(-28249i, global3.d), 2147483647i), 1i) & ~(-vec3<i32>(global3.d, 27338i, global3.d) & vec3<i32>(global3.d, global1.x, global1.x)));
    var var_1 = Struct_2(global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, -2346f)) + global0.x)));
    global4 = array<Struct_1, 2>();
    var var_2 = select(global3.b, _wgslsmith_mod_u32(abs(global3.b), 91140u) >> (global3.c % 32u), !var_0.x);
    let x = u_input.a;
    s_output = func_6(func_5(func_4(func_1(Struct_3(vec4<bool>(global2.x, global2.x, global2.x, var_0.x), 33890u, u_input.a.x, -1i, vec2<bool>(false, true)), Struct_2(-6741i, global0.x), vec4<u32>(41710u, 42437u, global3.c, global3.b), Struct_1(global3.c, vec4<f32>(-1707f, var_1.b, 591f, global0.x), u_input.a, false, vec4<f32>(global0.x, global0.x, global0.x, 1175f))), func_2(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.c, global3.c), 2u)]), Struct_2(1i, -1000f), -(~vec3<i32>(0i, var_1.a, global3.d))), global1.zx, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(11276u, u_input.a.x, 0u, 17946u), vec4<u32>(9927u, u_input.a.x, 1u, 4294967295u))) ^ 33980u), !(!global3.a.xyx), Struct_3(!global3.a, global3.c, ~u_input.a.x, 15987i, global2.zy), !global3.a.xww);
}

