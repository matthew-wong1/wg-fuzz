struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: vec4<i32> = vec4<i32>(-15731i, -1i, i32(-2147483648), -12279i);

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: array<bool, 18> = array<bool, 18>(false, true, true, false, true, false, false, false, false, true, false, true, true, false, true, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    return _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-138f, -815f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1924f + -1418f), _wgslsmith_f_op_f32(step(-1978f, 1392f))))))));
}

fn func_1() -> vec4<bool> {
    global3 = array<bool, 18>();
    global0 = array<Struct_4, 28>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2393f, -111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(493f, -475f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f + -1613f) - _wgslsmith_f_op_f32(f32(-1f) * -842f))), global2[_wgslsmith_index_u32(select(2082u, 61334u, any(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(4169u, 18u)]))), 21u)]), vec4<f32>(_wgslsmith_f_op_f32(round(297f)), -964f, -1434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f - -478f)))));
    var var_1 = -435f;
    global3 = array<bool, 18>();
    return vec4<bool>(any(!vec2<bool>(!global3[_wgslsmith_index_u32(1u, 18u)], false)), _wgslsmith_sub_i32(max(i32(-1i) * -2147483647i, global1.x ^ -1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, -19708i), max(-2135i, global1.x))) != 1i, true, _wgslsmith_f_op_f32(func_2()) > -716f);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -(~2147483647i);
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.c.x) ^ arg_1.b, abs(arg_1.c)), select(select(arg_1.b, vec2<u32>(1203u, arg_1.c.x), global3[_wgslsmith_index_u32(37304u, 18u)]), ~vec2<u32>(arg_1.b.x, arg_1.c.x), !global3[_wgslsmith_index_u32(arg_1.b.x, 18u)])), 60769u);
    let var_2 = _wgslsmith_f_op_f32(ceil(900f));
    let var_3 = arg_1;
    let var_4 = any(select(func_1(), vec4<bool>(true, all(!arg_1.d.xw), true, (i32(-1i) * -1i) > (global1.x ^ global1.x)), all(select(var_3.d.wz, select(arg_1.d.zy, arg_1.d.zx, vec2<bool>(var_3.d.x, arg_1.d.x)), any(vec4<bool>(false, arg_1.d.x, arg_1.d.x, global3[_wgslsmith_index_u32(var_3.c.x, 18u)]))))));
    return Struct_1(arg_1.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(42705u, var_3.c.x), vec2<u32>(select(1u, 4294967295u, var_4), ~arg_1.c.x)), abs(reverseBits(~vec2<u32>(arg_1.c.x, arg_1.b.x))), var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(-global1.yyw, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-163f))), ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(31707u, 57693u), vec2<u32>(4294967295u, 65462u))), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), abs(vec2<u32>(29368u, 17175u)))), !func_1()));
    let var_1 = Struct_2(var_0.d.yww);
    global2 = array<vec4<f32>, 21>();
    var var_2 = 11484i;
    global1 = abs(~_wgslsmith_div_vec4_i32(~vec4<i32>(global1.x, -24534i, -2147483647i, u_input.a), -vec4<i32>(global1.x, u_input.a, global1.x, global1.x)) & -_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.x, -17511i, 66044i, global1.x), firstLeadingBit(vec4<i32>(u_input.a, 3460i, 5079i, 23599i)), -vec4<i32>(-2147483647i, global1.x, -12937i, -2147483647i)));
    global1 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(u_input.a, 1i), min(u_input.a, _wgslsmith_sub_i32(u_input.b, -47985i)), 2147483647i, -(~(-40680i))), abs(-select(vec4<i32>(u_input.b, u_input.a, 1i, u_input.b), vec4<i32>(global1.x, global1.x, global1.x, 31060i), var_0.d))), countOneBits(~((vec4<i32>(2147483647i, -20870i, global1.x, 0i) ^ vec4<i32>(global1.x, -3627i, u_input.a, global1.x)) >> (~vec4<u32>(31157u, var_0.b.x, 4294967295u, 34165u) % vec4<u32>(32u)))), !func_1());
    global0 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

