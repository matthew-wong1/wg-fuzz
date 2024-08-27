struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: array<f32, 3> = array<f32, 3>(-1000f, 506f, -322f);

var<private> global2: vec3<f32> = vec3<f32>(831f, 530f, -300f);

var<private> global3: Struct_1;

var<private> global4: bool = true;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(~arg_1), ~reverseBits(arg_1), 18902u), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(51822u, 4294967295u, 38892u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, arg_1, 51493u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 6168u, 0u), vec3<u32>(arg_1, arg_1, 0u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-718f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f - arg_0)))) + global2.zz), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a.x, 1119f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_0)), _wgslsmith_div_vec2_f32(vec2<f32>(504f, global3.a.x), global2.yz))))));
    let var_2 = !(!vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-var_1.a.x))))));
    global0 = array<Struct_3, 21>();
    return u_input.a.zw;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(!(!((-1646f <= global3.a.x) | true)), func_3(global2.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(3355u, 15841u, 31431u)), vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(45613u, 0u), vec2<u32>(4999u, 4294967295u)), 1u))), vec2<u32>(4294967295u, reverseBits(~0u)) >> (~(~vec2<u32>(1u, 4294967295u) << (firstTrailingBit(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 392f), vec2<f32>(global3.a.x, -1564f)) + _wgslsmith_f_op_vec2_f32(global3.a * vec2<f32>(global2.x, global1[_wgslsmith_index_u32(0u, 3u)]))))), Struct_1(vec2<f32>(global2.x, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 3u)]))))), Struct_2(_wgslsmith_f_op_vec2_f32(-global2.zz), Struct_1(global3.a)));
    global0 = array<Struct_3, 21>();
    global3 = var_0.d.b;
    let var_1 = var_0.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) - var_1.b.a.x), var_0.e.b.a.x, 2076f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(543f, 283f, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)), var_0.d.b.a.x))));
    return Struct_1(global2.xx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = vec2<bool>(true, select(false, !arg_1.a, all(vec4<bool>(true, any(vec4<bool>(arg_1.a, arg_1.a, false, false)), true, !arg_1.a))));
    let var_1 = false;
    var var_2 = ~arg_1.b.x >= _wgslsmith_mod_i32(0i, -_wgslsmith_dot_vec2_i32(u_input.a.xy | vec2<i32>(u_input.a.x, u_input.a.x), ~arg_1.b));
    global1 = array<f32, 3>();
    var var_3 = arg_1.d.b;
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~17201u, 1u, _wgslsmith_clamp_u32(0u, 40588u, min(~28186u, ~53060u)), 1u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global3.a))), func_4(func_2(), Struct_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), ~(vec2<i32>(0i, -80552i) ^ vec2<i32>(42515i, u_input.a.x)), abs(max(var_0.wy, vec2<u32>(46455u, var_0.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-global2.zx), func_2()), Struct_2(_wgslsmith_f_op_vec2_f32(-global2.zz), Struct_1(global2.yx)))));
    let var_2 = select(abs(vec2<i32>(-8973i, u_input.a.x)), vec2<i32>(-2147483647i, u_input.a.x), select(!vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), true));
    let var_3 = select(vec3<i32>(~var_2.x, firstLeadingBit(var_2.x), -66389i), u_input.a.wyy, select(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)] != -1000f, true, arg_0 >= var_1.a.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, true)) || false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true), select(true, false, true) && false)));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(min(func_4(func_2(), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.wx, var_0.xw) | var_0.x, 21u)]).a, _wgslsmith_f_op_vec2_f32(-global3.a))), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.zy)));
    return global0[_wgslsmith_index_u32(~1u, 21u)];
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - global3.a.x)) - 1005f);
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2.yx));
    var_0 = global2.x;
    var var_1 = arg_2.c.x;
    var var_2 = ~min(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(51380u, 0u, 62422u) & vec3<u32>(28209u, arg_2.c.x, arg_2.c.x), vec3<u32>(76586u, arg_2.c.x, 4294967295u) | vec3<u32>(arg_2.c.x, 40322u, 91217u))), select(reverseBits(vec3<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x) << (vec3<u32>(1u, arg_2.c.x, arg_2.c.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(arg_2.c.x, arg_2.c.x, 24446u)), reverseBits(vec3<u32>(arg_2.c.x, 23783u, 0u))), select(vec3<bool>(true, arg_2.a, false), select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, true), arg_2.a), func_1(1302f).a)));
    return arg_2.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = true;
    let var_0 = vec4<u32>(firstLeadingBit(firstLeadingBit(56658u)), abs(95453u), ~4294967295u, _wgslsmith_mult_u32(firstTrailingBit(~(~0u)), 64106u));
    var var_1 = true;
    var var_2 = Struct_3(false, u_input.a.xw, var_0.ww & vec2<u32>(48014u << (~var_0.x % 32u), var_0.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a), vec2<f32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(14977u, 3u)]))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), global2.xy, func_1(-990f))), func_1(2049f).e);
    let var_3 = !any(!vec2<bool>(var_2.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a.x)), vec3<i32>(~(-46567i) | select(-1i, var_2.b.x, var_2.a), -2147483647i, -1i) << (firstTrailingBit(var_0.zyw) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, 475f, 948f))) + vec3<f32>(613f, _wgslsmith_f_op_f32(-1510f - global2.x), global1[_wgslsmith_index_u32(~var_0.x, 3u)]))), vec2<i32>(46644i, reverseBits(var_2.b.x)), func_5(1482f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-336f, global1[_wgslsmith_index_u32(var_0.x, 3u)]), global3.a)), vec2<f32>(573f, global1[_wgslsmith_index_u32(var_0.x, 3u)]))))), func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 3u)] * 1084f))).a);
}

