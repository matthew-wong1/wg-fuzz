struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 5> = array<f32, 5>(115f, 867f, -1000f, -1454f, 720f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    return -732f;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_2 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(select(1690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), Struct_1(global1.yx, u_input.b.x)))) * 1854f), 0u == u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 5u)])) * global1.x), global2[_wgslsmith_index_u32(~0u, 5u)])), -2318f);
    var var_0 = ~vec4<i32>(-2147483647i, -15744i, 28191i, -u_input.a);
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(select(1u, ~90548u, true) ^ (u_input.c ^ 655u), 4294967295u << ((~u_input.b.x >> (arg_0 % 32u)) % 32u)));
    var_1 = u_input.b;
    var var_2 = _wgslsmith_add_vec2_i32((vec2<i32>(_wgslsmith_mod_i32(61247i, -15619i), var_0.x) ^ firstTrailingBit(var_0.ww)) << (_wgslsmith_mod_vec2_u32(~(vec2<u32>(var_1.x, u_input.c) << (u_input.b % vec2<u32>(32u))), firstLeadingBit(abs(vec2<u32>(arg_0, 15154u)))) % vec2<u32>(32u)), -_wgslsmith_sub_vec2_i32(arg_1.xz, arg_1.xz));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(reverseBits(1u), 5u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-253f, global1.x)) * _wgslsmith_f_op_f32(sign(-1585f)))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x >> (var_1.x % 32u), var_1.x), u_input.c, 48182u ^ _wgslsmith_div_u32(u_input.b.x, arg_0))), min(-(~vec3<i32>(arg_1.x, u_input.a, -24525i)), countOneBits(-var_0.wxx)), 4294967295u, true);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> vec2<u32> {
    var var_0 = -(~(-vec4<i32>(arg_1.b.x, ~15962i, u_input.a & arg_1.b.x, -870i)));
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + arg_3), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.a.x), -153f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_1.c, 5u)], arg_1.a.a.x, global2[_wgslsmith_index_u32(35416u, 5u)]) * vec3<f32>(2287f, -337f, -3488f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.a.x, 1349f, global2[_wgslsmith_index_u32(arg_1.c, 5u)]), vec3<f32>(-1000f, global2[_wgslsmith_index_u32(0u, 5u)], arg_1.a.a.x), vec3<bool>(true, arg_2, arg_1.d)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global1.x, -180f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-808f, -923f, arg_3)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(ceil(-1525f)), _wgslsmith_f_op_f32(-global1.x)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(step(global1.x, global2[_wgslsmith_index_u32(378u, 5u)])), -1633f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_1.a.a.x, 745f)))))));
    let var_1 = _wgslsmith_f_op_f32(step(2152f, global1.x));
    var var_2 = ~18245u | _wgslsmith_mult_u32(arg_1.c, u_input.b.x);
    return ~abs(_wgslsmith_clamp_vec2_u32(firstLeadingBit(~u_input.b), ~vec2<u32>(arg_1.a.b, 0u) & vec2<u32>(arg_1.c, arg_1.c), reverseBits(u_input.b) << (vec2<u32>(84742u, 4294967295u) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(_wgslsmith_f_op_f32(round(global1.x)) >= global2[_wgslsmith_index_u32(countOneBits(0u), 5u)], true)), vec2<bool>(true, true), false);
    var var_1 = global2[_wgslsmith_index_u32(abs(firstLeadingBit(53344u)), 5u)];
    global0 = ~(~abs(56861u));
    let var_2 = func_2(_wgslsmith_div_u32(1223u, ~(~arg_0.a.x)), select(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 55217i, 10929i), firstTrailingBit(vec3<i32>(u_input.d, 1i, 8903i))), abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.d), vec3<i32>(u_input.a, 36868i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.a, 0i), vec3<i32>(u_input.d, 18621i, 0i)))), select(vec3<bool>(var_0.x || var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), !(!vec3<bool>(var_0.x, false, true)), vec3<bool>(all(vec3<bool>(var_0.x, true, var_0.x)), true, !var_0.x)))).d;
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xz * global1.xy)), _wgslsmith_mod_u32(u_input.b.x ^ 40783u, select(4294967295u, 4294967295u, true))), _wgslsmith_div_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(0i, u_input.a, u_input.d), vec3<i32>(-2147483647i, 30675i, 35479i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.d, u_input.a), vec3<i32>(5004i, -56115i, u_input.a))), vec3<i32>(_wgslsmith_clamp_i32(u_input.d, 12397i, u_input.d), -13291i, -1i)), _wgslsmith_sub_u32(arg_1.a.x, func_2(96925u, vec3<i32>(u_input.a, u_input.d, 27611i)).c << (~arg_1.a.x % 32u)), var_2));
    return 0u;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_3 {
    global0 = max(46929u, func_5(Struct_4(func_4(u_input.d, func_2(16535u, vec3<i32>(u_input.d, -2147483647i, arg_0)), true, -2030f)), Struct_4(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(47676u, 0u), vec2<u32>(arg_3.b, 1u))))));
    global0 = 1u;
    var var_0 = Struct_1(arg_3.a, abs(17052u));
    let var_1 = Struct_3(Struct_2(func_2(select(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), countOneBits(arg_3.b), true), -abs(vec3<i32>(-31565i, arg_0, u_input.d))).a, min(vec3<i32>(-37748i, _wgslsmith_add_i32(0i, arg_0), -arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, arg_0, 2034i) | vec3<i32>(arg_0, arg_0, -1i), vec3<i32>(10452i, arg_0, 2147483647i) >> (vec3<u32>(1u, 0u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_sub_u32(max(reverseBits(var_0.b), countOneBits(u_input.b.x)), ~0u), false));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(!vec2<bool>(var_1.a.d, var_1.a.d), vec2<bool>(true, var_1.a.d), any(vec2<bool>(true, var_1.a.d))), arg_3))), arg_3.a.x, global1.x);
    return Struct_3(func_2(0u, ~min(vec3<i32>(arg_0, 28635i, -46714i), var_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d, _wgslsmith_f_op_f32(exp2(global1.x)), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(84795u, 5u)], global2[_wgslsmith_index_u32(90223u, 5u)]), _wgslsmith_f_op_f32(round(global1.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(select(-979f, global1.x, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ~(~(~41923u))));
    let var_1 = Struct_2(var_0.a.a, ~(-var_0.a.b), 20243u, 2147483647i == u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.a.a.x);
    global2 = array<f32, 5>();
    global2 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1861f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_f32(max(global1.x, 404f)), _wgslsmith_f_op_f32(-754f + global1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_1.a.a.x, global1.x, -902f), vec4<f32>(1588f, 410f, var_1.a.a.x, var_1.a.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1601f, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], -716f, global2[_wgslsmith_index_u32(41881u, 5u)]), vec4<f32>(global1.x, global2[_wgslsmith_index_u32(139056u, 5u)], var_0.a.a.a.x, var_1.a.a.x)), !var_0.a.d)), all(!vec2<bool>(var_1.d, var_0.a.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1787f, -1403f, global1.x, global2[_wgslsmith_index_u32(4294967295u, 5u)])))), vec4<u32>(abs(firstLeadingBit(4294967295u)) >> (func_1(select(-7904i, 4606i, var_0.a.d), global1.x, ~vec2<u32>(0u, 8805u), Struct_1(var_1.a.a, 0u)).a.c % 32u), ~func_2(_wgslsmith_clamp_u32(65213u, var_1.c, 1u), var_0.a.b).a.b, 1u, ~4294967295u));
}

