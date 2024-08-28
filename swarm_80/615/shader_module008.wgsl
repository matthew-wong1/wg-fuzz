struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), -34451i, 2147483647i, 2147483647i, 2147483647i, 2147483647i, 11483i, -1i);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec3<i32>, 26>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(-arg_0)), arg_0, -477f)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 6u)];
    global1 = array<Struct_1, 6>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) + -924f), _wgslsmith_f_op_f32(exp2(var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_div_f32(-1404f, -758f)), arg_0))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c, -193f, -2536f, -1232f)))), _wgslsmith_f_op_vec4_f32(-var_1.a)), var_1.a.zxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-915f)) - -1328f)))), var_1.d, _wgslsmith_add_vec2_i32(-firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(4645i, 0i), var_1.e)), var_1.e));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~firstTrailingBit(u_input.c.x), u_input.c.x, firstLeadingBit(reverseBits(u_input.c.x))), ~vec4<u32>(0u, abs(u_input.c.x), ~u_input.c.x, u_input.c.x)), u_input.c.x, firstTrailingBit(u_input.c.x), ~40660u);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = ~func_3(arg_3.x);
    var var_2 = ~countOneBits(~u_input.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, arg_3.x, 189f, arg_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 1294f, arg_1.b.x, arg_3.x)), !vec4<bool>(false, true, var_0, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_3.x, arg_0, arg_1.b.x)) - arg_1.a))), _wgslsmith_f_op_vec3_f32(trunc(arg_2)), 261f, !(!arg_1.d), ~min(arg_1.e, -countOneBits(arg_1.e)));
    var var_4 = -vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28097i, var_3.e.x), var_3.e), ~u_input.a, arg_1.e.x) ^ _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, u_input.c.x | var_1.x) << (~28095u % 32u), 26u)], global2[_wgslsmith_index_u32(28166u, 26u)], abs(global2[_wgslsmith_index_u32(64201u, 26u)]));
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~func_3(var_3.c).x, u_input.c.x), 6u)];
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 8>();
    var var_0 = vec4<i32>(reverseBits(-2147483647i), ~arg_2.e.x, 1i, 4898i);
    var var_1 = 0u;
    let var_2 = !all(!vec3<bool>(true, arg_2.d.x, all(vec2<bool>(arg_3.d.x, true))));
    var_1 = 38869u;
    return func_2(arg_2.c, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), vec3<f32>(1015f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, arg_3.c)), arg_2.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-697f * arg_3.c)))), select(!vec3<bool>(arg_3.d.x, arg_2.d.x, var_2), vec3<bool>(var_2, var_2 & true, var_2), select(!arg_2.d.x, false, true)), arg_1.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2102f), arg_2.c) - vec3<f32>(-1269f, _wgslsmith_f_op_f32(arg_3.a.x - 564f), _wgslsmith_f_op_f32(select(886f, -1257f, false)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1334f, -130f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, arg_2.b.x, arg_2.b.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, arg_2.b.x, -791f)))), arg_3.a.wzz);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_f32(209f - -402f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1024f, -1488f, 1445f, arg_2), vec4<f32>(-583f, arg_2, 287f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_2, arg_2, 263f))) - arg_1.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1138f, -1000f), _wgslsmith_f_op_f32(step(arg_2, -999f)), func_1(u_input.c.x, vec4<i32>(global0[_wgslsmith_index_u32(137299u, 8u)], 2147483647i, arg_1.e.x, global0[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(arg_0.x, 6u)]).c), _wgslsmith_f_op_vec3_f32(round(func_1(arg_3, vec4<i32>(arg_1.e.x, 28042i, arg_1.e.x, arg_1.e.x), arg_1, arg_1).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.x, -2358f)) - _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(f32(-1f) * -233f))), !arg_1.d, arg_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1124f, _wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(sign(arg_2))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(253f, 112f, arg_1.b.x), arg_1.a.wzz)))) * vec3<f32>(arg_2, 982f, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a.wyx))))).c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(ceil(1094f)));
    global0 = array<i32, 8>();
    return all(!vec4<bool>(arg_1.d.x, false, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(false, true, true, func_4(~vec4<u32>(41979u, u_input.c.x, u_input.c.x, 0u), func_1(u_input.c.x, vec4<i32>(global0[_wgslsmith_index_u32(1915u, 8u)], 4857i, 34744i, -37619i), Struct_1(vec4<f32>(-652f, 793f, -1000f, -902f), vec3<f32>(1000f, -1317f, -554f), -258f, vec3<bool>(false, true, false), vec2<i32>(-10869i, 1i)), Struct_1(vec4<f32>(-1000f, 1000f, -575f, -1479f), vec3<f32>(1360f, -1903f, -542f), -1438f, vec3<bool>(true, false, true), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], -1123i))), _wgslsmith_f_op_f32(f32(-1f) * -694f), 1u)), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(1u, 8u)] != _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<i32>(u_input.a, 0i))), select(vec4<bool>(any(vec2<bool>(false, true)), true, any(vec4<bool>(true, true, false, true)), 54983u >= u_input.c.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), true), any(vec4<bool>(true, true, true, true))), any(func_1(~abs(u_input.c.x), ~vec4<i32>(-8537i, -15449i, u_input.b, 5951i) | vec4<i32>(-1i, -42529i, u_input.b, 1i), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1542f, -317f, 103f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, -194f, 828f) * vec3<f32>(-885f, 446f, 175f)), _wgslsmith_f_op_f32(1124f - -318f), vec3<bool>(true, false, true), vec2<i32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)])), func_2(786f, func_2(-273f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], vec3<f32>(434f, 984f, -272f), vec3<f32>(685f, 412f, -1011f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-448f, -708f, -712f), vec3<f32>(-1000f, 165f, -183f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2529f, 867f, -2400f)))).d.yy));
    var var_1 = ~reverseBits(max(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], ~global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, 1i), min(vec2<i32>(-79671i, -1i), vec2<i32>(2147483647i, u_input.a)))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.c.x), 1u), 6u)];
    var var_3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 3602u, u_input.c.x, 1u)) ^ (vec4<u32>(u_input.c.x, func_3(212f).x, ~4294967295u, ~1u) | max(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 46357u), vec4<u32>(u_input.c.x, 31126u, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), ~1u, 1u) >> (~reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 16652u, 70660u)) % vec4<u32>(32u)), abs(~(vec4<u32>(u_input.c.x, 26875u, u_input.c.x, 83795u) ^ vec4<u32>(11703u, 1u, u_input.c.x, u_input.c.x))), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 45802u, 0u) & vec3<u32>(u_input.c.x, 4294967295u, 44608u), ~vec3<u32>(4294967295u, u_input.c.x, 4294967295u)), 0u, ~(~u_input.c.x))));
    var var_4 = ~abs(vec3<i32>(-25594i, global0[_wgslsmith_index_u32(28316u, 8u)], -2147483647i));
    let var_5 = false;
    var_4 = max(vec3<i32>(-(~2147483647i), _wgslsmith_add_i32(u_input.a, var_2.e.x) >> (38219u % 32u), _wgslsmith_sub_i32(~9936i, firstTrailingBit(2147483647i) >> (u_input.c.x % 32u))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(122714u, ~u_input.c.x), _wgslsmith_mult_u32(min(u_input.c.x, 1u), 58638u) >> (41750u % 32u)), 26u)]);
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, -(global0[_wgslsmith_index_u32(u_input.c.x & u_input.c.x, 8u)] & (u_input.a | ~0i)));
}

