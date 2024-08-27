struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 22635u, 89894u);

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<bool>(false, true), false, true), Struct_2(vec2<bool>(false, false), true, true), Struct_2(vec2<bool>(false, false), true, true), Struct_2(vec2<bool>(true, false), true, false), Struct_2(vec2<bool>(false, false), false, true), Struct_2(vec2<bool>(true, true), false, false), Struct_2(vec2<bool>(true, false), false, true), Struct_2(vec2<bool>(true, false), false, false), Struct_2(vec2<bool>(true, false), false, true), Struct_2(vec2<bool>(true, false), true, true), Struct_2(vec2<bool>(true, true), true, true), Struct_2(vec2<bool>(false, false), false, false), Struct_2(vec2<bool>(false, false), false, false), Struct_2(vec2<bool>(false, true), true, false), Struct_2(vec2<bool>(false, true), false, true), Struct_2(vec2<bool>(false, false), true, true), Struct_2(vec2<bool>(true, true), false, true), Struct_2(vec2<bool>(true, true), false, false), Struct_2(vec2<bool>(false, true), false, false), Struct_2(vec2<bool>(true, false), false, false), Struct_2(vec2<bool>(true, false), false, false), Struct_2(vec2<bool>(true, true), false, false), Struct_2(vec2<bool>(false, true), false, true), Struct_2(vec2<bool>(false, true), false, true), Struct_2(vec2<bool>(true, true), false, true), Struct_2(vec2<bool>(true, true), true, false), Struct_2(vec2<bool>(true, true), true, true), Struct_2(vec2<bool>(true, false), true, false), Struct_2(vec2<bool>(false, false), true, true));

var<private> global2: vec4<f32> = vec4<f32>(1290f, 1174f, 731f, 559f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(694f, arg_2, -582f, -220f), vec4<f32>(arg_1, global2.x, -391f, arg_1))))));
    return ~(-(~_wgslsmith_div_i32(6241i, 10676i))) << (_wgslsmith_div_u32(firstTrailingBit(global0.x), _wgslsmith_sub_u32(104051u, arg_0.x)) % 32u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    global1 = array<Struct_2, 29>();
    let var_0 = -676f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f * arg_1.x) - global2.x), global2.x)));
    global0 = vec4<u32>(firstTrailingBit(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(41057u, u_input.b.x, global0.x), vec3<u32>(34735u, 70133u, 107980u)))), reverseBits(~u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(61303u, u_input.c.x, ~0u, _wgslsmith_mod_u32(4294967295u, 4454u)), _wgslsmith_div_vec4_u32(u_input.c, ~vec4<u32>(1u, 1u, global0.x, global0.x))), ~abs(~98483u) << (~_wgslsmith_add_u32(u_input.c.x, firstTrailingBit(global0.x)) % 32u));
    let var_1 = global0.yzy;
    global1 = array<Struct_2, 29>();
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2() -> i32 {
    global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(39254u, 29u)], _wgslsmith_f_op_vec3_f32(min(global2.xww, global2.xyw)))), -987f, _wgslsmith_div_f32(961f, _wgslsmith_f_op_f32(-373f - global2.x)))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -1000f) - global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(round(-753f))))));
    let var_0 = global2.x;
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(~firstTrailingBit(u_input.b.xy ^ vec2<u32>(global0.x, 0u)), ~global0.yx), max(~u_input.b.x, global0.x));
    let var_2 = Struct_3(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, false))));
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c.x, global0.x, ~93306u, 45753u), ~u_input.c);
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(-12843i, ~_wgslsmith_clamp_i32(-51392i, 1i, -20737i)) | ~(~(~(-14258i))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    var var_0 = vec4<i32>(69696i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -8319i), ~func_1(vec2<u32>(u_input.b.x, global0.x), 135f, global2.x, vec2<bool>(false, true)))), _wgslsmith_mult_i32(33983i, -26286i), -min(-2147483647i, -1i));
    var var_1 = global1[_wgslsmith_index_u32(global0.x, 29u)];
    global1 = array<Struct_2, 29>();
    global0 = select(max(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a >> (global0.x % 32u), ~4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 17582u, 0u), vec3<u32>(u_input.a, 0u, global0.x))), vec4<u32>(1u, 13863u & u_input.a, global0.x, _wgslsmith_div_u32(14695u, 37903u)))), u_input.c, var_1.b);
    var var_2 = ~(0u & (_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(global0.wyw, u_input.b)) & global0.x));
    var_0 = vec4<i32>(var_0.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x >> (0u % 32u), var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) >> (u_input.c % vec4<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, func_2() & ~1i), -1i), -countOneBits(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.yx), vec2<i32>(1i, 28532i))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-154f * 234f))))));
}

