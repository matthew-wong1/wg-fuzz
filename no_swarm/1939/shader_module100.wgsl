struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1730f;

var<private> global1: Struct_3 = Struct_3(-2652f, vec4<f32>(-543f, 1000f, -221f, 869f), vec4<u32>(1u, 6220u, 1u, 0u));

var<private> global2: array<bool, 17>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    let var_0 = Struct_4(global1.b.xwx, vec2<bool>(false, global2[_wgslsmith_index_u32(51452u, 17u)]), Struct_2(Struct_1(-268f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 1293f, global1.b.x)), _wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_sub_vec2_i32(u_input.e.yy, abs(vec2<i32>(u_input.d, u_input.c)))), Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -1259f, global1.b.x))), _wgslsmith_f_op_f32(global1.b.x + global1.b.x), _wgslsmith_mod_vec2_i32(u_input.e.xz, vec2<i32>(u_input.e.x, -22003i)) >> (max(vec2<u32>(4294967295u, global1.c.x), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))), -22728i, Struct_1(-687f, _wgslsmith_f_op_vec3_f32(step(global1.b.zwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -950f, global1.a) + global1.b.xwx))), global1.a, select(u_input.e.yz, vec2<i32>(u_input.d, -1i), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(var_0.c.d.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(779f * _wgslsmith_div_f32(-916f, var_0.c.a.a)), var_0.c.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 762f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))), global1.c);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return var_0.c.d.d.x;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1604f - 126f)), -1626f), !select(select(vec2<bool>(global2[_wgslsmith_index_u32(global1.c.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(66764u, 17u)], true), vec2<bool>(true, global2[_wgslsmith_index_u32(30821u, 17u)]), global2[_wgslsmith_index_u32(75220u, 17u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(false, true), global2[_wgslsmith_index_u32(arg_0.c.x, 17u)])), !vec2<bool>(global2[_wgslsmith_index_u32(arg_0.c.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), any(vec4<bool>(global2[_wgslsmith_index_u32(65406u, 17u)], global2[_wgslsmith_index_u32(74376u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(global1.c.x, 17u)]))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -143f, arg_0.b.x) * global1.b.yyw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-331f * global1.a), 1032f), vec2<i32>(func_3(), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.e.x, -4919i), vec4<i32>(1i, -12723i, 38876i, u_input.e.x)))), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(global1.b.xzx, global1.b.zzw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), vec2<i32>(-2147483647i, ~0i)), u_input.e.x, Struct_1(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(432f, arg_0.a, -1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-756f, -979f, global1.a) * vec3<f32>(-731f, global1.a, arg_0.b.x))), -1372f, vec2<i32>(_wgslsmith_clamp_i32(32236i, u_input.b, u_input.c), -u_input.c))));
    let var_1 = abs(-2147483647i >> (firstLeadingBit(~(~arg_0.c.x)) % 32u));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.c, ~(~global1.c)), ~abs(vec4<u32>(1u, arg_0.c.x, 410u, global1.c.x) ^ arg_0.c)), ~1u);
    var_2 = ~69410u;
    var var_3 = !(!vec4<bool>(true, var_0.b.x, all(vec2<bool>(true, global2[_wgslsmith_index_u32(5893u, 17u)])) && !var_0.b.x, !any(var_0.b)));
    return var_0.c.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_3 {
    global0 = func_2(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b.x)), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(arg_0.a.c, global1.b, vec4<u32>(55606u, 4294967295u, u_input.a.x, u_input.a.x))).c + _wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_f_op_f32(f32(-1f) * -1050f), arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x)), vec4<u32>(reverseBits(63366u), u_input.a.x, select(42979u, 0u, false), ~global1.c.x))).a;
    var var_0 = -529f;
    var var_1 = arg_0.d.d;
    var var_2 = Struct_2(arg_0.b, Struct_1(arg_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.d.b))) + _wgslsmith_f_op_vec3_f32(-global1.b.xxw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.c))), vec2<i32>(-1i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -_wgslsmith_div_i32(2147483647i, u_input.e.x)), min(arg_0.d.d, _wgslsmith_clamp_vec2_i32(arg_0.b.d, arg_0.b.d, vec2<i32>(arg_0.a.d.x, arg_0.d.d.x)))), func_2(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, 1033f))), global1.b, global1.c)));
    var var_3 = vec4<f32>(global1.a, -396f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), -1245f), _wgslsmith_f_op_f32(min(1426f, arg_0.d.c)));
    return Struct_3(-1286f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(abs(global1.b)), true)))), _wgslsmith_mod_vec4_u32(global1.c ^ abs(vec4<u32>(global1.c.x, 37034u, u_input.a.x, 1u)), vec4<u32>(global1.c.x, global1.c.x, 4294967295u, u_input.a.x) & global1.c) | abs(countOneBits(firstTrailingBit(vec4<u32>(41023u, 4294967295u, u_input.a.x, 0u)))));
}

fn func_1() -> Struct_4 {
    global1 = func_4(Struct_2(func_2(Struct_3(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_vec4_f32(-global1.b), ~global1.c)), Struct_1(_wgslsmith_f_op_f32(-315f * -883f), vec3<f32>(global1.b.x, -832f, _wgslsmith_f_op_f32(-136f + global1.b.x)), _wgslsmith_f_op_f32(round(-1000f)), u_input.e.yx), (~u_input.c >> (global1.c.x % 32u)) | 47664i, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.b.wyz)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.a, 745f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global1.b.x, 320f)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, u_input.d), vec2<i32>(u_input.d, -35911i)))), vec2<bool>(_wgslsmith_f_op_f32(1795f + -2370f) != _wgslsmith_f_op_f32(round(global1.b.x)), true && all(select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(59702u, 17u)], true), vec2<bool>(true, global2[_wgslsmith_index_u32(global1.c.x, 17u)])))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), global1.b.x);
    global1 = func_4(Struct_2(Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b.ywz, vec3<f32>(global1.a, global1.b.x, global1.a))), _wgslsmith_f_op_f32(-global1.a), max(min(vec2<i32>(u_input.e.x, u_input.e.x), u_input.e.yy), ~vec2<i32>(-14863i, 0i))), func_2(Struct_3(global1.b.x, vec4<f32>(-530f, global1.b.x, -434f, global1.b.x), global1.c | global1.c)), -_wgslsmith_clamp_i32(~u_input.b, -u_input.b, ~u_input.c), Struct_1(_wgslsmith_div_f32(821f, 199f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.b.ywy)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-174f, global1.a, 752f)))), -1000f, ~max(u_input.e.zy, vec2<i32>(u_input.b, u_input.b)))), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(~global1.c.x, 17u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2285f), _wgslsmith_f_op_f32(ceil(-1336f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.b.wzx, global1.b.xww)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 952f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.xyz)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b.xwx), global1.b.yxy, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f) - _wgslsmith_f_op_f32(-238f + -1619f))), _wgslsmith_f_op_f32(-576f + -234f)), u_input.e.yy);
    global1 = func_4(Struct_2(func_2(func_4(Struct_2(var_1, Struct_1(var_0.x, var_1.b, var_1.b.x, vec2<i32>(var_1.d.x, 22867i)), u_input.c, Struct_1(-283f, global1.b.xyy, -277f, vec2<i32>(var_1.d.x, u_input.d))), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true), global2[_wgslsmith_index_u32(global1.c.x, 17u)]))), var_1, -(max(-1i, var_1.d.x) << (47138u % 32u)), func_2(func_4(Struct_2(var_1, Struct_1(global1.a, var_1.b, -721f, vec2<i32>(var_1.d.x, var_1.d.x)), u_input.c, var_1), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])))), vec2<bool>(true & !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 0u), vec3<u32>(0u, global1.c.x, 106002u)), 17u)], any(vec3<bool>(global2[_wgslsmith_index_u32(~59735u, 17u)], !global2[_wgslsmith_index_u32(global1.c.x, 17u)], true))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.zww) * var_1.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1161f, 192f))))), vec2<bool>(!any(vec2<bool>(true, false)) && !any(vec2<bool>(global2[_wgslsmith_index_u32(3014u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~abs(44347u)), 17u)]), Struct_2(Struct_1(-1047f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b + var_1.b), _wgslsmith_f_op_vec3_f32(-global1.b.yzw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f - -264f) * global1.a), var_1.d), Struct_1(915f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.zzz) + vec3<f32>(-1000f, var_1.b.x, -1656f)), -3286f, func_2(func_4(Struct_2(Struct_1(897f, var_1.b, global1.b.x, var_1.d), var_1, -56577i, Struct_1(1241f, var_1.b, 492f, vec2<i32>(-7216i, u_input.d))), vec2<bool>(false, false))).d), 76521i, func_2(Struct_3(561f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_1.a, 952f)), _wgslsmith_clamp_vec4_u32(global1.c, vec4<u32>(u_input.a.x, 8698u, 65132u, 1u), global1.c)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = ~(-5023i);
    let var_1 = -2147483647i;
    var var_2 = global1.a;
    global1 = func_4(func_1().c, arg_1.zx);
    var var_3 = ~(-var_1);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = func_5(func_1(), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(global1.c.x, 17u)], global2[_wgslsmith_index_u32(global1.c.x, 17u)], true))));
    global0 = _wgslsmith_f_op_f32(step(global1.a, var_1.d.a));
    let var_2 = vec4<bool>(-9862i > u_input.e.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(global1.c.zxy) >> (global1.c.yyx % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(global1.c.xxx, u_input.a)), 17u)], true);
    var var_3 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(65858i, 0i, var_1.d.d.x, u_input.d), vec4<i32>(u_input.d, 35737i, u_input.e.x, 2539i))) & _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.b, var_1.d.d.x, u_input.c, u_input.c)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42182i, 0i, -2147483647i, var_1.c), vec4<i32>(var_1.a.d.x, u_input.d, u_input.b, 5572i)), var_1.a.d.x, i32(-1i) * -8401i, func_2(Struct_3(global1.a, global1.b, global1.c)).d.x)), vec4<i32>(-(~34551i), countOneBits(_wgslsmith_mult_i32(-1i, u_input.e.x)), var_1.c, func_5(func_1(), !var_2.zyx).d.d.x));
    global2 = array<bool, 17>();
    let var_4 = _wgslsmith_f_op_vec2_f32(-func_5(func_1(), var_2.xyx).b.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.d.x, vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(~54144u, 1u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1644f - var_1.b.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x)))), _wgslsmith_f_op_vec2_f32(max(func_2(Struct_3(417f, vec4<f32>(863f, global1.a, -348f, 1863f), global1.c)).b.yy, vec2<f32>(_wgslsmith_f_op_f32(var_1.a.c * 1000f), _wgslsmith_f_op_f32(var_4.x - global1.a)))))));
}

