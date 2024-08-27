struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(2147483647i, vec2<f32>(378f, -440f)), Struct_1(0i, vec2<f32>(900f, 323f)), Struct_1(-13617i, vec2<f32>(538f, -752f)), Struct_1(7288i, vec2<f32>(-547f, 2181f)), Struct_1(-38389i, vec2<f32>(235f, -926f)), Struct_1(55241i, vec2<f32>(-881f, -2264f)), Struct_1(i32(-2147483648), vec2<f32>(-318f, -556f)), Struct_1(-1i, vec2<f32>(-1008f, 1612f)), Struct_1(2147483647i, vec2<f32>(210f, -717f)), Struct_1(0i, vec2<f32>(216f, 609f)), Struct_1(1i, vec2<f32>(-270f, 1493f)), Struct_1(i32(-2147483648), vec2<f32>(-2113f, 1629f)), Struct_1(-1i, vec2<f32>(1854f, -1413f)), Struct_1(-34826i, vec2<f32>(1352f, 990f)), Struct_1(-1i, vec2<f32>(-284f, 344f)), Struct_1(25691i, vec2<f32>(1953f, -269f)), Struct_1(i32(-2147483648), vec2<f32>(-765f, -407f)), Struct_1(2147483647i, vec2<f32>(-524f, -696f)), Struct_1(-65866i, vec2<f32>(826f, -199f)), Struct_1(1i, vec2<f32>(-1000f, -1623f)), Struct_1(-1i, vec2<f32>(-869f, -965f)), Struct_1(7295i, vec2<f32>(1636f, 127f)), Struct_1(2147483647i, vec2<f32>(-782f, -933f)), Struct_1(62255i, vec2<f32>(-1000f, -1088f)), Struct_1(20064i, vec2<f32>(553f, -881f)), Struct_1(25243i, vec2<f32>(783f, 330f)), Struct_1(-1i, vec2<f32>(-193f, 971f)), Struct_1(2147483647i, vec2<f32>(1000f, -1044f)), Struct_1(-8374i, vec2<f32>(1632f, 607f)), Struct_1(2147483647i, vec2<f32>(-1493f, -1425f)), Struct_1(-27432i, vec2<f32>(132f, -575f)), Struct_1(19180i, vec2<f32>(-597f, -553f)));

var<private> global2: Struct_2 = Struct_2(vec3<u32>(56663u, 0u, 1u), vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), Struct_1(1i, vec2<f32>(1043f, 1000f)), -80462i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(1u << (~(~countOneBits(global0.b.b.x)) % 32u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.b.x, arg_1.d.b.x, arg_0.b.d.b.x) - vec3<f32>(global0.a.x, 334f, global2.d.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.d.b.x, global2.d.b.x, global2.d.b.x) - vec3<f32>(global0.a.x, 201f, global0.b.d.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 1558f, -1740f)))), arg_0.b.d, true);
    var var_1 = Struct_3(var_0.a << (_wgslsmith_mult_u32(abs(~23011u), ~var_0.a) % 32u), vec3<f32>(global2.d.b.x, _wgslsmith_f_op_f32(trunc(global0.b.d.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1520f)), -1000f)), global0.b.d, abs(countOneBits(abs(global0.b.e))) > ~arg_1.d.a);
    let var_2 = (~var_1.c.a != (arg_1.e & global0.b.e)) & (global2.a.x < select(arg_0.b.b.x, var_0.a, true));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(exp2(global2.d.b.x))))), arg_1);
    let var_4 = Struct_1(_wgslsmith_clamp_i32(arg_1.d.a, ~var_3.b.d.a, ~((0i << (global0.b.a.x % 32u)) >> (~var_0.a % 32u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(539f, -726f))))), var_3.a, false)))));
    return _wgslsmith_clamp_u32(~(2159u ^ min(~u_input.b.x, 1u)), ~(global0.b.a.x >> (1u % 32u)), var_1.a);
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(38707u, u_input.b.x, func_3(Struct_4(vec2<f32>(1000f, -1000f), arg_0), Struct_2(vec3<u32>(35767u, 4294967295u, global0.b.a.x), vec2<u32>(1u, 23626u), vec2<bool>(arg_0.c.x, global2.c.x), global1[_wgslsmith_index_u32(global0.b.a.x, 32u)], global2.e))), ~global2.a), max(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global0.b.b.x), vec2<u32>(16519u, 76166u))), select(firstTrailingBit(~vec2<u32>(arg_0.a.x, global0.b.b.x)), _wgslsmith_add_vec2_u32(u_input.b, global0.b.b), global0.b.c)), select(!global0.b.c, !select(vec2<bool>(global2.c.x, arg_0.c.x), !vec2<bool>(global2.c.x, false), select(vec2<bool>(global2.c.x, false), arg_0.c, global0.b.c)), _wgslsmith_add_u32(select(u_input.a, arg_0.b.x, global0.b.c.x), 39282u) >= ~global0.b.a.x), global2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(~(~(-2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-32180i, arg_0.d.a, -2147483647i), vec3<i32>(-2147483647i, 1i, global2.e) & vec3<i32>(2147483647i, -2147483647i, global0.b.d.a)), abs(~arg_0.e), -2147483647i), vec4<i32>(0i, -19911i, ~reverseBits(global0.b.d.a), _wgslsmith_mult_i32(-62789i, global2.e << (u_input.a % 32u)))));
    var var_1 = Struct_3(global2.a.x, vec3<f32>(global2.d.b.x, -560f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)), _wgslsmith_f_op_f32(sign(global2.d.b.x)), func_3(Struct_4(vec2<f32>(global0.a.x, arg_0.d.b.x), arg_0), arg_0) >= (var_0.a.x | 1924u)))), global1[_wgslsmith_index_u32(~firstTrailingBit(1u), 32u)], any(select(select(vec4<bool>(arg_0.c.x, true, global2.c.x, global2.c.x), vec4<bool>(false, false, false, false), !vec4<bool>(global2.c.x, arg_0.c.x, global0.b.c.x, var_0.c.x)), vec4<bool>(var_0.c.x, all(var_0.c), false, any(vec4<bool>(arg_0.c.x, var_0.c.x, global0.b.c.x, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.c.x, global2.c.x, global0.b.c.x, true), true))));
    let var_2 = countOneBits(-2147483647i);
    global0 = Struct_4(global2.d.b, arg_0);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-847f, -239f, var_0.d.b.x, global0.a.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.b.x, global0.a.x, arg_0.d.b.x, var_0.d.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.x, global0.b.d.b.x, arg_0.d.b.x, -377f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2081f, 263f, 369f, var_0.d.b.x)))))));
    return global2.a;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.d.b.x - global2.d.b.x), _wgslsmith_f_op_f32(abs(-409f)))), _wgslsmith_div_f32(1275f, -110f))), Struct_2(countOneBits(global2.a ^ (global0.b.a >> (vec3<u32>(84721u, global2.a.x, global0.b.b.x) % vec3<u32>(32u)))), ~(~vec2<u32>(29398u, 0u)), global2.c, Struct_1(min(-2147483647i, global2.d.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1636f, global0.b.d.b.x)))), 0i));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(755f, _wgslsmith_f_op_f32(f32(-1f) * -1455f), true)));
    var var_1 = firstLeadingBit(arg_1 >> (vec4<u32>(max(1u, countOneBits(19433u)), global2.a.x, 1u, 32368u) % vec4<u32>(32u)));
    let var_2 = 32447u;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.b.x) + global0.a.x);
    return Struct_1(-(~(~(-arg_2.x))), global2.d.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = 71099u;
    var var_1 = Struct_3(abs(global0.b.a.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -2164f))))), func_4(~9755u, _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 19271u, var_0, global0.b.b.x), vec4<u32>(global2.b.x, 1u, 4294967295u, 2223u)), ~(~vec4<u32>(global0.b.b.x, var_0, global2.b.x, global0.b.b.x))), select(~vec3<i32>(arg_1.x, global0.b.d.a, arg_1.x), vec3<i32>(global0.b.d.a, -1i, 8831i), select(vec3<bool>(true, global2.c.x, global0.b.c.x), vec3<bool>(global2.c.x, global0.b.c.x, global0.b.c.x), vec3<bool>(true, false, global2.c.x))) << (func_2(Struct_2(vec3<u32>(global2.a.x, var_0, 7922u), global2.a.yz, vec2<bool>(false, true), global2.d, global0.b.e)) % vec3<u32>(32u))), true);
    global2 = global0.b;
    var_1 = Struct_3(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(u_input.b.x, ~vec4<u32>(var_0, 82311u, 4294967295u, 0u), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.e, var_1.c.a, arg_1.x), vec3<i32>(32820i, -41084i, var_1.c.a))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_div_f32(global0.b.d.b.x, _wgslsmith_div_f32(arg_0.x, global0.b.d.b.x)))), func_4(u_input.b.x, ~(vec4<u32>(4294967295u, var_0, var_0, 1u) << (vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(9301u, 59443u, u_input.a, var_1.a), vec4<u32>(global0.b.a.x, 1237u, var_1.a, global2.a.x), countOneBits(vec4<u32>(global0.b.a.x, 40462u, 1u, 0u))), vec3<i32>(~(-2147483647i), global2.e >> (3626u % 32u), var_1.c.a >> (4294967295u % 32u)) << (min(vec3<u32>(4294967295u, var_0, global2.a.x), global0.b.a) % vec3<u32>(32u))), true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), global2.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1064f), -103f);
    return vec2<i32>(-_wgslsmith_div_i32(max(_wgslsmith_mod_i32(-14324i, var_1.c.a), var_1.c.a), i32(-1i) * -1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(2147483647i, -1i)), max(-2147483647i, 5218i)) >> (_wgslsmith_dot_vec3_u32(global2.a, global0.b.a) % 32u), func_4(_wgslsmith_clamp_u32(global2.a.x | 1u, 4294967295u, 29845u), vec4<u32>(_wgslsmith_sub_u32(var_0, global2.b.x), 1u, 2630u, var_1.a), min(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, var_1.c.a, var_1.c.a), vec3<i32>(var_1.c.a, global0.b.d.a, arg_1.x)), abs(vec3<i32>(58853i, arg_1.x, global2.d.a)))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(global2.d.a, 19523i) & func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1075f, 331f, -929f) - vec4<f32>(global0.a.x, -764f, 396f, -1428f))))), -select(firstLeadingBit(vec2<i32>(global2.e, 2147483647i)), -vec2<i32>(12639i, 0i), all(vec3<bool>(false, true, global0.b.c.x))));
    global2 = global0.b;
    let var_1 = vec3<u32>(max(~u_input.b.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(88019u, min(12559u, u_input.a), ~1819u, 12109u), select(vec4<u32>(global2.a.x, u_input.a, u_input.b.x, 9451u) ^ vec4<u32>(global0.b.b.x, global2.b.x, 1u, 4294967295u), select(vec4<u32>(4294967295u, global0.b.b.x, 1u, 9799u), vec4<u32>(global0.b.b.x, 0u, u_input.b.x, u_input.b.x), false), !vec4<bool>(false, global2.c.x, global0.b.c.x, global0.b.c.x))) & u_input.b.x, ~_wgslsmith_clamp_u32(global0.b.b.x, 30565u, ~u_input.b.x));
    var var_2 = global1[_wgslsmith_index_u32(86785u, 32u)];
    var_2 = func_4(_wgslsmith_div_u32(global0.b.a.x, global0.b.b.x), (max(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(41456u, 0u, u_input.a, 0u)) >> (reverseBits(vec4<u32>(1u, 86162u, 0u, 4294967295u) ^ vec4<u32>(5020u, global2.a.x, u_input.a, 12394u)) % vec4<u32>(32u))) ^ abs(vec4<u32>(global0.b.b.x & 30686u, u_input.b.x, abs(4294967295u), _wgslsmith_add_u32(0u, 29765u))), ~_wgslsmith_sub_vec3_i32(-(~vec3<i32>(21605i, var_2.a, 0i)), vec3<i32>(0i, global0.b.e, 11373i) >> (firstTrailingBit(global2.a) % vec3<u32>(32u))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(vec2<i32>(936i, 7746i) >> (~vec2<u32>(global0.b.a.x, 38457u) % vec2<u32>(32u))), -261f, global2.b.x);
}

