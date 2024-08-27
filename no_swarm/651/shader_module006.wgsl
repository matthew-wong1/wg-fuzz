struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: vec4<i32>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> i32 {
    global1 = _wgslsmith_dot_vec2_i32(~global0.wx, vec2<i32>(_wgslsmith_dot_vec3_i32(global0.zyz, _wgslsmith_mod_vec3_i32(~vec3<i32>(-69305i, global0.x, -5259i), vec3<i32>(global0.x, 44125i, 34580i) << (vec3<u32>(1u, arg_2.x, 1u) % vec3<u32>(32u)))), u_input.c));
    global0 = _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -85582i, global2.b >> (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u), _wgslsmith_mult_i32(-63974i, select(u_input.c, -1i, false)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c), ~global2.b, _wgslsmith_div_i32(global0.x, -54661i)), vec3<i32>(-262i >> (arg_2.x % 32u), i32(-1i) * -14754i, firstLeadingBit(global0.x))), countOneBits(select(1i, -u_input.c, all(vec4<bool>(arg_3.x, arg_3.x, false, true)))), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.c, global0.x), firstTrailingBit(u_input.c)), 2147483647i << (~firstLeadingBit(arg_2.x) % 32u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1894f * global2.c.x), -1452f))))));
    global2 = Struct_3(vec2<f32>(1f, arg_1), 0i, global2.c);
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, select(-25413i, -2147483647i, true), firstTrailingBit(firstLeadingBit(global2.b)), abs(firstTrailingBit(1i))), -select(-vec4<i32>(global0.x, -1i, -1i, 1i), -vec4<i32>(global0.x, u_input.c, 7247i, u_input.c), arg_3.x && false)), vec4<i32>(-(~1i), -2147483647i & (_wgslsmith_mult_i32(1i, 68211i) | global0.x), global0.x, 34003i), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(-max(vec4<i32>(u_input.c, 2147483647i, 1i, u_input.c), vec4<i32>(global2.b, 68727i, global0.x, -15875i)), -vec4<i32>(global2.b, global0.x, 5825i, global2.b) | (vec4<i32>(2147483647i, -22085i, global0.x, 64620i) ^ vec4<i32>(u_input.c, global0.x, global0.x, global0.x))), firstTrailingBit(min(35839i, 1i)), ~(~(-46355i))));
    return abs(-27288i);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(vec4<u32>(0u, _wgslsmith_mult_u32(abs(firstLeadingBit(u_input.a)), ~(~0u)), _wgslsmith_add_u32(~(~8515u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 6221u), _wgslsmith_mod_vec2_u32(vec2<u32>(45740u, u_input.b), vec2<u32>(u_input.a, u_input.b)))), _wgslsmith_sub_u32(~u_input.a << (u_input.b % 32u), u_input.b)), true, firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.a)), select(countOneBits(vec2<u32>(74431u, u_input.b)), vec2<u32>(u_input.b, 0u), true), firstTrailingBit(~vec2<u32>(u_input.a, 58447u)))));
    var var_2 = Struct_1(~select(max(vec4<u32>(27653u, u_input.b, 1u, var_1.c.x) >> (var_1.a % vec4<u32>(32u)), ~var_1.a), var_1.a, var_1.b), select(true, false, ~abs(-1i) >= global0.x), vec2<u32>(1u, var_1.a.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 64131u, u_input.a, 1u), vec4<u32>(u_input.a, 0u, 0u, 58033u))));
    global1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(select(min(-1i, -36698i), global0.x, false), 14320i, -1i, -func_3(global2.a.x, arg_0.a.x, vec4<u32>(43246u, var_2.a.x, 4294967295u, 4294967295u), vec2<bool>(var_2.b, true)))), vec4<i32>(_wgslsmith_sub_i32(-(~arg_0.b), firstLeadingBit(-29785i)), var_0.b, countOneBits(36356i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(89998i, u_input.c, -8631i), vec3<i32>(-2147483647i, -1i, global0.x) >> (vec3<u32>(34986u, 0u, u_input.a) % vec3<u32>(32u)))));
    var var_3 = vec4<u32>(var_1.a.x & 1u, ~(~firstLeadingBit(u_input.b)), ~(((12087u ^ u_input.a) | ~14221u) & ~12679u), var_2.a.x);
    return arg_0.b;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = 2147483647i;
    global0 = vec4<i32>(u_input.c, max(_wgslsmith_sub_i32(-select(arg_0.b, global0.x, false), func_2(Struct_3(arg_0.a, var_0, global2.c), vec3<f32>(513f, -1000f, 884f))), ~(-8280i)), 0i, global0.x << (u_input.b % 32u));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(global2.a)), -7799i, global2.c);
    let var_2 = ~select(select(select(vec3<i32>(0i, -1i, 2147483647i), global0.zxw & global0.xzx, true), global0.xyx, true), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(global0.wyy, vec3<i32>(0i, arg_0.b, var_1.b)) | firstTrailingBit(global0.yzw), max(global0.xwx | global0.xzx, vec3<i32>(u_input.c, 1i, -2147483647i)), countOneBits(-global0.wyw)), vec3<bool>(true, true, true));
    global2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) + _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -800f)), u_input.c, vec4<f32>(global2.c.x, 1f, _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1002f, 504f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f * 1178f))))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec4<i32> {
    global1 = firstLeadingBit(max(arg_2.b, min(countOneBits(~3808i), _wgslsmith_mod_i32(global0.x, -u_input.c))));
    var var_0 = func_1(arg_2);
    let var_1 = vec3<u32>(~_wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_mod_u32(4294967295u & u_input.a, u_input.a), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 16378u) << (vec3<u32>(u_input.b, 0u, 33999u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(u_input.a, 0u, u_input.b))));
    var var_2 = Struct_2(var_0.a, !(!(func_1(Struct_3(vec2<f32>(371f, var_0.a.x), 9727i, arg_0.c)).c.x <= _wgslsmith_f_op_f32(global2.a.x * 1000f))), var_1.x, arg_0.c, Struct_1(countOneBits(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(33650u, var_1.x, 4294967295u, u_input.b)), ~vec4<u32>(var_1.x, 4294967295u, 4294967295u, u_input.a))), arg_1 || true, vec2<u32>(_wgslsmith_mult_u32(u_input.b, 23843u), u_input.a) << (var_1.zy % vec2<u32>(32u))));
    var var_3 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(abs(~u_input.b), 47629u), _wgslsmith_mult_u32(~(var_2.c << (var_1.x % 32u)), 0u), 1u));
    return _wgslsmith_mult_vec4_i32(~(-(vec4<i32>(u_input.c, global2.b, 13723i, arg_0.b) | vec4<i32>(arg_2.b, arg_0.b, 7738i, 0i))), ~(-vec4<i32>(arg_0.b << (var_3.x % 32u), global2.b, -1i, var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(485f + _wgslsmith_f_op_f32(f32(-1f) * -546f)));
    global0 = -select(-func_4(func_1(Struct_3(vec2<f32>(global2.a.x, 871f), global2.b, vec4<f32>(1447f, global2.c.x, var_0, var_0))), false, func_1(Struct_3(global2.c.zw, global0.x, vec4<f32>(504f, global2.c.x, var_0, var_0)))), _wgslsmith_add_vec4_i32(vec4<i32>(global2.b, 0i, global2.b, global2.b), ~(vec4<i32>(-1i, global2.b, -1i, -2147483647i) ^ vec4<i32>(global2.b, 0i, 1i, u_input.c))), true);
    var var_1 = ~countOneBits(vec4<u32>(u_input.b, 1u, ~0u, _wgslsmith_add_u32(31855u, u_input.b))) >> (~(~(vec4<u32>(1u, u_input.b, 0u, u_input.a) >> (abs(vec4<u32>(35829u, u_input.a, u_input.a, 24313u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(20348u, u_input.a, var_1.x, 13832u), vec4<u32>(u_input.a, var_1.x, 4294967295u, var_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 29488u, 44228u, 1u), vec4<u32>(1u, u_input.b, 26186u, var_1.x) >> (vec4<u32>(var_1.x, var_1.x, 34117u, u_input.a) % vec4<u32>(32u)))));
    var var_3 = firstTrailingBit(122729u);
    global1 = _wgslsmith_add_i32(23766i, func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.c.wy))), firstTrailingBit(_wgslsmith_dot_vec3_i32(global0.zyx, vec3<i32>(global2.b, -20423i, -8386i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, var_0, var_0, global2.a.x))))), vec3<f32>(func_1(func_1(Struct_3(vec2<f32>(-1069f, global2.c.x), u_input.c, global2.c))).a.x, 821f, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(abs(var_0)), true)))));
    var_3 = countOneBits(~_wgslsmith_add_u32(var_1.x, _wgslsmith_sub_u32(0u << (1u % 32u), ~var_1.x)));
    global2 = func_1(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c.ww * _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), global2.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global2.a)))), global2.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1450f, 527f, var_0, -1144f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, -34631i, global2.b), vec3<i32>(-1i, global2.b, 2147483647i)), max(firstLeadingBit(-83900i), min(global2.b, u_input.c))), -5380i, 1i));
}

