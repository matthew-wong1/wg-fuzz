struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<vec4<f32>, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.d, 17u)], Struct_1((global0.x && global0.x) || global0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, 954f) * vec2<f32>(arg_1, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(720f, arg_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(arg_1))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -951f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, -1000f), vec2<f32>(arg_1, arg_1))))), arg_0.x)));
    let var_1 = ~vec4<u32>(~1u, ~u_input.d, u_input.d, 25492u);
    var var_2 = min(vec2<u32>(~max(16912u, countOneBits(22798u)), select(1u | ~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(49958u, 7069u), vec2<u32>(13536u, u_input.d)) & abs(1u), false)), vec2<u32>(~4294967295u, firstTrailingBit(var_1.x)));
    global2 = array<vec4<f32>, 27>();
    var var_3 = reverseBits(_wgslsmith_add_i32(u_input.a << (reverseBits(_wgslsmith_clamp_u32(31179u, 9991u, u_input.d)) % 32u), _wgslsmith_mult_i32(~u_input.b, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.c, u_input.e)), vec2<i32>(0i, 11809i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-836f)), arg_1)))));
}

fn func_2() -> Struct_4 {
    var var_0 = !(all(vec3<bool>(global0.x & global0.x, true, any(vec3<bool>(false, global0.x, true)))) || (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1586f + -1952f), _wgslsmith_f_op_f32(func_3(global0.zx, 1767f)))) > -771f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(547f + -850f))))), _wgslsmith_f_op_f32(2004f * 1798f), 1f));
    var var_2 = Struct_3(vec4<i32>(11354i, -1i, 45612i, _wgslsmith_add_i32(46861i, ~(-16371i))), Struct_2(global1[_wgslsmith_index_u32(~(~1u), 17u)], Struct_1(any(vec4<bool>(false, false, false, false)) && true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, -960f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, 767f)))), vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x)))), Struct_1(global0.x));
    global0 = vec3<bool>(true || all(vec2<bool>(global0.x, true)), true, var_2.c.a);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(countOneBits(u_input.d), firstLeadingBit(u_input.d))), vec2<u32>(_wgslsmith_div_u32(23520u, u_input.d), 36377u)), ~_wgslsmith_add_u32(~8884u, 298u | u_input.d) << (firstLeadingBit(23660u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.d, 98077u), vec3<u32>(u_input.d, 8775u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 20775u, u_input.d), vec3<u32>(0u, 9192u, u_input.d))), vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, u_input.d), ~u_input.d), abs(abs(u_input.d)))));
    return Struct_4(-var_2.a.zzz);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_3) -> vec4<i32> {
    global2 = array<vec4<f32>, 27>();
    let var_0 = func_2();
    global2 = array<vec4<f32>, 27>();
    global0 = !(!vec3<bool>(arg_3.b.b.a && global0.x, !(true == arg_1), arg_0.a));
    var var_1 = abs(~u_input.d);
    return ~_wgslsmith_div_vec4_i32(~abs(vec4<i32>(var_0.a.x, var_0.a.x, 0i, u_input.c)), arg_3.a) ^ arg_3.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> vec3<bool> {
    global0 = !vec3<bool>(!global0.x, all(select(!vec3<bool>(true, arg_1.c.a, false), vec3<bool>(true, false, arg_1.b.a.a), vec3<bool>(true, true, true))), arg_1.b.a.a & global0.x);
    global2 = array<vec4<f32>, 27>();
    let var_0 = ~_wgslsmith_mod_vec2_i32(arg_1.a.wy, ~vec2<i32>(reverseBits(66254i), -arg_1.a.x));
    var var_1 = vec4<bool>(-47836i != func_1(Struct_1(arg_1.c.a), true & arg_1.c.a, ~arg_1.a.wz, arg_1).x, !all(!select(vec4<bool>(false, true, arg_1.b.a.a, global0.x), vec4<bool>(false, arg_1.c.a, false, global0.x), global0.x)), global0.x, global0.x);
    let var_2 = arg_1.c;
    return !(!var_1.xxw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(max(vec3<u32>(countOneBits(u_input.d & 41372u), _wgslsmith_sub_u32(0u, u_input.d) & abs(u_input.d), _wgslsmith_add_u32(~8640u, u_input.d)), ~(~(vec3<u32>(u_input.d, u_input.d, u_input.d) ^ vec3<u32>(0u, u_input.d, 65967u)))), Struct_3(~func_1(Struct_1(true), all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), ~vec2<i32>(u_input.b, u_input.c), Struct_3(vec4<i32>(u_input.a, 30876i, -1i, u_input.b), Struct_2(Struct_1(global0.x), Struct_1(true), vec2<f32>(359f, 530f)), Struct_1(global0.x))), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, abs(u_input.d)), 17u)], Struct_1(u_input.d < u_input.d), vec2<f32>(_wgslsmith_div_f32(-950f, -320f), _wgslsmith_f_op_f32(-1233f + 2285f))), Struct_1(true)));
    var var_0 = global1[_wgslsmith_index_u32(u_input.d, 17u)];
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.d, 17u)], Struct_1(true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(303f + _wgslsmith_f_op_f32(f32(-1f) * -1396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f) - _wgslsmith_f_op_f32(325f + 425f)))));
    var var_2 = 2939i;
    let var_3 = (vec4<u32>(_wgslsmith_sub_u32(41237u, u_input.d) ^ 1u, ~u_input.d, firstLeadingBit(~4294967295u), u_input.d) >> (vec4<u32>(u_input.d, ~(~37546u), 53062u, u_input.d) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(36140u, u_input.d)), ~vec2<u32>(u_input.d, 77286u) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 53577u), vec2<u32>(u_input.d, u_input.d))), 56775u | (u_input.d | ~u_input.d), 4294967295u) % vec4<u32>(32u));
    let var_4 = vec2<f32>(107f, var_1.c.x);
    var var_5 = all(func_4(_wgslsmith_div_vec3_u32(~(var_3.zxw >> (var_3.zxw % vec3<u32>(32u))), ~(~var_3.wzz)), Struct_3(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, 0i, u_input.b, u_input.c), reverseBits(vec4<i32>(-2147483647i, u_input.e, u_input.c, 2147483647i))), Struct_2(var_1.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28499u, var_3.x, 0u, 0u), vec4<u32>(var_3.x, var_3.x, u_input.d, var_3.x)), 17u)], vec2<f32>(-114f, var_1.c.x)), Struct_1(any(vec2<bool>(var_1.a.a, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~(-max(vec3<i32>(u_input.a, -8235i, 0i), vec3<i32>(-1i, 6187i, -1i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.c, -1i), vec3<i32>(12288i, -19229i, u_input.b) << (var_3.zwx % vec3<u32>(32u))), select(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a, 0i), vec3<i32>(-2147483647i, u_input.e, -63257i))), vec3<i32>(abs(0i), abs(1i), _wgslsmith_add_i32(u_input.e, 15158i)), false)), abs(select(var_3.wxw, var_3.zxw << (vec3<u32>(24486u, 4294967295u, var_3.x) % vec3<u32>(32u)), select(false, true, true))));
}

