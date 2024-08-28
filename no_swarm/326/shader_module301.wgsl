struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(vec4<f32>(151f, -170f, -449f, -870f)), Struct_5(vec4<f32>(-2279f, 128f, 903f, 189f)), Struct_5(vec4<f32>(-960f, 323f, -187f, 987f)), Struct_5(vec4<f32>(-364f, 1315f, 884f, -969f)), Struct_5(vec4<f32>(1378f, 956f, -926f, 1167f)), Struct_5(vec4<f32>(1648f, -673f, -230f, 1000f)), Struct_5(vec4<f32>(473f, -694f, 216f, 1587f)), Struct_5(vec4<f32>(159f, -101f, -284f, 2098f)), Struct_5(vec4<f32>(1257f, -567f, -1000f, -229f)), Struct_5(vec4<f32>(1869f, -1405f, -425f, 945f)), Struct_5(vec4<f32>(1496f, -353f, 1000f, 796f)), Struct_5(vec4<f32>(192f, 150f, -703f, 752f)), Struct_5(vec4<f32>(529f, 1024f, -542f, 259f)), Struct_5(vec4<f32>(-547f, -769f, 921f, 638f)), Struct_5(vec4<f32>(-839f, 765f, -127f, -431f)), Struct_5(vec4<f32>(468f, -1655f, -209f, -1973f)), Struct_5(vec4<f32>(-653f, -1380f, 1000f, -399f)), Struct_5(vec4<f32>(868f, 668f, 1192f, -707f)), Struct_5(vec4<f32>(1000f, -910f, -549f, -1571f)), Struct_5(vec4<f32>(548f, -1048f, 1061f, -150f)));

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: i32 = 28467i;

var<private> global3: vec3<f32> = vec3<f32>(-500f, 1000f, 554f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(1264f, global3.x));
    var var_1 = u_input.d.x;
    global1 = array<vec4<f32>, 12>();
    global2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.a >> (~(~arg_0.zx) % vec2<u32>(32u)), u_input.a ^ abs(-u_input.c.yx)), -(~(firstLeadingBit(u_input.b) ^ u_input.c.yy)));
    let var_2 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)));
}

fn func_2() -> Struct_5 {
    global2 = 3425i;
    global0 = array<Struct_5, 20>();
    var var_0 = u_input.c.x;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1100f), _wgslsmith_f_op_f32(step(-1447f, global3.x)), _wgslsmith_f_op_f32(func_3(~(~u_input.d), global0[_wgslsmith_index_u32(u_input.d.x, 20u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(-global3.x))))));
    let var_1 = !vec2<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), global3.x == _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -1301f) - global3.x));
    return Struct_5(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, u_input.d.x), 12u)]);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_5 {
    var var_0 = abs(~(16510u << (~arg_2.x % 32u)));
    let var_1 = func_2();
    let var_2 = select(select(arg_1.wyy, arg_1.ywy, arg_1.xxz), select(select(arg_1.wzy, !arg_1.zxx, any(select(vec4<bool>(true, true, arg_1.x, arg_1.x), arg_1, vec4<bool>(false, true, false, arg_1.x)))), vec3<bool>(arg_1.x, (u_input.b.x & -2147483647i) <= ~u_input.a.x, ~u_input.d.x > 1u), select(arg_1.wzw, select(arg_1.wxy, !arg_1.xwy, vec3<bool>(false, arg_1.x, true)), arg_1.xyw)), arg_1.x);
    global1 = array<vec4<f32>, 12>();
    let var_3 = ~u_input.d;
    return var_1;
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    var var_0 = u_input.d.yx;
    var var_1 = Struct_1(-abs(firstLeadingBit(max(u_input.b, vec2<i32>(-25675i, u_input.b.x)))), countOneBits(u_input.d), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~_wgslsmith_div_vec2_u32(u_input.d.zy, ~vec2<u32>(var_0.x, 1u)) | (u_input.d.yx & u_input.d.xx), abs(u_input.d.xz));
    let var_2 = _wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(58315u, 12u)]))));
    global3 = _wgslsmith_f_op_vec3_f32(select(var_2.zzw, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(774f + var_2.x) - 248f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1734f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)) - var_2.x))), !select(!(!vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.c.x, false), false), !vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), false), vec3<bool>(true, select(var_1.c.x, true, false), !var_1.c.x))));
    global0 = array<Struct_5, 20>();
    return Struct_1(_wgslsmith_div_vec2_i32(u_input.b, var_1.a) & vec2<i32>(27981i, _wgslsmith_mult_i32(-15097i, var_1.a.x)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_div_u32(var_1.e.x, 97619u), ~var_1.e.x, _wgslsmith_clamp_u32(0u, 4294967295u, 62064u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.b, ~u_input.d), ~(~var_1.b), var_1.b)), !select(!select(vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(false, false), vec2<bool>(var_1.c.x, var_1.c.x)), select(!var_1.c, var_1.c, u_input.a.x < 2147483647i), select(var_1.c, vec2<bool>(var_1.c.x, true), vec2<bool>(false, var_1.c.x))), vec2<u32>(abs(7939u), ~0u), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(var_1.d.x, _wgslsmith_clamp_u32(1u, u_input.e, 0u), _wgslsmith_mult_u32(u_input.e, 4294967295u))) ^ max(firstTrailingBit(countOneBits(u_input.d.yx)), reverseBits(reverseBits(vec2<u32>(var_1.d.x, var_0.x)))));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<Struct_5, 20>();
    var var_0 = arg_0;
    let var_1 = u_input.d.zy;
    var_0 = arg_0;
    var_0 = Struct_1(max(reverseBits(var_0.a), var_0.a) ^ -(vec2<i32>(-1i) * -var_0.a), vec3<u32>(arg_0.b.x, 4294967295u, select(~960u, min(19436u, var_1.x), all(vec4<bool>(arg_0.c.x, false, var_0.c.x, arg_0.c.x)))), !var_0.c, vec2<u32>(0u, min(var_0.b.x, u_input.d.x) >> (var_0.d.x % 32u)), reverseBits(u_input.d.zy));
    return global3.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_1(global0[_wgslsmith_index_u32(u_input.e, 20u)], vec4<bool>(true, false, true, false), vec4<u32>(0u, u_input.e, u_input.e, u_input.d.x))))) * _wgslsmith_f_op_vec2_f32(step(global3.zx, _wgslsmith_div_vec2_f32(vec2<f32>(-309f, global3.x), global3.zx)))), 1u, 1934f, abs(select(_wgslsmith_add_vec3_i32(u_input.c.ywy, u_input.c.zxx), countOneBits(countOneBits(vec3<i32>(u_input.a.x, 8547i, u_input.a.x))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)))));
}

