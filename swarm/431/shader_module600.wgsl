struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<u32, 19>;

var<private> global2: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.c.x;
    global0 = array<i32, 9>();
    global1 = array<u32, 19>();
    global2 = -2181f;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, 482f, -1752f, -1000f))), arg_3.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f * arg_2.e.a.x) * arg_3.d.b), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1071f, arg_1.b.a.x, 609f, arg_1.e.a.x) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1103f, arg_2.a.b, arg_1.e.a.x), arg_3.b.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-891f)))), 80489u), _wgslsmith_div_vec3_f32(arg_2.b.a.zwz, _wgslsmith_f_op_vec3_f32(abs(arg_3.e.a.zwx))), Struct_2(Struct_1(vec4<f32>(1861f, arg_2.b.a.x, _wgslsmith_div_f32(arg_1.e.a.x, arg_3.d.a.x), _wgslsmith_f_op_f32(arg_3.e.b * 1797f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1263f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 1u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2668f), 918f, _wgslsmith_f_op_f32(step(1424f, arg_3.d.a.x)), arg_3.b.b), -566f, ~(~global1[_wgslsmith_index_u32(0u, 19u)])), !vec4<bool>(true, true, false, !arg_2.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d.a + arg_2.d.a)), _wgslsmith_f_op_f32(arg_3.e.a.x + arg_2.d.b), abs(~global1[_wgslsmith_index_u32(4294967295u, 19u)])), arg_1.a), vec4<i32>(35714i, 2147483647i, (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(63780u, arg_2.a.c, u_input.a), 9u)] | _wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_3.a.c, 9u)], global0[_wgslsmith_index_u32(2841u, 9u)])) << (_wgslsmith_div_u32(23119u | arg_1.e.c, 1u) % 32u), global0[_wgslsmith_index_u32(select(countOneBits(global1[_wgslsmith_index_u32(~arg_3.a.c, 19u)]), ~abs(1u), _wgslsmith_f_op_f32(arg_1.d.a.x * -779f) < _wgslsmith_f_op_f32(floor(arg_2.b.b))), 9u)]));
    return 120f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> bool {
    var var_0 = -1492f;
    var var_1 = Struct_4(true, true, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(570f, 400f, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(-1673f - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_clamp_u32(1u, 0u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(102088u, 19u)], 19u)])), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(arg_1.x, 1000f, -909f, -629f)), arg_1, true)), 2308f, 0u), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(func_3(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -12167i, global0[_wgslsmith_index_u32(11260u, 9u)], arg_0.x), Struct_2(Struct_1(vec4<f32>(arg_1.x, -1405f, arg_1.x, -624f), arg_1.x, global1[_wgslsmith_index_u32(u_input.a, 19u)]), Struct_1(arg_1, 1872f, u_input.a), vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(1583f, -482f, arg_1.x, -864f), -1000f, 4294967295u), Struct_1(arg_1, arg_1.x, 0u)), Struct_2(Struct_1(arg_1, arg_1.x, 0u), Struct_1(vec4<f32>(arg_1.x, arg_1.x, -1167f, 716f), 344f, global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(arg_1.x, -272f, 1118f, 1259f), arg_1.x, 43746u), Struct_1(arg_1, arg_1.x, u_input.a)), Struct_2(Struct_1(vec4<f32>(140f, -1145f, arg_1.x, 1734f), arg_1.x, 58227u), Struct_1(vec4<f32>(arg_1.x, arg_1.x, -3038f, arg_1.x), 1037f, 40443u), vec4<bool>(true, false, false, false), Struct_1(arg_1, arg_1.x, 1u), Struct_1(vec4<f32>(arg_1.x, -423f, arg_1.x, arg_1.x), arg_1.x, 0u)))) < -406f), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 808f, arg_1.x, -452f)))), -140f, u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(-247f, arg_1.x, arg_1.x, arg_1.x))), 509f, reverseBits(4294967295u))));
    let var_2 = -(~(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 18914i, arg_0.x), vec4<i32>(arg_0.x, 59807i, -2147483647i, 68212i), vec4<i32>(arg_0.x, arg_0.x, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 9u)])))));
    let var_3 = Struct_4(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-863f, -869f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2019f)) * _wgslsmith_div_f32(var_1.c.d.a.x, arg_1.x))), true, Struct_2(var_1.c.e, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1912f, var_1.c.e.b, var_1.c.b.b, 466f) + _wgslsmith_f_op_vec4_f32(arg_1 * arg_1)), 1000f, 1u), vec4<bool>(any(vec3<bool>(false, true, var_1.c.c.x)), false, false, u_input.a == _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 19u)], 0u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.x, 250f, arg_1.x)), arg_1.x, _wgslsmith_div_u32(firstLeadingBit(63105u), ~var_1.c.e.c)), Struct_1(var_1.c.a.a, _wgslsmith_f_op_f32(-var_1.c.a.b), ~(~2800u))));
    var var_4 = select(vec2<bool>(true, !var_3.c.c.x | !select(false, var_3.b, var_3.b)), select(!vec2<bool>(any(var_3.c.c.zy), var_3.b), !select(var_3.c.c.zz, select(vec2<bool>(var_1.c.c.x, var_3.a), vec2<bool>(false, false), vec2<bool>(var_3.a, true)), var_1.c.c.x), var_1.c.c.yx), vec2<bool>(var_1.b == !any(vec4<bool>(var_1.b, true, var_1.a, true)), true));
    return any(!(!select(select(var_1.c.c.xyx, var_3.c.c.zwy, var_3.a), select(var_3.c.c.zww, vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(var_4.x, var_4.x, var_1.a)), !var_3.c.c.xzx)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1249f)), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-arg_0.a.x))));
    let var_1 = Struct_4(!(!((1u == arg_0.c) != (global0[_wgslsmith_index_u32(arg_0.c, 9u)] >= global0[_wgslsmith_index_u32(u_input.a, 9u)]))), all(vec3<bool>(true, false, func_2(vec2<i32>(0i, global0[_wgslsmith_index_u32(10964u, 9u)]), vec4<f32>(arg_0.a.x, 472f, arg_0.a.x, arg_0.b)) != all(vec4<bool>(false, true, true, true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 123f, 2094f, arg_0.b))), _wgslsmith_f_op_f32(exp2(arg_0.b)), u_input.a), Struct_1(arg_0.a, -1035f, _wgslsmith_mod_u32(firstLeadingBit(0u), 1u & arg_0.c)), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), !all(vec2<bool>(true, true))), arg_0, Struct_1(arg_0.a, -321f, ~117978u >> (_wgslsmith_clamp_u32(63538u, global1[_wgslsmith_index_u32(18795u, 19u)], 4294967295u) % 32u))));
    var var_2 = -(~firstLeadingBit((vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10113u, 19u)], 9u)], global0[_wgslsmith_index_u32(22916u, 9u)], global0[_wgslsmith_index_u32(var_1.c.b.c, 9u)], global0[_wgslsmith_index_u32(var_1.c.d.c, 9u)]) << (vec4<u32>(var_1.c.a.c, 24125u, 44695u, 1u) % vec4<u32>(32u))) << (~vec4<u32>(4294967295u, 0u, u_input.a, 1u) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_2.x, 2147483647i, -22892i) & vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 9u)], 25488i, global0[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_0.c, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], var_2.x)), var_1.c, Struct_2(var_1.c.e, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-847f, 700f, var_1.c.a.b, var_1.c.b.b) + vec4<f32>(-463f, var_1.c.a.b, var_1.c.a.a.x, 1063f)), 162f, ~0u), select(var_1.c.c, select(var_1.c.c, var_1.c.c, var_1.b), !var_1.c.c), Struct_1(vec4<f32>(var_1.c.b.b, arg_0.a.x, -572f, var_1.c.b.a.x), _wgslsmith_f_op_f32(var_1.c.d.b - var_1.c.a.b), var_1.c.e.c ^ 1u), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.b.b, -316f, var_1.c.b.a.x, -225f) * arg_0.a), var_1.c.e.b, var_1.c.a.c)), Struct_2(Struct_1(vec4<f32>(-648f, var_1.c.d.a.x, -982f, var_1.c.a.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), ~4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.a.a.x, arg_0.b, var_1.c.e.b, var_1.c.a.a.x))), -1377f, _wgslsmith_mult_u32(var_1.c.b.c, 0u)), select(vec4<bool>(var_1.c.c.x, false, var_1.c.c.x, true), select(vec4<bool>(true, false, var_1.c.c.x, true), var_1.c.c, false), true), var_1.c.e, var_1.c.a))) * _wgslsmith_f_op_f32(abs(466f)));
    return abs(3856i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = Struct_2(arg_3.d.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_3.c.x, 664f, -493f), arg_3.a.a))) + _wgslsmith_f_op_vec4_f32(arg_3.b.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1892f, arg_3.a.a.x, -2142f) - vec4<f32>(-1000f, arg_2, arg_3.c.x, arg_2)))), 1862f, firstLeadingBit(20748u)), select(select(vec4<bool>(true, any(vec2<bool>(true, arg_1.x)), all(arg_3.d.c.yw), false), vec4<bool>(!arg_1.x, !arg_3.d.c.x, !arg_1.x, arg_1.x), all(select(vec3<bool>(true, arg_3.d.c.x, arg_3.d.c.x), vec3<bool>(true, true, arg_3.d.c.x), arg_3.d.c.wzx))), select(select(select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(false, arg_1.x, arg_3.d.c.x, arg_1.x), arg_3.d.c), arg_3.d.c, !vec4<bool>(arg_3.d.c.x, false, arg_3.d.c.x, arg_3.d.c.x)), !arg_3.d.c, !arg_3.d.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) - arg_2) <= arg_3.d.b.b), arg_3.d.b, Struct_1(arg_3.d.e.a, _wgslsmith_f_op_f32(1538f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - 2648f)), 455u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)))));
    let var_1 = Struct_3(arg_3.d.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.d.a.a.x - arg_2), -1706f, select(arg_1.x, arg_1.x, arg_3.d.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) * arg_2), -1044f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.d.d.b, _wgslsmith_f_op_f32(-arg_3.a.a.x))), ~_wgslsmith_add_u32(1u, u_input.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.a.x, -1663f, arg_2), vec3<f32>(-1000f, arg_3.b.b, -530f), arg_3.d.c.zxx)), _wgslsmith_f_op_vec3_f32(-arg_3.c))))), arg_3.d, ~firstLeadingBit(-_wgslsmith_sub_vec4_i32(arg_3.e, arg_0)));
    let var_2 = var_0.d;
    var var_3 = var_0.d;
    return !(!vec4<bool>(var_1.d.c.x, !any(vec3<bool>(var_1.d.c.x, true, var_1.d.c.x)), any(var_0.c.wyw), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, any(func_4(vec4<i32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 19u)], 9u)], min(global0[_wgslsmith_index_u32(4294967295u, 9u)], 41519i), func_1(Struct_1(vec4<f32>(194f, -714f, 1111f, -1110f), 1425f, global1[_wgslsmith_index_u32(76089u, 19u)]))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(478f))), Struct_3(Struct_1(vec4<f32>(-1524f, 296f, 1715f, -541f), 812f, 0u), Struct_1(vec4<f32>(-1448f, -116f, -891f, -1677f), 1301f, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec3<f32>(-1792f, 329f, -915f), Struct_2(Struct_1(vec4<f32>(-192f, 162f, -576f, 1000f), 1166f, 32004u), Struct_1(vec4<f32>(791f, -155f, 759f, -1159f), -574f, 1u), vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(-782f, 492f, -960f, -909f), 1239f, 13843u), Struct_1(vec4<f32>(955f, -518f, -599f, -152f), 1799f, u_input.a)), -vec4<i32>(global0[_wgslsmith_index_u32(22994u, 9u)], 62191i, global0[_wgslsmith_index_u32(0u, 9u)], -30496i)))));
    let var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), -1076f, -872f, 1f), 1f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 19u)], abs(4294967295u)), 19u)]), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1226f, 1979f, 444f, 1207f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1518f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(446f)) * -586f)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<u32>(4294967295u, u_input.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a), vec2<u32>(41857u, 28926u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1546f, -1000f, -1238f)), _wgslsmith_div_vec3_f32(vec3<f32>(446f, -1173f, 1223f), vec3<f32>(1000f, -154f, 140f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-564f, _wgslsmith_f_op_f32(sign(-803f)), _wgslsmith_f_op_f32(trunc(-1210f))))))), Struct_2(Struct_1(vec4<f32>(-1006f, _wgslsmith_div_f32(-364f, -901f), _wgslsmith_f_op_f32(f32(-1f) * -1048f), -1265f), _wgslsmith_f_op_f32(max(-1009f, _wgslsmith_f_op_f32(abs(-473f)))), 1u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, 1896f, 497f, 381f)) * vec4<f32>(131f, -789f, -907f, -2290f)), -2364f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 19u)]), 19u)]), vec4<bool>(func_4(vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], 19u)], 19u)], 9u)], global0[_wgslsmith_index_u32(28064u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 15265i), vec2<bool>(true, var_0.x), 1f, Struct_3(Struct_1(vec4<f32>(-1242f, -812f, -1037f, -2091f), -387f, 0u), Struct_1(vec4<f32>(-487f, 1161f, -2311f, -1244f), 1196f, global1[_wgslsmith_index_u32(50257u, 19u)]), vec3<f32>(1151f, -400f, -302f), Struct_2(Struct_1(vec4<f32>(603f, 960f, -1079f, 131f), -835f, 22607u), Struct_1(vec4<f32>(728f, -1000f, -2281f, -926f), 1511f, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 19u)]), vec4<bool>(true, var_0.x, false, var_0.x), Struct_1(vec4<f32>(538f, 517f, -1000f, -355f), -734f, 0u), Struct_1(vec4<f32>(2161f, -1275f, 1028f, -1045f), -909f, 4294967295u)), vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 9u)], -2147483647i, -1i, global0[_wgslsmith_index_u32(u_input.a, 9u)]))).x, var_0.x, true, !(var_0.x || true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(-458f)), _wgslsmith_f_op_f32(146f + -350f), _wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_div_f32(-230f, 1263f)), 1f, firstTrailingBit(1u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-287f, -924f, -329f, 293f), vec4<f32>(1674f, 367f, -971f, -1467f), false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -271f), _wgslsmith_div_f32(282f, 1548f))), _wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), firstLeadingBit(12551u)))), select(~vec4<i32>(global0[_wgslsmith_index_u32(82937u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], 0i, global0[_wgslsmith_index_u32(28683u, 9u)]) << ((_wgslsmith_add_vec4_u32(vec4<u32>(118593u, 73802u, u_input.a, u_input.a), vec4<u32>(1627u, 3917u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], u_input.a)) >> (firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 11177u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101772u, 19u)], 19u)])) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 13669i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 6521i, 13705i)), -global0[_wgslsmith_index_u32(u_input.a, 9u)], 0i >> (u_input.a % 32u), 1297i), false));
    global2 = 1222f;
    let var_2 = select(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(39021u, 19u)], 19u)] < ~1u, var_0.x, true);
    let var_3 = var_1.d;
    let var_4 = ~(-1i);
    var var_5 = Struct_3(var_1.d.a, var_3.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_3.d.a.zwz))), Struct_2(var_1.d.b, var_3.b, var_1.d.c, var_1.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(486f, var_3.e.b)), _wgslsmith_f_op_f32(trunc(-1000f)), var_1.a.a.x, _wgslsmith_f_op_f32(ceil(var_3.a.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_3.d.b)))), firstLeadingBit(firstTrailingBit(var_1.b.c)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_1.e, var_1.e), ~(-1i), var_4), min(var_1.e.xyx, var_1.e.zxy) >> (vec3<u32>(global1[_wgslsmith_index_u32(61165u, 19u)], var_1.a.c, var_1.b.c) % vec3<u32>(32u))), countOneBits(~global0[_wgslsmith_index_u32(0u, 9u)]), 1i, _wgslsmith_mod_i32(var_1.e.x, _wgslsmith_mult_i32(-46043i, var_4) >> (~var_3.a.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.e, ~select(-firstTrailingBit(var_5.e.ywx), -_wgslsmith_add_vec3_i32(vec3<i32>(var_4, 1i, -4514i), vec3<i32>(var_4, -10645i, var_5.e.x)), true));
}

