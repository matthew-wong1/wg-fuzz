struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: Struct_4;

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(12911i, 55294i), vec2<i32>(6724i, -1i), vec2<i32>(i32(-2147483648), 29657i), vec2<i32>(58252i, 2147483647i), vec2<i32>(43936i, 45049i));

var<private> global3: u32;

var<private> global4: array<bool, 23> = array<bool, 23>(true, false, true, false, false, false, true, true, true, false, true, true, true, true, false, true, true, true, false, true, false, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    var var_0 = reverseBits(vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(16098u, abs(countOneBits(arg_1))), ~arg_1));
    global4 = array<bool, 23>();
    let var_1 = abs(max(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_0.x, arg_1), vec3<u32>(var_0.x, u_input.b.x, arg_1) | u_input.b), (vec3<u32>(u_input.b.x, var_0.x, 96415u) ^ u_input.b) ^ ~u_input.b), ~max(~u_input.b, ~u_input.b)));
    var var_2 = Struct_3(max(reverseBits(1i), min(_wgslsmith_sub_i32(-u_input.a.x, u_input.a.x), 6644i)), vec3<i32>(~(~(~u_input.a.x)), 0i, global1.b.a));
    var_0 = abs(vec3<u32>(2170u, ~_wgslsmith_mult_u32(countOneBits(70999u), var_0.x), 1u));
    return _wgslsmith_div_f32(173f, 167f);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: f32, arg_3: Struct_3) -> vec4<f32> {
    global4 = array<bool, 23>();
    let var_0 = true;
    global4 = array<bool, 23>();
    let var_1 = global1.b;
    global2 = array<vec2<i32>, 5>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, arg_2, arg_2, arg_1.b.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.e.a, -500f, 865f, -125f)))), vec4<f32>(_wgslsmith_f_op_f32(1241f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -874f), -1000f, _wgslsmith_f_op_f32(-arg_1.a.e.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.e.a, arg_2, -660f, global1.e.a), vec4<f32>(-1122f, arg_2, -992f, 2210f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, arg_1.b.x, -1983f, -590f))) - vec4<f32>(-2183f, -1000f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(func_3(vec4<bool>(arg_0, false, arg_0, false), u_input.c.x)))) + vec4<f32>(global1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1947f))), global1.e.a)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(false, Struct_5(Struct_4(Struct_3(global1.a.a, u_input.a.xzy), arg_0, global1.e.a, true, Struct_1(1250f, global1.a.b)), vec3<f32>(-423f, -1821f, -1270f), global1.b, u_input.a), global1.e.a, arg_0))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(global1.c > -721f, Struct_5(Struct_4(arg_0, arg_0, 213f, global4[_wgslsmith_index_u32(0u, 23u)], Struct_1(-1160f, vec3<i32>(-16809i, u_input.a.x, global1.a.a))), vec3<f32>(global1.e.a, -1384f, global1.c), arg_0, vec4<i32>(41481i, 27784i, arg_0.a, arg_0.b.x)), global1.e.a, global1.a))))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(42652i, abs(-43097i)), ~max(-1i, min(27943i, global1.e.b.x))), global1.e.b.x);
    global2 = array<vec2<i32>, 5>();
    global1 = Struct_4(arg_0, Struct_3(-2147483647i, vec3<i32>(-1i) * -firstLeadingBit(u_input.a.xwy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -428f)))))), _wgslsmith_mod_u32(abs(reverseBits(u_input.c.x)), 4294967295u) <= ~u_input.c.x, global1.e);
    var var_2 = Struct_3(0i, ~u_input.a.yxy);
    return vec3<u32>(44107u, ~33362u, ~4294967295u << (arg_1.x % 32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> StorageBuffer {
    global3 = reverseBits(23351u);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c * global1.c))), ~(~(-arg_1.b) >> (vec3<u32>(countOneBits(arg_0.x), arg_0.x | u_input.b.x, 4294967295u) % vec3<u32>(32u))));
    global2 = array<vec2<i32>, 5>();
    var var_1 = arg_0.x;
    let var_2 = var_0;
    return StorageBuffer(-abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-37646i, -2147483647i, 55096i), vec3<i32>(1i, 8031i, -28540i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(443f + 1f), global1.c, global1.e.a, _wgslsmith_f_op_f32(max(-2520f, _wgslsmith_f_op_f32(141f * -659f)))) * vec4<f32>(global1.c, _wgslsmith_f_op_f32(-global1.e.a), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1401f - 1000f) + _wgslsmith_f_op_f32(select(global1.c, global1.c, global1.d))))));
    let var_1 = ~(~min(_wgslsmith_mult_vec3_i32(min(vec3<i32>(-35149i, global1.b.b.x, u_input.a.x), vec3<i32>(u_input.a.x, global1.e.b.x, global1.a.b.x)), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), vec3<i32>(global1.a.b.x, _wgslsmith_mult_i32(global1.b.b.x, 1i), abs(-38942i))));
    var var_2 = global1.a.a;
    var var_3 = !(!global1.d);
    global2 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = func_4(select(_wgslsmith_div_vec3_u32(max(vec3<u32>(5917u, u_input.c.x, 4294967295u), func_1(global1.a, vec2<u32>(0u, u_input.c.x))), reverseBits(vec3<u32>(u_input.b.x, u_input.c.x, 47273u))), vec3<u32>(select(4227u, abs(u_input.b.x), all(vec4<bool>(true, false, false, true))), ~firstTrailingBit(u_input.b.x), ~(~7234u)), any(global0[_wgslsmith_index_u32(43064u, 22u)])), Struct_3(_wgslsmith_add_i32(var_1.x, 17178i), ~vec3<i32>(~var_1.x, -2147483647i, abs(global1.a.a))));
}

