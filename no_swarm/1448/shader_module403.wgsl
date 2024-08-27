struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -3438i;

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true));

var<private> global3: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_4(!vec3<bool>(true, arg_0.x, _wgslsmith_f_op_f32(-global1.c) < _wgslsmith_f_op_f32(-1473f + -1366f)));
    let var_1 = any(var_0.a);
    global3 = true;
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(1u, 1u), global1.a.a.x, 0u);
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(13842i, 2147483647i), vec2<i32>(-125i, -20217i)), -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-13426i, ~(~11471i)), select(vec2<i32>(18737i, min(2147483647i, -1i)), vec2<i32>(~30450i, 0i), arg_0.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -576f);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = global1.b;
    global2 = array<vec4<bool>, 28>();
    global2 = array<vec4<bool>, 28>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(758f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true))))), any(global2[_wgslsmith_index_u32(var_0.a.x & 10897u, 28u)])))));
    return global1.a;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = global1.a;
    let var_1 = arg_0;
    global0 = max(1i, min(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 8216i, 1614i, -21987i), countOneBits(vec4<i32>(-1i, -2147483647i, -1937i, -1i)))), -13399i >> (max(58u, u_input.a) % 32u)));
    let var_2 = -1000f;
    global1 = Struct_2(Struct_1(~(~var_0.a & min(vec3<u32>(global1.a.a.x, var_0.a.x, global1.a.a.x), vec3<u32>(u_input.a, 4294967295u, 0u)))), func_2(vec3<i32>(_wgslsmith_div_i32(1i, 1i), countOneBits(max(1i, 2147483647i)), _wgslsmith_sub_i32(1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(f32(-1f) * -949f))));
    return Struct_3(arg_0, 469f, func_2(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-8472i, 31206i, -10327i), vec3<i32>(10237i, 22152i, -1i)), firstLeadingBit(vec3<i32>(1i, 9911i, 2147483647i))) << (select(vec3<u32>(86741u, var_0.a.x, 30297u), vec3<u32>(u_input.a, 67972u, 4294967295u), vec3<bool>(true, var_1, true)) % vec3<u32>(32u))), global1.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_5, arg_3: i32) -> StorageBuffer {
    global3 = true;
    var var_0 = select(_wgslsmith_dot_vec2_u32(arg_1.d.a.zz, func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, 3606i, arg_3), vec3<i32>(-54452i, arg_3, arg_3))).a.xx) << (1u % 32u), ~reverseBits(_wgslsmith_div_u32(1u << (global1.a.a.x % 32u), arg_2.b.a.x)), arg_0.x);
    let var_1 = arg_3;
    var var_2 = Struct_2(global1.b, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(2150u, global1.a.a.x >> (4294967295u % 32u), max(arg_1.c.a.x, 2298u)), vec3<u32>(arg_1.d.a.x, ~arg_2.b.a.x, u_input.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1071f)))));
    var_2 = Struct_2(global1.b, arg_1.d, _wgslsmith_f_op_f32(func_3(select(select(vec2<bool>(arg_0.x, false), arg_2.a.a.yy, select(vec2<bool>(arg_2.a.a.x, true), arg_0.yy, arg_1.a)), !arg_2.a.a.xx, any(select(vec2<bool>(false, false), arg_2.a.a.zy, false))))));
    return StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, -1i, arg_3) & vec3<i32>(1i, 0i, 6043i), vec3<i32>(var_1, -1i, arg_3) & vec3<i32>(-1i, arg_3, arg_3), ~vec3<i32>(-1i, arg_3, arg_3)) & vec3<i32>(firstTrailingBit(var_1), ~(-11953i), var_1 & var_1), abs(firstTrailingBit(vec3<i32>(arg_3, var_1, 11798i))) >> (firstLeadingBit(arg_2.b.a >> (arg_1.d.a % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true)), func_1(true), Struct_5(Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), func_2(vec3<i32>(0i, 1i, 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + -1503f)))), 462f), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(30285i, 2147483647i, -1i)), -firstLeadingBit(vec3<i32>(-2147483647i, -5452i, 7650i))) | -7237i);
}

