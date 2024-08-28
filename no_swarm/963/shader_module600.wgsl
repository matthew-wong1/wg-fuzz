struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_4,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-10710i, -40857i, 1i), vec3<i32>(-62649i, 5946i, -6379i), vec3<i32>(0i, 2147483647i, -13149i), vec3<i32>(31015i, -18592i, 2147483647i), vec3<i32>(i32(-2147483648), 55617i, -16505i), vec3<i32>(16311i, 18045i, 8680i), vec3<i32>(2147483647i, 83116i, 2147483647i), vec3<i32>(-48484i, 38953i, 19349i), vec3<i32>(-56791i, -21515i, 1i), vec3<i32>(25466i, 19719i, -24158i), vec3<i32>(2147483647i, -6078i, 0i), vec3<i32>(11090i, 7601i, 1i));

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), 22469i, 11325i, -19594i), vec4<i32>(-27024i, 0i, 1i, -25416i), vec4<i32>(-69664i, 0i, -45649i, 2147483647i), vec4<i32>(-28867i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2110i, -32955i, -1i), vec4<i32>(i32(-2147483648), -2588i, 35996i, 0i), vec4<i32>(-541i, 10438i, -5501i, 0i), vec4<i32>(-1i, -16768i, -20369i, -82729i), vec4<i32>(1i, i32(-2147483648), -37896i, 2147483647i), vec4<i32>(-36599i, 0i, 1i, 29096i), vec4<i32>(36597i, -1i, i32(-2147483648), -16534i), vec4<i32>(2147483647i, -38119i, 2147483647i, 5193i), vec4<i32>(33385i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 1i, 0i, 24718i), vec4<i32>(37621i, 1i, -38577i, 0i), vec4<i32>(2147483647i, 46780i, 18098i, 29481i), vec4<i32>(i32(-2147483648), 0i, -1i, 0i), vec4<i32>(19896i, -1057i, 69805i, -1i), vec4<i32>(29362i, -17961i, 35307i, -1i), vec4<i32>(-13521i, 17110i, 23993i, -1i), vec4<i32>(-1i, 0i, -75596i, 7525i), vec4<i32>(1i, 7862i, -30152i, 0i), vec4<i32>(19457i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -13184i), vec4<i32>(0i, 0i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 2147483647i, -1i, 14303i));

var<private> global2: array<vec3<i32>, 27>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: Struct_3 = Struct_3(true, 41970i, 1i, Struct_2(true), vec2<i32>(17520i, 0i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = abs(~((_wgslsmith_add_vec2_u32(vec2<u32>(36849u, u_input.a), vec2<u32>(23604u, 0u)) & (vec2<u32>(14081u, u_input.a) ^ vec2<u32>(59233u, 31952u))) << (countOneBits(countOneBits(vec2<u32>(arg_0, arg_0))) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, firstTrailingBit(u_input.a & 0u)), var_0.x >> ((var_0.x >> (_wgslsmith_mod_u32(28489u, 23987u) % 32u)) % 32u)));
    let var_2 = 243f;
    var var_3 = _wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(-1017f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -241f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1152f) + var_2);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global0 = array<vec3<i32>, 12>();
    var var_0 = ~vec2<u32>(_wgslsmith_sub_u32(~u_input.a, u_input.a), u_input.a);
    let var_1 = vec3<bool>(any(!vec3<bool>(true, global4.d.a, true)), any(select(!vec2<bool>(false, global4.a), select(select(arg_0, arg_0, vec2<bool>(arg_0.x, true)), select(arg_0, vec2<bool>(arg_0.x, global4.d.a), false), select(arg_0, arg_0, arg_0.x)), select(!vec2<bool>(arg_0.x, arg_0.x), !arg_0, arg_0))), !(~4294967295u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 4294967295u), select(vec3<u32>(u_input.a, 4294967295u, var_0.x), vec3<u32>(var_0.x, 18410u, 1u), false))));
    global4 = Struct_3(true, -10437i, 1i | _wgslsmith_mult_i32(global4.e.x, (i32(-1i) * -1i) ^ u_input.b), global4.d, vec2<i32>(-1i, ~_wgslsmith_mult_i32(-global4.c, global4.e.x)));
    global4 = Struct_3(var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~min(global4.e, vec2<i32>(global4.b, u_input.b)), abs(countOneBits(global4.e))), abs(vec2<i32>(u_input.c.x, -10467i))), -47153i, Struct_2(false), abs(global4.e));
    return _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.a, ~0u)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = !global4.d.a;
    return ~vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, func_3(vec2<bool>(false, var_0)), u_input.a), vec3<u32>(~u_input.a, u_input.a, ~u_input.a)), 4294967295u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> Struct_4 {
    global3 = array<Struct_1, 23>();
    let var_0 = 10971u;
    global1 = array<vec4<i32>, 26>();
    let var_1 = Struct_1(!select(select(!vec2<bool>(global4.d.a, true), !vec2<bool>(global4.d.a, global4.a), vec2<bool>(true, false)), vec2<bool>(true, true), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(655f))), -1495f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1732f, 1247f)), 144f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-1349f * _wgslsmith_f_op_f32(f32(-1f) * -320f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * -1246f))), -255f), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1778f, -469f)) * _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1523f, 137f) + _wgslsmith_f_op_f32(func_1(8714u))), global4.a)), var_1.b.x, 263f)));
    return Struct_4(min(~vec3<i32>(77609i, 53730i, global4.e.x) | (u_input.c.wwx << (vec3<u32>(var_0, arg_0, arg_2) % vec3<u32>(32u))), u_input.c.xzz) ^ firstTrailingBit(~(-global2[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_clamp_i32(-global4.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global4.e.x, u_input.c.x, 0i), abs(select(u_input.c, vec4<i32>(1i, arg_1.x, 0i, 5344i), false))), _wgslsmith_dot_vec4_i32(-(u_input.c >> (vec4<u32>(95260u, 0u, arg_0, arg_0) % vec4<u32>(32u))), -_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.b, global4.c, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -495f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1221f, 763f, -1817f, 1501f)) - vec4<f32>(-1171f, -685f, 824f, -1325f))), vec4<f32>(-2184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1134f * -3111f) - _wgslsmith_f_op_f32(f32(-1f) * -358f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1962f * 1000f), _wgslsmith_f_op_f32(-413f + -208f))), 1839f), any(!vec3<bool>(true, global4.d.a, global4.a)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1151f * _wgslsmith_f_op_f32(ceil(-876f)))), _wgslsmith_f_op_f32(1562f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f) - _wgslsmith_f_op_f32(-548f * -801f))), _wgslsmith_f_op_f32(1201f + -606f), 549f));
    global1 = array<vec4<i32>, 26>();
    var var_2 = false;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_1(0u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 510f)) - _wgslsmith_f_op_f32(-var_1.x))), var_1.x, false)));
    var var_4 = ~u_input.a;
    let var_5 = func_4(13080u, abs(-vec2<i32>(reverseBits(-1i), u_input.b)), _wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 1u, 0u)) | ~vec3<u32>(u_input.a, u_input.a, 0u)) ^ vec3<u32>(~u_input.a, ~38351u, 1u), _wgslsmith_mult_vec3_u32(~func_2(vec2<bool>(true, global4.d.a)), vec3<u32>(u_input.a, 1u, 1u) ^ ~vec3<u32>(4294967295u, u_input.a, 4294967295u))));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_5.c)) + _wgslsmith_f_op_f32(sign(var_3.x))))));
    global4 = Struct_3(5773i <= (-41599i ^ var_5.a.x), select(~global4.b, u_input.b, true) ^ ~(~2147483647i), ~func_4(0u, (vec2<i32>(5584i, var_5.b) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) >> (select(vec2<u32>(21164u, u_input.a), vec2<u32>(0u, 1u), false) % vec2<u32>(32u)), _wgslsmith_mod_u32(~u_input.a, u_input.a)).a.x, Struct_2(!(~u_input.a >= 1u)), reverseBits(vec2<i32>(~0i, select(2147483647i, 1i, true))) ^ vec2<i32>(~_wgslsmith_div_i32(u_input.b, var_5.b), max(-2147483647i, 62900i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-410f, var_3.x, 1560f, -1291f))), _wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(-393f, var_5.c, -1143f, -1039f)))))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.a, 29911u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(33824u, u_input.a, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, 3720u, u_input.a), global4.d.a))) << (_wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.a, 1u, u_input.a)), firstTrailingBit(abs(vec3<u32>(u_input.a, u_input.a, 39152u)))) % vec3<u32>(32u)), u_input.c.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1701f, var_5.c, 415f) + vec3<f32>(1376f, -560f, var_1.x)))));
}

