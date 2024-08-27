struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(23132u, 1u, 0u, 33844u, 4426u, 4294967295u, 0u, 4294967295u, 0u, 110140u, 0u, 49272u, 60874u, 2182u, 0u, 80151u, 87070u, 105296u);

var<private> global1: bool = true;

var<private> global2: array<bool, 6>;

var<private> global3: array<vec3<u32>, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = u_input.d.x;
    let var_1 = abs(max(vec2<u32>(_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(42045u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.b.x), true), u_input.a), ~66567u | (4294967295u >> (u_input.a.x % 32u))), select(abs(~vec2<u32>(1u, u_input.b.x)), firstLeadingBit(countOneBits(u_input.a.xw)), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(55143u, 6u)])))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1276f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1158f))) - -404f))));
    var var_3 = _wgslsmith_add_u32(u_input.a.x, ~(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(40864u, 18u)], 0u))) < 4294967295u;
    var_0 = ~(-2147483647i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(trunc(-421f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1988f * 1f) + _wgslsmith_f_op_f32(-515f * _wgslsmith_f_op_f32(f32(-1f) * -2438f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f))))));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~firstTrailingBit(4294967295u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(365f - -502f) - _wgslsmith_f_op_f32(-540f * 792f))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), var_1.a.a)), -1013f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1638f, -1666f, -738f, 269f) - vec4<f32>(1000f, var_1.a.a, var_2.a.a, var_2.a.a)))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1966f, var_2.a.a, var_2.a.a, 498f) * vec4<f32>(var_2.a.a, -825f, var_1.a.a, var_1.a.a)))))));
    global1 = false;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3())));
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = func_2();
    let var_1 = func_2().a;
    let var_2 = arg_0.zzx;
    var var_3 = 0u;
    var var_4 = firstLeadingBit(-u_input.c);
    return Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 4294967295u) >> (u_input.b.xz % vec2<u32>(32u)), u_input.a.zx), 24692u), -57769i, Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(var_0.a.a)))), ~min(vec4<i32>(countOneBits(u_input.c), _wgslsmith_div_i32(-46317i, u_input.d.x), _wgslsmith_div_i32(2147483647i, u_input.c), -13424i), ~vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, 1i)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: u32) -> Struct_4 {
    global2 = array<bool, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.a.a, 239f)) - _wgslsmith_f_op_f32(arg_0.c.a.a - arg_0.c.a.a))))) * _wgslsmith_f_op_f32(f32(-1f) * -1564f));
    global3 = array<vec3<u32>, 27>();
    let var_1 = arg_0.c.a;
    let var_2 = reverseBits(1799u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(select(select(!vec4<bool>(global2[_wgslsmith_index_u32(21325u, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(34796u, 6u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(43955u, 6u)], false), vec4<bool>(global2[_wgslsmith_index_u32(13760u, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 6u)], true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 6u)]))), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 6u)], true, global2[_wgslsmith_index_u32(55534u, 6u)]), !vec4<bool>(global2[_wgslsmith_index_u32(21507u, 6u)], global2[_wgslsmith_index_u32(19093u, 6u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 6u)]), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 6u)]), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], false, false, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]))), -_wgslsmith_sub_i32(u_input.c, ~u_input.c), ~_wgslsmith_div_u32(u_input.a.x | 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)]));
    global0 = array<u32, 18>();
    global1 = true || all(!vec2<bool>(true, 103f > var_0.c.a.a));
    var var_1 = func_4(Struct_4(u_input.b.xz, -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, var_0.d.x), vec3<i32>(2147483647i, 0i, 1i)), Struct_2(func_4(func_1(vec4<bool>(false, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(340u, 18u)], 6u)], false)), i32(-1i) * -3166i, ~global0[_wgslsmith_index_u32(27805u, 18u)]).c.a), ~(~var_0.d)), max(firstLeadingBit(52037i), 1i), ~u_input.b.x << (u_input.b.x % 32u)).c.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), var_1.a) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, -537f, var_0.c.a.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, -261f, var_0.c.a.a))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.a.a, var_0.c.a.a, var_1.a), vec3<f32>(1812f, 666f, 1126f))), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], false, false))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1161f - 1406f), 286f, _wgslsmith_f_op_f32(var_1.a * var_1.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-657f, 1646f, var_1.a))))))));
    global3 = array<vec3<u32>, 27>();
    let var_3 = Struct_3(firstLeadingBit(_wgslsmith_add_vec3_i32(var_0.d.zyz, -var_0.d.yzx & select(var_0.d.wzz, var_0.d.zyw, vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(func_2().a.a, -973f)), 1353f, all(!vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)])))) > 140f, var_0.c.a, u_input.a.yxz, vec3<i32>(-27026i, var_0.d.x, u_input.d.x));
    let var_4 = func_4(Struct_4(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 0u, 26565u), vec3<u32>(u_input.a.x, var_3.d.x, var_3.d.x)), var_3.d)), var_0.d.x, func_4(Struct_4(var_0.a, func_1(vec4<bool>(true, false, false, var_3.b)).d.x, Struct_2(var_3.c), -var_0.d), firstTrailingBit(0i), 1u).c, countOneBits(-vec4<i32>(var_0.d.x, u_input.c, var_3.e.x, -4547i))), u_input.d.x, reverseBits(56564u)).c;
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_5.a, -1027f), vec2<f32>(-1182f, 438f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.a), var_0.c.a.a)), vec2<f32>(830f, _wgslsmith_div_f32(var_0.c.a.a, _wgslsmith_f_op_f32(-var_1.a))))), -(~vec3<i32>(~var_3.e.x, max(2147483647i, var_0.b), -71957i)));
}

