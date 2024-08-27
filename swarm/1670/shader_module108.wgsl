struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: u32 = 42402u;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, arg_0.b)))))));
    global3 = select(select(~1u, _wgslsmith_clamp_u32(105808u, 40681u, u_input.e << (17894u % 32u)), any(vec2<bool>(true, true))) >> (~(u_input.e << (select(1u, 1u, false) % 32u)) % 32u), u_input.b.x, select(true, true, !(any(vec2<bool>(false, true)) && true)));
    global1 = max(vec4<i32>(0i, ~(~1i), select(firstLeadingBit(firstLeadingBit(u_input.c.x)), u_input.c.x, true && all(vec4<bool>(false, false, true, true))), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(54781u, 23u)], 0i)), _wgslsmith_sub_vec4_i32((_wgslsmith_mult_vec4_i32(vec4<i32>(-38308i, 13445i, 41646i, -42938i), vec4<i32>(global1.x, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.c.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -1i, 1i, -2147483647i), vec4<i32>(-72254i, -4790i, -51873i, -1i))) >> (select(vec4<u32>(9399u, 0u, 1u, 4294967295u), reverseBits(vec4<u32>(0u, u_input.a.x, u_input.b.x, 1u)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(firstTrailingBit(11570u), 23u)], global1.x >> (54876u % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], -4139i), _wgslsmith_sub_i32(-1i, 42285i)), 6162i, u_input.c.x & abs(-2147483647i))));
    global1 = -_wgslsmith_div_vec4_i32((abs(vec4<i32>(-2147483647i, 27081i, 4745i, u_input.c.x)) >> (~vec4<u32>(9097u, u_input.e, 77272u, 4294967295u) % vec4<u32>(32u))) << ((~vec4<u32>(1u, 11451u, 10373u, 0u) ^ u_input.b) % vec4<u32>(32u)), (_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i, -61470i, 0i), vec4<i32>(-39042i, global0[_wgslsmith_index_u32(24851u, 23u)], -37798i, -1i)) << (~u_input.b % vec4<u32>(32u))) | ~(-vec4<i32>(global1.x, global1.x, u_input.c.x, u_input.c.x)));
    let var_1 = !vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)) || !select(true, true, true), all(vec2<bool>(false, true)));
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    let var_0 = !select(!(!select(vec3<bool>(arg_2.x, arg_1, true), vec3<bool>(arg_1, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, arg_2.x, select(global0[_wgslsmith_index_u32(u_input.e, 23u)] > global0[_wgslsmith_index_u32(u_input.b.x, 23u)], false, all(vec4<bool>(arg_1, arg_2.x, true, false)))), arg_2.x);
    var var_1 = Struct_4(arg_2.x, func_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - 315f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), reverseBits(u_input.b.zx));
    global0 = array<i32, 23>();
    let var_2 = global1.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1808f)), _wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), 1f);
    return _wgslsmith_f_op_f32(arg_0.x + arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1))));
    global0 = array<i32, 23>();
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-374f, 1072f), arg_1, true)) - _wgslsmith_div_vec2_f32(arg_1, vec2<f32>(-1179f, var_0.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1))))))) + _wgslsmith_f_op_vec2_f32(sign(arg_1)));
    var var_3 = vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(17453u, u_input.b.x), (u_input.a.x << (u_input.d.x % 32u)) << (_wgslsmith_add_u32(0u, u_input.a.x) % 32u)), _wgslsmith_sub_vec3_u32(~max(vec3<u32>(2206u, 1u, 4294967295u), u_input.b.yxy), vec3<u32>(0u << (u_input.d.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.d.x, 4294967295u)), u_input.b.x))));
    return Struct_4(true, (!(var_0.x != arg_1.x) & true) | false, u_input.d);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: f32) -> bool {
    var var_0 = func_4(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], vec2<f32>(289f, _wgslsmith_f_op_f32(func_2(vec3<f32>(-1259f, _wgslsmith_f_op_f32(f32(-1f) * -373f), 1849f), arg_1.x, !select(arg_1, vec2<bool>(arg_0.b, true), vec2<bool>(true, false))))));
    global0 = array<i32, 23>();
    var var_1 = global2[_wgslsmith_index_u32(~u_input.e, 7u)];
    var var_2 = 19537u;
    global1 = -arg_2;
    return (1i <= reverseBits(arg_0.c.a)) != false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(2147483647i, global1.x);
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    let var_1 = Struct_3(any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true), true), func_1(Struct_3(true, true, Struct_2(global0[_wgslsmith_index_u32(0u, 23u)]), vec4<f32>(748f, 553f, 455f, 714f)), vec2<bool>(true, true), abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)], -2147483647i)), _wgslsmith_f_op_f32(select(1000f, -1395f, true))))), false, Struct_2(-u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(933f - _wgslsmith_div_f32(1042f, -845f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-513f, 559f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1413f * -361f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec3<f32>(161f, -741f, -424f), false, vec2<bool>(true, false)))))), -1352f));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.d.wz - var_1.d.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2163f, var_1.d.x))))) + var_1.d.yx) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.wy + vec2<f32>(1929f, var_1.d.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1625f, 756f)) - var_1.d.ww)))));
    let var_3 = Struct_1(vec3<f32>(-341f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_f32(abs(var_1.d.x)))), var_1.d.x), -299f);
    let var_4 = vec2<i32>(global1.x, ((select(-15490i, 24152i, true) ^ 2147483647i) >> (countOneBits(_wgslsmith_sub_u32(u_input.d.x, 0u)) % 32u)) | ((-54741i << (0u % 32u)) << (reverseBits(u_input.d.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(_wgslsmith_mod_u32(u_input.d.x, u_input.e) | abs(u_input.d.x)), u_input.e, u_input.e, _wgslsmith_add_u32(countOneBits(u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 18119u), ~u_input.b.xyz))), var_1.d.xz, -(~vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.e, 23u)], var_4.x), 2147483647i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global1.x))));
}

