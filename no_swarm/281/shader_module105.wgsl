struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4 = Struct_4(vec4<bool>(true, false, true, true), Struct_1(vec2<f32>(-1344f, 272f), 27736u), 0i, false, Struct_2(false));

var<private> global2: array<bool, 18>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    global1 = Struct_4(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 18u)], all(global1.a.xz), !global2[_wgslsmith_index_u32(4294967295u, 18u)] | !global1.a.x, global1.b.b > max(4294967295u, global1.b.b)), Struct_1(global1.b.a, select(_wgslsmith_div_u32(29077u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.b, 1u, 4294967295u), vec3<u32>(31390u, global1.b.b, global1.b.b))), firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 4294967295u, global1.b.b)), any(global1.a.xw))), _wgslsmith_sub_i32(i32(-1i) * -1i, countOneBits(-2147483647i)), true, Struct_2(true));
    let var_0 = select(global1.a.xxy, !(!(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(global1.b.b, 18u)])))), !global1.e.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1119f, global1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1369f)) + _wgslsmith_f_op_f32(f32(-1f) * -1114f))), _wgslsmith_f_op_f32(global1.b.a.x * 917f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-623f - _wgslsmith_f_op_f32(f32(-1f) * -539f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, 883f, global1.b.a.x, 557f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1708f, 1614f, 2526f, -1543f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-614f, -788f, 1000f, 1296f), vec4<f32>(global1.b.a.x, -849f, global1.b.a.x, global1.b.a.x))))));
    let var_2 = 4294967295u;
    let var_3 = Struct_2(all(select(select(vec3<bool>(false, false, true), vec3<bool>(global1.e.a, global1.a.x, true), var_0), !(!vec3<bool>(true, var_0.x, false)), vec3<bool>(true, global1.d, true))));
    return ~1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_4 {
    let var_0 = 37777u;
    var var_1 = min(firstTrailingBit((~vec4<u32>(var_0, global1.b.b, global1.b.b, 28018u) >> (select(vec4<u32>(56744u, 11841u, global1.b.b, var_0), vec4<u32>(global1.b.b, 1u, 23580u, 0u), vec4<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], global1.e.a, arg_1.x, true)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, 1u, var_0, 4294967295u), vec4<u32>(global1.b.b, var_0, var_0, global1.b.b), global1.a), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 10724u, var_0, 65258u), vec4<u32>(7011u, 4294967295u, 5278u, 36279u)))), vec4<u32>(~33168u, 1u, var_0, select(var_0, 38943u, any(global1.a.xxx))));
    global0 = firstTrailingBit(~_wgslsmith_add_i32(u_input.a, reverseBits(global1.c)) | -global1.c);
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, func_3(), 36473u, max(~_wgslsmith_mod_u32(var_1.x, global1.b.b), _wgslsmith_mult_u32(var_0, 24888u))), abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(max(vec4<u32>(global1.b.b, 24805u, 28581u, var_1.x), vec4<u32>(global1.b.b, 4294967295u, var_1.x, var_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(31122u, 0u, 69235u, global1.b.b), vec4<u32>(global1.b.b, var_1.x, var_1.x, 4294967295u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_0, global1.b.b, var_1.x), vec4<u32>(var_1.x, global1.b.b, var_1.x, 1u)) % vec4<u32>(32u)))), vec4<u32>(0u, 1u, global1.b.b, _wgslsmith_div_u32(var_1.x, var_1.x >> ((global1.b.b & 0u) % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b.a, vec2<f32>(global1.b.a.x, 1211f)) - vec2<f32>(global1.b.a.x, -1073f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-969f, global1.b.a.x)) + vec2<f32>(global1.b.a.x, global1.b.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(745f, global1.b.a.x), vec2<f32>(-264f, 1000f), vec2<bool>(global1.a.x, true)))))))));
    return Struct_4(global1.a, global1.b, global1.c, true, global1.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_1 {
    global2 = array<bool, 18>();
    let var_0 = global1.e;
    global1 = func_2(vec3<i32>(1i, u_input.b.x, u_input.c.x), !global1.a.yw, !global1.a.x);
    var var_1 = func_2(_wgslsmith_clamp_vec3_i32(-vec3<i32>(~u_input.b.x, _wgslsmith_sub_i32(global1.c, -1i), u_input.a), -_wgslsmith_div_vec3_i32(abs(u_input.c.wyx), -u_input.c.xwx), ~abs(u_input.c.zyw)), !select(global1.a.xz, vec2<bool>(global1.e.a, u_input.b.x <= global1.c), global1.a.zw), any(!(!global1.a.zwz))).b;
    var var_2 = Struct_2(true);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(161f, 1057f))))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<bool>(all(select(!vec3<bool>(global1.e.a, global1.e.a, true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(10708u, 18u)]), global1.a.xxx, false), true)), true, true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)], false, true))), func_1(global1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.a.x, 1174f))), 29336u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x - -2100f) - -1044f) - _wgslsmith_f_op_f32(1000f * global1.b.a.x))), u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(~(vec3<u32>(44386u, 10219u, 0u) >> (vec3<u32>(4294967295u, global1.b.b, 36496u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.b, global1.b.b, 27822u), vec3<u32>(36837u, 74774u, 57182u))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(6666u, global1.b.b, 5751u), vec3<u32>(86276u, 4294967295u, global1.b.b)) | firstLeadingBit(vec3<u32>(9139u, 4294967295u, 4294967295u)), vec3<u32>(~global1.b.b, 1u, 1u), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.d, true, true), vec3<bool>(false, true, global1.a.x), global1.a.wyy), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(global1.b.b, 18u)])))), 18u)], global1.e);
    var_0 = func_2(vec3<i32>(~var_0.c, abs(~firstLeadingBit(global1.c)), _wgslsmith_mod_i32(var_0.c, -9384i)), vec2<bool>(true, !(!select(global1.d, global1.d, global2[_wgslsmith_index_u32(global1.b.b, 18u)]))), true);
    global1 = Struct_4(!(!select(func_2(vec3<i32>(37088i, -37878i, global1.c), vec2<bool>(global2[_wgslsmith_index_u32(var_0.b.b, 18u)], true), true).a, select(vec4<bool>(global1.e.a, var_0.d, true, true), var_0.a, var_0.a), global2[_wgslsmith_index_u32(~var_0.b.b, 18u)])), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.x, var_0.b.a.x)))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 21873u), global1.b.b)), -var_0.c, true, var_0.e);
    global0 = global1.c;
    global2 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.b, func_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x - -774f) * 1911f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, 991f)))), _wgslsmith_add_u32(global1.b.b, 22659u), 791f).b);
}

