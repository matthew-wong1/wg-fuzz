struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-626f, vec2<f32>(1371f, 598f), false, vec3<f32>(1000f, 1000f, 557f)), Struct_1(-301f, vec2<f32>(-1000f, 250f), true, vec3<f32>(3097f, 400f, 2657f)), Struct_1(1302f, vec2<f32>(130f, 268f), true, vec3<f32>(-720f, -1000f, -288f)));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 32> = array<f32, 32>(-308f, 1365f, 392f, 1000f, -1694f, -727f, 845f, 518f, 561f, -264f, -730f, 402f, -1549f, 1000f, -1090f, 471f, 518f, 1344f, 2027f, 469f, 567f, 980f, -1083f, 316f, 258f, 699f, -316f, 1000f, 1151f, -981f, 338f, -2083f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    let var_0 = vec2<f32>(1f, global2[_wgslsmith_index_u32(~((u_input.c.x << (4294967295u % 32u)) | ~u_input.c.x), 32u)]);
    var var_1 = -104f;
    return 57740u;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = u_input.a ^ vec4<u32>(_wgslsmith_mod_u32(~u_input.a.x, reverseBits(u_input.a.x)) >> (firstLeadingBit(1u) % 32u), ~(~(~u_input.a.x)), u_input.c.x, ~min(~u_input.a.x, ~49978u));
    var var_1 = vec2<u32>(~_wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_4(vec2<f32>(306f, global2[_wgslsmith_index_u32(3748u, 32u)])), Struct_4(vec2<f32>(688f, global2[_wgslsmith_index_u32(var_0.x, 32u)]))), firstTrailingBit(10576u)), 0u) & u_input.a.zw;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1971f + global2[_wgslsmith_index_u32(var_0.x, 32u)]) - _wgslsmith_f_op_f32(-1190f + global2[_wgslsmith_index_u32(u_input.c.x, 32u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 164f), global2[_wgslsmith_index_u32(5747u, 32u)]))), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2059f, global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)]))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(692f, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -1046f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], -927f, global2[_wgslsmith_index_u32(var_0.x, 32u)])))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 32u)], 802f, global2[_wgslsmith_index_u32(68823u, 32u)]))))));
    let var_3 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~(~var_1.x), u_input.c.x, 4294967295u)), vec3<u32>(1u, 4294967295u, abs(u_input.a.x)));
    var var_4 = ~abs(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), select(vec2<i32>(26835i, 23881i), vec2<i32>(-3158i, -9068i), arg_0)), countOneBits(vec2<i32>(-23221i, -9529i)) ^ ~vec2<i32>(-6100i, u_input.b)));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(70297u, 32u)], 156f), vec2<f32>(var_2.d.x, var_2.a)) + var_2.d.xx) * var_2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(8783u, 32u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], -1477f)), vec2<bool>(all(vec2<bool>(arg_0, arg_0)), 421f >= var_2.b.x))))));
}

fn func_1() -> f32 {
    let var_0 = select(vec4<bool>(any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    global2 = array<f32, 32>();
    global0 = array<Struct_1, 3>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(1u, 32u)], -1460f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true)) - vec2<f32>(global2[_wgslsmith_index_u32(61525u, 32u)], -1568f))));
    global1 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_5(4294967295u, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 12629i), vec2<i32>(u_input.b, u_input.b)))), ~(vec3<u32>(4294967295u, 39420u, max(u_input.c.x, 17917u)) << (firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, arg_3)) % vec3<u32>(32u))), -((min(u_input.b, 2147483647i) | u_input.b) << (1u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = vec4<i32>(var_0.b, 1i, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-29136i, 0i)), vec2<i32>(~u_input.b, var_0.d))), abs(countOneBits(abs(u_input.b))));
    var var_3 = global2[_wgslsmith_index_u32(30609u, 32u)] <= arg_1;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -476f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1329f)))), arg_0, true, vec3<f32>(global2[_wgslsmith_index_u32(arg_3, 32u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2179f) * _wgslsmith_f_op_f32(arg_2 + global2[_wgslsmith_index_u32(var_0.a, 32u)])))), _wgslsmith_f_op_f32(arg_1 - arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(u_input.c.xzw), _wgslsmith_sub_vec3_u32(u_input.a.yyy, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) & ~u_input.a.wxx), 32u)], -2198f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 32u)])))), 501f)), ~(~u_input.c.x));
    global0 = array<Struct_1, 3>();
    let var_1 = u_input.a.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-vec4<i32>(~21467i, ~u_input.b, u_input.b & -1i, firstLeadingBit(u_input.b)), vec4<i32>(u_input.b, ~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 42747i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (u_input.a % vec4<u32>(32u))), select(_wgslsmith_mod_i32(u_input.b, 14219i), _wgslsmith_sub_i32(105709i, 6934i), !var_0.c))), -786f, vec2<u32>(0u, 4294967295u), select(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b, 25946i), vec3<i32>(u_input.b, u_input.b, u_input.b)), select(vec3<i32>(-3051i, u_input.b, -1i), vec3<i32>(2147483647i, u_input.b, -26464i), vec3<bool>(var_0.c, var_0.c, true))), reverseBits(vec3<i32>(7768i, 2147483647i, u_input.b))), -vec3<i32>(u_input.b << (1u % 32u), u_input.b, 52627i), select(true, var_0.c, -u_input.b == u_input.b)));
}

