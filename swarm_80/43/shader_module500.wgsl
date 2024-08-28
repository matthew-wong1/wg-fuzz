struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(0i, 23649i, 40430i, 0i, 1i, i32(-2147483648), -27184i, -86580i, -27345i, 44881i, 2321i, -1i, 0i, -7375i, -1i, -20891i, 2147483647i, 6592i);

var<private> global1: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = global1.b.x;
    var_0 = -776f;
    global0 = array<i32, 18>();
    let var_1 = Struct_4(u_input.c, Struct_3(Struct_2(~u_input.c, global1.a.b, 67485u, ~_wgslsmith_add_u32(53639u, 0u)), global1.b, global1.c, arg_1.zx), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], _wgslsmith_clamp_i32(-1669i, ~global1.d.x, -arg_1.x)), global1.a.b, ~global1.a.c);
    let var_2 = var_1.b.c;
    return ~((vec4<i32>(i32(-1i) * -1i, 0i, 0i, _wgslsmith_div_i32(var_1.b.d.x, u_input.a.x)) ^ (vec4<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 18u)], global1.d.x, u_input.a.x, -8402i) << (~vec4<u32>(18187u, 2540u, global1.c.a.x, 4294967295u) % vec4<u32>(32u)))) ^ -vec4<i32>(_wgslsmith_add_i32(3444i, global1.d.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), countOneBits(8463i), -var_1.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))));
    return vec4<i32>(global0[_wgslsmith_index_u32(abs(min(1u, firstLeadingBit(u_input.d)) | ~(~u_input.d)), 18u)], -global1.d.x, min(u_input.b, min(1i, _wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(-23948i, global0[_wgslsmith_index_u32(global1.c.a.x, 18u)])))), firstLeadingBit(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(31720i, global1.d.x, 2147483647i, global0[_wgslsmith_index_u32(62260u, 18u)]), vec4<i32>(global1.d.x, -2147483647i, -2147483647i, -50398i)), vec4<i32>(2660i >> (arg_0.a.x % 32u), arg_1.x, _wgslsmith_add_i32(-40697i, -52668i), -72185i))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(-func_4(Struct_1(vec3<u32>(341u, u_input.d, arg_0.a.x)), func_3(global1.b.xx, vec3<i32>(9093i, 0i, -2147483647i))) ^ min(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.d.x, 2147483647i, -1i, 0i), firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b.c.a.x, 18u)], 2147483647i, global1.d.x, -4650i))), vec4<i32>(-2147483647i, 1i, -12638i, global0[_wgslsmith_index_u32(~0u, 18u)])), vec4<i32>(-30534i, -2147483647i, -2147483647i, arg_0.b.d.x));
    var_0 = firstTrailingBit(vec4<i32>(2147483647i, global1.d.x, -(9004i | global1.d.x), reverseBits(~(-19306i))) | abs(vec4<i32>(abs(-1i), u_input.a.x, -1i, arg_0.c.x)));
    var var_1 = u_input.a.x;
    global0 = array<i32, 18>();
    var_0 = ~vec4<i32>(~(~2147483647i), _wgslsmith_clamp_i32(1i, global1.d.x, 2147483647i) << (_wgslsmith_clamp_u32(4294967295u, arg_2.x, u_input.d) % 32u), global1.d.x, -(~(-8844i))) & vec4<i32>(u_input.a.x, select(_wgslsmith_add_i32(global1.d.x ^ var_0.x, u_input.b), -_wgslsmith_div_i32(-2147483647i, -32201i), !select(true, arg_0.b.a.b, true)), func_4(Struct_1(~arg_0.a), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-40944i, global0[_wgslsmith_index_u32(arg_2.x, 18u)], -1i, 4471i)), vec4<i32>(-16349i, global1.d.x, u_input.b, 1i))).x, max(-2197i, countOneBits(_wgslsmith_add_i32(-17200i, u_input.b))));
    return abs(vec4<i32>(~0i, -(~2147483647i), func_4(global1.c, vec4<i32>(-1i) * -vec4<i32>(global1.d.x, arg_0.b.d.x, 2147483647i, 1i)).x, var_0.x));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = abs(arg_0);
    var var_1 = Struct_2(u_input.c, (~(~u_input.c.x) | 1u) < ~(~59018u), u_input.d, 1u);
    var var_2 = _wgslsmith_sub_u32(32118u, abs(reverseBits(u_input.c.x)));
    global0 = array<i32, 18>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - 2025f) - global1.b.x));
    return Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.b)))))), Struct_1(~global1.c.a), u_input.a >> (_wgslsmith_mult_vec2_u32(global1.a.a.xx, _wgslsmith_mult_vec2_u32(~global1.a.a.zx, vec2<u32>(var_1.c, u_input.c.x))) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = func_5(~(~select(_wgslsmith_div_u32(1u, global1.c.a.x), 69782u >> (u_input.d % 32u), any(vec4<bool>(false, global1.a.b, true, true)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(abs(vec4<i32>(16278i, -9942i, global0[_wgslsmith_index_u32(45445u, 18u)], arg_0))), min(~vec4<i32>(-6813i, 0i, -1i, -11904i), func_2(Struct_4(u_input.c, Struct_3(Struct_2(vec3<u32>(61799u, 52975u, u_input.c.x), global1.a.b, global1.a.d, global1.a.a.x), vec4<f32>(-513f, global1.b.x, global1.b.x, -1084f), Struct_1(vec3<u32>(global1.c.a.x, global1.a.c, 4294967295u)), vec2<i32>(-1i, u_input.b)), vec2<i32>(u_input.b, 0i), false, global1.a.d), vec4<bool>(false, global1.a.b, global1.a.b, true), vec3<u32>(0u, 4294967295u, global1.c.a.x), global1.c))), vec4<i32>(13531i, -1i, 1i, arg_0)), 15288i);
    var_0 = Struct_3(func_5(global1.a.a.x & u_input.c.x, firstLeadingBit(_wgslsmith_mult_i32(u_input.b << (var_0.a.c % 32u), func_4(Struct_1(var_0.c.a), vec4<i32>(u_input.b, 2147483647i, -1i, u_input.a.x)).x)), -31135i).a, vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(129f, -492f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.b.x, -1119f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1248f))), global1.c, vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b ^ var_0.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, 0i, global0[_wgslsmith_index_u32(128237u, 18u)], arg_0), -vec4<i32>(58908i, arg_0, var_0.d.x, global0[_wgslsmith_index_u32(1u, 18u)]))) >> (vec2<u32>(62935u, ~(~0u)) % vec2<u32>(32u)));
    var var_1 = select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d, 23348u, u_input.c.x, global1.c.a.x), firstTrailingBit(vec4<u32>(global1.a.a.x, u_input.c.x, var_0.c.a.x, 39876u))), global1.a.a.x) & vec2<u32>(firstTrailingBit(global1.a.d), _wgslsmith_dot_vec2_u32(~var_0.a.a.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(43880u, 1u), vec2<u32>(63044u, var_0.c.a.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.a.c, var_0.a.d), max(vec2<u32>(u_input.c.x, u_input.c.x), global1.c.a.yz)), vec2<u32>(u_input.c.x, ~u_input.c.x)), vec2<u32>(max(_wgslsmith_div_u32(87108u, var_0.c.a.x), _wgslsmith_add_u32(43667u, 0u)), var_0.c.a.x)), vec2<bool>(true, select(global1.a.b, true, true & (global1.b.x > 396f))));
    var var_2 = Struct_4(vec3<u32>(var_1.x, _wgslsmith_sub_u32(var_1.x, ~(global1.c.a.x ^ u_input.d)), 44261u), Struct_3(Struct_2(global1.c.a, !func_5(var_1.x, 23952i, -1i).a.b, 46288u, 23360u), _wgslsmith_f_op_vec4_f32(global1.b + global1.b), func_5(4211u, arg_0, ~45226i).c, vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, arg_0, 644i, -2147483647i)), func_3(vec2<f32>(522f, 717f), vec3<i32>(arg_0, global0[_wgslsmith_index_u32(1648u, 18u)], global0[_wgslsmith_index_u32(global1.a.c, 18u)]))))), func_4(Struct_1(firstLeadingBit(_wgslsmith_div_vec3_u32(global1.c.a, u_input.c))), _wgslsmith_add_vec4_i32(~func_3(var_0.b.yz, vec3<i32>(-52596i, u_input.a.x, 0i)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], -31116i, var_0.d.x), vec4<i32>(4966i, 33555i, global0[_wgslsmith_index_u32(var_0.a.d, 18u)], -15765i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-19978i, -24580i, -739i, global1.d.x), vec4<i32>(u_input.b, var_0.d.x, u_input.b, -12161i))))).zw, func_5(48853u, _wgslsmith_dot_vec2_i32(func_3(var_0.b.yz, max(vec3<i32>(-1i, global1.d.x, -2147483647i), vec3<i32>(global1.d.x, 36299i, 26497i))).zz, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(global1.d.x, arg_0))), -(~1i)).a.b, reverseBits(var_0.a.c));
    let var_3 = Struct_4(_wgslsmith_mod_vec3_u32(reverseBits(firstTrailingBit(~vec3<u32>(30247u, global1.a.a.x, u_input.c.x))), ~vec3<u32>(firstTrailingBit(1u), 1u, abs(global1.a.a.x))), func_5(var_2.e, countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(30630i, -853i, arg_0), vec3<i32>(7939i, -1i, global1.d.x))), 1i), -_wgslsmith_add_vec2_i32(u_input.a, global1.d), var_0.a.b, var_0.c.a.x);
    return any(!select(!vec2<bool>(false, var_0.a.b), !vec2<bool>(var_2.d, true), select(vec2<bool>(var_2.b.a.b, var_2.b.a.b), !vec2<bool>(false, global1.a.b), vec2<bool>(true, false))));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = Struct_5(global1.b.xw, all(select(select(vec4<bool>(global1.a.b, true, arg_2, false), vec4<bool>(true, arg_3.d, true, arg_3.b.a.b), select(vec4<bool>(false, false, arg_3.b.a.b, true), vec4<bool>(arg_3.b.a.b, arg_3.d, false, true), vec4<bool>(arg_2, arg_2, false, global1.a.b))), select(vec4<bool>(arg_3.b.a.b, arg_3.d, arg_2, false), !vec4<bool>(true, arg_2, arg_3.d, arg_2), any(vec3<bool>(global1.a.b, arg_2, arg_3.b.a.b))), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-global1.b.x));
    var var_1 = reverseBits(~(~(vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], 26012i, arg_3.b.d.x) | vec3<i32>(38630i, global0[_wgslsmith_index_u32(0u, 18u)], -1i)) << (vec3<u32>(~global1.c.a.x, ~u_input.d, global1.c.a.x) % vec3<u32>(32u))));
    let var_2 = Struct_2(~select(vec3<u32>(_wgslsmith_add_u32(arg_3.a.x, 0u), abs(arg_3.e), ~0u), vec3<u32>(u_input.c.x, global1.c.a.x, 4294967295u) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), all(select(vec4<bool>(arg_3.d, arg_3.d, false, false), vec4<bool>(var_0.b, arg_2, true, true), true))), func_5(13491u & ~u_input.c.x, min(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(0u, 18u)], -2147483647i, global1.d.x), vec4<i32>(1008i, 4300i, 2147483647i, -1i)), vec4<i32>(0i, arg_3.b.d.x, 1i, u_input.a.x)), 51295i & var_1.x), _wgslsmith_add_i32(-31452i, func_2(Struct_4(arg_3.b.c.a, Struct_3(arg_3.b.a, vec4<f32>(var_0.c, -180f, global1.b.x, 146f), arg_3.b.c, u_input.a), vec2<i32>(0i, arg_3.c.x), var_0.b, u_input.c.x), !vec4<bool>(true, arg_2, false, false), abs(u_input.c), global1.c).x)).a.b, min(firstTrailingBit(~arg_3.e) | abs(~arg_3.b.c.a.x), _wgslsmith_div_u32(global1.c.a.x, max(_wgslsmith_clamp_u32(4294967295u, 44329u, 284u), arg_3.b.c.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(global1.a.c, 0u), global1.c.a.x, min(~global1.a.c, arg_0), ~_wgslsmith_mod_u32(4294967295u, arg_0)), vec4<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_3.b.a.c, global1.c.a.x, arg_3.a.x), vec4<u32>(u_input.d, arg_0, 1u, global1.a.a.x)), _wgslsmith_clamp_u32(arg_0, 1u, u_input.c.x)), func_5(~4294967295u, ~arg_3.b.d.x, _wgslsmith_sub_i32(2147483647i, global0[_wgslsmith_index_u32(arg_0, 18u)])).a.a.x, global1.a.d, ~0u)));
    global1 = arg_3.b;
    var var_3 = all(!(!vec3<bool>(all(vec3<bool>(true, var_0.b, true)), false, var_2.b)));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global1.a.d, countOneBits(global0[_wgslsmith_index_u32(global1.a.c, 18u)]), all(select(select(vec4<bool>(true, true, false, false), !vec4<bool>(true, global1.a.b, global1.a.b, true), vec4<bool>(global1.a.b, false, global1.a.b, true)), vec4<bool>(all(vec4<bool>(true, true, global1.a.b, false)), global1.a.b, false, !global1.a.b), vec4<bool>(true, func_1(global0[_wgslsmith_index_u32(global1.a.c, 18u)], 253f), false, global1.a.b))), Struct_4(u_input.c, func_5(u_input.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, global1.d), global1.d.x), u_input.a.x), u_input.a, any(!select(vec3<bool>(true, global1.a.b, global1.a.b), vec3<bool>(false, true, false), vec3<bool>(global1.a.b, true, false))), 0u));
    let var_1 = ~vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 18u)]), 1i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(-global1.d.x, firstLeadingBit(global1.d.x))));
    var var_2 = 7078i;
    let var_3 = global1.a.a.zz;
    var var_4 = global1.c.a.x;
    let var_5 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, global1.b.x, ~(~abs(vec4<u32>(87910u, 1u, 13477u, var_5.a.x))) ^ reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(12789u, 1u, 4294967295u, global1.c.a.x) ^ vec4<u32>(4294967295u, u_input.c.x, 99919u, 1u), vec4<u32>(0u, 40229u, var_5.a.x, 54442u) << (vec4<u32>(var_3.x, global1.c.a.x, 30635u, var_3.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.b))) - vec4<f32>(-1082f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x)), _wgslsmith_f_op_f32(max(global1.b.x, _wgslsmith_f_op_f32(global1.b.x + -274f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1046f, 1652f) - _wgslsmith_f_op_f32(-global1.b.x)))));
}

