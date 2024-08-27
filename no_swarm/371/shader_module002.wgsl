struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(0i, 22765i), vec2<i32>(0i, -28178i), vec2<i32>(i32(-2147483648), 25335i), vec2<i32>(-1i, -19976i));

var<private> global1: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true));

var<private> global2: f32 = 1503f;

var<private> global3: array<bool, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    var var_0 = arg_1.x;
    global3 = array<bool, 26>();
    global2 = arg_1.x;
    global2 = arg_1.x;
    var var_1 = u_input.a.x;
    return 511f;
}

fn func_2() -> Struct_1 {
    global2 = -2414f;
    var var_0 = max(reverseBits(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)) >> (1u % 32u)), _wgslsmith_mod_u32(31448u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x, 1u), max(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, 9724u, 0u, 0u)) >> ((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f) - _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], vec3<f32>(893f, -1206f, 100f)))))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -504f);
    var_0 = u_input.a.x;
    return Struct_1(57897i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    var var_0 = func_2();
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.b)))))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = vec2<u32>(_wgslsmith_add_u32(arg_1.a.c, arg_1.d), 23282u) & u_input.a.yz;
    var var_3 = vec3<i32>(arg_1.e.a, arg_0.a, var_0.a >> (u_input.a.x % 32u));
    return Struct_4(arg_1.a, Struct_1(arg_1.c.a), arg_0, 0u, func_2());
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<bool>, 3>();
    let var_0 = u_input.a;
    var var_1 = func_4(func_2(), Struct_4(Struct_2(Struct_1(1i), _wgslsmith_f_op_f32(-1f), abs(~25661u)), Struct_1(~0i), Struct_1(1i), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, 4294967295u), ~u_input.a.x) | ~1u, Struct_1(-(~(-2029i)))));
    var var_2 = select(select(select(vec2<bool>(true, false), select(!vec2<bool>(true, global3[_wgslsmith_index_u32(var_1.a.c, 26u)]), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], true), global3[_wgslsmith_index_u32(var_0.x, 26u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.yz, var_0.xy), 26u)]), !(!select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(13762u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(1u, 26u)]))), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(var_1.a.c, 26u)], false), select(vec2<bool>(global3[_wgslsmith_index_u32(var_1.d, 26u)], global3[_wgslsmith_index_u32(var_1.d, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], false), vec2<bool>(true, true)), any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 26u)], true, global3[_wgslsmith_index_u32(22927u, 26u)]))), select(vec2<bool>(true, true), !vec2<bool>(global3[_wgslsmith_index_u32(21762u, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)]), var_1.a.c != var_1.a.c), any(!vec2<bool>(global3[_wgslsmith_index_u32(var_1.a.c, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)])))), select(!select(!vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], true), vec2<bool>(true, global3[_wgslsmith_index_u32(var_1.d, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false)), !select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], global3[_wgslsmith_index_u32(22693u, 26u)]), vec2<bool>(false, false), global3[_wgslsmith_index_u32(34334u, 26u)] & true), !select(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(66502u, 26u)], false)), !vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.a.c, 26u)]))), select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(20184u, 26u)], false), select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)]), global3[_wgslsmith_index_u32(33308u, 26u)]), select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(38899u, 26u)]), false)), select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], false), global3[_wgslsmith_index_u32(var_1.a.c & 27681u, 26u)]), true), vec2<bool>(true, true), !(!vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.a.c, 26u)]))));
    var var_3 = ~_wgslsmith_clamp_i32(40157i, -2147483647i, 2147483647i);
    return Struct_1(-1798i);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_mod_i32(min(2147483647i, 1i), -1i), arg_2.a));
    var_0 = Struct_3(reverseBits(min(vec2<i32>(var_0.a.x, _wgslsmith_div_i32(-14212i, var_0.a.x)), var_0.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 840f))))))));
    global2 = -498f;
    var var_2 = countOneBits(~_wgslsmith_mod_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 7752u, u_input.a.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(21352u, 5087u, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-1706f - var_1.x)), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -956f))), _wgslsmith_f_op_f32(f32(-1f) * -1310f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_f_op_f32(1100f + -700f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f * 859f) - -2506f), _wgslsmith_f_op_f32(floor(1570f)))) + _wgslsmith_f_op_vec4_f32(func_5(global1[_wgslsmith_index_u32(1u, 3u)], 430f, func_1())));
    var var_1 = func_2();
    var_1 = Struct_1(var_1.a);
    var var_2 = -var_1.a;
    let var_3 = 1u;
    var var_4 = func_4(func_2(), Struct_4(func_4(func_2(), Struct_4(func_4(Struct_1(-2147483647i), Struct_4(Struct_2(Struct_1(-37146i), -1017f, var_3), Struct_1(var_1.a), Struct_1(-1i), 32018u, Struct_1(var_1.a))).a, Struct_1(0i), Struct_1(0i), ~74889u, func_4(Struct_1(var_1.a), Struct_4(Struct_2(Struct_1(-21750i), -1000f, 0u), Struct_1(var_1.a), Struct_1(var_1.a), 1u, Struct_1(0i))).c)).a, Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(13286i, 1i), 112036i << (var_3 % 32u))), func_4(Struct_1(1i << (var_3 % 32u)), Struct_4(Struct_2(Struct_1(1i), 1654f, u_input.a.x), func_2(), func_1(), u_input.a.x, Struct_1(-59727i))).c, abs(6836u), Struct_1(-abs(var_1.a)))).a;
    let var_5 = Struct_1(0i);
    var var_6 = ~(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), _wgslsmith_sub_u32(var_3, _wgslsmith_mod_u32(1u, var_4.c)), ~(0u << (0u % 32u)), var_3) << (_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(3808u, var_3, 45274u, 9915u)), (vec4<u32>(var_4.c, var_4.c, var_3, var_3) << (vec4<u32>(38870u, 0u, var_3, 0u) % vec4<u32>(32u))) >> ((vec4<u32>(var_4.c, u_input.a.x, u_input.a.x, 4294967295u) << (vec4<u32>(var_3, 1u, var_4.c, 28871u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(var_4.c, var_4.c, var_4.c, var_3)) ^ abs(vec4<u32>(6716u, u_input.a.x, 115217u, 1u))) % vec4<u32>(32u)));
    var var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(507f, var_4.b, -1405f), vec3<f32>(618f, 1082f, var_0.x), false))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.xyx - var_0.wyx), var_0.wyx))) + var_0.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a, var_4.a.a ^ var_4.a.a, -11460i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))));
}

