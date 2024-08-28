struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-12180i, 0i, i32(-2147483648), -42536i);

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-14418i, i32(-2147483648), -26167i, 0i), vec4<i32>(1i, 2147483647i, 0i, 2147483647i), vec4<i32>(2147483647i, -47342i, 2147483647i, i32(-2147483648)), vec4<i32>(46034i, -1i, i32(-2147483648), 0i), vec4<i32>(7355i, -30928i, 0i, -1i), vec4<i32>(26994i, -12239i, 12430i, 2147483647i), vec4<i32>(37i, -1628i, -5838i, -17992i), vec4<i32>(2147483647i, -1082i, 12172i, 0i), vec4<i32>(1i, -10921i, -36073i, 48563i), vec4<i32>(12815i, -23970i, -6034i, 6008i), vec4<i32>(2147483647i, 18089i, i32(-2147483648), 0i), vec4<i32>(24967i, -1i, 19315i, 1i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), vec4<i32>(-3687i, 7315i, -40976i, -34262i), vec4<i32>(2147483647i, 2147483647i, 35919i, 34963i), vec4<i32>(22898i, 0i, -1i, 1i), vec4<i32>(-28553i, 20880i, -1i, 1i), vec4<i32>(1i, -10318i, 8980i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 0i, 2634i), vec4<i32>(19133i, 16403i, i32(-2147483648), 64167i), vec4<i32>(-16351i, -24831i, 2147483647i, 2147483647i), vec4<i32>(-1i, -1i, 1i, 13706i), vec4<i32>(1i, 2147483647i, 0i, 37395i), vec4<i32>(-1i, 2147483647i, -1i, -21670i), vec4<i32>(-5552i, 13866i, 6809i, i32(-2147483648)), vec4<i32>(41294i, 608i, -4955i, -45231i), vec4<i32>(-6369i, 1i, 2147483647i, 18765i), vec4<i32>(1i, -8919i, 3550i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 0i, i32(-2147483648)));

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 52819u, 37034u, 1u, 4294967295u, 103394u, 30274u, 1u, 33043u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = true;
    return _wgslsmith_mod_u32(~u_input.a.x, 19286u);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    global1 = array<vec4<i32>, 29>();
    let var_0 = Struct_1(func_3(), 4294967295u > (u_input.a.x & firstTrailingBit(_wgslsmith_sub_u32(43435u, arg_3.a.a))), _wgslsmith_f_op_f32(ceil(2094f)), arg_3.a.d);
    global1 = array<vec4<i32>, 29>();
    let var_1 = arg_3;
    let var_2 = ~vec3<u32>(7618u, global2[_wgslsmith_index_u32(1u, 9u)], var_0.a);
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> f32 {
    global1 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(769f, arg_0) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(272f)), 768f), arg_1.c)));
    global0 = global1[_wgslsmith_index_u32(~(~reverseBits(1u)), 29u)];
    let var_1 = ~u_input.a.yy;
    var var_2 = Struct_5(arg_1.e.a.b != false, !(!all(vec2<bool>(arg_1.b, arg_1.e.a.b))), vec4<u32>(min(39791u, abs(31539u) | func_2(arg_1.e.a.d, -1i, vec4<bool>(true, arg_1.b, arg_1.b, arg_1.e.a.d.x), arg_1.e)), firstTrailingBit(_wgslsmith_div_u32(~var_1.x, 56313u)), var_1.x, 4294967295u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.e.a.c))), arg_0, arg_0, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, -286f, 1556f, var_0.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-554f, 1000f, 1372f, var_0.x))))), Struct_3(any(vec4<bool>(true, any(vec3<bool>(false, true, arg_1.e.a.d.x)), any(vec2<bool>(true, arg_1.e.a.b)), true & arg_1.b)), !vec4<bool>(!arg_1.b, !arg_1.b, true, true), vec4<i32>(global0.x & u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.a, -43585i), global0.zwx), u_input.b, _wgslsmith_clamp_i32(1i, u_input.b, -23750i)) ^ select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(61855u, 4294967295u), 29u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_1.e.a.a), 29u)], !vec4<bool>(arg_1.e.a.d.x, arg_1.b, true, arg_1.b)), arg_1.e.a.a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    var var_1 = _wgslsmith_f_op_f32(step(-493f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1699f - -1000f), -121f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(-1000f - -463f)))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(ceil(1476f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(336f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1842f) + _wgslsmith_f_op_f32(836f - 2519f)), _wgslsmith_f_op_f32(func_1(-125f, Struct_4(u_input.b, true, 933f, -53170i, Struct_2(Struct_1(u_input.a.x, false, -1000f, vec2<bool>(true, false)), vec4<f32>(1000f, 1000f, 376f, 1000f)))))), true)));
    var var_3 = Struct_2(Struct_1(~reverseBits(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)])), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)) != true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f + -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), false), vec2<bool>(true, true), 2305f > _wgslsmith_f_op_f32(sign(704f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-388f, -376f, 259f, -1154f))), vec4<f32>(-650f, _wgslsmith_f_op_f32(sign(1786f)), _wgslsmith_div_f32(-147f, 501f), _wgslsmith_f_op_f32(max(266f, -744f))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.b.x)), _wgslsmith_f_op_f32(step(-285f, -323f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.b.x))), var_3.b.x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(284f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.a.a | _wgslsmith_div_u32(_wgslsmith_clamp_u32(13233u, global2[_wgslsmith_index_u32(0u, 9u)], 62173u), func_2(var_3.a.d, 1032i, vec4<bool>(var_3.a.b, var_3.a.d.x, false, false), Struct_2(Struct_1(var_3.a.a, var_3.a.d.x, var_4.x, var_3.a.d), var_3.b)))), _wgslsmith_div_i32(366i, _wgslsmith_clamp_i32(global0.x, select(i32(-1i) * -71987i, u_input.b, var_3.a.a < 1u), abs(_wgslsmith_add_i32(global0.x, global0.x)))), ~(~vec2<u32>(_wgslsmith_sub_u32(var_3.a.a, 18123u), func_3())), ~abs(abs(firstLeadingBit(var_3.a.a))), global0.x);
}

