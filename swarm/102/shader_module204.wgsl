struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<u32, 19> = array<u32, 19>(1u, 4294967295u, 0u, 1u, 7613u, 4294967295u, 1u, 0u, 4294967295u, 32306u, 9260u, 51509u, 0u, 45854u, 4294967295u, 62949u, 8614u, 30113u, 0u);

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(62697u, 4294967295u, 26612u, 94922u), -286f), Struct_1(vec4<u32>(105945u, 0u, 1u, 0u), 491f), Struct_1(vec4<u32>(83967u, 4294967295u, 1124u, 0u), 370f), Struct_1(vec4<u32>(4294967295u, 53030u, 1u, 4294967295u), 909f), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 231f), Struct_1(vec4<u32>(0u, 5138u, 0u, 1282u), 978f), Struct_1(vec4<u32>(51027u, 1u, 48322u, 56623u), -1000f));

var<private> global3: Struct_1 = Struct_1(vec4<u32>(8878u, 4480u, 80260u, 0u), -358f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(0u, select(_wgslsmith_clamp_u32(u_input.a.x, 792u & max(global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 19u)], 19u)], 19u)]), global3.a.x), global3.a.x, true));
    global1 = array<u32, 19>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b, 151f, _wgslsmith_f_op_f32(f32(-1f) * -1938f), -455f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b, global3.b, global3.b, -979f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global3.b, global3.b, -954f) - vec4<f32>(-976f, 1462f, -405f, -805f)))), Struct_1(u_input.b, global3.b), global2[_wgslsmith_index_u32(countOneBits(20445u), 7u)], ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.x, var_0.x, 16058u, 54549u), ~u_input.b, ~vec4<u32>(global1[_wgslsmith_index_u32(45989u, 19u)], 0u, global1[_wgslsmith_index_u32(0u, 19u)], 17751u)), global2[_wgslsmith_index_u32(7807u, 7u)]), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(-18457i, 31977i, 6460i, 28332i), firstLeadingBit(vec4<i32>(u_input.e, -2147483647i, u_input.c, u_input.e))), firstLeadingBit(select(vec4<i32>(0i, 65338i, u_input.d, u_input.d), vec4<i32>(u_input.e, u_input.e, -19228i, 36883i), vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false, global0[_wgslsmith_index_u32(111374u, 29u)], true)))) << (1u % 32u), 0u, Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2375f, global3.b))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 7u)], global2[_wgslsmith_index_u32(~(firstTrailingBit(u_input.b.x) >> (~u_input.a.x % 32u)), 7u)], max(global3.a, ~vec4<u32>(0u, 114771u, 56400u, 1021u) | abs(vec4<u32>(23485u, 44358u, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 1u))), Struct_1(countOneBits(select(vec4<u32>(0u, 26816u, var_0.x, global3.a.x), global3.a, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)], true, false))), global3.b)), Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global3.b, 1000f, global3.b) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-583f, global3.b, global3.b, global3.b)))))), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(60907u, 19u)], ~(~u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -839f) == _wgslsmith_f_op_f32(-global3.b)), 19u)], 7u)], global2[_wgslsmith_index_u32(30113u, 7u)], ~reverseBits(select(u_input.b, vec4<u32>(var_0.x, var_0.x, global3.a.x, u_input.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false))), Struct_1(select(vec4<u32>(0u, 4294967295u, global3.a.x, var_0.x) | global3.a, reverseBits(u_input.b), select(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), global3.b)));
    global0 = array<bool, 29>();
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(~u_input.a.x << (var_1.a.c.a.x % 32u)), ~(~global1[_wgslsmith_index_u32(~55475u, 19u)])), global3.a.zy);
    return -(i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.b, -34709i, var_1.b), vec3<i32>(u_input.d, u_input.c, 1i)), -vec3<i32>(14214i, var_1.b, var_1.b)));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> u32 {
    global0 = array<bool, 29>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-727f + arg_0.c.b) - _wgslsmith_f_op_f32(abs(1267f))))), 339f, func_3() != ~(-1i)))));
    var var_1 = -(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.e), abs(vec2<i32>(30905i, u_input.c))), u_input.c));
    var var_2 = min(firstTrailingBit(-vec2<i32>(var_1.x, 0i)), _wgslsmith_mult_vec2_i32(-(firstLeadingBit(vec2<i32>(u_input.e, -10736i)) ^ vec2<i32>(var_1.x, u_input.e)), _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, u_input.c) | -vec2<i32>(2147483647i, -13557i), ~firstTrailingBit(vec2<i32>(u_input.c, 0i)))));
    global3 = arg_0.e;
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32((u_input.b.x | reverseBits(4294967295u)) >> (global1[_wgslsmith_index_u32(arg_0.c.a.x, 19u)] % 32u), global1[_wgslsmith_index_u32(81474u, 19u)]), ~min(~min(arg_0.c.a.x, u_input.b.x), ~(~global3.a.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = arg_3.d;
    var var_1 = -(~countOneBits((vec4<i32>(1i, u_input.e, -2147483647i, -36281i) ^ vec4<i32>(-1i, 67669i, 2147483647i, 5563i)) << (u_input.b % vec4<u32>(32u))));
    let var_2 = ~min(~arg_2.yz, firstLeadingBit(~select(vec2<u32>(arg_2.x, 1u), vec2<u32>(73036u, 0u), global0[_wgslsmith_index_u32(53134u, 29u)])));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-182f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.c.b * -616f) * _wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(sign(-1561f))) + _wgslsmith_f_op_vec3_f32(arg_3.d.a.yyx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.b, -136f, 610f)))))) - _wgslsmith_f_op_vec3_f32(var_0.a.wxz * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a.yyy * arg_3.e.a.wxx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(299f, -336f, 1996f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -681f, global3.b))), true))));
    global2 = array<Struct_1, 7>();
    return firstTrailingBit(vec4<i32>(0i, -35373i, func_3(), -arg_3.b));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_i32(~func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9283u, u_input.a.x, 39594u, 1u), vec4<u32>(global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70719u, 19u)], 19u)], u_input.a.x, u_input.b.x)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], select(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), func_2(Struct_2(vec4<f32>(global3.b, global3.b, 339f, -891f), global2[_wgslsmith_index_u32(76467u, 7u)], global2[_wgslsmith_index_u32(55884u, 7u)], global3.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69858u, 19u)], 7u)]), global0[_wgslsmith_index_u32(global3.a.x, 29u)])), -u_input.c, vec3<u32>(1u, global1[_wgslsmith_index_u32(~34144u, 19u)], select(u_input.a.x, global3.a.x, global0[_wgslsmith_index_u32(16380u, 29u)])), Struct_3(Struct_2(vec4<f32>(global3.b, -2121f, -1035f, global3.b), global2[_wgslsmith_index_u32(0u, 7u)], Struct_1(global3.a, global3.b), global3.a, Struct_1(vec4<u32>(86886u, 0u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 19u)]), 376f)), 45484i, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27305u, 19u)], 19u)], Struct_2(vec4<f32>(global3.b, global3.b, -515f, 1179f), Struct_1(vec4<u32>(32281u, 0u, global3.a.x, 2861u), 448f), Struct_1(global3.a, global3.b), global3.a, Struct_1(global3.a, global3.b)), Struct_2(vec4<f32>(global3.b, -990f, global3.b, global3.b), Struct_1(u_input.b, global3.b), global2[_wgslsmith_index_u32(u_input.b.x, 7u)], vec4<u32>(4294967295u, u_input.b.x, global3.a.x, global1[_wgslsmith_index_u32(28581u, 19u)]), Struct_1(u_input.b, 804f)))), ~firstLeadingBit(vec4<i32>(u_input.c, func_3(), -24769i, u_input.e ^ u_input.e)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.d, -11284i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-19946i, u_input.d), vec2<i32>(u_input.d, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -52552i, 46477i), vec3<i32>(-60492i, u_input.e, -7970i)), u_input.c), -select(vec4<i32>(u_input.d, u_input.e, -1i, -1i), vec4<i32>(-1i, u_input.e, u_input.e, u_input.e), true)));
    let var_1 = vec2<bool>(all(select(vec2<bool>(false | global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24847u, 19u)], 29u)], true), global0[_wgslsmith_index_u32(1u, 29u)])), -287f > _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f * global3.b) + -941f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(616f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-810f - 444f))));
    let var_3 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -478f)))))), global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 29u)]));
    var var_4 = min(u_input.b.x & 1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(19255u, ~23577u), u_input.a.x));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1029f, -300f, -444f, global3.b) * vec4<f32>(global3.b, global3.b, var_3, 304f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 250f, var_3, -123f))) + vec4<f32>(global3.b, var_3, -968f, var_2))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(257f, global3.b, 668f, -524f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(249f, 1247f, var_2, -394f), vec4<f32>(var_2, 132f, var_3, var_3))), vec4<f32>(2506f, -871f, var_2, var_2)))), Struct_1(~(vec4<u32>(global3.a.x, 0u, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]) >> (global3.a % vec4<u32>(32u))), 1439f), Struct_1(select(abs(firstLeadingBit(vec4<u32>(85242u, global3.a.x, 40711u, global3.a.x))), vec4<u32>(global3.a.x ^ 20290u, u_input.a.x, global3.a.x, global1[_wgslsmith_index_u32(1u, 19u)] ^ 77569u), select(select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(43038u, 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13769u, 19u)], 29u)], false), vec4<bool>(false, false, true, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(32336u, 29u)], var_1.x, true, var_1.x), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(44724u, 29u)], false, true), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(global3.a.x, 29u)], global0[_wgslsmith_index_u32(global3.a.x, 29u)], var_1.x)), vec4<bool>(true, global0[_wgslsmith_index_u32(global3.a.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], true))), _wgslsmith_f_op_f32(round(var_3))), countOneBits(u_input.b), global2[_wgslsmith_index_u32(6582u, 7u)]);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = arg_1.a;
    let var_1 = Struct_2(arg_1.a, Struct_1(~firstTrailingBit(func_1().d), 818f), func_1().e, vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_div_u32(abs(21880u), arg_2.a.x & global1[_wgslsmith_index_u32(global3.a.x, 19u)]), _wgslsmith_div_u32(12148u, 1u)), func_1().b);
    let var_2 = Struct_3(Struct_2(var_1.a, func_1().c, var_1.b, arg_2.a, Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1683f + var_1.c.b)))), arg_0.x, arg_1.d.x, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.b * -377f), _wgslsmith_f_op_f32(trunc(-688f)), _wgslsmith_f_op_f32(-893f - arg_1.b.b), global3.b) - var_0), arg_2, func_1().b, arg_2.a, var_1.e), var_1);
    let var_3 = func_1().c;
    global3 = func_1().e;
    return Struct_2(var_2.a.a, var_1.b, var_3, abs(select(~countOneBits(var_2.e.d), min(reverseBits(vec4<u32>(4294967295u, var_1.c.a.x, 0u, 53708u)), ~vec4<u32>(arg_1.b.a.x, 23392u, arg_2.a.x, arg_1.b.a.x)), true)), func_1().b);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = vec3<i32>(arg_2.b, u_input.c, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i >> (global1[_wgslsmith_index_u32(0u, 19u)] % 32u), 1i), -vec2<i32>(arg_2.b, 1i) << ((global3.a.yy & global3.a.wy) % vec2<u32>(32u)))));
    var var_1 = select(select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(44734u, 29u)], true), global0[_wgslsmith_index_u32(arg_0.e.e.a.x, 29u)]), !vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(17250u), func_1().b.a.x), 29u)], !(!global0[_wgslsmith_index_u32(arg_0.c, 29u)]), !global0[_wgslsmith_index_u32(15631u, 29u)] | global0[_wgslsmith_index_u32(~u_input.a.x, 29u)]), !select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_2.e.b.a.x, 29u)], false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 29u)], global0[_wgslsmith_index_u32(23573u, 29u)], global0[_wgslsmith_index_u32(global3.a.x, 29u)]), global0[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(global0[_wgslsmith_index_u32(18497u, 29u)], false, true))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(50695u, 29u)] & true, any(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(arg_3.x, 29u)] | true), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global3.a.x, 29u)]), vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], true, false)), false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(arg_2.a.e.a.x, 29u)])), true), !vec3<bool>(arg_2.d.e.b >= arg_2.d.a.x, var_0.x > -12923i, all(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.d.b.a.x, 29u)], true)))), !vec3<bool>(global0[_wgslsmith_index_u32(~arg_0.e.d.x, 29u)], true | (global1[_wgslsmith_index_u32(1u, 19u)] != 20941u), global3.b <= 1084f));
    global3 = Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(~u_input.b, arg_2.a.d)) >> (abs(vec4<u32>(global1[_wgslsmith_index_u32(7913u, 19u)] ^ arg_0.c, func_1().b.a.x, 1u, _wgslsmith_mod_u32(1u, global3.a.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-184f + -138f));
    global1 = array<u32, 19>();
    global2 = array<Struct_1, 7>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    global1 = array<u32, 19>();
    var_0 = vec4<u32>(_wgslsmith_mod_u32(~var_0.x, ~49993u), 4294967295u, ~4294967295u, 0u);
    let var_1 = func_6(Struct_3(func_5(~(-vec2<i32>(u_input.e, -25590i)), func_1(), func_1().e, global1[_wgslsmith_index_u32(99045u, 19u)]), u_input.c, ~u_input.a.x, func_1(), func_1()), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-327f, global3.b, true)), _wgslsmith_div_f32(global3.b, -464f), global3.b, _wgslsmith_f_op_f32(global3.b + -1264f))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.b + global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * global3.b)), global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + 563f)))), Struct_3(func_5(abs(vec2<i32>(u_input.d, 0i)), func_1(), Struct_1(vec4<u32>(4294967295u, 0u, 49759u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), var_0.x), func_3(), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], _wgslsmith_sub_u32(4294967295u, 1u)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(337f, global3.b, global3.b, global3.b)))), func_5(countOneBits(vec2<i32>(1i, -2147483647i)), func_1(), global2[_wgslsmith_index_u32(var_0.x, 7u)], 4294967295u).e, Struct_1(select(vec4<u32>(global3.a.x, 8630u, 9218u, var_0.x), vec4<u32>(var_0.x, 12044u, 0u, 1u), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(112605u, 29u)], false)), global3.b), ~(u_input.b & vec4<u32>(80057u, u_input.a.x, 0u, global3.a.x)), func_5(vec2<i32>(-1i, u_input.c), Struct_2(vec4<f32>(-738f, global3.b, global3.b, 164f), global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(global3.a.x, 7u)], vec4<u32>(0u, 1u, 7243u, 29239u), Struct_1(global3.a, -1123f)), func_1().c, global3.a.x).e), func_5(~select(vec2<i32>(2147483647i, u_input.e), vec2<i32>(2147483647i, 34240i), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 29u)]), func_1(), Struct_1(~vec4<u32>(0u, u_input.b.x, global3.a.x, 1u), global3.b), _wgslsmith_add_u32(global3.a.x, 61119u))), min(~u_input.a.zx, vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 2689u) & (1u >> (global3.a.x % 32u)), u_input.a.x)));
    global2 = array<Struct_1, 7>();
    var var_2 = -max(~(i32(-1i) * -4028i), i32(-1i) * -47628i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-213f - 704f), _wgslsmith_sub_u32(max(var_1.e.a.x, _wgslsmith_sub_u32(~10354u, _wgslsmith_div_u32(85876u, var_1.b.a.x))), min(4401u, _wgslsmith_div_u32(select(var_1.c.a.x, 125430u, global0[_wgslsmith_index_u32(10561u, 29u)]), global3.a.x))), var_1.a.wzw, _wgslsmith_mod_i32(_wgslsmith_sub_i32(38035i, _wgslsmith_dot_vec4_i32(func_4(u_input.b, -53484i, var_0.yxw, Struct_3(Struct_2(var_1.a, Struct_1(vec4<u32>(0u, global1[_wgslsmith_index_u32(global3.a.x, 19u)], var_1.c.a.x, var_1.e.a.x), global3.b), Struct_1(global3.a, 811f), vec4<u32>(53626u, 1u, 8736u, u_input.b.x), Struct_1(global3.a, -1302f)), 41888i, 4920u, Struct_2(vec4<f32>(-809f, var_1.a.x, global3.b, global3.b), Struct_1(vec4<u32>(59358u, var_1.b.a.x, u_input.a.x, var_0.x), global3.b), global2[_wgslsmith_index_u32(global3.a.x, 7u)], vec4<u32>(var_0.x, global3.a.x, 59540u, 41864u), var_1.b), var_1)), vec4<i32>(-12150i, u_input.d, 41796i, -21638i))), _wgslsmith_add_i32(-1i, u_input.e)), u_input.b);
}

