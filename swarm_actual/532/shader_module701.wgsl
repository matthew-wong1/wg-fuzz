struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(4294967295u, 0u));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1u, vec3<i32>(13607i, -31633i, -29009i), vec4<u32>(26849u, 0u, 1u, 0u), vec3<bool>(false, false, true)), Struct_1(0u, vec3<i32>(0i, 0i, -33386i), vec4<u32>(0u, 9061u, 11918u, 30803u), vec3<bool>(false, false, true)), Struct_1(1u, vec3<i32>(-21030i, -1i, 5746i), vec4<u32>(38225u, 46093u, 40963u, 57626u), vec3<bool>(true, true, true)));

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-180f, -984f, -1000f), vec3<f32>(1881f, -1000f, -536f), vec3<f32>(-634f, 1000f, 520f), vec3<f32>(-1000f, 997f, -735f), vec3<f32>(1081f, 1762f, 752f));

var<private> global3: bool = false;

var<private> global4: u32 = 44754u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    global2 = array<vec3<f32>, 5>();
    var var_0 = arg_2;
    global3 = false;
    var var_1 = ~(~_wgslsmith_mod_vec3_u32(~(vec3<u32>(var_0.a, 4294967295u, 1u) ^ arg_2.c.wyz), ~(~vec3<u32>(0u, arg_2.a, arg_3))));
    return vec3<bool>(abs(~abs(1u)) <= var_0.a, false, true);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1964f + 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)));
    let var_1 = arg_0.d.x;
    var var_2 = -1663f;
    global4 = max(~_wgslsmith_sub_u32(arg_0.c.x >> (arg_0.c.x % 32u), arg_0.a), 3969u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1126f - _wgslsmith_f_op_f32(f32(-1f) * -2641f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-1000f)))));
    return arg_0.c.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> vec3<bool> {
    var var_0 = 9023i;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    global4 = func_3(Struct_1(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(91601u, 142900u), 1u)), firstTrailingBit(u_input.a), reverseBits(vec4<u32>(1u, _wgslsmith_sub_u32(22632u, 1u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(51604u, 1u)]), reverseBits(13511u))), func_2(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a.x, 0i), min(u_input.a.xx, vec2<i32>(-1017i, 19056i))), vec3<u32>(1u, 1u, 1u), Struct_1(25807u, vec3<i32>(u_input.a.x, 2147483647i, 2147483647i) >> (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_2, true), arg_1)), 53408u)));
    var_0 = min(-2147483647i & _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(u_input.a.yx, u_input.a.zx)), countOneBits(u_input.a.xy)), 75108i);
    var var_2 = u_input.a.zx;
    return select(select(func_2(countOneBits(u_input.a.xy), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 87080u), vec3<u32>(91452u, 0u, 4294967295u), vec3<u32>(1u, 1u, 13514u)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 14272u, 11327u)), Struct_1(countOneBits(1u), u_input.a, firstLeadingBit(vec4<u32>(7793u, 103211u, 16960u, 4294967295u)), !vec3<bool>(arg_2, arg_2, true)), ~_wgslsmith_mult_u32(1u, 35470u)), vec3<bool>(all(func_2(u_input.a.zy, vec3<u32>(10649u, 4294967295u, 0u), Struct_1(16378u, vec3<i32>(u_input.a.x, var_2.x, u_input.a.x), vec4<u32>(1u, 7751u, 38056u, 0u), vec3<bool>(true, arg_1, arg_1)), 90114u).yy), any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_1), arg_1)), false), func_2(vec2<i32>(u_input.a.x, 44082i), _wgslsmith_sub_vec3_u32(~vec3<u32>(9968u, 44676u, 9921u), vec3<u32>(12208u, 27360u, 49071u)), Struct_1(min(1u, 4294967295u), u_input.a, ~vec4<u32>(12352u, 1u, 30927u, 0u), !vec3<bool>(arg_2, arg_1, false)), abs(87950u))), select(select(!vec3<bool>(false, arg_1, true), vec3<bool>(false, select(false, false, arg_2), arg_2), vec3<bool>(false, true, func_2(u_input.a.zz, vec3<u32>(0u, 4294967295u, 4294967295u), global1[_wgslsmith_index_u32(1u, 3u)], 48819u).x)), vec3<bool>(true, arg_1, arg_1 | arg_2), func_2(-u_input.a.yz, firstTrailingBit(vec3<u32>(16956u, 15607u, 36014u)) | vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(~11929u, vec3<i32>(2226i, var_2.x, var_2.x), vec4<u32>(1u, 1u, 1u, 1u), vec3<bool>(arg_2, false, arg_1)), ~abs(88107u))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(select(false, any(func_1(global2[_wgslsmith_index_u32(min(92380u, 10802u), 5u)], true, true)), false), true, true, true);
    var var_1 = Struct_1(~(func_3(global1[_wgslsmith_index_u32(~24980u, 3u)]) << (10646u % 32u)), u_input.a, vec4<u32>(~(~1u), ~33830u, 0u, _wgslsmith_mult_u32(1u, func_3(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 3u)]))), var_0.zyw);
    global1 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-29774i, var_1.b.x, -2147483647i, var_1.b.x)), ~vec4<i32>(-1i, 27737i, 11035i, u_input.a.x) & vec4<i32>(-31263i, u_input.a.x, -14493i, -2147483647i), _wgslsmith_mult_vec4_i32(max(vec4<i32>(-1i, u_input.a.x, 37387i, -29444i), vec4<i32>(-2147483647i, var_1.b.x, 1i, 9740i)), ~vec4<i32>(30067i, -2147483647i, -1004i, 0i))), vec4<i32>(~(~(-u_input.a.x)), 38360i, u_input.a.x | -45284i, u_input.a.x));
    let var_3 = select(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~var_1.c.xyw, vec3<u32>(firstLeadingBit(var_1.c.x), ~4294967295u, var_1.a)), firstTrailingBit(~var_1.c.xzz) << (var_1.c.wwy % vec3<u32>(32u))), ~(~vec3<u32>(~var_1.c.x, _wgslsmith_div_u32(var_1.c.x, var_1.c.x), 31709u)), func_1(vec3<f32>(2655f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1314f - -402f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(681f, -248f))), false, true));
    global4 = var_1.c.x;
    var var_4 = select(select(!(!vec4<bool>(true, false, var_0.x, true)), vec4<bool>(true, var_1.d.x, any(var_0), var_0.x), true), select(vec4<bool>(_wgslsmith_f_op_f32(sign(750f)) < _wgslsmith_f_op_f32(min(1132f, -1103f)), !var_0.x, !all(vec3<bool>(true, var_0.x, var_1.d.x)), true), select(var_0, var_0, var_0.x), false), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_2.x, var_2.x, 0i), var_2) & ~(-53374i), 2147483647i), reverseBits(-countOneBits(var_2.wy)), false && (var_3.x <= _wgslsmith_dot_vec4_u32(var_1.c, var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2013f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(610f * 1314f))))), vec2<i32>(_wgslsmith_div_i32(2147483647i ^ select(1i, u_input.a.x, false), -(~1i)), -u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1169f, 1834f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1765f), vec2<f32>(243f, 1197f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(973f, -439f)))));
}

