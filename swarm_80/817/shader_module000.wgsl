struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: Struct_3 = Struct_3(vec4<f32>(968f, -1744f, -225f, -367f));

var<private> global2: array<i32, 13>;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_3(global1.a);
    var var_1 = -471f;
    var var_2 = arg_0.b;
    let var_3 = Struct_1(~firstLeadingBit(-global4.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b.x, global4.a.b) * -123f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(sign(1092f))))), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(11077u, 36733u, 1u, global4.a.c), ~(~vec4<u32>(var_2.c, u_input.a, var_2.c, 1u)))), select(global4.a.d, !(!any(vec2<bool>(global4.a.d, false))), var_2.d), i32(-1i) * -3226i);
    var var_4 = var_0.a.zw;
    return var_4.x;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.a)) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<i32>(global4.a.e, 43308i, -22843i), Struct_1(-52493i, global1.a.x, u_input.a, false, -36141i), global1.a.zyy))), _wgslsmith_f_op_f32(step(global4.a.b, global1.a.x)))), global4.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(global4.b.x - global1.a.x)), 1418f)));
    var var_1 = Struct_2(Struct_1(~global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(sign(1000f)), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 54696u, global4.a.c), countOneBits(vec3<u32>(1u, global4.a.c, u_input.a)))), global4.a.d, -152i), vec3<f32>(_wgslsmith_f_op_f32(sign(199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) - _wgslsmith_f_op_f32(-479f + var_0.x))), global4.b.x));
    global3 = -14100i;
    return var_1.a.c;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = true;
    let var_2 = select(~firstLeadingBit(~abs(vec3<i32>(-1i, global4.a.a, global4.a.a))), select(select(vec3<i32>(_wgslsmith_clamp_i32(-65641i, 38595i, 4535i), 0i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global4.a.c, 13u)], -21801i, 46524i)), -max(vec3<i32>(0i, 31817i, global4.a.e), vec3<i32>(global4.a.a, -23274i, global4.a.a)), select(!vec3<bool>(true, false, global4.a.d), vec3<bool>(global4.a.d, var_1, true), vec3<bool>(true, var_1, global4.a.d))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.a, -1i, -3764i, global4.a.e), vec4<i32>(global4.a.e, -11522i, 0i, global4.a.a)), -1i), global2[_wgslsmith_index_u32(1489u, 13u)] << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, global4.a.c, global4.a.c), vec3<u32>(u_input.a, u_input.a, 13090u)) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.a, global2[_wgslsmith_index_u32(1u, 13u)], global4.a.a, -18308i), vec4<i32>(37485i, -39904i, global2[_wgslsmith_index_u32(global4.a.c, 13u)], global4.a.e))), global4.a.d), true);
    var var_3 = vec3<i32>(-2147483647i, -countOneBits(~(-global2[_wgslsmith_index_u32(global4.a.c, 13u)])), ~countOneBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, global4.a.e, global4.a.e)), var_2 & var_2)));
    var var_4 = select(!vec3<bool>(!var_1, true, any(select(vec3<bool>(false, false, var_1), vec3<bool>(true, global4.a.d, global4.a.d), false))), !(!vec3<bool>(3655u >= global4.a.c, all(vec2<bool>(var_1, false)), global1.a.x <= global4.a.b)), false);
    return min(func_2(), u_input.a);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(global4.a.b * -475f));
    var var_1 = vec2<i32>(abs(global4.a.a), 1i);
    let var_2 = vec3<i32>(abs(var_1.x) >> (reverseBits(global4.a.c) % 32u), abs(~(i32(-1i) * -32993i)), 32702i) & ~((~vec3<i32>(-7396i, var_1.x, 1i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(44207i, 1i, var_1.x), vec3<i32>(global4.a.e, -1i, var_1.x))) >> (~vec3<u32>(4294967295u, arg_1, 161882u) % vec3<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global4.a.b, -866f, _wgslsmith_div_f32(1246f, 322f))))));
    let var_4 = max(~abs(vec4<u32>(4294967295u, global4.a.c, u_input.a, 152374u)) | abs(~vec4<u32>(arg_1, 360u, 16997u, 29315u)), ~reverseBits(vec4<u32>(u_input.a, global4.a.c, global4.a.c, u_input.a))) & ~vec4<u32>(~global4.a.c, 0u, firstLeadingBit(firstTrailingBit(u_input.a)), global4.a.c);
    return global4.a.c;
}

fn func_5(arg_0: i32) -> Struct_4 {
    global4 = Struct_2(Struct_1(~(-43151i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.b)), ~(~(~global4.a.c)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(15557u, u_input.a, u_input.a, global4.a.c), vec4<u32>(19744u, 95089u, 58130u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(42903u, 28237u, 40499u, 66308u), vec4<u32>(u_input.a, 27438u, global4.a.c, 23809u), vec4<u32>(global4.a.c, 1u, global4.a.c, global4.a.c))) < u_input.a, _wgslsmith_mult_i32(20463i, global4.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, -334f, -425f) * global1.a.xzx)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(global1.a.x + global4.a.b), _wgslsmith_div_f32(-1000f, global4.b.x))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global4.b)))))));
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(global1.a, vec4<f32>(global1.a.x, global4.b.x, global4.b.x, -2043f))), _wgslsmith_f_op_vec4_f32(ceil(global1.a)))))));
    let var_0 = Struct_4(max(reverseBits(select(vec3<i32>(arg_0, global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(global4.a.c, 13u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global4.a.a, global4.a.e), vec3<bool>(false, true, global4.a.d)) | -vec3<i32>(2147483647i, 1082i, 11661i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), -13535i, -global4.a.e), vec3<i32>(1071i, 1i, -1316i), _wgslsmith_div_vec3_i32(vec3<i32>(8700i, arg_0, arg_0), ~vec3<i32>(global4.a.e, -24509i, arg_0)))), Struct_1(0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.a.b)) - _wgslsmith_f_op_f32(global1.a.x - -214f)))), 1u, select(true, true, any(!vec3<bool>(global4.a.d, global4.a.d, true))), firstTrailingBit(global2[_wgslsmith_index_u32(~(4040u ^ global4.a.c), 13u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -775f)), _wgslsmith_f_op_f32(step(352f, _wgslsmith_f_op_f32(-global1.a.x))), global1.a.x)));
    var var_1 = Struct_4(firstLeadingBit(vec3<i32>(-2147483647i, global4.a.e, abs(arg_0))), var_0.b, _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b))))));
    var var_2 = select(abs(vec4<u32>(reverseBits(~global4.a.c), _wgslsmith_mod_u32(~var_0.b.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.c, 44441u, global4.a.c), vec3<u32>(64101u, 64623u, var_0.b.c))), ~(4294967295u ^ var_0.b.c), 1u)), abs(vec4<u32>(max(1u, 28777u), 10888u, func_4(var_0.b.d, 0u, global4.a.e), ~4294967295u) ^ ~select(vec4<u32>(50918u, 23430u, global4.a.c, global4.a.c), vec4<u32>(var_0.b.c, 4294967295u, 62775u, 1u), var_0.b.d)), select(!select(vec4<bool>(var_1.b.d, var_0.b.d, false, false), vec4<bool>(var_0.b.d, var_0.b.d, true, true), !vec4<bool>(var_1.b.d, var_1.b.d, var_0.b.d, true)), select(vec4<bool>(true, false, true, var_0.b.d), !vec4<bool>(global4.a.d, var_1.b.d, global4.a.d, global4.a.d), any(vec3<bool>(var_0.b.d, false, global4.a.d)) || select(false, true, false)), !var_0.b.d));
    return Struct_4(-var_0.a, Struct_1(global2[_wgslsmith_index_u32(u_input.a, 13u)], -1669f, ~(~19076u), !all(vec4<bool>(true, true, true, true)), ~(abs(global4.a.e) | (arg_0 | 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.b, _wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(abs(var_0.b.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, 429f, var_0.c.x) * global4.b))))));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = ~u_input.a;
    var var_1 = func_5(arg_1.x).b.d;
    let var_2 = Struct_3(arg_2.a);
    var var_3 = select(vec3<bool>(false, global4.a.d, arg_0.b.d), !vec3<bool>(arg_0.b.c < _wgslsmith_add_u32(80305u, 40232u), func_5(30368i << (global4.a.c % 32u)).b.d, global4.a.d), global4.a.d);
    var var_4 = vec3<bool>(!(!(!(!arg_0.b.d))), all(vec2<bool>(!all(vec3<bool>(arg_0.b.d, true, true)), any(select(vec4<bool>(global4.a.d, true, true, true), vec4<bool>(true, var_3.x, global4.a.d, var_3.x), arg_0.b.d)))), all(vec2<bool>(all(select(vec2<bool>(true, global4.a.d), vec2<bool>(true, false), true)), true)));
    return vec2<bool>((!(var_2.a.x != global4.a.b) & func_5(0i << (arg_0.b.c % 32u)).b.d) || all(var_4.zx), !(var_2.a.x >= _wgslsmith_f_op_f32(394f - _wgslsmith_f_op_f32(-arg_0.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(func_4(false, func_1(), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(24125u, 13u)], 15918i)), 13u)], global4.a.a)), _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(14137i, global4.a.e, global4.a.e, -1i), vec4<i32>(global2[_wgslsmith_index_u32(global4.a.c, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], 66945i, global4.a.a)), reverseBits(vec4<i32>(-110005i, 2147483647i, global2[_wgslsmith_index_u32(7810u, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)]))) & countOneBits(abs(vec4<i32>(-2147483647i, global4.a.a, -1i, global4.a.e))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global4.a.b * global1.a.x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2882f))), _wgslsmith_f_op_f32(f32(-1f) * -356f))), ~countOneBits(~(~vec3<i32>(-2147483647i, -2147483647i, 0i))));
    let var_1 = 54973u;
    var var_2 = global1.a.xy;
    let var_3 = !select(select(vec3<bool>(func_5(global2[_wgslsmith_index_u32(1u, 13u)]).b.d, !global4.a.d, true), !vec3<bool>(global4.a.d, false, var_0.x), vec3<bool>(true, true, true)), vec3<bool>(global4.a.d, var_2.x == _wgslsmith_f_op_f32(min(1166f, -315f)), true), var_0.x);
    global2 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -14970i, -2147483647i, global2[_wgslsmith_index_u32(var_1, 13u)]), vec4<i32>(0i, global2[_wgslsmith_index_u32(31161u, 13u)], global2[_wgslsmith_index_u32(global4.a.c, 13u)], global4.a.e)), vec4<i32>(-1i, global2[_wgslsmith_index_u32(global4.a.c, 13u)], global4.a.e, 35077i))), vec4<i32>(-(~(-35656i)), -abs(global2[_wgslsmith_index_u32(4294967295u, 13u)]), firstLeadingBit(global2[_wgslsmith_index_u32(24356u, 13u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.a.a, global4.a.a, -2484i), vec3<i32>(global2[_wgslsmith_index_u32(9402u, 13u)], global4.a.e, 1i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], -62707i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-27737i, global2[_wgslsmith_index_u32(0u, 13u)], 0i), vec3<i32>(global4.a.e, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<i32>(global4.a.a, 2147483647i, global4.a.a))))), _wgslsmith_f_op_vec4_f32(sign(global1.a)), _wgslsmith_add_i32(reverseBits(_wgslsmith_clamp_i32(~56911i, ~global2[_wgslsmith_index_u32(u_input.a, 13u)], firstTrailingBit(global2[_wgslsmith_index_u32(99386u, 13u)]))), -14552i));
}

