struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-77868i, vec4<u32>(48981u, 0u, 43679u, 0u), 4294967295u, false, vec4<f32>(-638f, -1015f, -689f, 795f)), Struct_1(-35716i, vec4<u32>(1u, 0u, 152538u, 29810u), 16215u, true, vec4<f32>(327f, -623f, 1000f, -437f)), Struct_1(-81i, vec4<u32>(32478u, 2007u, 31413u, 76153u), 0u, false, vec4<f32>(803f, -122f, 931f, -276f)), Struct_1(-1i, vec4<u32>(4294967295u, 49496u, 13794u, 99329u), 6620u, true, vec4<f32>(560f, 142f, 1103f, -427f)), Struct_1(28762i, vec4<u32>(0u, 17390u, 2679u, 1u), 1u, true, vec4<f32>(1000f, 801f, -699f, -304f)), Struct_1(-34407i, vec4<u32>(4294967295u, 24963u, 78071u, 60037u), 4294967295u, true, vec4<f32>(-1048f, 1000f, 548f, 629f)), Struct_1(2147483647i, vec4<u32>(2743u, 21692u, 4294967295u, 4294967295u), 0u, false, vec4<f32>(1828f, -735f, -603f, 1192f)), Struct_1(2147483647i, vec4<u32>(1u, 1410u, 32760u, 29847u), 1u, true, vec4<f32>(103f, -2458f, -1000f, 379f)), Struct_1(2147483647i, vec4<u32>(4294967295u, 4294967295u, 1u, 17247u), 1u, true, vec4<f32>(475f, -263f, 376f, 305f)));

var<private> global1: Struct_2 = Struct_2(Struct_1(-41879i, vec4<u32>(0u, 6850u, 0u, 7803u), 23487u, false, vec4<f32>(-1330f, -595f, 1684f, 301f)), -456f);

var<private> global2: array<i32, 26> = array<i32, 26>(1i, i32(-2147483648), -14901i, 2147483647i, i32(-2147483648), i32(-2147483648), -11641i, -34544i, i32(-2147483648), -1i, -25801i, -29362i, 28333i, 2147483647i, i32(-2147483648), 1i, -1i, -55429i, i32(-2147483648), 1i, -21049i, -14922i, i32(-2147483648), i32(-2147483648), 1i, -1i);

var<private> global3: array<vec4<bool>, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.e.wyx + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a.e.x, 1000f, -2793f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.e.yyw))))))));
    let var_1 = 1i;
    var var_2 = Struct_1(select(-var_1, 2147483647i, arg_0.x), vec4<u32>(3556u, u_input.b, arg_2.b.x, ~max(arg_2.b.x, _wgslsmith_dot_vec2_u32(global1.a.b.xx, vec2<u32>(u_input.b, u_input.b)))), u_input.b, true, _wgslsmith_div_vec4_f32(arg_2.e, vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -1047f)), _wgslsmith_f_op_f32(arg_2.e.x * arg_2.e.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -705f)))));
    let var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(-2147483647i, var_2.b ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, global1.a.c), global1.a.b), arg_2.c, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2.e, arg_2.e)) * _wgslsmith_f_op_vec4_f32(round(global1.a.e)))), _wgslsmith_f_op_f32(-arg_2.e.x));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = global1.a.d;
    let var_1 = _wgslsmith_f_op_f32(round(-218f));
    global3 = array<vec4<bool>, 25>();
    var var_2 = ~(~(~vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 26u)], arg_0.a.a, -35579i)) | vec4<i32>(func_3(vec3<bool>(global1.a.d, false, global1.a.d), -27332i, Struct_1(-1i, arg_0.a.b, 1u, global1.a.d, vec4<f32>(arg_1.a.e.x, -535f, -640f, arg_0.b))), 76578i, global2[_wgslsmith_index_u32(u_input.b, 26u)] ^ global2[_wgslsmith_index_u32(35857u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)] ^ arg_1.a.a)) ^ -(~vec4<i32>(~global1.a.a, _wgslsmith_mod_i32(1i, -1i), 29846i, arg_0.a.a));
    let var_3 = _wgslsmith_div_f32(-1000f, 217f);
    return ~(vec4<u32>(1u, ~select(arg_1.a.b.x, arg_0.a.c, true), ~(~56761u), ~(~24273u)) << (_wgslsmith_mod_vec4_u32(global1.a.b, arg_0.a.b) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(~_wgslsmith_clamp_i32(-16973i, 535i, arg_3.a), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(arg_3.b, arg_0.a.b), func_2(arg_0, arg_0)) >> (arg_0.a.b % vec4<u32>(32u))), 5250u, !arg_3.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b, 1000f, global1.a.e.x, 1233f), vec4<f32>(-1000f, 1000f, global1.a.e.x, -636f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b, global1.b, 676f, 393f), vec4<f32>(1028f, -1036f, -816f, arg_0.a.e.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 1000f, -1775f, 616f)), arg_3.e, global3[_wgslsmith_index_u32(arg_0.a.b.x, 25u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_3.e, vec4<f32>(-2823f, global1.b, arg_0.a.e.x, -257f)))))));
    global1 = Struct_2(Struct_1(-2147483647i, var_0.b, u_input.b, firstTrailingBit(var_0.c) >= ~(~var_0.c), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(-arg_0.a.e.x), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -280f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(847f + 454f), _wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(arg_3.e.x - _wgslsmith_f_op_f32(-global1.a.e.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.e.x, var_0.e.x), arg_0.b)), arg_3.e.x)), true)));
    global0 = array<Struct_1, 9>();
    global3 = array<vec4<bool>, 25>();
    global1 = arg_0;
    return _wgslsmith_f_op_f32(-arg_3.e.x);
}

fn func_4(arg_0: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f * arg_0.x) * _wgslsmith_f_op_f32(global1.b * -2156f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f - global1.a.e.x)))));
    let var_1 = abs(~countOneBits(u_input.b) & ~u_input.b);
    var var_2 = vec3<f32>(1000f, -145f, _wgslsmith_f_op_f32(387f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(0u, 9u)], -557f), true, -2147483647i, Struct_1(-2147483647i, global1.a.b, var_1, global1.a.d, global1.a.e)))))));
    var var_3 = vec4<u32>(~func_2(Struct_2(global0[_wgslsmith_index_u32(~1u, 9u)], global1.b), Struct_2(Struct_1(global1.a.a, vec4<u32>(u_input.b, 78192u, 0u, global1.a.c), 4294967295u, false, global1.a.e), 215f)).x, ~(~global1.a.b.x) & (_wgslsmith_mod_u32(countOneBits(var_1), firstLeadingBit(69470u)) ^ 1u), _wgslsmith_mod_u32(u_input.b, 6781u), u_input.b & _wgslsmith_add_u32(63423u, reverseBits(~var_1)));
    var var_4 = Struct_1(firstLeadingBit(i32(-1i) * -43290i), global1.a.b, global1.a.c, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-216f, 1534f, -920f, var_2.x)))))));
    return 46920i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.a.e.zz)))) - global1.a.e.xy)));
    let var_1 = -_wgslsmith_dot_vec4_i32(-select(vec4<i32>(global1.a.a, arg_2.a, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, arg_2.a, arg_1), true), max(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.a, 2147483647i, global1.a.a, 2147483647i), vec4<i32>(u_input.a.x, 27912i, -2147483647i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(9996u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], 2662i, 49519i), vec4<i32>(-1884i, -1i, -6365i, arg_0), vec4<i32>(-2147483647i, -1i, -1i, global2[_wgslsmith_index_u32(arg_2.b.x, 26u)])))) & _wgslsmith_add_i32(arg_1, func_4(arg_2.e.zx));
    var var_2 = reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(arg_1), arg_0 & global1.a.a), u_input.a), 1i, -(~abs(var_1))));
    global0 = array<Struct_1, 9>();
    let var_3 = Struct_2(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1503f) + _wgslsmith_f_op_f32(step(var_0.x, global1.a.e.x)))), -1000f)));
    return StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.e.yx)), _wgslsmith_add_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.c, 77503u, 0u), vec3<u32>(arg_2.b.x, var_3.a.c, 0u)), vec3<u32>(global1.a.c, 0u, u_input.b)), reverseBits(var_3.a.b.ywy << (vec3<u32>(u_input.b, 22459u, global1.a.b.x) % vec3<u32>(32u)))) & ~(vec3<u32>(4294967295u, global1.a.c, var_3.a.c) & vec3<u32>(var_3.a.b.x, 0u, 0u)), min(vec3<i32>(arg_2.a, global1.a.a, 2147483647i) | countOneBits(firstLeadingBit(vec3<i32>(30196i, 1i, 7181i))), vec3<i32>((-26184i ^ u_input.a.x) ^ -arg_2.a, var_3.a.a, ~global2[_wgslsmith_index_u32(arg_2.c, 26u)] >> (33416u % 32u))), _wgslsmith_f_op_f32(select(arg_2.e.x, _wgslsmith_f_op_f32(-145f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f + var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -427f))), arg_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(-u_input.a.x | ~max(-8596i, select(1i, 22725i, global1.a.d)), i32(-1i) * -15608i, Struct_1(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-38686i, vec4<u32>(u_input.b, 0u, u_input.b, 1u), 21901u, global1.a.d, global1.a.e), global1.b), false, global2[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.b, 9u)])))), global1.a.b, ~(~u_input.b) | select(~15489u, global1.a.b.x, all(global3[_wgslsmith_index_u32(global1.a.c, 25u)])), global1.a.d, _wgslsmith_f_op_vec4_f32(-global1.a.e)), select(!vec2<bool>(false, !global1.a.d), vec2<bool>(true, any(vec3<bool>(true, true, global1.a.d))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global1.a.d, global1.a.d)), vec2<bool>(all(vec2<bool>(true, global1.a.d)), select(false, false, global1.a.d)))));
}

