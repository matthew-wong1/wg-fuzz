struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: Struct_2 = Struct_2(0i, vec4<f32>(-2199f, -624f, 1390f, -1433f), vec2<i32>(-50396i, -1i), -501f, Struct_1(-499f, vec4<bool>(true, true, false, false), true));

var<private> global2: bool = true;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = abs(~(~min(vec3<u32>(1523u, 60772u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], 0u, u_input.c)))) ^ ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 92539u, u_input.b), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(23927u, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(16849u, 13u)]), vec3<u32>(u_input.b, 22895u, u_input.c)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], 14364u, 2649u)), vec3<u32>(46744u, u_input.c, global0[_wgslsmith_index_u32(82144u, 13u)]) ^ vec3<u32>(u_input.c, u_input.b, 81123u));
    global0 = array<u32, 13>();
    let var_1 = Struct_1(2243f, !vec4<bool>(global1.e.c & true, u_input.b > _wgslsmith_mod_u32(4294967295u, u_input.c), !global1.e.c, global1.e.b.x), global1.e.c);
    var var_2 = -1460f;
    var var_3 = vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -472f), global1.b.x);
    return ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], var_0.x))) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(28911u, 0u)), ~select(vec2<u32>(4294967295u, 0u), var_0.yz, false)), ~vec2<u32>(u_input.b, _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(25887u, 13u)]))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = min(~arg_0, vec2<u32>(arg_0.x, ~1u) << (~_wgslsmith_sub_vec2_u32(select(vec2<u32>(15042u, 1u), vec2<u32>(4294967295u, 0u), true), vec2<u32>(arg_0.x, u_input.b)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.xwy));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(~31920u, _wgslsmith_mod_u32(4294967295u, ~u_input.b)), ~56159u);
    var var_3 = vec4<i32>(-3306i, 12469i, _wgslsmith_add_i32(u_input.a.x, 28641i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(global1.a, -2147483647i, u_input.a.x, u_input.a.x)), ~vec4<i32>(1969i, u_input.a.x, 31048i, global1.a)), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)), ~(-global1.c))));
    var_2 = ~(~(~(~_wgslsmith_div_vec2_u32(arg_0, vec2<u32>(4294967295u, 33560u)))));
    return _wgslsmith_f_op_vec4_f32(-global1.b);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global1 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(max(~vec2<u32>(u_input.c, 43660u), func_3()), global1.e))), -global1.c, global1.e.a, Struct_1(global1.d, vec4<bool>(true, !arg_0.x, true, arg_0.x), all(!select(global1.e.b, vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0.x))));
    var var_0 = vec2<bool>(select(true, global1.e.c, 1i >= ~(-u_input.a.x)), true);
    let var_1 = Struct_1(1000f, select(global1.e.b, !vec4<bool>(true, !arg_0.x, any(vec4<bool>(false, false, false, var_0.x)), true), vec4<bool>(any(select(vec2<bool>(true, false), arg_0.zx, arg_0.xx)), min(-1i, global1.a) <= 0i, var_0.x, arg_0.x)), all(!global1.e.b));
    global2 = true;
    global1 = Struct_2(27474i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(global1.b.x, global1.d, 1000f, var_1.a), var_1.b.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, global1.b.x, -381f, global1.b.x)))))), vec2<i32>(global1.c.x, u_input.a.x), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(var_1.a * var_1.a)), _wgslsmith_f_op_vec4_f32(func_4(firstTrailingBit(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)])), Struct_1(-567f, var_1.b, true))).x, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), vec4<bool>(true, any(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, true))), all(vec3<bool>(false, true, arg_0.x)), true), var_1.c));
    return Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(exp2(global1.b)), global1.c, var_1.a, global1.e);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = func_2(select(!global1.e.b.yyz, global1.e.b.xxw, (global1.e.b.x && !global1.e.c) && false));
    var var_0 = 1110i;
    var_0 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(_wgslsmith_add_i32(arg_0, u_input.a.x), 2147483647i, arg_0, 1i) | vec4<i32>(global1.a, arg_0, 1i, ~u_input.a.x), (~vec4<i32>(-1i, arg_0, u_input.a.x, arg_0) ^ ~vec4<i32>(37362i, -1i, 10519i, 44393i)) | firstLeadingBit(-vec4<i32>(24234i, 1i, -56378i, 2147483647i))), abs(vec4<i32>(max(arg_0, firstLeadingBit(arg_0)), -arg_0, abs(1i), _wgslsmith_sub_i32(arg_0, -6087i))));
    global0 = array<u32, 13>();
    var var_1 = select(global1.e.b.wwz, vec3<bool>(false, !global1.e.c, false | global1.e.b.x), global1.e.b.xyy);
    return global1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(5389u, u_input.c);
    var_0 = abs(16689u);
    var var_1 = global1.b.xx;
    var var_2 = global1.e.c;
    var var_3 = global1.e.b.xwy;
    var var_4 = func_1(u_input.a.x);
    var var_5 = vec4<u32>(_wgslsmith_div_u32(u_input.b, countOneBits(~(u_input.c ^ 9273u))), ~(~61175u), select(4294967295u, ~global0[_wgslsmith_index_u32(~(~0u), 13u)], true), select(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~u_input.c, func_3().x)), 13u)], max(reverseBits(0u), max(~0u, 1u)), select(!(54894u <= u_input.c), true, select(u_input.a.x <= 47123i, true, true || var_3.x))));
    var_5 = vec4<u32>(abs(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_5.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_5.x, 68097u, u_input.b), vec4<u32>(1u, 64028u, 0u, global0[_wgslsmith_index_u32(27357u, 13u)]))), 13u)]), 13u)]), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(42876u, ~(u_input.b ^ u_input.c), 31288u), var_5.zwy), ~global0[_wgslsmith_index_u32(1u, 13u)]);
    var_2 = func_1(-1i).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.e.a), -((abs(u_input.a.zz) ^ vec2<i32>(global1.c.x, u_input.a.x)) & vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x)), var_1.x);
}

