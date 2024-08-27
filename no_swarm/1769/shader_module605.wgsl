struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-39516i, -4793i, -1143i);

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(-674f, 0i)), Struct_3(Struct_1(624f, -1i)), Struct_3(Struct_1(-1714f, 0i)));

var<private> global3: Struct_2;

var<private> global4: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(37386i, -1i, 2147483647i, 0i), vec4<i32>(-1i, i32(-2147483648), -1i, 1i), vec4<i32>(20025i, 0i, -1i, 18354i), vec4<i32>(35321i, 1i, 56031i, i32(-2147483648)), vec4<i32>(0i, -1i, -1i, -1i), vec4<i32>(0i, -12524i, 2147483647i, 1951i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(-570f, u_input.c, vec2<i32>(global0.x, 15388i));
    global1 = array<vec2<bool>, 11>();
    global3 = Struct_2(true, _wgslsmith_f_op_f32(abs(global3.c.a)), Struct_1(global3.c.a, ~1i), reverseBits(-1i), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(global3.e, 0u), ~vec2<u32>(global3.e, u_input.b)), ~vec2<u32>(global3.e, 4294967295u)));
    var var_1 = ~26532u;
    let var_2 = _wgslsmith_dot_vec2_i32(-(~(-vec2<i32>(u_input.a.x, -37969i))), vec2<i32>(~(~global0.x), 1i)) < countOneBits(global0.x);
    return u_input.a.x;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global0.x, -1i), func_3()), ~(-u_input.a.ww));
    var var_1 = select(vec3<bool>(all(select(select(vec4<bool>(false, false, global3.a, true), vec4<bool>(false, true, global3.a, global3.a), global3.a), vec4<bool>(false, global3.a, global3.a, false), global3.a)), true | (_wgslsmith_f_op_f32(trunc(global3.b)) >= _wgslsmith_f_op_f32(661f + global3.c.a)), global3.a), vec3<bool>(!all(select(vec3<bool>(true, true, global3.a), vec3<bool>(false, global3.a, global3.a), vec3<bool>(true, global3.a, global3.a))), true, global3.a), false);
    var var_2 = abs(~(~(~global3.e)));
    return Struct_3(Struct_1(_wgslsmith_div_f32(2206f, -1711f), 38667i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    global1 = array<vec2<bool>, 11>();
    global4 = array<vec4<i32>, 6>();
    global0 = u_input.a.wwz;
    var var_0 = vec3<u32>(4294967295u, global3.e, global3.e);
    let var_1 = func_2();
    return -1537f;
}

fn func_4(arg_0: vec3<f32>) -> u32 {
    var var_0 = true;
    var_0 = !(!global3.a && (firstTrailingBit(global0.x) > global0.x));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(863f, _wgslsmith_f_op_f32(-global3.b)) + arg_0.x))), ~1i, u_input.a.wx);
    global2 = array<Struct_3, 3>();
    var_0 = all(!select(vec4<bool>(true, false, false, global3.a), select(select(vec4<bool>(true, false, false, false), vec4<bool>(global3.a, global3.a, false, global3.a), true), select(vec4<bool>(false, true, true, global3.a), vec4<bool>(true, true, global3.a, global3.a), global3.a), true), select(select(vec4<bool>(global3.a, true, true, global3.a), vec4<bool>(true, true, global3.a, global3.a), global3.a), select(vec4<bool>(global3.a, global3.a, global3.a, global3.a), vec4<bool>(global3.a, false, true, global3.a), global3.a), vec4<bool>(global3.a, global3.a, false, global3.a))));
    return ~min(3892u, global3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(4294967295u) << (~global3.e % 32u), 100196u), vec2<u32>(~u_input.d, ~u_input.b)));
    global4 = array<vec4<i32>, 6>();
    let var_1 = Struct_2(~_wgslsmith_add_u32(firstTrailingBit(1u), 4294967295u) < abs(u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - _wgslsmith_f_op_f32(f32(-1f) * -693f))), global3.c, firstTrailingBit(select(-global0.x, -2147483647i, true)), ~(reverseBits(u_input.b) >> (reverseBits(global3.e) % 32u)) & func_4(vec3<f32>(_wgslsmith_f_op_f32(min(global3.c.a, global3.b)), -1000f, _wgslsmith_f_op_f32(func_1(Struct_1(-1517f, 24577i), vec3<f32>(254f, -1960f, -364f), vec4<bool>(global3.a, global3.a, global3.a, true))))));
    global0 = countOneBits(-(~firstLeadingBit(u_input.a.zyz)));
    global0 = vec3<i32>(~(-_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(var_1.d, u_input.a.x))) ^ -1i, _wgslsmith_add_i32(global3.c.b, -var_1.d), _wgslsmith_mult_i32(func_3(), ~firstLeadingBit(global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(_wgslsmith_sub_i32(u_input.c, ~global3.d), ~(-global0.x)), vec2<i32>(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), global0.x)), 81273u, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(abs(6103u), var_1.e), 68175u, u_input.d)), 89885u);
}

