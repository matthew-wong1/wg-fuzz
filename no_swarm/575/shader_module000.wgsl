struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<f32, 22> = array<f32, 22>(273f, 1367f, 259f, 641f, -859f, 564f, -540f, -1278f, -178f, -1037f, -1902f, -390f, 958f, 447f, 148f, -653f, -507f, 939f, 224f, -543f, 491f, 613f);

var<private> global3: f32 = 1626f;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(70306u, 732u, 0u), 3711u, vec4<i32>(-1i, 1i, 2147483647i, 1i), false, vec2<u32>(100402u, 51143u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = vec2<i32>(~(~(~_wgslsmith_clamp_i32(0i, 54363i, arg_2.c.x))), _wgslsmith_dot_vec4_i32(select(global4.c, vec4<i32>(firstTrailingBit(arg_1), 5046i, -2147483647i, -2147483647i << (global4.b % 32u)), true), abs(vec4<i32>(arg_2.c.x, arg_3.c.x, arg_2.c.x, 41931i) ^ max(vec4<i32>(arg_2.c.x, -9849i, -25579i, 36929i), global1.c))));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.e.x, 22u)] + 515f) + _wgslsmith_div_f32(1498f, global2[_wgslsmith_index_u32(84371u, 22u)])), global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)] * 1196f)))))));
    let var_2 = max(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global4.b, global1.e.x) << (u_input.a.x % 32u), global4.a.x, arg_3.b, global4.e.x), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(64030u, 0u, global4.e.x, 46974u), vec4<u32>(var_0, 4294967295u, 4294967295u, global1.a.x)))), ~select(vec4<u32>(select(11044u, global4.a.x, false), global4.a.x, ~u_input.a.x, ~4294967295u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global4.a.x, var_0, 1u, 16737u), vec4<u32>(16261u, global4.e.x, 33513u, 10157u)), all(select(vec2<bool>(true, true), vec2<bool>(true, global4.d), vec2<bool>(arg_3.d, false)))));
    global1 = arg_3;
    return 4294967295u;
}

fn func_2() -> u32 {
    var var_0 = global4.c.x;
    var var_1 = 4294967295u;
    var var_2 = Struct_1(vec3<u32>(1u, 83229u, ~global4.a.x), global4.e.x & _wgslsmith_mult_u32(firstTrailingBit(min(1u, 1u)), ~func_3(-412f, -1i, Struct_1(global1.a, 4294967295u, global1.c, global4.d, u_input.a), Struct_1(vec3<u32>(31763u, 1u, u_input.a.x), global1.e.x, vec4<i32>(global1.c.x, global1.c.x, global4.c.x, global4.c.x), global1.d, vec2<u32>(global4.e.x, 78170u)))), ~abs(select(~global1.c, _wgslsmith_div_vec4_i32(vec4<i32>(global1.c.x, -8660i, 0i, global1.c.x), global4.c), all(vec3<bool>(global1.d, global4.d, global1.d)))), false, vec2<u32>(global4.e.x, ~(~global4.b)));
    var var_3 = -313f;
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b, 22u)]), -1219f));
    return global1.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, global4.b, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1, 4294967295u), vec2<u32>(2705u, u_input.a.x)), vec2<u32>(76015u, 0u)), ~func_2())));
    return Struct_1(global4.a, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~u_input.a.x, _wgslsmith_mod_u32(global4.e.x, global4.e.x))), ~vec2<u32>(global4.a.x, 0u) ^ vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 1u), vec4<u32>(global4.b, 4294967295u, global4.e.x, var_0)))), abs(vec4<i32>(~_wgslsmith_mult_i32(0i, global1.c.x), -arg_0.x, global4.c.x, global1.c.x)), true, vec2<u32>(global4.a.x, 0u));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = global1.d;
    let var_1 = global4.d;
    global2 = array<f32, 22>();
    let var_2 = arg_0.b >> ((global1.e.x & global4.e.x) % 32u);
    global0 = max(~(~global4.e.x), func_1(~global4.c.xwy, global1.b).e.x);
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u & _wgslsmith_add_u32(1652u << (global4.e.x % 32u), 1553u), reverseBits(_wgslsmith_div_u32(~47003u, ~var_2))), ~33664u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(global4.b, func_4(func_1(vec3<i32>(global1.c.x, global1.c.x, -51843i), 28799u))), ~(~u_input.a.x), 0u), 35898u, vec4<i32>(abs(~firstLeadingBit(global4.c.x)), global4.c.x, 1i >> (countOneBits(global4.e.x) % 32u), func_1(~vec3<i32>(global4.c.x, -2147483647i, global4.c.x), ~global1.b).c.x), true, ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~u_input.a)));
    global0 = ~(~0u);
    global0 = func_3(_wgslsmith_f_op_f32(982f + -1023f), _wgslsmith_add_i32(~func_1(global4.c.ywx >> (global4.a % vec3<u32>(32u)), 4294967295u).c.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global1.c.x, global1.c.x), select(vec2<i32>(0i, global1.c.x), vec2<i32>(global4.c.x, global1.c.x), vec2<bool>(global1.d, global4.d))), 1i, -78489i)), func_1(~_wgslsmith_mod_vec3_i32(~global4.c.xxw, -vec3<i32>(global1.c.x, global1.c.x, 2147483647i)), _wgslsmith_mod_u32(func_3(global2[_wgslsmith_index_u32(~34789u, 22u)], firstLeadingBit(-2147483647i), Struct_1(global4.a, global1.a.x, global1.c, false, u_input.a), func_1(global1.c.xxz, 63055u)), ~global1.a.x)), func_1(vec3<i32>(-39537i, global1.c.x, global1.c.x), ~1u));
    global4 = Struct_1(_wgslsmith_sub_vec3_u32(global4.a, ~(~global4.a | select(global1.a, vec3<u32>(global1.a.x, global1.a.x, 4294967295u), vec3<bool>(false, global4.d, global4.d)))), ~global4.e.x, reverseBits(select(_wgslsmith_sub_vec4_i32(global1.c, ~global4.c), ~(-vec4<i32>(16031i, 33161i, -2147483647i, global1.c.x)), !(!global1.d))), true, ~(vec2<u32>(13848u, select(global4.b, u_input.a.x, global1.d)) | global1.a.zy));
    var var_0 = 0i;
    var var_1 = 38526u;
    let var_2 = true;
    var var_3 = Struct_1(global1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(func_4(Struct_1(vec3<u32>(global4.b, 1u, 1u), 1u, global4.c, false, vec2<u32>(46184u, global4.b)))), ~(u_input.a.x & 1u), ~_wgslsmith_clamp_u32(u_input.a.x, global4.a.x, u_input.a.x), global4.b), abs(abs(~vec4<u32>(global1.b, global1.a.x, global4.e.x, global1.a.x)))), -abs(~(-global1.c)), false, global4.a.yx);
    let var_4 = any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), global1.d), vec2<bool>(true, true))) != true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~firstTrailingBit(~u_input.a.x), func_2()), 204f, global4.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(65160u, 22u)])))), _wgslsmith_f_op_f32(-1005f + global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 22u)]), -390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(427u, 22u)])))), select(abs(~var_3.c.x), func_1(global4.c.wzz, 11683u).c.x, true));
}

