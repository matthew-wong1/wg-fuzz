struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(23774u, vec3<i32>(19015i, -1i, 40909i), 152f);

var<private> global2: array<i32, 19>;

var<private> global3: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(54514u, 6790u, 46190u), vec3<u32>(4294967295u, 22922u, 23454u), vec3<u32>(0u, 1u, 29176u), vec3<u32>(4294967295u, 7764u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 44036u), vec3<u32>(7310u, 4294967295u, 13830u), vec3<u32>(53552u, 65539u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(35517u, 4294967295u, 4602u), vec3<u32>(49999u, 0u, 5147u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(39780u, 22408u, 34785u), vec3<u32>(1u, 27377u, 9598u), vec3<u32>(7646u, 25392u, 0u), vec3<u32>(30058u, 4294967295u, 17033u), vec3<u32>(14283u, 0u, 61940u), vec3<u32>(4294967295u, 17419u, 32595u), vec3<u32>(3501u, 0u, 1u), vec3<u32>(1u, 4294967295u, 7877u), vec3<u32>(71140u, 64802u, 4294967295u), vec3<u32>(85580u, 0u, 0u), vec3<u32>(21874u, 1u, 62698u), vec3<u32>(0u, 1u, 54408u), vec3<u32>(51391u, 49563u, 6520u));

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(275f, vec2<u32>(70632u, 0u), vec4<u32>(62875u, 38636u, 4294967295u, 4294967295u), -744f, 10843u), Struct_1(1035f, vec2<u32>(69890u, 68700u), vec4<u32>(1u, 36447u, 1u, 0u), -852f, 0u), Struct_1(-675f, vec2<u32>(4294967295u, 0u), vec4<u32>(4294967295u, 10904u, 4294967295u, 1u), -2148f, 4294967295u), Struct_1(-1489f, vec2<u32>(4294967295u, 1u), vec4<u32>(8769u, 46874u, 59644u, 0u), -783f, 22795u), Struct_1(1106f, vec2<u32>(1u, 67410u), vec4<u32>(47927u, 4294967295u, 4294967295u, 4294967295u), -1529f, 1u), Struct_1(1015f, vec2<u32>(1u, 4294967295u), vec4<u32>(0u, 10134u, 4294967295u, 1u), -837f, 1u), Struct_1(-2070f, vec2<u32>(25894u, 0u), vec4<u32>(19807u, 41912u, 64397u, 29083u), -1385f, 8160u), Struct_1(-163f, vec2<u32>(43471u, 15081u), vec4<u32>(1u, 0u, 3972u, 4294967295u), 2012f, 1u), Struct_1(1000f, vec2<u32>(1u, 9161u), vec4<u32>(23945u, 4294967295u, 4294967295u, 10312u), 473f, 66582u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1552f * global0.d);
    global4 = array<Struct_1, 9>();
    var var_1 = ~global0.c;
    global1 = Struct_2(firstTrailingBit(global1.a), _wgslsmith_add_vec3_i32(~(-global1.b | countOneBits(u_input.e.yzz)), vec3<i32>(global1.b.x, _wgslsmith_div_i32(u_input.d.x, -u_input.d.x), _wgslsmith_dot_vec4_i32(select(u_input.e, u_input.e, vec4<bool>(true, false, false, true)), vec4<i32>(u_input.e.x, global1.b.x, -1i, 1i)))), 2255f);
    let var_2 = global1.b;
    return ~global2[_wgslsmith_index_u32(u_input.a, 19u)];
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = select(select(select(vec3<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, false)), global0.d < 738f), vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 19u)] >= -2147483647i, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, global1.a == global1.a), _wgslsmith_div_f32(global0.a, 399f) < 574f), !(false && select(false, true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    var var_1 = global4[_wgslsmith_index_u32(4294967295u, 9u)];
    var var_2 = false;
    return var_1.c.yy;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(func_3(global0.a), vec2<u32>(4294967295u, arg_3.x));
    let var_1 = vec2<i32>(reverseBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, min(arg_1.b.x, -11987i)), arg_1.b.x)), global1.b.x);
    var var_2 = arg_1;
    var_0 = ~(4294967295u >> (abs(_wgslsmith_sub_u32(arg_1.a, arg_0.x)) % 32u));
    return 4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = (_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a, 1u, global0.b.x, arg_1.a), arg_3.c)), select(_wgslsmith_sub_vec4_u32(global0.c, global0.c), ~arg_3.c, true), arg_3.c) | (firstTrailingBit(abs(vec4<u32>(arg_1.a, 16747u, arg_1.a, 100929u))) ^ firstTrailingBit(firstLeadingBit(arg_3.c)))) ^ firstLeadingBit(arg_3.c);
    global2 = array<i32, 19>();
    let var_1 = arg_0;
    let var_2 = ~min(countOneBits(u_input.e), _wgslsmith_add_vec4_i32(u_input.e, _wgslsmith_mult_vec4_i32(u_input.e, _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.a, 19u)], -19412i, var_1.b.x, -54130i), u_input.e))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_div_f32(1309f, arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.c - -1478f), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(852f - arg_3.a))))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-710f)), _wgslsmith_f_op_f32(-global1.c))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c + -973f)))), -561f, global1.c, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(countOneBits(global1.b.x), u_input.d.x, -1i);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(select(~firstTrailingBit(global0.b.x), _wgslsmith_dot_vec2_u32(abs(global0.c.yz), global0.b | global0.b), false | any(vec3<bool>(false, true, false))), countOneBits(vec3<i32>(-55029i, var_0.x, global1.b.x) & vec3<i32>(global1.b.x, 7386i, -2147483647i)) | vec3<i32>(func_1(), -100366i, 1i), -580f), Struct_2(global1.a, _wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, -6318i, 0i)), vec3<i32>(1907i, -29846i, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2831f - global0.d) + 706f)), Struct_2(select(_wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(global0.e, 6311u)), _wgslsmith_mult_u32(func_2(vec3<u32>(41308u, 4294967295u, u_input.a), Struct_2(u_input.c, var_0, -1735f), u_input.c, global0.c.yxz), select(1u, u_input.c, true)), true), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))))), Struct_1(global1.c, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -1000f) - global1.c)), ~firstTrailingBit(~vec4<u32>(1u, global0.c.x, global1.a, global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_sub_u32(~u_input.b, 1u))));
    let var_3 = any(select(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true)), vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_4 = _wgslsmith_div_vec3_i32(-vec3<i32>(func_1(), -(~u_input.e.x), ~var_0.x), -vec3<i32>(1i, _wgslsmith_mult_i32(var_0.x, 2656i << (global0.c.x % 32u)), 13724i));
    var var_5 = -(~_wgslsmith_add_i32((u_input.d.x ^ 27962i) << (_wgslsmith_add_u32(global0.c.x, 0u) % 32u), ~func_1()));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) - 1461f) * -1306f), -524f, 828f));
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.c, global0.a)), _wgslsmith_f_op_f32(global1.c + global0.d))))))), var_2.x, _wgslsmith_f_op_f32(-global1.c));
    var_6 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(540f, -878f) + _wgslsmith_f_op_f32(-var_6.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_6.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f * -2058f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, global0.d, global1.c))) - vec3<f32>(var_2.x, _wgslsmith_f_op_f32(global1.c * global1.c), var_6.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.c), _wgslsmith_sub_u32(global0.e, 4294967295u), var_2.x, u_input.e.zw | (vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(var_0.yx, u_input.d, vec2<i32>(var_0.x, var_4.x))), u_input.e.xxx | u_input.e.zxx);
}

