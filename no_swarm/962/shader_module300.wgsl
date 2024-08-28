struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(610f, -2155f, 285f), vec3<f32>(536f, 1306f, -739f), vec3<f32>(-1090f, 1064f, 131f), vec3<f32>(-159f, -463f, 1811f), vec3<f32>(-373f, -1411f, 117f), vec3<f32>(-331f, 1352f, 1668f), vec3<f32>(-1256f, 249f, 171f), vec3<f32>(671f, 936f, 1613f), vec3<f32>(561f, -1233f, -444f), vec3<f32>(-808f, -1474f, -138f), vec3<f32>(-384f, 146f, 1346f), vec3<f32>(447f, -2593f, -958f), vec3<f32>(1000f, -1689f, -931f), vec3<f32>(-363f, -768f, 1981f), vec3<f32>(-164f, 2349f, 798f), vec3<f32>(1060f, -1423f, 377f), vec3<f32>(315f, 1344f, -1590f), vec3<f32>(765f, 1000f, 641f), vec3<f32>(-339f, 1185f, 285f), vec3<f32>(1000f, -409f, 1722f), vec3<f32>(2287f, -1045f, 488f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<u32> {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_0 = u_input.c.ww;
    global1 = ((21729u >> (~(~u_input.b) % 32u)) ^ (~_wgslsmith_div_u32(0u, u_input.b) & _wgslsmith_mult_u32(max(u_input.b, 60287u), 23803u))) < 4294967295u;
    var var_1 = Struct_3(Struct_1(u_input.d.x, ~1u), ~(u_input.c.zxx << (_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 57896u), vec3<bool>(true, false, true)), min(vec3<u32>(1u, 1u, 59219u), vec3<u32>(0u, 22098u, u_input.b))) % vec3<u32>(32u))), select(vec4<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(false, false)) || false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, false)), true, reverseBits(vec4<u32>(select(25330u, u_input.b, false) ^ max(0u, u_input.b), ~54032u, u_input.b, u_input.b)));
    return abs(vec4<u32>(firstLeadingBit(select(u_input.b ^ u_input.b, u_input.b, all(var_1.c.yx))), ~_wgslsmith_mult_u32(u_input.b, ~u_input.b), _wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_add_u32(u_input.b, 1u)) << (~_wgslsmith_mod_u32(0u, u_input.b) % 32u), 4606u));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = func_3();
    let var_1 = _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.b, u_input.b, u_input.b, 26395u)) << (abs(vec4<u32>(19133u, u_input.b ^ 0u, ~16357u, 86239u)) % vec4<u32>(32u)), ~vec4<u32>(0u, ~1u, ~var_0.x << (1u % 32u), arg_0.b));
    var var_2 = u_input.c.x;
    let var_3 = Struct_3(arg_0, u_input.c.xzw, vec4<bool>(true, true, !(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 3u)], 697f) == global0[_wgslsmith_index_u32(abs(34529u), 3u)]), true), any(vec3<bool>(true | (0i >= u_input.c.x), _wgslsmith_mult_i32(0i, 44726i) != select(arg_0.a, arg_0.a, true), any(vec2<bool>(false, true)))), reverseBits(var_1));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(8456u, 3u)] * global0[_wgslsmith_index_u32(16284u, 3u)])) - -2284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(684f, _wgslsmith_f_op_f32(step(850f, 1365f)), true))))));
    return vec4<bool>(all(!var_3.c.zzx), false, !var_3.c.x || true, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_3.e.zz, ~vec2<u32>(arg_0.b, u_input.b)), ~(~var_0.xw)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.a.b, _wgslsmith_clamp_u32(u_input.b, arg_0.b, arg_0.b)), var_1.xwy));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = select(select(vec2<bool>(u_input.d.x == select(-1i, u_input.d.x, false), true), !select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), !arg_0), any(select(func_2(Struct_1(30478i, 4294967295u)), vec4<bool>(true, false, true, arg_0), true))), select(vec2<bool>(any(vec2<bool>(arg_0, false)), arg_0), !select(vec2<bool>(true, arg_0), func_2(Struct_1(u_input.c.x, 43003u)).wy, false), true), select(vec2<bool>(select(arg_0, true, arg_0) & (4294967295u <= u_input.b), any(vec4<bool>(arg_0, arg_0, true, false)) && true), !(!(!vec2<bool>(arg_0, false))), true));
    let var_1 = _wgslsmith_dot_vec2_i32(reverseBits(u_input.d), _wgslsmith_clamp_vec2_i32(u_input.d, firstTrailingBit(vec2<i32>(-3333i, -1i)), vec2<i32>(-27484i, u_input.a)));
    let var_2 = ~u_input.a;
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.zyw, u_input.c.yzy), u_input.c.wxy), u_input.c.wwx & vec3<i32>(var_1, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(8622i, u_input.c.x, -1i, var_1)), firstLeadingBit(vec4<i32>(u_input.d.x, var_2, var_1, -11905i))), ~var_2 << (select(u_input.b, 4294967295u, false) % 32u)));
    let var_4 = 0u;
    return any(select(vec3<bool>(var_0.x, true, any(!vec2<bool>(var_0.x, arg_0))), vec3<bool>(true, var_4 > 0u, select(false, arg_0, false) | !var_0.x), !(!(!vec3<bool>(var_0.x, var_0.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(abs(-_wgslsmith_dot_vec2_i32(u_input.d, u_input.c.xw)), min(u_input.b, ~55844u) ^ 39617u), u_input.c.yxy, select(!vec4<bool>(u_input.b < u_input.b, true, true, false), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, func_1(true), u_input.d.x <= 793i, true), func_2(Struct_1(u_input.a, u_input.b))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), u_input.b ^ u_input.b) > _wgslsmith_mod_u32(u_input.b, ~4294967295u)), !all(vec3<bool>(true, true, true)), ~abs(firstLeadingBit(vec4<u32>(u_input.b, 1u, 4294967295u, 43295u))));
    global2 = array<vec3<f32>, 21>();
    let var_1 = Struct_2(Struct_1(-_wgslsmith_dot_vec3_i32(~var_0.b, reverseBits(var_0.b)), u_input.b), -1i);
    var var_2 = var_0.c;
    var var_3 = var_0.e;
    var_2 = func_2(Struct_1(_wgslsmith_mod_i32(8468i, var_1.b), var_0.e.x));
    global2 = array<vec3<f32>, 21>();
    var var_4 = abs(~firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.c.ww << (var_3.zy % vec2<u32>(32u)), max(u_input.c.wz, vec2<i32>(u_input.a, var_0.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-842f, global0[_wgslsmith_index_u32(abs(var_3.x), 3u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1697f)))) * -186f)), reverseBits(~(var_1.a.b | 67021u)) | ~func_3().x, u_input.c.x);
}

