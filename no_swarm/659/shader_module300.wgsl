struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(1389f, -2249f), vec3<u32>(26278u, 4294967295u, 1u));

var<private> global2: f32 = -1000f;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.a)));
    return abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(1u, arg_0.d, false) & arg_0.d, ~arg_0.d | max(arg_0.d, global1.b.x)), global1.b.x, ~1u));
}

fn func_2() -> Struct_1 {
    global2 = global1.a.x;
    var var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, global1.b.x, 0u)), vec4<u32>(select(u_input.c, global1.b.x, false), ~u_input.c, func_3(Struct_2(vec4<f32>(-740f, 1000f, global1.a.x, global1.a.x), 476f, Struct_1(1i), global1.b.x), -206i), global1.b.x << (5011u % 32u))), ~(~(~vec4<u32>(23282u, global1.b.x, 66191u, 1236u))), abs(abs(reverseBits(vec4<u32>(26740u, 1u, 4294967295u, 13641u)))));
    let var_1 = !(_wgslsmith_div_i32(2147483647i, global0.x | countOneBits(u_input.d)) < global0.x);
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x));
    return Struct_1(_wgslsmith_sub_i32(global0.x, -u_input.d));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = global1.a;
    global2 = var_0.x;
    global2 = var_0.x;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1252f))));
    let var_2 = firstTrailingBit(0u) >= (_wgslsmith_clamp_u32(~43193u, 4294967295u, global1.b.x) | _wgslsmith_mod_u32(~global1.b.x, _wgslsmith_sub_u32(~u_input.c, 23993u)));
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-920f, global1.a.x)) * global1.a)))), select(~global1.b, countOneBits(global1.b), select(vec3<bool>(select(false, false, true), true, true), vec3<bool>(true, true, true), !any(vec2<bool>(false, false)))));
    var var_0 = select(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_3.a, 23843i) ^ vec3<i32>(0i, 27394i, arg_3.a), firstTrailingBit(vec3<i32>(global0.x, arg_2, -2147483647i))), ~min(arg_3.a, -27838i), 44219i), countOneBits(vec3<i32>(-1i) * -vec3<i32>(global0.x, arg_2, 2147483647i)), select(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false))), _wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.x, -40747i), vec2<i32>(u_input.d, -2147483647i)), countOneBits(u_input.a)) < u_input.d));
    global0 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(1i, u_input.a.x), abs(global0.x), arg_1.a) >> (~(_wgslsmith_mod_vec3_u32(vec3<u32>(43765u, u_input.c, 0u), global1.b) >> (global1.b % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, global0.x, var_0.x), vec3<i32>(arg_3.a, -26977i, global0.x)), vec3<i32>(-4627i, arg_3.a, var_0.x), all(vec3<bool>(false, false, false))), abs(-vec3<i32>(-4156i, 11177i, 0i))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 67116i), vec2<i32>(arg_3.a, global0.x)), _wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(2147483647i, 10844i))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_3.a, arg_3.a), -24734i, -arg_1.a), 1i), min(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, arg_2), vec3<i32>(var_0.x, global0.x, u_input.a.x)), firstTrailingBit(vec3<i32>(-2147483647i, 0i, -2147483647i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), -vec3<i32>(-14958i, u_input.d, 14519i) ^ reverseBits(vec3<i32>(-48810i, arg_2, arg_1.a)))), vec3<i32>(1i, _wgslsmith_mult_i32(-1i, -8209i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, var_0.x ^ 0i), firstLeadingBit(var_0.x))));
    let var_1 = _wgslsmith_dot_vec2_i32(-global0.xz, _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(arg_2, min(44272i, u_input.d))), -global0.yx));
    var var_2 = countOneBits(vec2<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, u_input.c)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), global1.a.x));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(194f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    var var_0 = global1.b.x;
    var_0 = 67629u;
    global0 = -vec3<i32>(~u_input.d, ~max(1i, max(17197i, u_input.d)), global0.x);
    let var_1 = -select(~abs(max(vec4<i32>(global0.x, global0.x, -6804i, u_input.a.x), vec4<i32>(u_input.b.x, -2147483647i, global0.x, u_input.a.x))), ~select(vec4<i32>(20777i, global0.x, global0.x, 0i) << (vec4<u32>(0u, u_input.c, u_input.c, 16713u) % vec4<u32>(32u)), ~vec4<i32>(-51372i, 0i, 20079i, u_input.b.x), any(vec3<bool>(false, false, true))), any(vec4<bool>(2147483647i == u_input.a.x, true, all(vec3<bool>(true, true, false)), true)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * vec2<f32>(934f, 230f)), ~vec3<u32>(_wgslsmith_sub_u32(u_input.c, 17868u), u_input.c | 1u, ~u_input.c));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = ~(-1315i);
    global2 = arg_1.a.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a.x * global1.a.x))), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x))))), _wgslsmith_f_op_f32(global1.a.x * func_5(_wgslsmith_f_op_f32(arg_1.a.x - global1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1542f, arg_1.a.x, -913f), vec3<f32>(global1.a.x, arg_1.a.x, arg_1.a.x)))).a.x), arg_0, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(global1.b.xz, global1.b.zx), ~(vec2<u32>(50254u, u_input.c) & vec2<u32>(u_input.c, global1.b.x))) ^ ~(~(u_input.c ^ 1u)));
    global0 = ~abs(abs(-vec3<i32>(-2147483647i, var_0, u_input.b.x))) & min(~abs(select(vec3<i32>(-3945i, var_0, u_input.b.x), vec3<i32>(0i, 2409i, 12648i), false)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12255i, -1i, -30502i), vec3<i32>(arg_0.a, global0.x, var_1.c.a)), var_1.c.a & global0.x, 1i) ^ vec3<i32>(0i, func_1(Struct_1(-2710i), global1.a, vec3<u32>(4294967295u, 77882u, u_input.c)).a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(var_1.c.a, arg_0.a, global0.x))));
    global1 = func_5(516f, var_1.a.wzy);
    return StorageBuffer(~0u, vec2<f32>(global1.a.x, global1.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.a.x)))), _wgslsmith_f_op_f32(-func_5(-525f, var_1.a.zzy).a.x)))), vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.b, min(u_input.a, global0.zy)), -(_wgslsmith_mult_i32(global0.x, arg_0.a) & _wgslsmith_clamp_i32(0i, -23900i, 1i)), arg_0.a, func_2().a << (~(~0u) % 32u)), _wgslsmith_mult_vec3_i32(abs(min(vec3<i32>(12976i, global0.x, u_input.a.x), firstLeadingBit(vec3<i32>(0i, 3704i, -13050i)))), vec3<i32>(_wgslsmith_sub_i32(min(0i, arg_0.a), ~var_0), 1i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.x;
    let var_1 = false;
    global2 = -2444f;
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, 0i);
    var_2 = i32(-1i) * -(~0i);
    let x = u_input.a;
    s_output = func_6(Struct_1(_wgslsmith_mod_i32(2147483647i, 1i) >> ((u_input.c | global1.b.x) % 32u)), func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -859f), func_1(Struct_1(u_input.d), vec2<f32>(global1.a.x, 287f), _wgslsmith_add_vec3_u32(vec3<u32>(39692u, global1.b.x, u_input.c), global1.b)), 31053i << (1u % 32u), func_2())), vec3<f32>(global1.a.x, global1.a.x, global1.a.x)));
}

