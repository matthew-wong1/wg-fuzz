struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true));

var<private> global1: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(13820i, 1i, 7690i), vec3<i32>(-14031i, -15578i, -15517i), vec3<i32>(-1i, 0i, -2891i), vec3<i32>(2147483647i, 1i, -25358i), vec3<i32>(-8274i, 2147483647i, 1i), vec3<i32>(3571i, i32(-2147483648), -1i), vec3<i32>(-1i, 2147483647i, -2643i), vec3<i32>(i32(-2147483648), 0i, 54833i), vec3<i32>(2147483647i, 12760i, i32(-2147483648)), vec3<i32>(-1i, 5638i, 1i), vec3<i32>(6218i, -1i, 0i), vec3<i32>(-2405i, 1i, -1i), vec3<i32>(0i, -69020i, -36046i), vec3<i32>(-1020i, -21208i, 1i), vec3<i32>(37232i, 2147483647i, -1i), vec3<i32>(27208i, 17935i, -1i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(20921i, -1i, 0i), vec3<i32>(-1i, -1i, 44603i), vec3<i32>(2147483647i, -6800i, 1i), vec3<i32>(-8295i, i32(-2147483648), 0i), vec3<i32>(1i, -19488i, -8843i), vec3<i32>(i32(-2147483648), -34496i, i32(-2147483648)), vec3<i32>(1i, 45878i, 1i), vec3<i32>(-60888i, 0i, -64166i), vec3<i32>(0i, 0i, -27122i));

var<private> global2: f32 = 334f;

var<private> global3: array<u32, 22> = array<u32, 22>(77138u, 8271u, 0u, 41942u, 25159u, 13950u, 0u, 0u, 72713u, 20945u, 99330u, 21149u, 8251u, 46295u, 22914u, 1u, 0u, 58597u, 0u, 4294967295u, 24087u, 0u);

var<private> global4: Struct_2 = Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec4<u32>(1u, 1u, 0u, 0u)), true, vec4<f32>(609f, 1421f, 365f, -735f), vec3<i32>(37455i, 2147483647i, 1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    var var_0 = 1i;
    var var_1 = Struct_4(Struct_2(vec3<u32>(~(37752u & global3[_wgslsmith_index_u32(global4.b.a.x, 22u)]), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.b.a.x, global4.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 22u)]), global4.b.a.wxx), vec3<u32>(106620u, 62733u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.b.a.x, 22u)], 22u)]))), Struct_1(select(min(vec4<u32>(global4.b.a.x, global3[_wgslsmith_index_u32(arg_0.a.b.a.x, 22u)], u_input.b, global4.b.a.x), arg_0.a.b.a), ~arg_0.a.b.a, true)), !all(select(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(arg_0.b.a.x, 4u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(1129f, arg_0.a.d.x, _wgslsmith_f_op_f32(round(arg_0.a.d.x)), 1000f) * arg_0.a.d), _wgslsmith_mult_vec3_i32(-vec3<i32>(-12704i, -110066i, global4.e.x) >> (reverseBits(global4.b.a.xwy) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(min(global1[_wgslsmith_index_u32(global4.b.a.x, 26u)], vec3<i32>(arg_0.a.e.x, u_input.a, 0i)), ~global4.e))), arg_0.a.b);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global4.d.x)))));
    let var_2 = _wgslsmith_f_op_f32(round(734f));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-537f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -493f)), 785f));
    return max(71955u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 22u)], 22u)]);
}

fn func_2() -> f32 {
    global0 = array<vec4<bool>, 4>();
    let var_0 = Struct_4(Struct_2(~_wgslsmith_mult_vec3_u32(global4.a, global4.a), global4.b, global4.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.d * _wgslsmith_f_op_vec4_f32(-global4.d))), ~vec3<i32>(u_input.a, global4.e.x & -13204i, u_input.a)), Struct_1(vec4<u32>(max(firstTrailingBit(global4.b.a.x), ~global4.b.a.x), u_input.b, 4294967295u, ~global3[_wgslsmith_index_u32(4294967295u, 22u)])));
    global4 = Struct_2(select(global4.b.a.yxy, ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 22u)] | 4294967295u, func_3(var_0, global4.d.x), global3[_wgslsmith_index_u32(global4.a.x, 22u)] & 55776u), vec3<bool>(true, false, _wgslsmith_mod_u32(4294967295u, global4.a.x) == 113130u)), var_0.a.b, true, var_0.a.d, global4.e);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.d - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1433f, -1317f, 712f, 377f)))))));
    let var_2 = Struct_3(-3539i, var_0.a.e.x);
    return var_0.a.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = abs(-min(vec3<i32>(global4.e.x, 45454i, 1i), ~global4.e) | vec3<i32>(u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global4.e.x, 31264i, 0i), vec4<i32>(8537i, u_input.a, u_input.a, global4.e.x)), -2147483647i), reverseBits(global4.e.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(-1331f, _wgslsmith_f_op_f32(func_2()))), global4.d.x, 1361f);
    global2 = -1455f;
    global0 = array<vec4<bool>, 4>();
    var_0 = vec3<i32>(-10329i << (global4.b.a.x % 32u), -36838i, ~9443i);
    return Struct_2(min(vec3<u32>(global4.a.x, _wgslsmith_mult_u32(u_input.b, ~12128u), _wgslsmith_mult_u32(3025u, ~u_input.b)), _wgslsmith_clamp_vec3_u32(global4.a, global4.b.a.zwz, ~vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(2364u, 22u)], u_input.b))), global4.b, global4.c, global4.d, -_wgslsmith_mod_vec3_i32(vec3<i32>(abs(11695i), var_0.x, var_0.x), vec3<i32>(2147483647i, 1i, ~var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8351i > abs(_wgslsmith_div_i32(firstLeadingBit(u_input.a), 0i));
    global4 = func_1();
    var var_1 = Struct_4(func_1(), func_1().b);
    var var_2 = 0u;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.d.x)));
    var var_3 = 3735i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_mult_u32(max(var_1.b.a.x, 1u), ~72604u), 55200u) & vec3<u32>(~1u, ~(0u ^ u_input.b), global4.b.a.x), _wgslsmith_f_op_vec3_f32(-var_1.a.d.wyw), global4.a.xy >> (global4.a.xx % vec2<u32>(32u)), u_input.b, func_3(Struct_4(var_1.a, Struct_1(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(1u, 22u)], u_input.b, 69884u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264f * var_1.a.d.x) * global4.d.x) - global4.d.x)));
}

