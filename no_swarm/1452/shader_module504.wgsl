struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false));

var<private> global2: Struct_2 = Struct_2(true);

var<private> global3: Struct_5 = Struct_5(vec3<i32>(-66800i, 1i, -17835i), -738f, vec4<f32>(-332f, 126f, 729f, -1000f), vec4<u32>(49617u, 32059u, 86666u, 36840u));

var<private> global4: Struct_5 = Struct_5(vec3<i32>(-6929i, 2147483647i, 2147483647i), -1000f, vec4<f32>(-306f, 517f, 1759f, -878f), vec4<u32>(50732u, 1u, 109770u, 16270u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = !any(select(vec3<bool>(true, false, global2.a), !select(vec3<bool>(global2.a, true, global2.a), vec3<bool>(global2.a, global2.a, false), global2.a), vec3<bool>(!global2.a, !global2.a, global2.a)));
    global2 = Struct_2(true);
    let var_1 = _wgslsmith_sub_i32(global3.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global4.a.x, u_input.b.x, global4.a.x), select(vec4<i32>(-2147483647i, -1672i, -71231i, -41026i), vec4<i32>(18504i, -45465i, -32897i, global4.a.x), global1[_wgslsmith_index_u32(4294967295u, 11u)]))) | 29380i);
    global1 = array<vec4<bool>, 11>();
    var var_2 = min(_wgslsmith_mult_u32(_wgslsmith_div_u32(69487u, ~(~global4.d.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global4.d.x, 6953u, u_input.c.x), vec4<u32>(firstLeadingBit(global3.d.x), 1u, 31768u, ~12227u))), global3.d.x);
    return global3.c.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global1 = array<vec4<bool>, 11>();
    global3 = Struct_5(select(global3.a, vec3<i32>(select(-global3.a.x, global4.a.x, select(false, false, arg_0.x)), _wgslsmith_mult_i32(max(2147483647i, -2147483647i), ~u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, u_input.b.x, 73098i, u_input.b.x) & vec4<i32>(1i, 2147483647i, 31i, -1i), vec4<i32>(60131i, global4.a.x, 40834i, 1i))), !any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.b))), vec4<f32>(-211f, _wgslsmith_f_op_f32(trunc(global3.b)), _wgslsmith_f_op_f32(global4.c.x * _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, global4.d.wz), 3u)]))), _wgslsmith_div_f32(-1768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))), vec4<u32>(global3.d.x, 12028u, max(0u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global3.d.x, 22437u, global3.d.x), vec4<u32>(u_input.c.x, global4.d.x, global4.d.x, global3.d.x))));
    let var_0 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.d.x, 3u)], 3u)] ^ ~countOneBits(1u);
    global1 = array<vec4<bool>, 11>();
    global0 = array<u32, 3>();
    return Struct_2(arg_0.x);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(global3.d.x, u_input.c.x), max(reverseBits(~1u), _wgslsmith_mult_u32(~u_input.c.x, global4.d.x)), ~global4.d.x, global0[_wgslsmith_index_u32(abs(~(~u_input.c.x)), 3u)]), global3.c.x, !(!select(vec3<bool>(global2.a, arg_0.a, false), vec3<bool>(global2.a, global2.a, arg_0.a), all(global1[_wgslsmith_index_u32(global4.d.x, 11u)]))), abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(max(1u, 15294u), ~global0[_wgslsmith_index_u32(8116u, 3u)]), u_input.c.x, _wgslsmith_mod_u32(74856u, 101258u))));
    let var_1 = true;
    var var_2 = (-(min(1i, global3.a.x) | _wgslsmith_dot_vec3_i32(u_input.a, u_input.b)) >> (~_wgslsmith_dot_vec2_u32(~u_input.c.wx, global4.d.xx) % 32u)) | firstTrailingBit(-96339i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.b, 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.x, 482f, -372f) + global4.c.xzz), global3.c.xyz)))));
    let var_4 = _wgslsmith_clamp_vec4_u32(global4.d, select(~(~vec4<u32>(0u, global4.d.x, 1u, global4.d.x) | var_0.a), global3.d, !(all(var_0.c) || (arg_0.a && global2.a))), global4.d & global4.d);
    return var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_u32(global3.d.www, ~(~firstLeadingBit(vec3<u32>(25485u, global3.d.x, 89462u) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 0u, u_input.c.x) % vec3<u32>(32u)))));
    var var_1 = vec4<i32>(-1i) * -max(countOneBits(-vec4<i32>(global4.a.x, global3.a.x, global4.a.x, 2147483647i)), select(vec4<i32>(global3.a.x, u_input.a.x, 43986i, 0i) ^ vec4<i32>(-5814i, global4.a.x, -1i, -16307i), vec4<i32>(u_input.b.x, u_input.b.x, global4.a.x, global4.a.x) ^ vec4<i32>(global3.a.x, global3.a.x, global4.a.x, global4.a.x), global2.a));
    global4 = Struct_5(~vec3<i32>(select(2251i, 8546i & var_1.x, true), ~(global3.a.x >> (4294967295u % 32u)), _wgslsmith_sub_i32(2978i, global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(106f - _wgslsmith_f_op_f32(ceil(global3.c.x))) - _wgslsmith_f_op_f32(f32(-1f) * -201f)), global4.c, firstTrailingBit(func_4(func_2(vec2<bool>(false, true)))));
    let var_2 = Struct_1(global3.d, -437f, vec3<bool>(true, reverseBits(~global3.a.x) != (_wgslsmith_mult_i32(-47013i, global4.a.x) >> (~u_input.c.x % 32u)), true), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.x << (32997u % 32u), 82661u), global3.d.x), 1u & var_0.x));
    var var_3 = Struct_3(!select(vec3<bool>(true || var_2.c.x, true, global2.a), var_2.c, all(select(vec4<bool>(false, true, false, var_2.c.x), global1[_wgslsmith_index_u32(var_2.d, 11u)], vec4<bool>(false, false, var_2.c.x, true)))), Struct_1(~select(global3.d, vec4<u32>(78905u, u_input.c.x, 4294967295u, 4294967295u), global1[_wgslsmith_index_u32(var_0.x, 11u)]) & global3.d, _wgslsmith_f_op_f32(min(var_2.b, _wgslsmith_div_f32(-1544f, _wgslsmith_f_op_f32(-global3.b)))), !var_2.c, var_2.d ^ _wgslsmith_add_u32(~var_0.x, reverseBits(var_2.a.x))));
    return Struct_2(!var_2.c.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = -973f;
    global4 = Struct_5(_wgslsmith_mult_vec3_i32(~select(vec3<i32>(11795i, global4.a.x, global3.a.x), u_input.b, false) & _wgslsmith_mod_vec3_i32(-global4.a, abs(vec3<i32>(0i, 2147483647i, 3599i))), global4.a), _wgslsmith_f_op_f32(884f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.c.x)))), vec4<f32>(global4.c.x, -522f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global4.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-161f)) * -1192f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.b))))), vec4<u32>(4294967295u, ~83396u, ~(~(~1u)), func_4(Struct_2(false | arg_0.a)).x));
    let var_1 = -max(_wgslsmith_sub_i32(-2147483647i, reverseBits(_wgslsmith_add_i32(0i, global3.a.x))), global4.a.x);
    global2 = Struct_2(any(select(!select(vec2<bool>(global2.a, false), vec2<bool>(arg_0.a, false), false), select(vec2<bool>(arg_0.a, false), vec2<bool>(global2.a, global2.a), global0[_wgslsmith_index_u32(u_input.c.x, 3u)] >= global4.d.x), all(global1[_wgslsmith_index_u32(9928u, 11u)]))));
    global4 = Struct_5(vec3<i32>(arg_2.x, ~(-u_input.b.x), -abs(var_1 >> (0u % 32u))), global4.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b, -2105f, global3.b, 1410f), vec4<f32>(1015f, global4.b, 775f, 627f), vec4<bool>(global2.a, true, arg_0.a, false)))))), func_4(arg_0));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global3.c.zzz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.c.wxx)) + _wgslsmith_div_vec3_f32(global3.c.wyy, global4.c.xwy))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(func_1(), global3.d, ~(-global3.a.yx)));
    let var_1 = Struct_2(all(!global1[_wgslsmith_index_u32(0u, 11u)]));
    let var_2 = global4.a.x;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x)))), Struct_1(vec4<u32>(~max(global3.d.x, global0[_wgslsmith_index_u32(0u, 3u)]), firstLeadingBit(~51345u), _wgslsmith_add_u32(firstLeadingBit(u_input.c.x), ~global0[_wgslsmith_index_u32(9742u, 3u)]), global0[_wgslsmith_index_u32(abs(0u), 3u)]), _wgslsmith_f_op_f32(global4.b * global3.b), vec3<bool>(false, all(global1[_wgslsmith_index_u32(29517u, 11u)]), true), 0u), select(select(vec4<bool>(true, true && var_1.a, any(vec2<bool>(global2.a, global2.a)), global3.b == -1451f), !global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.d.x, 3u)], 3u)], 11u)], select(vec4<bool>(true, var_1.a, true, var_1.a), select(vec4<bool>(false, global2.a, true, var_1.a), global1[_wgslsmith_index_u32(global4.d.x, 11u)], vec4<bool>(true, true, var_1.a, var_1.a)), func_2(vec2<bool>(true, var_1.a)).a)), global1[_wgslsmith_index_u32(global3.d.x, 11u)], select(true, false, any(!vec2<bool>(false, global2.a)))), global4.a.x);
    global3 = Struct_5(vec3<i32>(-25741i, _wgslsmith_add_i32(var_3.d, -61498i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global3.a, global3.a), countOneBits(vec3<i32>(u_input.a.x, 43343i, -41068i)))), -357f, _wgslsmith_f_op_vec4_f32(floor(global3.c)), vec4<u32>(func_4(var_1).x, 24074u ^ ~(~global3.d.x), global4.d.x, 4294967295u));
    global4 = Struct_5(firstTrailingBit(u_input.a << (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1942u, u_input.c.x, global0[_wgslsmith_index_u32(global4.d.x, 3u)]), global3.d.zyz), vec3<u32>(var_3.b.d, 1u, var_3.b.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1180f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.b, global3.b, global3.b) * _wgslsmith_f_op_vec4_f32(min(global4.c, global3.c))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -366f, 1051f))))), func_4(func_2(vec2<bool>(global3.c.x < var_0.x, all(vec2<bool>(true, var_1.a))))));
    global3 = Struct_5(vec3<i32>(_wgslsmith_clamp_i32(global3.a.x, 1i, ~(-10250i)), -var_3.d, -1i), _wgslsmith_div_f32(-723f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(false), vec4<u32>(1u, 74442u, 153u, 4294967295u), vec2<i32>(var_3.d, global3.a.x))).x - 955f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(global3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, var_0.x, 1515f, 251f)))))), ~vec4<u32>(_wgslsmith_mult_u32(var_3.b.d, var_3.b.a.x) ^ 4294967295u, min(4294967295u, var_3.b.a.x) ^ global3.d.x, _wgslsmith_dot_vec4_u32(global3.d, var_3.b.a), min(41200u, ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~34220u, global3.c, global3.c.x);
}

