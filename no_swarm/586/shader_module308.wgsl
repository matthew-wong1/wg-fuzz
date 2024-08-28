struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, true, true, false, true, false, true, true, false, true, true, true, false, false, true, false, true, false, false, true, false, true);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global3 = Struct_3(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, global3.a, -52032i)) << (22931u % 32u), global3.a, reverseBits(i32(-1i) * -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, -972f)) * _wgslsmith_f_op_f32(max(global3.b, global3.b))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.b))))), !(!(global3.c || any(vec2<bool>(false, true)))));
    global3 = Struct_3(-22364i << (u_input.b % 32u), global1.x, !global3.c);
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.xx - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x - global3.b), _wgslsmith_f_op_f32(f32(-1f) * -218f)) + _wgslsmith_f_op_vec2_f32(-global1.zx))), _wgslsmith_f_op_vec2_f32(-global1.zy)));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.zz))))))));
    var_0 = global1.zy;
    return global3.b;
}

fn func_2() -> vec3<f32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -957f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global3.b, -1000f, global3.b > global1.x)))) - _wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(242f)), 607f)));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, 1774f, _wgslsmith_f_op_f32(1375f * global1.x)));
    let var_0 = global1.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * -1735f) * -385f)), !all(select(vec4<bool>(false, global3.c, global3.c, false), vec4<bool>(true, global2[_wgslsmith_index_u32(35157u, 23u)], false, global2[_wgslsmith_index_u32(u_input.c, 23u)]), false)))), select(vec4<u32>(1u, abs(u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 0u), vec3<u32>(1u, u_input.b, u_input.c)), vec3<u32>(u_input.c, 4294967295u, 4294967295u) | vec3<u32>(u_input.c, 9310u, u_input.c)), (5841u & u_input.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 0u), vec3<u32>(u_input.c, u_input.c, 1u))), vec4<u32>(7823u, u_input.b << (76489u % 32u), firstTrailingBit(1u), _wgslsmith_clamp_u32(~0u, abs(4294967295u), ~u_input.b)), !vec4<bool>(global2[_wgslsmith_index_u32(~u_input.c, 23u)], any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global3.c)), true, global2[_wgslsmith_index_u32(u_input.b, 23u)])), false, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1945f * _wgslsmith_f_op_f32(-global3.b)) - global3.b), 162f, 1356f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x * -129f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global1.x)))))));
    global0 = array<vec4<f32>, 16>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(574f, -1000f) * 701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2080f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-502f - 656f), -2077f, _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b, global1.x, global3.b), vec3<f32>(var_1.e.x, global3.b, var_1.a)) * _wgslsmith_f_op_vec3_f32(var_1.d.xyw * var_1.d.xyy)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a, _wgslsmith_f_op_f32(global1.x + -1000f))))));
    var var_0 = -623f;
    let var_1 = global3.c;
    global2 = array<bool, 23>();
    let var_2 = !vec3<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 23u)]), vec2<bool>(false, false), arg_3.x), true)), select(!global3.c, 1u > u_input.b, true) && !(false & global2[_wgslsmith_index_u32(u_input.c, 23u)]), true);
    return vec2<u32>(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_div_u32(u_input.c, arg_0)), _wgslsmith_sub_u32(select(arg_0, arg_0, var_2.x), _wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_0, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(995u, 4294967295u)), vec2<bool>(false, global3.c)), vec2<u32>(~u_input.c, ~12704u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yx, u_input.a.yx), u_input.a.zy, _wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(-44940i, -4039i)))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, ~1u), (abs(vec2<u32>(u_input.c, u_input.b)) & vec2<u32>(49231u, u_input.c)) | vec2<u32>(~u_input.b, select(u_input.c, u_input.c, global3.c)), ~(~func_1(u_input.b, Struct_1(-1067f), Struct_1(651f), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 23u)], global3.c, false, true)))) % vec2<u32>(32u));
    global3 = Struct_3(min(u_input.a.x, 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(624f - global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) - global3.b))), (~abs(var_0.x) & countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, global3.a), u_input.a))) > ~(abs(1i) ^ var_0.x));
    let var_1 = _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-global3.b));
    var var_2 = i32(-1i) * -firstTrailingBit(-_wgslsmith_mult_i32(global3.a, 0i));
    let var_3 = Struct_1(var_1);
    var_0 = u_input.a.zx;
    var_0 = vec2<i32>(-abs(1669i), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1212u, ~1u, u_input.b), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(220f, global3.b, -479f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_1, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b, var_3.a, -606f)))), vec3<bool>(true, true, true)))));
}

