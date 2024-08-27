struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)));

var<private> global2: vec2<bool>;

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = 1000f;
    var var_1 = global4.a.zx;
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(select(u_input.b, u_input.a.x & 0u, all(select(select(vec4<bool>(false, arg_1.a.x, true, arg_3.a.x), vec4<bool>(arg_1.a.x, arg_2.a.x, true, false), var_1.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_2.a.x), vec4<bool>(arg_1.a.x, var_1.x, true, global4.a.x), arg_2.a.x), vec4<bool>(false, true, arg_1.a.x, false)))), 28u)], _wgslsmith_add_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(u_input.b, u_input.a.x)), firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 0u))), u_input.a.x), Struct_1(!vec3<bool>(arg_3.a.x, global2.x, false)), ~select(~u_input.b, ~(~u_input.a.x), var_1.x));
    let var_3 = Struct_2(arg_3, var_2.b, Struct_1(global4.a), ~(~(25977u >> (_wgslsmith_sub_u32(u_input.b, 1u) % 32u))));
    global1 = array<Struct_1, 6>();
    return ~max(vec2<i32>(min(arg_0.x, max(1i, 5640i)), _wgslsmith_mult_i32(-2147483647i << (u_input.b % 32u), firstTrailingBit(arg_0.x))), select(~vec2<i32>(arg_0.x, 20947i), _wgslsmith_add_vec2_i32(~arg_0.xx, _wgslsmith_sub_vec2_i32(arg_0.yx, vec2<i32>(18013i, 519i))), arg_3.a.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.b, 6u)], ~(~(~u_input.b)), Struct_1(global4.a), u_input.a.x);
    let var_1 = any(vec3<bool>(global4.a.x, true, arg_2.a.x));
    global4 = Struct_1(var_0.c.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -436f, -695f) * vec4<f32>(arg_1, -175f, arg_1, 760f)), vec4<f32>(1000f, arg_1, arg_1, -1611f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, -375f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), -254f, _wgslsmith_f_op_f32(f32(-1f) * -1252f), 469f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1780f, -900f, arg_1, arg_1))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(133f)) * 526f)), _wgslsmith_f_op_f32(floor(-261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(step(1000f, arg_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f - 1372f))), 1682f), vec4<bool>(var_0.a.a.x, true || arg_2.a.x, true, var_0.a.a.x)));
    global4 = Struct_1(select(select(!vec3<bool>(global2.x, false, var_0.a.a.x), select(!vec3<bool>(true, false, global2.x), global4.a, !global2.x), vec3<bool>(any(vec4<bool>(false, false, arg_2.a.x, global2.x)), arg_0.x != arg_0.x, all(vec4<bool>(var_1, false, false, false)))), vec3<bool>(all(vec2<bool>(var_1, true)), global2.x, !var_0.c.a.x), var_0.a.a));
    return var_0.a.a;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, !(!global2.x), true)), reverseBits(u_input.b), Struct_1(select(func_4(func_3(vec3<i32>(-12034i, 4386i, 2147483647i), Struct_1(global4.a), Struct_1(global4.a), global0[_wgslsmith_index_u32(10765u, 28u)]), _wgslsmith_f_op_f32(-464f - -581f), global1[_wgslsmith_index_u32(u_input.a.x >> (u_input.b % 32u), 6u)]), select(global4.a, select(global4.a, vec3<bool>(true, global2.x, global4.a.x), false), vec3<bool>(false, false, true)), global4.a)), u_input.a.x);
    global3 = global4.a.x;
    global2 = !var_0.c.a.xy;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(682f, 713f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f + 540f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1612f - _wgslsmith_f_op_f32(-591f - 1000f)))))));
    var var_2 = -313f;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - -407f)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-383f, 198f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(2000f, 283f)), _wgslsmith_f_op_f32(sign(-666f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1095f, 276f, 1000f, 1000f) + vec4<f32>(1087f, -778f, -1961f, 1626f))), any(global4.a.yx))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1213f * -1081f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(756f, -896f) + 1000f))));
    global4 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~reverseBits(select(_wgslsmith_sub_u32(0u, u_input.a.x), u_input.a.x, true)), 6u)], _wgslsmith_sub_u32(4294967295u & (~u_input.a.x ^ _wgslsmith_div_u32(4294967295u, u_input.a.x)), u_input.b), Struct_1(!(!global4.a)), reverseBits(~_wgslsmith_add_u32(~50343u, ~u_input.b)));
    let var_2 = ~(~vec3<u32>(~abs(1u), countOneBits(reverseBits(u_input.b)), 17351u));
    global4 = var_1.a;
    return StorageBuffer(var_0.x, vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), -(~vec3<i32>(-5636i, 610i, 1i)))), vec2<i32>(1i, _wgslsmith_div_i32(-60130i, firstLeadingBit(-42719i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-(~(~(-5746i)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 469f)) - _wgslsmith_f_op_f32(f32(-1f) * -1323f))) - _wgslsmith_f_op_f32(abs(1200f)));
    global4 = Struct_1(vec3<bool>(global2.x, false, false));
    var var_2 = true && global2.x;
    var var_3 = global4.a.x;
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = func_1();
}

