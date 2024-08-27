struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: f32;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(0i, 20i, -13771i, -1i), true, 240f, -865f, vec3<i32>(i32(-2147483648), -1i, -13716i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.c - global4.c))) - global4.c)));
    return Struct_1(select(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 18978i, 2147483647i, global4.a.x), global4.a), 158i, i32(-1i) * -2147483647i, reverseBits(u_input.b.x)), vec4<i32>(-2147483647i, 0i, u_input.d.x, -2147483647i) ^ vec4<i32>(38664i, u_input.b.x, 1i, 49858i), vec4<bool>(u_input.d.x == u_input.b.x, !global4.b, global4.b, all(vec4<bool>(false, true, false, global4.b)))), vec4<i32>(~global4.a.x, _wgslsmith_mult_i32(0i, -3902i), _wgslsmith_dot_vec4_i32(vec4<i32>(-40796i, -12875i, u_input.b.x, global4.e.x), vec4<i32>(global4.a.x, -28211i, 1i, u_input.b.x)), -_wgslsmith_mod_i32(1i, u_input.d.x)), global4.b), true, 1287f, _wgslsmith_f_op_f32(exp2(global4.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(global4.e.x) & global4.e.x, u_input.d.x, _wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_mult_i32(-29351i, global4.a.x), global4.a.x)), global4.a.zzx));
}

fn func_3(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = firstTrailingBit(global4.a.x);
    return global4.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec3<f32> {
    global2 = abs(u_input.a);
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.d)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f + arg_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1013f, _wgslsmith_f_op_f32(abs(-884f)), false)))));
    var var_2 = global4.a;
    var_2 = ~firstTrailingBit(abs(func_3(u_input.a.zyy))) | global4.a;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~(-((arg_0.a & global4.a) ^ max(global4.a, arg_2.a))), global4.b, _wgslsmith_f_op_vec3_f32(func_2(~vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.e, u_input.c.x), _wgslsmith_clamp_u32(global2.x, u_input.a.x, u_input.a.x)), arg_0, arg_1.x, arg_2.e.x ^ arg_0.e.x)).x, _wgslsmith_f_op_f32(-1f), -(~countOneBits(firstTrailingBit(u_input.b))));
    global0 = 0u;
    var var_1 = 4294967295u;
    global4 = func_1();
    global4 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(func_1(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(~vec3<u32>(4294967295u, 38627u, 26052u), func_1(), global4.c, -u_input.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.c, -438f, -669f))))), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, _wgslsmith_f_op_f32(global4.c - -586f), global4.d) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, -1000f, global4.c) * vec3<f32>(global4.d, -726f, -1334f)) * vec3<f32>(-182f, -155f, 1156f)))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.b.x), u_input.d.x, -2147483647i, countOneBits(_wgslsmith_mult_i32(global4.e.x, global4.a.x))), global4.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.c - -167f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2451f - 1073f))), max(vec3<i32>(2467i << (u_input.e % 32u), -2147483647i, 2147483647i), global4.a.zyw)));
    var var_0 = func_4(func_4(Struct_1(global4.a, true, global4.d, -166f, ~(-global4.a.wwy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-247f, -1000f, -518f), vec3<f32>(-3098f, -838f, global4.d))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, 507f, global4.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-864f, global4.d, global4.c))))), Struct_1(select(global4.a, -vec4<i32>(u_input.b.x, -52774i, u_input.d.x, -4513i), global4.b), _wgslsmith_div_f32(global4.d, global4.c) < _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(floor(170f)), global4.c, firstTrailingBit(-vec3<i32>(63350i, 2147483647i, u_input.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1346f + global4.d), _wgslsmith_f_op_f32(global4.c + 564f), _wgslsmith_f_op_f32(select(-831f, global4.d, global4.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-307f, 1000f, -475f), vec3<f32>(240f, -115f, global4.c), vec3<bool>(false, true, global4.b))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1180f, global4.c, 758f))), select(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(92616u, 17u)], global3[_wgslsmith_index_u32(u_input.c.x, 17u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, global4.c, -221f) * vec3<f32>(-711f, global4.c, -1166f))))), func_4(Struct_1(-global4.a, true | !global4.b, _wgslsmith_f_op_f32(-global4.d), global4.d, firstTrailingBit(u_input.b ^ u_input.b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1005f, global4.d, 389f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(402f, global4.c, 1046f)))))), func_1()));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(global4.a, true, 1066f, 1000f, vec3<i32>(u_input.b.x, 17339i, var_0.a.x)), vec3<f32>(616f, -1926f, var_0.d), Struct_1(vec4<i32>(global4.e.x, 2147483647i, u_input.b.x, 0i), false, global4.c, -3059f, var_0.a.yzx)).d - -1000f) * 720f), func_4(Struct_1(_wgslsmith_clamp_vec4_i32(global4.a, var_0.a, vec4<i32>(var_0.a.x, global4.a.x, u_input.d.x, 0i)), any(vec2<bool>(true, var_0.b)), _wgslsmith_f_op_f32(560f + -1496f), _wgslsmith_f_op_f32(-var_0.c), vec3<i32>(-23191i, var_0.e.x, 2147483647i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.d, var_0.c, 541f))))), Struct_1(func_4(Struct_1(global4.a, var_0.b, var_0.c, 142f, vec3<i32>(0i, var_0.a.x, -2147483647i)), vec3<f32>(2017f, -724f, -2021f), Struct_1(var_0.a, var_0.b, 321f, global4.c, vec3<i32>(u_input.d.x, -52167i, var_0.a.x))).a, !global4.b, global4.c, -2098f, vec3<i32>(u_input.b.x, -10764i, global4.e.x))).c)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c - -1299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)));
    global3 = array<vec3<bool>, 17>();
    let var_1 = func_1();
    var var_2 = ~global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(285f, var_1.c, 2415f, global4.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d, global4.c, 513f, -543f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_1.d, var_1.c, -727f), vec4<f32>(var_0.d, 356f, 226f, global4.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_1.d, global4.d, 493f)), var_0.b && global4.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(988f, -274f, 266f, -2431f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, global4.d, 708f, 519f) * vec4<f32>(global4.d, global4.c, global4.d, var_1.d)), vec4<bool>(false, var_1.b, global4.b, var_0.b))))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(min(countOneBits(39460u), 4294967295u | global2.x), u_input.a.x), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.e) >> (vec2<u32>(179u, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.e), global2.xw, u_input.a.wx)), firstTrailingBit(1u))), abs(32681u));
}

