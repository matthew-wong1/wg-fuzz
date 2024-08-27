struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(41787i, -2147483647i, -55212i) >> (_wgslsmith_add_u32(0u, arg_1) % 32u)), u_input.a.zx), select(abs(arg_1 << (~u_input.c.x % 32u)), u_input.b, ~u_input.c.x == arg_1), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~u_input.c.x, 32u)], 1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 32u)]), 608f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(153f, global0[_wgslsmith_index_u32(0u, 32u)], 626f, 624f) + vec4<f32>(-679f, 1627f, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(327f, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], -1000f), vec4<f32>(global0[_wgslsmith_index_u32(9250u, 32u)], global0[_wgslsmith_index_u32(arg_1, 32u)], -353f, -879f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(2363u, 32u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 32u)]), global0[_wgslsmith_index_u32(38003u, 32u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1780f, 726f, -543f, global0[_wgslsmith_index_u32(71991u, 32u)]))))))));
    var var_1 = _wgslsmith_f_op_f32(511f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f * var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-898f * var_0.c.x) - 539f))));
    var var_2 = Struct_5(Struct_3(Struct_2(abs(min(vec2<i32>(var_0.a.x, arg_2), vec2<i32>(-11845i, var_0.a.x))), abs(u_input.b), var_0.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-148f, 1000f) * vec2<f32>(1065f, 526f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, global0[_wgslsmith_index_u32(90572u, 32u)]) * _wgslsmith_f_op_vec2_f32(-var_0.c.zx)))), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 78817i), vec2<i32>(0i, arg_2)), 1u, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1, 32u)], 217f, false)), 1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.c.x, -422f)))))));
    var var_3 = var_2.a.a;
    global0 = array<f32, 32>();
    return var_2.a.a.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + -509f) + arg_1.a.b.x), true)), 1000f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.c.yw))));
    var var_1 = Struct_1(~firstLeadingBit(select(vec4<i32>(1i, 990i, -40716i, u_input.a.x), vec4<i32>(arg_1.a.c.a.x, u_input.a.x, arg_1.a.c.a.x, -659i), true) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 11356i, -2147483647i, arg_1.a.c.a.x), vec4<i32>(arg_1.a.a.a.x, 2147483647i, 0i, 65982i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_1.a.b.x))))), vec4<u32>(select(max(arg_2, 3039u), 4294967295u, true), u_input.c.x, firstTrailingBit(~(~4294967295u)), ~139960u), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, true, arg_0, true)), vec4<bool>(!select(false, arg_0, false), arg_0, arg_0, arg_0)), var_0.x);
    var_1 = Struct_1(var_1.a, 412f, _wgslsmith_clamp_vec4_u32(u_input.c, ~(~vec4<u32>(0u, var_1.c.x, 15905u, var_1.c.x)), ~u_input.c), select(vec4<bool>(!(u_input.a.x >= arg_1.a.c.a.x), true, !arg_0, !arg_0), var_1.d, vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(16501u, 32u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1522f)))))));
    global0 = array<f32, 32>();
    let var_2 = vec3<i32>(firstTrailingBit(abs(u_input.a.x) | arg_1.a.c.a.x), ~_wgslsmith_div_i32(var_1.a.x, arg_1.a.a.a.x), 2029i) & vec3<i32>(~u_input.a.x, u_input.a.x, -62996i);
    return -12835i;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: i32) -> Struct_3 {
    let var_0 = ~u_input.a >> (u_input.c.xxw % vec3<u32>(32u));
    global0 = array<f32, 32>();
    var var_1 = Struct_5(Struct_3(Struct_2(_wgslsmith_div_vec2_i32(-vec2<i32>(arg_3, arg_3), ~vec2<i32>(1i, arg_3)), firstLeadingBit(41025u | arg_2.x), arg_0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, global0[_wgslsmith_index_u32(arg_2.x, 32u)])))), _wgslsmith_f_op_vec2_f32(-arg_0.c.xy)), arg_0), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.b, 32u)]));
    let var_2 = Struct_4(vec2<u32>(16274u, 1u) & vec2<u32>(u_input.c.x ^ countOneBits(10700u), reverseBits(u_input.b)), vec3<i32>(arg_3, ~(-arg_0.a.x), func_4((u_input.a.x & 1i) >= func_3(428i, 102841u, arg_3), Struct_5(var_1.a, -994f), ~arg_2.x)), Struct_2(_wgslsmith_mod_vec2_i32(-var_0.zz, _wgslsmith_mult_vec2_i32(arg_0.a, ~var_1.a.a.a)), ~var_1.a.c.b, arg_0.c), 0i);
    let var_3 = vec4<bool>(!(!any(!vec4<bool>(arg_1.x, false, false, arg_1.x))), true, !any(select(!vec3<bool>(arg_1.x, true, true), select(vec3<bool>(true, arg_1.x, arg_1.x), arg_1, arg_1.x), select(vec3<bool>(arg_1.x, false, true), arg_1, vec3<bool>(true, arg_1.x, arg_1.x)))), arg_1.x);
    return var_1.a;
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.c;
    var var_1 = _wgslsmith_f_op_f32(abs(203f));
    var var_2 = _wgslsmith_add_u32(1u, ~_wgslsmith_add_u32(59727u, arg_0.a.b));
    var_1 = func_2(Struct_2(u_input.a.yy, 0u, var_0.c), vec3<bool>(!(~arg_0.a.b <= max(51621u, 4294967295u)), !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]) >= global0[_wgslsmith_index_u32(max(65850u, arg_0.a.b), 32u)]), true), vec3<u32>(52468u, ~4294967295u & u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, arg_0.c.b, var_0.b))), -abs(1i)).a.c.x;
    let var_3 = reverseBits(-8006i ^ max(firstTrailingBit(u_input.a.x), arg_0.c.a.x >> (19541u % 32u))) & u_input.a.x;
    return true;
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = func_2(Struct_2(arg_2.a.wx, 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 309f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.c.x, 32u)] * 469f), 1062f))), arg_1, vec3<u32>(~u_input.b, 0u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.c.x, 44334u), vec3<u32>(arg_2.c.x, u_input.b, u_input.c.x)), ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), -u_input.a.x).a;
    var_0 = func_2(func_2(Struct_2(u_input.a.zz ^ vec2<i32>(-2147483647i, u_input.a.x), var_0.b, vec4<f32>(_wgslsmith_f_op_f32(sign(1019f)), _wgslsmith_f_op_f32(f32(-1f) * -229f), arg_2.e, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(45763u, 32u)], var_0.c.x))), select(!arg_2.d.xzy, select(select(arg_1, arg_1, vec3<bool>(arg_2.d.x, arg_3, false)), arg_1, select(arg_1, vec3<bool>(true, arg_0, arg_0), false)), arg_1), _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~u_input.c.x, abs(79251u)), vec3<u32>(arg_2.c.x, func_2(Struct_2(vec2<i32>(u_input.a.x, 28388i), var_0.b, vec4<f32>(1000f, var_0.c.x, arg_2.b, 2073f)), vec3<bool>(arg_3, arg_1.x, false), arg_2.c.zyx, 23510i).c.b, 0u)), -(func_4(false, Struct_5(Struct_3(Struct_2(u_input.a.zy, arg_2.c.x, vec4<f32>(arg_2.b, global0[_wgslsmith_index_u32(4294967295u, 32u)], -370f, var_0.c.x)), vec2<f32>(arg_2.b, 553f), Struct_2(arg_2.a.xx, 83273u, vec4<f32>(var_0.c.x, global0[_wgslsmith_index_u32(37754u, 32u)], arg_2.e, arg_2.e))), arg_2.b), var_0.b) >> (~32557u % 32u))).a, arg_1, arg_2.c.yxx, 5268i ^ select(_wgslsmith_mod_i32(-var_0.a.x, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x)), arg_2.a.x, arg_0)).a;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(17775u, var_0.b, 0u), 37766u | min(arg_2.c.x, 0u)), _wgslsmith_clamp_vec2_u32(u_input.c.xw << (vec2<u32>(25264u, arg_2.c.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c.x, var_0.b), arg_2.c.zx, u_input.c.yy), ~arg_2.c.yz) | arg_2.c.xw) ^ arg_2.c.x;
    global0 = array<f32, 32>();
    var var_2 = Struct_4(select(firstTrailingBit(abs(u_input.c.xx | u_input.c.yy)), arg_2.c.ww, !(!arg_1.xx)), select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(12429i, arg_2.a.x, -59814i), arg_2.a.xyy & arg_2.a.xxy)), vec3<i32>(-(u_input.a.x << (1u % 32u)), -1i, _wgslsmith_div_i32(-16441i, func_2(Struct_2(vec2<i32>(u_input.a.x, -1i), var_0.b, var_0.c), vec3<bool>(arg_2.d.x, arg_1.x, true), arg_2.c.zww, 17668i).a.a.x)), any(!select(arg_1.yx, arg_2.d.xz, arg_2.d.x))), Struct_2(_wgslsmith_div_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, 0i), var_0.a)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, arg_2.a.x), _wgslsmith_mult_i32(0i, u_input.a.x))), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21387u, 0u, arg_2.c.x, 95692u), vec4<u32>(var_0.b, 1u, arg_2.c.x, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(var_0.b, 2767u)), countOneBits(18976u))), vec4<f32>(var_0.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(u_input.c.x, 1u)), 32u)], 1360f, var_0.c.x)), ~(-3035i));
    return 11865u;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec2<i32>) -> u32 {
    let var_0 = true;
    var var_1 = u_input.c.x << (abs(func_6(func_5(func_2(Struct_2(arg_2, u_input.b, arg_1.c.c), vec3<bool>(var_0, var_0, true), u_input.c.xzz, -3630i)), vec3<bool>(false, true, true), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-20094i, 0i, -27459i, -7050i), vec4<i32>(arg_1.b.x, 58762i, -36103i, -2147483647i), vec4<i32>(arg_1.d, arg_2.x, arg_2.x, -2147483647i)), -859f, u_input.c, select(vec4<bool>(var_0, true, false, true), vec4<bool>(true, false, true, var_0), false), _wgslsmith_f_op_f32(floor(-812f))), all(!vec2<bool>(var_0, false)))) % 32u);
    var_1 = _wgslsmith_sub_u32(max(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, 4294967295u, _wgslsmith_dot_vec3_u32(u_input.c.zyx, u_input.c.wxx)), (vec3<u32>(37008u, arg_0, arg_1.a.x) << (vec3<u32>(17235u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) | (vec3<u32>(9321u, arg_0, 4294967295u) ^ u_input.c.zyx))), u_input.c.x);
    var var_2 = select(vec4<bool>(!var_0, !(abs(arg_2.x) != (arg_2.x & -4678i)), true, true), !vec4<bool>(true, false, true, !var_0), !var_0);
    var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(6997u | _wgslsmith_add_u32(4294967295u, arg_1.a.x), 1u), arg_0);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x, abs(1i), u_input.a.x << (_wgslsmith_mod_u32(func_1(u_input.c.x, Struct_4(vec2<u32>(4294967295u, 1u), vec3<i32>(0i, -14338i, 2392i), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), 4294967295u, vec4<f32>(1868f, global0[_wgslsmith_index_u32(100261u, 32u)], global0[_wgslsmith_index_u32(10002u, 32u)], global0[_wgslsmith_index_u32(10354u, 32u)])), -2147483647i), u_input.a.zz) & func_1(7412u, Struct_4(vec2<u32>(u_input.c.x, 53610u), u_input.a, Struct_2(vec2<i32>(u_input.a.x, -1i), 50478u, vec4<f32>(-1000f, -1153f, -180f, -712f)), -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x)), min(15806u, ~u_input.b)) % 32u));
    var_0 = -(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-37721i, var_0.x), firstTrailingBit(-1151i)), _wgslsmith_mod_i32(~1i, func_3(-2147483647i, 29518u, -15572i)), var_0.x) & -select(u_input.a, u_input.a, false));
    let var_1 = Struct_5(Struct_3(func_2(func_2(func_2(Struct_2(vec2<i32>(44846i, 5210i), 4294967295u, vec4<f32>(-529f, global0[_wgslsmith_index_u32(108552u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], 2007f)), vec3<bool>(true, true, true), u_input.c.ywy, 0i).a, vec3<bool>(true, true, true), ~u_input.c.yyy, var_0.x).a, vec3<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false)), true), _wgslsmith_div_vec3_u32(vec3<u32>(54658u, 4845u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.c.x)), -2147483647i >> (u_input.c.x % 32u)).a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1493f, -1071f)))), func_2(Struct_2(select(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(1802i, 1i), vec2<bool>(false, true)), 110977u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(19602u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 719f)))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), u_input.c.zxy, u_input.a.x).c), -522f);
    var_0 = -abs(vec3<i32>(2147483647i, u_input.a.x, -27345i)) & u_input.a;
    let var_2 = any(vec3<bool>(true, true, !any(vec2<bool>(true, true))));
    var var_3 = select(vec4<bool>(false, var_2, var_2, any(!vec3<bool>(var_2, false, false))), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_1.b), -1040f) > 1f, all(select(vec3<bool>(true, var_2, false), !vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, false))), var_2, _wgslsmith_div_i32(24382i << (var_1.a.c.b % 32u), -53801i) < -8708i), vec4<bool>(true, !var_2, var_2, all(vec4<bool>(true, true, var_2, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)), countOneBits(vec4<i32>(-1i, u_input.a.x, _wgslsmith_dot_vec2_i32(var_1.a.c.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(2340i, var_0.x), var_0.zz, vec2<i32>(44821i, var_1.a.a.a.x))), ~_wgslsmith_clamp_i32(var_1.a.c.a.x, u_input.a.x, var_1.a.c.a.x))));
}

