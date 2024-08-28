struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 49953u, 7374u, 14295u), vec3<i32>(0i, -1i, -1i), false, 21290u);

var<private> global2: array<u32, 12>;

var<private> global3: vec4<i32> = vec4<i32>(-7653i, -1i, 2147483647i, -7096i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(19727u, 17u)])))) - vec2<f32>(_wgslsmith_f_op_f32(floor(-433f)), global0[_wgslsmith_index_u32(~global1.d, 17u)])) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f * global0[_wgslsmith_index_u32(4294967295u, 17u)])) + _wgslsmith_f_op_f32(-2095f + _wgslsmith_f_op_f32(-622f * -112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f + arg_1)))));
    let var_1 = -1i;
    global2 = array<u32, 12>();
    var var_2 = arg_2.b;
    let var_3 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global1.a.x, u_input.c.x)), arg_2.a.xy), u_input.c.x));
    return 1i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(countOneBits(max(vec4<u32>(~49411u, arg_0.a.x, firstTrailingBit(arg_0.d), 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0.d, global1.d, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(35062u, 12u)], 1u, u_input.c.x), global1.a)))), vec3<i32>(func_3(vec4<i32>(global3.x, u_input.a, global3.x, 0i) >> (vec4<u32>(49143u, 68272u, 0u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(-852f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.x, 12u)], 17u)])), Struct_1(global1.a, vec3<i32>(-40215i, u_input.b.x, 13676i), true, 4294967295u)), 13314i >> (firstTrailingBit(global1.d) % 32u), 1i) | (-abs(global1.b) >> (_wgslsmith_mod_vec3_u32(abs(global1.a.zyy), global1.a.wwz) % vec3<u32>(32u))), true, _wgslsmith_mult_u32(~u_input.c.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(~arg_0.d, 12u)], 4294967295u), 12u)]));
    let var_1 = 1u;
    var var_2 = -702f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(141f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], 17u)])))));
    global1 = arg_0;
    global3 = vec4<i32>(13583i, arg_0.b.x, -6981i, countOneBits(global3.x));
    return Struct_1(var_0.a, global3.zyx, any(!(!(!vec4<bool>(false, var_0.c, var_0.c, false)))), _wgslsmith_mult_u32(48331u, 1u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(vec4<u32>(u_input.d.x, ~0u, min(select(96198u, arg_2.d, true), 1u << (global1.d % 32u)), _wgslsmith_mod_u32(func_2(Struct_1(arg_2.a, vec3<i32>(arg_1.x, u_input.a, u_input.b.x), arg_2.c, 0u)).d, 0u)), vec3<i32>(abs(_wgslsmith_div_i32(~(-37228i), 1i)), -23611i, min(_wgslsmith_mod_i32(func_3(vec4<i32>(arg_2.b.x, 0i, -2147483647i, global1.b.x), global0[_wgslsmith_index_u32(global1.d, 17u)], arg_2), ~arg_2.b.x), arg_1.x)), !(all(!arg_0.zx) || all(!vec3<bool>(global1.c, false, true))), 4294967295u);
    global1 = func_2(Struct_1(vec4<u32>(reverseBits(~0u), global2[_wgslsmith_index_u32(~u_input.d.x, 12u)], _wgslsmith_mod_u32(70153u, var_0.d), 24157u), _wgslsmith_sub_vec3_i32(global3.wwx, arg_2.b), func_2(Struct_1(arg_2.a, global1.b, any(arg_0), abs(u_input.c.x))).c, global2[_wgslsmith_index_u32(~(~abs(var_0.a.x)), 12u)]));
    var var_1 = arg_2;
    global3 = _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(-1i, var_0.b.x, arg_1.x ^ var_0.b.x), -1i, _wgslsmith_clamp_i32(countOneBits(-1i), ~global3.x, ~(-27196i)), _wgslsmith_clamp_i32(60268i, -66514i, arg_2.b.x)), min(vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(var_1.b.x, var_0.b.x), i32(-1i) * -9592i, abs(2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.b.x, global1.b.x, u_input.a), vec4<i32>(arg_2.b.x, 0i, 0i, var_1.b.x)), i32(-1i) * -1i, -2147483647i), ~countOneBits(vec4<i32>(var_0.b.x, global1.b.x, var_1.b.x, global3.x)))));
    var var_2 = global3.x;
    return 36688u;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(abs(reverseBits(u_input.a)), min(global1.b.x & u_input.b.x, global3.x & u_input.b.x), abs(14857i) >> (~arg_1.x % 32u)), global1.b), func_2(Struct_1(arg_0, -(vec3<i32>(global3.x, 0i, global1.b.x) & vec3<i32>(u_input.a, -38150i, global1.b.x)), arg_2.x, ~u_input.d.x)).c, _wgslsmith_dot_vec4_u32(countOneBits(~func_2(Struct_1(vec4<u32>(0u, 24550u, global1.d, global1.d), vec3<i32>(37561i, global1.b.x, 19842i), false, 1u)).a), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1, ~arg_0), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global1.a.zww, vec3<u32>(11909u, arg_0.x, 4294967295u)), max(21094u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), arg_0.x), ~(~31148u), u_input.d.x)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(global1.d), _wgslsmith_dot_vec4_u32(arg_1, arg_1), ~34849u, 1u), abs(arg_1)), ~(~arg_0));
    let var_2 = var_0;
    global2 = array<u32, 12>();
    var var_3 = !vec3<bool>(true, false, var_0.c);
    return Struct_1(~vec4<u32>(24974u ^ _wgslsmith_mod_u32(0u, var_2.a.x), ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_0.d), 12u)], arg_1.x, func_2(func_2(Struct_1(vec4<u32>(0u, 81971u, global2[_wgslsmith_index_u32(arg_0.x, 12u)], global1.a.x), var_2.b, false, 4294967295u))).a.x), global3.yzy, !any(vec3<bool>(all(vec3<bool>(false, var_0.c, true)), global0[_wgslsmith_index_u32(4294967295u, 17u)] > global0[_wgslsmith_index_u32(arg_1.x, 17u)], false)), select(5471u, _wgslsmith_mult_u32(~arg_1.x, var_2.a.x), false & (_wgslsmith_add_u32(arg_0.x, 1u) > firstTrailingBit(var_2.a.x))));
}

fn func_1() -> i32 {
    let var_0 = func_5(vec4<u32>(0u, ~func_4(select(vec4<bool>(global1.c, false, global1.c, global1.c), vec4<bool>(true, global1.c, global1.c, false), vec4<bool>(false, global1.c, true, true)), abs(vec2<i32>(12844i, -46249i)), func_2(Struct_1(vec4<u32>(global1.d, 0u, 4294967295u, global1.d), vec3<i32>(-56678i, -78729i, 27913i), false, global2[_wgslsmith_index_u32(u_input.d.x, 12u)]))), ~reverseBits(4294967295u), min(~4294967295u, u_input.d.x)), global1.a, select(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)] << (global1.a.x % 32u), 17u)] < _wgslsmith_f_op_f32(floor(276f)), true, true, false), vec4<bool>(global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(17752u, 13303u, 0u), global1.a.wxw) != (global1.a.x >> (1u % 32u)), true, false), !select(vec4<bool>(global1.c, global1.c, global1.c, false), select(vec4<bool>(global1.c, true, global1.c, false), vec4<bool>(true, false, false, true), global1.c), select(vec4<bool>(global1.c, true, global1.c, global1.c), vec4<bool>(global1.c, false, global1.c, false), false))));
    global1 = func_5(var_0.a, ~var_0.a, !(!(!vec4<bool>(false, true, var_0.c, var_0.c))));
    let var_1 = _wgslsmith_sub_vec4_u32(global1.a << (vec4<u32>(global1.a.x, var_0.d, _wgslsmith_mult_u32(u_input.d.x, ~0u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, var_0.a.x, 53054u, 1u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(24988u, 12u)], 1u, var_0.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_0.d), 12u)])) % vec4<u32>(32u)), min(~var_0.a, _wgslsmith_div_vec4_u32(var_0.a & (global1.a | vec4<u32>(4294967295u, var_0.d, 4294967295u, 41496u)), firstTrailingBit(var_0.a))));
    let var_2 = Struct_1(select(countOneBits(~vec4<u32>(global2[_wgslsmith_index_u32(26347u, 12u)], 45103u, 54640u, var_0.d) & var_0.a), ~var_0.a | var_0.a, vec4<bool>(select(false, false, select(var_0.c, false, true)), true, func_2(var_0).c | !var_0.c, false)), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(28580i, 1i), var_0.b.x), _wgslsmith_mult_i32(~34699i, global3.x >> (u_input.c.x % 32u))), var_0.b.x), func_2(var_0).c, ~(~_wgslsmith_sub_u32(var_1.x, 0u) | func_4(vec4<bool>(global1.c, var_0.c, false, false), ~var_0.b.xy, var_0)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f - -1700f) + 641f), _wgslsmith_div_f32(503f, _wgslsmith_f_op_f32(f32(-1f) * -504f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 17u)], global0[_wgslsmith_index_u32(var_1.x, 17u)], 799f) * vec3<f32>(global0[_wgslsmith_index_u32(10512u, 17u)], 208f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 17u)])) + vec3<f32>(global0[_wgslsmith_index_u32(4848u, 17u)], -253f, 1182f))), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)] != global0[_wgslsmith_index_u32(10883u, 17u)], global1.c), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(829f, 1000f, global0[_wgslsmith_index_u32(53680u, 17u)]) * vec3<f32>(global0[_wgslsmith_index_u32(14982u, 17u)], -260f, 1000f)) - vec3<f32>(-1581f, 1161f, global0[_wgslsmith_index_u32(var_0.a.x, 17u)]))))), false));
    return -33463i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(select(-(~0i), -func_1() << (~global1.d % 32u), all(!vec3<bool>(global1.c, global1.c, true))), 1i, func_2(Struct_1(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global1.a.x, 0u, 1u), vec3<i32>(abs(1i), -global1.b.x, 6426i), global1.c, reverseBits(0u))).b.x);
    var var_1 = Struct_1(vec4<u32>(1u, ~(~func_2(Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 1u), global1.b, false, 14558u)).d), global2[_wgslsmith_index_u32(global1.d, 12u)], select(~84907u, 4294967295u, !global1.c)), global3.yxx, true, ~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) * 1325f), global1.a.zx, _wgslsmith_f_op_f32(862f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], 1551f)), global0[_wgslsmith_index_u32(func_2(Struct_1(vec4<u32>(30447u, u_input.d.x, 61899u, 4294967295u), global3.zww, global1.c, 49857u)).d, 17u)], true)) * global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29993u, 12u)], 17u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1222f, global0[_wgslsmith_index_u32(global1.a.x, 17u)], -670f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 17u)], -664f, -991f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(252f, 589f, 426f)))))));
}

