struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, -1i), 670f));

var<private> global3: array<u32, 15> = array<u32, 15>(29838u, 15251u, 42303u, 24402u, 0u, 383u, 53349u, 1u, 10373u, 0u, 4294967295u, 37931u, 4294967295u, 44635u, 4294967295u);

var<private> global4: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> u32 {
    global3 = array<u32, 15>();
    global3 = array<u32, 15>();
    var var_0 = ~(-(~vec4<i32>(120i, arg_0, global2.a.a.x, arg_0))) & select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i ^ u_input.b.x, 44220i, -29603i, abs(0i)), reverseBits(global0.a)), vec4<i32>(firstLeadingBit(arg_2.a.x ^ 0i), global2.a.a.x, ~_wgslsmith_mod_i32(29918i, -5380i), ~(~u_input.b.x)), vec4<bool>(true, !arg_1, arg_1, true));
    var var_1 = abs(_wgslsmith_div_vec3_u32(abs(~u_input.c.xzx ^ vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(u_input.a, 15u)], 21218u)), vec3<u32>(_wgslsmith_div_u32(1u, firstLeadingBit(u_input.a)), _wgslsmith_add_u32(max(2734u, 40313u), _wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(0u, u_input.c.x))), 49450u)));
    global4 = false;
    return global3[_wgslsmith_index_u32(~var_1.x, 15u)];
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = global2.a;
    let var_1 = Struct_2(global2.a);
    var var_2 = vec4<u32>(1u, ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, 4294967295u), vec3<u32>(u_input.c.x, 22243u, u_input.c.x)), 15u)], func_3(67085i, true, Struct_1(var_1.a.a, arg_0.x)), 1u), global3[_wgslsmith_index_u32(~u_input.d, 15u)], 65942u), global3[_wgslsmith_index_u32(47046u, 15u)]), func_3(1i, true, global2.a));
    global4 = global3[_wgslsmith_index_u32(0u, 15u)] > (~_wgslsmith_div_u32(1u, 4294967295u << (var_2.x % 32u)) ^ abs(firstTrailingBit(min(47904u, 647u))));
    var var_3 = Struct_3(var_1, global2.a, Struct_2(Struct_1(global2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)))), 15028u);
    return 223f;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.b), global0.b, -1389f, _wgslsmith_f_op_f32(max(1042f, -2047f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1091f, global0.b, -2000f, -312f) + vec4<f32>(arg_2.b, arg_1, global2.a.b, global2.a.b))) * vec4<f32>(_wgslsmith_f_op_f32(553f + 1949f), 2970f, 971f, -196f)))));
    var var_1 = global2.a.a.zyw;
    let var_2 = u_input.c.yzx;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-364f - var_0.x), -1769f, global2.a.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zzw - var_0.yzy), var_0.xwx)))) + -827f);
    var var_4 = ~(~(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a.x, var_1.x, 3143i), ~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.x, 15u)], 15u)], 6u)])));
    return arg_2;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_4(firstLeadingBit(1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1624f, -855f)), _wgslsmith_f_op_f32(sign(265f))) - _wgslsmith_f_op_f32(f32(-1f) * -1189f)))), Struct_1(global2.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0, -815f, global2.a.b)))))));
    let var_1 = Struct_3(Struct_2(global2.a), Struct_1(firstLeadingBit(-select(vec4<i32>(global2.a.a.x, global2.a.a.x, u_input.b.x, 24693i), var_0.a, false)), 455f), Struct_2(func_4(0u, var_0.b, Struct_1(abs(u_input.b), global2.a.b))), 27326u);
    var var_2 = _wgslsmith_div_f32(1000f, global2.a.b);
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(73260i, 0i, var_1.b.a.x, 16035i)), -vec4<i32>(var_0.a.x, -1i, global2.a.a.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), func_4(_wgslsmith_mult_u32(4294967295u, 1u & max(global3[_wgslsmith_index_u32(1u, 15u)], 1u)), 1000f, Struct_1((vec4<i32>(-2753i, var_0.a.x, var_0.a.x, var_1.b.a.x) >> (vec4<u32>(0u, global3[_wgslsmith_index_u32(var_1.d, 15u)], var_1.d, 1u) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.a, 0u, 0u, 29819u) >> (vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], 1u, 97315u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1778f))), var_1.a, ~u_input.a);
    var_3 = Struct_3(var_1.a, Struct_1(vec4<i32>(1i, global0.a.x, ~(~(-2147483647i)), 1i), var_1.a.a.b), Struct_2(Struct_1(vec4<i32>(695i, 1i, 1i, -global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b + 1000f)))), _wgslsmith_mod_u32(min(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], var_1.d, var_1.d)) << (1u % 32u), 31852u), _wgslsmith_dot_vec3_u32(~u_input.c.yxx, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xxx, vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(63454u, 15u)], 4294967295u)), firstTrailingBit(u_input.c.yzw), u_input.c.wwz))));
    return _wgslsmith_dot_vec4_i32(~(~var_1.c.a.a & vec4<i32>(var_1.c.a.a.x, global0.a.x, 2147483647i, -1i)), max(global0.a, -var_0.a)) <= global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec3<bool>(false, true, true)), any(vec3<bool>(any(vec2<bool>(true, true)), false, select(true, true, all(vec4<bool>(true, false, true, false))))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(229f)))));
    let var_1 = global2.a;
    var var_2 = select(!(!(!all(var_0.yx))), 1561f < _wgslsmith_f_op_f32(-global0.b), all(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), true)) || false);
    let var_3 = vec2<bool>(!any(!vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x);
    var var_4 = _wgslsmith_f_op_f32(sign(196f));
    let x = u_input.a;
    s_output = StorageBuffer(10710u, var_1.a.x);
}

