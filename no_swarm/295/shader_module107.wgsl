struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(8370i, -1i), vec2<f32>(-818f, 626f), -933f, vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 1332i, -47623i, -7300i)), Struct_1(vec2<i32>(-16275i, 36219i), vec2<f32>(361f, 1189f), 401f, vec2<bool>(false, false), vec4<i32>(2147483647i, 32323i, 24075i, 23778i)), Struct_1(vec2<i32>(-60596i, -21148i), vec2<f32>(-1180f, -1327f), -1000f, vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 3315i, -1i, -53030i)), Struct_1(vec2<i32>(2147483647i, 44485i), vec2<f32>(1000f, -443f), 454f, vec2<bool>(true, true), vec4<i32>(1i, 62061i, 17323i, 31459i)), Struct_1(vec2<i32>(-1i, 5760i), vec2<f32>(-1309f, -990f), 1000f, vec2<bool>(true, true), vec4<i32>(-33747i, -12389i, i32(-2147483648), 73027i)), Struct_1(vec2<i32>(1393i, 67796i), vec2<f32>(-1056f, 1351f), 308f, vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -52498i, 1i, 16562i)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(594f, 426f), 1019f, vec2<bool>(false, true), vec4<i32>(56555i, 2147483647i, 1203i, -10484i)), Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(-201f, 288f), 681f, vec2<bool>(false, true), vec4<i32>(-17658i, 7278i, -1i, -10393i)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<f32>(-282f, -1755f), 377f, vec2<bool>(true, false), vec4<i32>(14927i, i32(-2147483648), -5843i, -3115i)), Struct_1(vec2<i32>(1i, 10394i), vec2<f32>(1136f, -1505f), -740f, vec2<bool>(false, false), vec4<i32>(-43714i, -52617i, 2147483647i, -10900i)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(0i, 10352i), vec2<f32>(1920f, -2170f), -1000f, vec2<bool>(false, false), vec4<i32>(-27083i, -14836i, i32(-2147483648), 18671i));

var<private> global4: Struct_1 = Struct_1(vec2<i32>(-14711i, i32(-2147483648)), vec2<f32>(-1000f, 1615f), 1286f, vec2<bool>(false, true), vec4<i32>(-18786i, 44949i, 1i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 4294967295u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(22502u, 0u, 94431u, 36467u))) ^ ~abs(1u), ~(28679u & ~_wgslsmith_clamp_u32(24774u, 65473u, 0u))), 29u)];
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(1460f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), arg_0.d.x)), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-979f, var_0.b.x, arg_0.d.x)))))), _wgslsmith_f_op_f32(-global3.c))));
    let var_1 = _wgslsmith_mult_u32(~abs(~67033u), ~(~5194u));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c + 1045f) + _wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(ceil(var_0.b.x))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f * -741f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(742f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1116f))))))), arg_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = -1i;
    global3 = Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(498i, u_input.a.x), ~(~_wgslsmith_mult_vec2_i32(global4.e.yx, arg_1.a)), arg_0.e.xz), global3.b, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f + 1000f))))), !arg_0.d, vec4<i32>(_wgslsmith_sub_i32(1i, -_wgslsmith_mod_i32(arg_0.e.x, arg_1.e.x)), u_input.a.x, abs(0i), arg_2.x));
    let var_1 = reverseBits(abs(66387u));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -962f, 504f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-841f, _wgslsmith_f_op_f32(-941f + global0.x), -873f), vec3<f32>(_wgslsmith_f_op_f32(global3.c * global0.x), _wgslsmith_f_op_f32(round(1070f)), global4.b.x)), _wgslsmith_f_op_vec3_f32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_1, arg_3.x), 29u)])))));
    let var_2 = ~u_input.a.x ^ min(arg_0.a.x, ~(~1i));
    return ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_3.x, 28337u), var_1) | firstLeadingBit(var_1));
}

fn func_3() -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(56535u, 29u)];
    let var_1 = 1u >> (1u % 32u);
    var var_2 = Struct_1(vec2<i32>(1i, 1i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1081f, var_0.b.x))), var_0.b.x, select(select(vec2<bool>(any(vec4<bool>(true, var_0.d.x, false, var_0.d.x)), true), vec2<bool>(true, var_0.d.x), vec2<bool>(global4.d.x, all(global3.d))), global3.d, !var_0.d.x), global3.e);
    global2 = array<Struct_1, 29>();
    let var_3 = global2[_wgslsmith_index_u32(var_1, 29u)];
    return ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, var_1, var_1, 41596u), ~vec4<u32>(var_1, var_1, 60919u, var_1), ~vec4<u32>(4294967295u, var_1, var_1, var_1))) >> (~vec4<u32>(0u, ~var_1 & ~1u, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, var_1))), _wgslsmith_div_u32(~var_1, var_1)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(~8556u, countOneBits(144139u), ~9820u, abs(15192u)), vec4<u32>(func_1(global2[_wgslsmith_index_u32(1u, 29u)], Struct_1(global4.a, vec2<f32>(-664f, global0.x), global3.b.x, vec2<bool>(true, global4.d.x), vec4<i32>(-1i, -1i, -2147483647i, 1i)), global4.a, vec3<u32>(47641u, 6252u, 9579u)), ~10722u, ~1u, ~5594u))), 10u)];
    var var_0 = _wgslsmith_div_vec4_u32(~func_3(), vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = countOneBits(vec4<u32>(4294967295u, 0u, min(~1u, ~1569u), var_0.x));
    let var_1 = -1110f;
    global4 = global1[_wgslsmith_index_u32(0u, 10u)];
    var var_2 = global3.d;
    var var_3 = select(~firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-20221i, 36116i, global4.e.x, -1i), firstLeadingBit(vec4<i32>(-2147483647i, global4.a.x, u_input.a.x, 0i)))), ~global4.e, !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(global3.d.x, false, false, global3.d.x), vec4<bool>(true, global4.d.x, global3.d.x, true), true), !vec4<bool>(var_2.x, true, false, true), false), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_0.x), 4294967295u << (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u), 0u), min(~(~var_0.yzw), var_0.zyx)), 54457i, -(~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, global3.e.x)), u_input.a.zyz)), var_0.xz & var_0.yx, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-global3.a.x, -2147483647i >> (var_0.x % 32u)), -vec2<i32>(-1i, 2147483647i)), reverseBits(-vec2<i32>(1i, -2147483647i))));
}

