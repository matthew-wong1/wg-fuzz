struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec4<f32> = vec4<f32>(800f, -336f, -853f, -130f);

var<private> global2: Struct_2 = Struct_2(Struct_1(1u, vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false));

var<private> global3: array<f32, 27> = array<f32, 27>(-1145f, 225f, -276f, -732f, -792f, -1548f, 403f, 1000f, -2880f, -1244f, -2462f, 406f, -1000f, 2029f, 387f, 1490f, -743f, 1590f, -572f, 1221f, -1279f, 386f, -1000f, -131f, -398f, -1015f, -119f);

var<private> global4: array<bool, 20> = array<bool, 20>(true, true, true, false, true, true, false, true, true, true, true, true, true, false, true, false, false, true, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global3 = array<f32, 27>();
    var var_0 = vec3<u32>(~u_input.d.x >> (firstLeadingBit(firstTrailingBit(13274u) & 75206u) % 32u), global2.a.a, u_input.c.x);
    var_0 = u_input.d;
    let var_1 = firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, 19441u));
    var var_2 = Struct_4(reverseBits(~((u_input.c.ww | vec2<u32>(global2.a.a, var_1)) | _wgslsmith_sub_vec2_u32(vec2<u32>(global2.a.a, var_1), vec2<u32>(34827u, var_1)))));
    return firstLeadingBit(u_input.e.x);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f * global1.x) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) * _wgslsmith_f_op_f32(279f * global1.x)), 2194f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global3[_wgslsmith_index_u32(global2.a.a, 27u)], 805f, 1306f) + vec4<f32>(global1.x, global3[_wgslsmith_index_u32(66607u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], global1.x)) + vec4<f32>(-560f, global1.x, 138f, global3[_wgslsmith_index_u32(0u, 27u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global3[_wgslsmith_index_u32(global2.a.a, 27u)], global1.x, 734f)))));
    let var_0 = func_3() >= reverseBits(_wgslsmith_add_i32(func_3(), 52461i) >> (~abs(u_input.d.x) % 32u));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(arg_0.yyz), ~(arg_0.wzy << (u_input.c.xyx % vec3<u32>(32u))) | -arg_0.wxy), firstTrailingBit(_wgslsmith_clamp_vec3_i32(arg_0.xxx >> (select(u_input.d, u_input.c.yyy, vec3<bool>(var_0, global2.b.x, false)) % vec3<u32>(32u)), arg_0.wzw, -vec3<i32>(arg_0.x, arg_0.x, u_input.a))), abs(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(arg_0.x, u_input.e.x)), -18711i)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zyx - vec3<f32>(global1.x, 554f, -1302f)) * _wgslsmith_f_op_vec3_f32(-global1.xwy)) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-312f, global3[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_f32(floor(global1.x))), 967f, global1.x)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(abs(~global2.a.a), min(~5257u, ~43152u)), 45355u), _wgslsmith_dot_vec2_u32(abs(u_input.c.zx), ~select(vec2<u32>(10941u, global2.a.a), vec2<u32>(76338u, u_input.c.x), global2.b.x)), global2.a);
    let var_3 = Struct_5(Struct_1(global2.a.a, select(select(!var_2.d.b, vec4<bool>(global2.a.b.x, false, global2.a.b.x, var_2.d.b.x), var_2.d.b.x), select(vec4<bool>(true, global2.a.b.x, global4[_wgslsmith_index_u32(4294967295u, 20u)], var_0), vec4<bool>(var_2.d.b.x, global4[_wgslsmith_index_u32(var_2.c, 20u)], global4[_wgslsmith_index_u32(1u, 20u)], var_0), vec4<bool>(true, global2.b.x, false, global4[_wgslsmith_index_u32(var_2.b, 20u)])), all(global2.b))), true);
    return var_2.b;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = vec2<u32>(8107u, min(_wgslsmith_mod_u32(firstLeadingBit(min(global2.a.a, u_input.d.x)), _wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(u_input.d.x, 14720u))), 70653u));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_2(~vec4<i32>(u_input.a, 7239i, 1i, 13742i)), _wgslsmith_dot_vec2_u32(select(u_input.d.zx, vec2<u32>(1u, global2.a.a), vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 20u)])), u_input.c.zz)), reverseBits(var_0.x)), _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(0u, 1u, ~global2.a.a, ~3744u) >> (vec4<u32>(var_0.x, 4294967295u, reverseBits(global2.a.a), 1u) % vec4<u32>(32u))));
    var_1 = _wgslsmith_sub_u32(global2.a.a, 0u) | reverseBits(u_input.d.x);
    global3 = array<f32, 27>();
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.ww * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global1.x + -634f), _wgslsmith_f_op_f32(global1.x + 384f)), vec2<f32>(-132f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.a.a, 27u)])))))));
    return _wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(f32(-1f) * -950f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, global1.x))))), -1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.a.a, 27u)], -363f) * -619f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - -1482f))))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(func_1(!select(global4[_wgslsmith_index_u32(4294967295u, 20u)], global4[_wgslsmith_index_u32(35902u, 20u)], global4[_wgslsmith_index_u32(1u, 20u)]))), 860f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 850f) - _wgslsmith_div_f32(global1.x, global1.x)), global1.x))));
    var var_0 = global2.a;
    global0 = array<Struct_1, 17>();
    var_0 = Struct_1(0u, vec4<bool>(any(var_0.b.yyz), select(global4[_wgslsmith_index_u32(global2.a.a, 20u)] & true, all(!var_0.b.xww), false), global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(~u_input.c.xzw, select(u_input.d, vec3<u32>(var_0.a, 0u, 1u), global2.a.b.zwz))), 20u)], true));
    global4 = array<bool, 20>();
    let var_1 = Struct_4(vec2<u32>(_wgslsmith_mod_u32(~(4294967295u ^ global2.a.a), 43562u), 18880u));
    var var_2 = countOneBits(~reverseBits(vec2<u32>(max(99202u, var_0.a), 6549u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | -u_input.e.x, _wgslsmith_mult_i32(0i, ~(-u_input.e.x) >> (var_0.a % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -440f)))), _wgslsmith_div_vec4_u32(firstLeadingBit(u_input.c), vec4<u32>(u_input.d.x, 5947u, 1u, 29294u)) | ((u_input.c & (u_input.c | u_input.c)) | min(~u_input.c, u_input.c)));
}

