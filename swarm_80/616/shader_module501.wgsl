struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-1394f, -1027f)), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(-1000f, -420f)), Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(-3118f, 1076f)), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-511f, 851f)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-400f, -415f)), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-381f, -512f)), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-622f, 238f)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-463f, 902f)), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-239f, 267f)), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(354f, 436f)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(467f, 191f)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-362f, -992f)), Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(1000f, -1000f)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-2550f, -217f)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(1148f, -1746f)));

var<private> global2: array<Struct_3, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(select(global0.x, global0.x, false))) - global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, 448f))))), -406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-538f, -1577f)) + _wgslsmith_f_op_f32(f32(-1f) * -1719f)));
    var var_0 = -vec4<i32>(-8913i, -reverseBits(u_input.b), -(~u_input.b), u_input.b) | _wgslsmith_mult_vec4_i32(vec4<i32>(min(-24878i, _wgslsmith_sub_i32(0i, -9815i)), ~(-83266i), abs(u_input.b ^ u_input.b), reverseBits(~(-20138i))), ~vec4<i32>(-u_input.b, u_input.b & u_input.b, _wgslsmith_mod_i32(-18399i, 2147483647i), 2147483647i));
    global2 = array<Struct_3, 8>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 819f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-267f - global0.x)))), _wgslsmith_f_op_f32(exp2(global0.x)));
    global2 = array<Struct_3, 8>();
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, _wgslsmith_div_f32(-1073f, _wgslsmith_f_op_f32(floor(476f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f + -452f)) * -323f)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)) + _wgslsmith_f_op_f32(min(1320f, -340f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -2507f) - _wgslsmith_div_f32(-1000f, 634f)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(988f + global0.x)))) * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)))));
    global2 = array<Struct_3, 8>();
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f * global0.x)))), global0.x);
    return vec4<bool>(all(!(!select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_1.x)))), arg_1.x, !arg_1.x, true);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstTrailingBit(u_input.a.x), 1u), 8u)];
    global1 = array<Struct_1, 15>();
    return func_2(4294967295u, vec2<bool>(all(arg_0.a.wz), false));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    global2 = array<Struct_3, 8>();
    global1 = array<Struct_1, 15>();
    var var_0 = u_input.a;
    var var_1 = func_4(Struct_4(vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), any(func_2(0u, vec2<bool>(false, true)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, ~(~var_0.x)), 15u)]);
    var var_2 = vec4<bool>(all(vec3<bool>(true, var_1.x, var_1.x)), u_input.b < -2147483647i, var_1.x || true, false);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-653f, -3296f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) * _wgslsmith_f_op_f32(select(188f, -385f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2050f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f), global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(854f)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), -1000f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(-arg_0)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_3 {
    global1 = array<Struct_1, 15>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(~(~1u)), ~4294967295u, min(firstLeadingBit(1u), _wgslsmith_sub_u32(1u, 1u))), 8u)];
    var var_1 = global1[_wgslsmith_index_u32(87106u, 15u)];
    let var_2 = any(var_1.a);
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(63376u, var_0.b.x, 1u, var_0.b.x), u_input.a)) & u_input.c, 15u)], global1[_wgslsmith_index_u32(24355u, 15u)], global1[_wgslsmith_index_u32(3569u, 15u)]);
    return Struct_3(~arg_1.x, ~vec2<u32>(u_input.a.x, ~var_0.b.x | 3409u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f * var_3.b.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_1(global0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-11745i >> (_wgslsmith_add_u32(u_input.c, 4294967295u) % 32u), u_input.b, u_input.b), vec3<i32>(~(~1i), _wgslsmith_mult_i32(-13507i, u_input.b), u_input.b)));
    let var_1 = all(vec3<bool>(true, all(func_4(Struct_4(vec4<bool>(false, false, true, false), false, true), global1[_wgslsmith_index_u32(var_0.b.x, 15u)]).zx), func_4(Struct_4(vec4<bool>(false, false, true, true), any(vec3<bool>(true, true, true)), true), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)))).x));
    global1 = array<Struct_1, 15>();
    var var_2 = ~(~(~u_input.a));
    var_2 = u_input.a;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

