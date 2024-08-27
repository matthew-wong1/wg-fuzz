struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(954i, 1i, -9091i, 21480i, -1i, 15157i, i32(-2147483648), 2147483647i, -4760i, 19224i, -9536i, 4634i, 2147483647i, 2147483647i, -15396i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec4<i32> {
    global0 = array<i32, 15>();
    var var_0 = ~reverseBits(u_input.a.x);
    global0 = array<i32, 15>();
    let var_1 = _wgslsmith_div_vec3_i32((_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 0i, 19401i), vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)])) | ~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 677i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), ~vec3<u32>(4294967295u, 0u, u_input.a.x)) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(120617u, u_input.a.x, 1u), u_input.a.xzw) % 32u), 15u)], 1i, global0[_wgslsmith_index_u32(countOneBits(select(4294967295u, 0u, arg_1.x)), 15u)])) << (~vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 100625u, u_input.a.x), u_input.a)), 56632u, abs(~0u)) % vec3<u32>(32u));
    var_0 = u_input.a.x;
    return abs(vec4<i32>(~(-54508i) >> ((u_input.a.x & ~u_input.a.x) % 32u), global0[_wgslsmith_index_u32(~1u, 15u)], _wgslsmith_div_i32(1i, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzw, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), 15u)]), 1i));
}

fn func_2() -> Struct_4 {
    let var_0 = !select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(0u, 15u)] <= global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), select(true, u_input.a.x < 72641u, true)), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false)));
    let var_1 = Struct_3(u_input.a.x);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(~reverseBits(global0[_wgslsmith_index_u32(var_1.a, 15u)]), global0[_wgslsmith_index_u32(137457u, 15u)], _wgslsmith_div_i32(-6427i, -global0[_wgslsmith_index_u32(var_1.a, 15u)])), 2147483647i, ~global0[_wgslsmith_index_u32(~u_input.a.x, 15u)], reverseBits(_wgslsmith_div_i32(select(2147483647i, -1i, var_0.x), _wgslsmith_sub_i32(-2147483647i, -1i)))), _wgslsmith_clamp_vec4_i32(func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1236f, -1093f))))), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), true)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, abs(35567i), global0[_wgslsmith_index_u32(4294967295u, 15u)], abs(-7343i)), select(vec4<i32>(global0[_wgslsmith_index_u32(7919u, 15u)], -10655i, 1i, global0[_wgslsmith_index_u32(32612u, 15u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -72038i, 20803i, 47972i), var_0) & select(vec4<i32>(14395i, global0[_wgslsmith_index_u32(48122u, 15u)], 38857i, global0[_wgslsmith_index_u32(0u, 15u)]), vec4<i32>(-31289i, global0[_wgslsmith_index_u32(var_1.a, 15u)], global0[_wgslsmith_index_u32(var_1.a, 15u)], -1i), vec4<bool>(true, false, false, true))), vec4<i32>(1i, 0i, -global0[_wgslsmith_index_u32(1433u, 15u)] & _wgslsmith_div_i32(global0[_wgslsmith_index_u32(59817u, 15u)], 42913i), _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(var_1.a, 15u)], global0[_wgslsmith_index_u32(0u | var_1.a, 15u)]))));
    let var_3 = Struct_4(_wgslsmith_clamp_vec4_i32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, -981f))), select(select(var_0.zyx, var_0.xzx, var_0.wzw), vec3<bool>(false, true, false), !var_0.zxw)), -abs(vec4<i32>(var_2.x, -2147483647i, global0[_wgslsmith_index_u32(var_1.a, 15u)], var_2.x)) ^ reverseBits(firstLeadingBit(vec4<i32>(var_2.x, -2147483647i, 5739i, var_2.x))), abs(vec4<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(25268u, 15u)]), ~var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 36617i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], var_2.x), vec4<i32>(0i, -1i, global0[_wgslsmith_index_u32(var_1.a, 15u)], var_2.x)), 1i << (var_1.a % 32u)))), select(77119i, var_2.x, var_0.x), Struct_1(select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, all(var_0.wz)), vec2<bool>(true, any(var_0))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(561f)), 837f, -852f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, 1474f, 655f, 2376f) + vec4<f32>(589f, 882f, 1798f, -1039f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, 1039f, 994f, 361f) + vec4<f32>(-1480f, -1085f, -804f, -403f)), var_0))), all(select(vec2<bool>(true, false), !vec2<bool>(var_0.x, true), true))), i32(-1i) * -9649i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, var_2.x >> (49984u % 32u))), max(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(var_1.a, 15u)]), ~firstTrailingBit(vec2<i32>(var_2.x, 0i)))));
    var var_4 = Struct_2(var_3.c, Struct_1(!vec2<bool>(false, any(var_3.c.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1799f, -881f, var_3.c.b.x, 337f))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.c.x + var_3.c.c.x) - -375f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.c.x) * _wgslsmith_f_op_f32(sign(862f)))), var_3.c.d), all(var_0), _wgslsmith_dot_vec3_i32(func_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_3.c.b.wy, var_3.c.b.xy))), vec3<bool>(var_3.c.b.x <= -157f, var_3.c.d, true)).zzw, -var_2.ywy), countOneBits(abs(abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, var_1.a, u_input.a.x, 7657u))))));
    return var_3;
}

fn func_1() -> Struct_4 {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var var_0 = abs(-2147483647i);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(firstTrailingBit(_wgslsmith_dot_vec2_u32(min(~u_input.a.xz, u_input.a.wy), vec2<u32>(firstTrailingBit(0u), u_input.a.x ^ u_input.a.x))));
    global0 = array<i32, 15>();
    let var_2 = select(global0[_wgslsmith_index_u32(13492u, 15u)], 0i, true);
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b) * var_0.c.c)));
    var_4 = _wgslsmith_f_op_vec4_f32(var_0.c.b + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b) * _wgslsmith_f_op_vec4_f32(var_0.c.c - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(154f, var_0.c.c.x, var_4.x, 209f), vec4<f32>(-686f, var_4.x, -992f, -1461f), true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a ^ vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.zzz), 0u, var_3, abs(u_input.a.x))));
}

