struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: vec4<u32> = vec4<u32>(49632u, 1974u, 193u, 4012u);

var<private> global3: vec3<bool>;

var<private> global4: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(1024f, global1.b.a, global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a))))));
    global1 = Struct_2(Struct_1(-1416f, max(~global2.x, ~(~global2.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-59472i, 1i), global1.a.d, abs(global1.a.d)), vec3<i32>(-1i & global1.a.c.x, ~global1.a.d, -u_input.a)), firstTrailingBit(~0i >> (_wgslsmith_mod_u32(arg_0, global2.x) % 32u))), global1.a);
    let var_1 = global1.a;
    let var_2 = vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(~var_1.c.xz, _wgslsmith_sub_vec2_i32(global1.a.c.xz, vec2<i32>(-36088i, -13039i)))), ~(-2147483647i)), ~(-(0i >> ((global2.x & global2.x) % 32u))));
    var var_3 = ~(~firstTrailingBit(~global2.wyy) ^ ~(vec3<u32>(0u, global1.b.b, 0u) & vec3<u32>(arg_0, global1.a.b, var_1.b)));
    return vec3<i32>(23044i, reverseBits(-reverseBits(var_2.x | u_input.a)), var_1.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = firstTrailingBit(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.b.c << (global2.zwz % vec3<u32>(32u)), func_3(global1.a.b), func_3(global2.x)), _wgslsmith_mod_vec3_i32(global1.a.c, _wgslsmith_sub_vec3_i32(arg_1.c, vec3<i32>(arg_1.d, 2147483647i, -12175i)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1f + -333f), abs(~27307u) << (select(select(1774u, arg_0.b, global3.x), 4294967295u, all(vec4<bool>(true, global4.x, global3.x, global3.x))) % 32u), ~vec3<i32>(-arg_0.d, var_0.x, arg_0.d), -1i), global1.b);
    let var_2 = global1.a;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) + _wgslsmith_f_op_f32(f32(-1f) * -1076f))));
    global2 = ~select(vec4<u32>(arg_0.b, ~global2.x, global2.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.b.b, global2.x, 4294967295u) | vec4<u32>(arg_0.b, var_1.b.b, 15482u, 18584u), vec4<u32>(0u, 4294967295u, arg_0.b, 1u), ~vec4<u32>(global2.x, 6644u, global2.x, arg_1.b)), all(select(vec4<bool>(false, global4.x, global3.x, false), vec4<bool>(global3.x, true, global4.x, true), vec4<bool>(true, global3.x, true, false)))) & vec4<u32>(18093u, min(~(var_2.b >> (arg_0.b % 32u)), countOneBits(31275u)), reverseBits(reverseBits(arg_1.b) ^ var_1.b.b), ~arg_1.b);
    return vec3<bool>(!global4.x, true | !global4.x, false);
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    global0 = _wgslsmith_div_i32(-1i, 1i);
    global0 = firstLeadingBit(-1i);
    global3 = select(select(select(select(func_2(Struct_1(797f, global1.a.b, vec3<i32>(global1.b.c.x, u_input.a, 1i), 21414i), Struct_1(arg_0.b.a, global2.x, vec3<i32>(arg_0.b.d, u_input.a, u_input.a), -1i)), func_2(Struct_1(-530f, global2.x, vec3<i32>(arg_0.a.c.x, arg_0.b.c.x, -1i), 2147483647i), Struct_1(global1.b.a, arg_0.b.b, vec3<i32>(49869i, 2147483647i, 22443i), global1.b.d)), vec3<bool>(global4.x, global4.x, global4.x)), vec3<bool>(true, true, true), vec3<bool>(false, true, true & global4.x)), vec3<bool>(all(func_2(global1.b, Struct_1(global1.a.a, 4294967295u, vec3<i32>(18357i, 36272i, global1.b.d), -2147483647i))), false, global4.x), func_2(arg_0.a, Struct_1(arg_0.a.a, ~arg_0.b.b, global1.a.c, 1114i >> (global1.b.b % 32u))).x), vec3<bool>(true, false, false), global3.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, -299f, 1621f, global1.b.a) * vec4<f32>(global1.a.a, 1759f, arg_0.b.a, global1.a.a))) * vec4<f32>(_wgslsmith_f_op_f32(676f + 1111f), 269f, 913f, global1.b.a)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, arg_0.a.a, 1151f, 1342f) - vec4<f32>(arg_0.a.a, -1740f, -525f, 2079f))), vec4<f32>(arg_0.b.a, _wgslsmith_f_op_f32(1000f * arg_0.a.a), _wgslsmith_f_op_f32(arg_0.a.a * 1013f), _wgslsmith_f_op_f32(select(arg_0.b.a, arg_0.b.a, true))))))));
    let var_1 = arg_0.a;
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(!vec3<bool>(!global4.x, any(select(vec2<bool>(true, global3.x), global3.zy, global3.x)), global4.x), !(!(!(!vec3<bool>(global4.x, true, true)))), select(!select(func_1(Struct_2(global1.a, Struct_1(-810f, 4294967295u, global1.a.c, -1i))), select(vec3<bool>(global3.x, global4.x, global3.x), vec3<bool>(global3.x, true, true), false), vec3<bool>(global3.x, true, true)), vec3<bool>(true, (global3.x || global4.x) & !global3.x, false), global3.x));
    var var_0 = Struct_1(1f, ~global2.x, -(~_wgslsmith_div_vec3_i32(select(global1.b.c, vec3<i32>(0i, 10108i, global1.b.d), global3.x), firstTrailingBit(vec3<i32>(-69018i, 0i, 1i)))), 0i);
    global2 = _wgslsmith_mult_vec4_u32(~(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global1.b.b, 3618u, 17524u), vec4<u32>(global1.b.b, 8225u, 30917u, global1.a.b))) | vec4<u32>(~1u, 4294967295u, ~4294967295u, abs(var_0.b))), countOneBits(~(vec4<u32>(97296u, global2.x, 33879u, global2.x) | vec4<u32>(24678u, 10592u, 4294967295u, global2.x))) >> (select(firstTrailingBit(max(vec4<u32>(6934u, 1u, global1.b.b, global1.b.b), vec4<u32>(var_0.b, global2.x, 23646u, var_0.b))), vec4<u32>(global2.x >> (global1.a.b % 32u), global1.b.b, var_0.b, global2.x), !(!vec4<bool>(global3.x, true, global3.x, false))) % vec4<u32>(32u)));
    global0 = u_input.a;
    var var_1 = vec4<u32>(var_0.b, global2.x, global2.x, 57171u);
    global0 = global1.b.d;
    var var_2 = Struct_2(Struct_1(var_0.a, global2.x, vec3<i32>(max(_wgslsmith_add_i32(-1i, u_input.a), func_3(86099u).x), u_input.a, -_wgslsmith_mod_i32(2147483647i, 1i)), -global1.b.d), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, abs(1u));
}

