struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(104f, 720f, -1083f));

var<private> global2: vec3<f32> = vec3<f32>(2392f, -1351f, 311f);

var<private> global3: array<f32, 22> = array<f32, 22>(-2614f, -1000f, 1219f, 542f, -887f, -1876f, 319f, 357f, -428f, 114f, -659f, -1543f, -186f, 1000f, 1476f, 560f, -435f, -435f, 442f, -1370f, -2087f, -1756f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.a;
    global3 = array<f32, 22>();
    let var_1 = Struct_1(countOneBits(-106547i), false, ~vec2<u32>(arg_1.a.c.x | ~10571u, abs(countOneBits(9986u))), !(!select(!vec2<bool>(false, arg_1.a.d.x), !vec2<bool>(arg_1.a.d.x, false), arg_0.xz)));
    global3 = array<f32, 22>();
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, arg_1.c.x, true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> vec4<i32> {
    return vec4<i32>(arg_0.b.x & (((u_input.a.x & global0[_wgslsmith_index_u32(20890u, 14u)]) | -arg_0.b.x) & _wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.c.x, 37503u), 14u)], _wgslsmith_mult_i32(arg_0.a.a, arg_0.b.x))), 1i, _wgslsmith_mult_i32(-41804i, -14438i), _wgslsmith_mult_i32(24700i, global0[_wgslsmith_index_u32(arg_0.a.c.x, 14u)]));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = -(~u_input.a | max(u_input.a, vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(50726i, -16954i, global0[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.a), min(u_input.a.x, 16684i))));
    var var_1 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(reverseBits(arg_1), 1u)]);
    var var_3 = global0[_wgslsmith_index_u32(~arg_2.x, 14u)];
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(0u, 1u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1356f, -2372f))), global1[_wgslsmith_index_u32(~63426u, 1u)]) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-979f, 1696f, _wgslsmith_div_f32(1545f, global2.x))))));
    return Struct_2(Struct_1(1i << (_wgslsmith_mult_u32(arg_2.x, abs(arg_2.x)) % 32u), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~vec2<u32>(reverseBits(0u), arg_2.x), vec2<bool>(true, true)), select(func_4(Struct_2(Struct_1(u_input.a.x, true, vec2<u32>(21752u, arg_1), vec2<bool>(false, false)), vec4<i32>(u_input.a.x, 1i, -2147483647i, global0[_wgslsmith_index_u32(49817u, 14u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(166f, arg_0, var_2.x, -128f), vec4<f32>(-384f, arg_0, global2.x, -1000f), false))), vec4<f32>(_wgslsmith_f_op_f32(select(435f, 207f, false)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(49588u, 22u)] * global3[_wgslsmith_index_u32(arg_1, 22u)]), -104f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, false), Struct_2(Struct_1(u_input.a.x, false, vec2<u32>(2617u, arg_1), vec2<bool>(true, false)), vec4<i32>(global0[_wgslsmith_index_u32(0u, 14u)], 1i, u_input.a.x, -1852i), vec4<f32>(-788f, 101f, -105f, 169f))))), arg_2.x), abs(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(68335i, var_0.x), -50700i, var_0.x)), !(arg_0 > -1697f)), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -358f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(floor(-693f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(1014f, arg_0)))), -1086f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -492f)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = 4294967295u;
    let var_2 = select(~(~_wgslsmith_add_vec3_u32(firstTrailingBit(arg_0.wzz), select(vec3<u32>(arg_0.x, 6192u, arg_0.x), arg_0.xwz, vec3<bool>(false, true, true)))), vec3<u32>(4294967295u, ~firstTrailingBit(4294967295u << (arg_0.x % 32u)), _wgslsmith_dot_vec3_u32(arg_0.zxz, abs(~vec3<u32>(13330u, var_1, 0u)))), !(!vec3<bool>(true, all(vec3<bool>(false, true, false)), u_input.a.x <= global0[_wgslsmith_index_u32(var_1, 14u)])));
    var var_3 = !any(vec2<bool>(true, true));
    var var_4 = func_2(600f, arg_0.x & firstTrailingBit(_wgslsmith_div_u32(var_1, arg_0.x >> (93511u % 32u))), arg_0, abs(~6744i));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 1>();
    let var_0 = func_1(abs(countOneBits(select(~vec4<u32>(59598u, 12239u, 10754u, 133541u), _wgslsmith_clamp_vec4_u32(vec4<u32>(16496u, 4294967295u, 4294967295u, 1u), vec4<u32>(3097u, 42827u, 4294967295u, 4294967295u), vec4<u32>(33852u, 39942u, 25249u, 1u)), vec4<bool>(false, false, false, false)))));
    var var_1 = -abs(max(-88286i << (var_0.c.x % 32u), global0[_wgslsmith_index_u32(0u, 14u)] >> (4294967295u % 32u))) << (var_0.c.x % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-727f, 114f, -1437f, -475f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 22u)], 277f, global2.x, 509f))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(344f, -177f)), _wgslsmith_f_op_f32(abs(2318f)), 693f), false)))));
    global1 = array<vec3<f32>, 1>();
    var var_3 = Struct_1(min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-21163i, global0[_wgslsmith_index_u32(var_0.c.x, 14u)], -1i, 1i), ~vec4<i32>(var_0.a, 15470i, -41647i, var_0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -24458i, u_input.a.x, 0i) | vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global0[_wgslsmith_index_u32(60203u, 14u)]), select(vec4<i32>(0i, var_0.a, 1i, global0[_wgslsmith_index_u32(115631u, 14u)]), vec4<i32>(u_input.a.x, -1i, 17454i, -7412i), false))), func_4(func_2(943f, ~4294967295u, ~vec4<u32>(1u, var_0.c.x, 83763u, 0u), _wgslsmith_mult_i32(var_0.a, var_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-520f, -1541f, 386f, global3[_wgslsmith_index_u32(var_0.c.x, 22u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], 580f, global2.x), vec4<f32>(var_2.x, -1234f, global3[_wgslsmith_index_u32(var_0.c.x, 22u)], var_2.x), vec4<bool>(var_0.d.x, true, true, var_0.d.x)))), var_0.c.x).x), false, ~vec2<u32>(65873u, func_1(vec4<u32>(var_0.c.x, 22884u, 1u, 1u)).c.x) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(5983u, 0u), var_0.c) % vec2<u32>(32u)), vec2<bool>(var_0.d.x, !any(!var_0.d)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2116f))));
    let x = u_input.a;
    s_output = StorageBuffer(-21839i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.wwx - global1[_wgslsmith_index_u32(var_3.c.x, 1u)]) + vec3<f32>(global2.x, -558f, var_4)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2.xzw)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4, 742f, var_4), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(955f, 464f, -1000f), vec3<f32>(global3[_wgslsmith_index_u32(var_3.c.x, 22u)], -1090f, var_2.x), var_0.b)), select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(true, false, var_0.d.x), vec3<bool>(var_3.d.x, var_0.d.x, false))))))), _wgslsmith_clamp_u32(15894u, countOneBits(1u), min(var_0.c.x, ~6165u ^ var_3.c.x)), ~u_input.a);
}

