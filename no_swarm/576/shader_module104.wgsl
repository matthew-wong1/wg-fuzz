struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 8> = array<f32, 8>(136f, -1050f, -327f, 686f, 1000f, -1032f, -817f, -2533f);

var<private> global2: Struct_3 = Struct_3(794f, false, Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1000f, 1831f, -1057f, 334f), -1572f, 1i), -33537i, vec2<i32>(26037i, 67809i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(~_wgslsmith_add_vec4_u32(vec4<u32>(~9161u, _wgslsmith_div_u32(23456u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 100734u, 26993u), vec3<u32>(0u, 4294967295u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 886u, 4294967295u), vec4<u32>(4294967295u, 110630u, 61959u, 32183u))), select(~vec4<u32>(25513u, 30305u, 72272u, 6367u), firstTrailingBit(vec4<u32>(92293u, 8631u, 1u, 18434u)), all(vec4<bool>(global2.b, false, true, true)))), -(vec3<i32>(-1i) * -(~u_input.a.xzy)), Struct_1(vec3<bool>(any(select(global2.c.a.yx, vec2<bool>(global2.b, false), global2.c.a.zy)), arg_0.a.x, true), global2.c.b, _wgslsmith_f_op_f32(floor(global2.a)), -(16580i << (0u % 32u))), select(vec4<i32>(arg_0.d, max(u_input.a.x, arg_0.d), max(global2.c.d, 0i), _wgslsmith_add_i32(arg_0.d, -19378i)) << (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 11771u, 18184u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<i32>(-38544i, ~1i, -arg_0.d, arg_0.d), vec4<bool>(global2.e.x < (arg_0.d >> (2625u % 32u)), true, global2.c.a.x, false)), vec4<i32>(global2.d, 13242i, _wgslsmith_add_i32(-22280i, ~global2.e.x), arg_0.d));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(-max(~var_0.b.x, select(u_input.a.x, global2.d, global2.b)), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global2.c.d, arg_0.d, 29555i), vec4<i32>(arg_0.d, 1i, var_0.d.x, 61960i), vec4<i32>(3853i, arg_0.d, 0i, 62178i))), reverseBits(vec4<i32>(u_input.a.x, 32198i, 2147483647i, 34776i)))), -17067i);
    global1 = array<f32, 8>();
    var var_2 = Struct_2(vec4<u32>(reverseBits(1u), 1u, 7124u, var_0.a.x), u_input.a.xxz, global2.c, min(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.d, -5258i, -1i), vec3<i32>(arg_0.d, var_0.c.d, arg_0.d)), _wgslsmith_mod_i32(-1i, var_1.x), u_input.a.x, _wgslsmith_dot_vec3_i32(var_0.e.zyy, var_0.b))), vec4<i32>(firstTrailingBit(-58914i) << (_wgslsmith_add_u32(27628u, 60733u) % 32u), _wgslsmith_mod_i32(arg_0.d, _wgslsmith_sub_i32(var_1.x, u_input.a.x)), ~45683i, _wgslsmith_mod_i32(arg_0.d, -2147483647i))), vec4<i32>(-1i) * -u_input.a);
    let var_3 = _wgslsmith_dot_vec3_u32(var_0.a.yzz, select(var_0.a.zyw, ~(~(~var_2.a.xyy)), select(vec3<bool>(!var_2.c.a.x, !var_2.c.a.x, 26705i == var_0.c.d), arg_0.a, select(select(vec3<bool>(false, false, false), vec3<bool>(false, global2.b, var_2.c.a.x), vec3<bool>(false, arg_0.a.x, var_0.c.a.x)), !var_0.c.a, !arg_0.a.x))));
    return 48457u;
}

fn func_2() -> Struct_3 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(4294967295u), func_3(global2.c)), 8u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19565u, 8u)]) - _wgslsmith_f_op_f32(global2.a * global0.x))))), global2.c.c);
    global0 = _wgslsmith_f_op_vec2_f32(-global2.c.b.yx);
    global1 = array<f32, 8>();
    global0 = vec2<f32>(-233f, 524f);
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) + -618f)))), any(select(!(!vec4<bool>(global2.c.a.x, global2.b, global2.b, false)), vec4<bool>(true, global2.c.a.x && true, !global2.c.a.x, global2.c.a.x), global2.c.a.x)), global2.c, reverseBits(_wgslsmith_add_i32(2147483647i, ~(global2.e.x | global2.d))), u_input.a.yz);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 584f)))), any(!(!(!vec4<bool>(true, true, false, global2.c.a.x)))), global2.c, global2.e.x, u_input.a.zw);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> vec4<i32> {
    global2 = func_2();
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2040f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 8u)] + global1[_wgslsmith_index_u32(~0u, 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a)), Struct_1(func_2().c.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(790f, global0.x, global0.x, global1[_wgslsmith_index_u32(44328u, 8u)])), vec4<f32>(489f, _wgslsmith_f_op_f32(global0.x * global2.c.c), _wgslsmith_f_op_f32(max(global2.a, global0.x)), -1106f))), 1478f, -_wgslsmith_sub_i32(arg_2 | global2.c.d, arg_2)), countOneBits(0i), vec2<i32>(~arg_2, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, -1i), global2.e.x))));
    global2 = func_2();
    var var_0 = true;
    let var_1 = global2.c;
    return vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -14409i, arg_2) | vec3<i32>(-43325i, u_input.a.x, 2147483647i), -vec3<i32>(u_input.a.x, 2480i, 1i)), u_input.a.wxz), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.d, var_1.d), -4642i), ~global2.d | 14731i, 0i) & -reverseBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), global2.c.c);
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_add_u32(1u, 13034u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 23526u, 4294967295u), vec4<u32>(0u, 45293u, 0u, 96452u))), vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(53180u, 51111u, 1u, 0u), vec4<u32>(0u, 55141u, 1u, 3395u)), vec4<u32>(4294967295u, 61461u, 36934u, 79366u)), firstTrailingBit(1u), 1u, ~(~169471u)) % vec4<u32>(32u)), vec3<i32>(0i, u_input.a.x, u_input.a.x), Struct_1(select(vec3<bool>(true, true, true), global2.c.a, !(!global2.c.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(9868u, 8u)], global2.c.c, 174f, 1434f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(108927u, 8u)], 1168f, global1[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(-1073f, -218f, 384f, 1237f), vec4<bool>(true, global2.b, false, global2.c.a.x))))), _wgslsmith_f_op_f32(-global0.x), -10985i), u_input.a | _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(9410i, u_input.a.x), ~u_input.a.x, -11075i, 1i), func_1(_wgslsmith_f_op_f32(select(global0.x, global0.x, global2.b)), ~u_input.a.wz, 2147483647i)), _wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, reverseBits(u_input.a.x), ~global2.d, ~(-1i)), u_input.a)));
    var_0 = Struct_2(var_0.a, min(var_0.b, vec3<i32>(firstLeadingBit(~global2.d), _wgslsmith_clamp_i32(u_input.a.x ^ global2.e.x, -2147483647i, -3744i), ~(~u_input.a.x))), func_2().c, var_0.d, var_0.e);
    global2 = Struct_3(_wgslsmith_f_op_f32(1009f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(global2.a))), 1f))), any(global2.c.a), Struct_1(vec3<bool>(true, var_0.c.a.x, var_0.c.a.x), func_2().c.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~var_0.a.yyy), abs(~vec3<u32>(4294967295u, var_0.a.x, 116181u))), 8u)], -1i >> (var_0.a.x % 32u)), max(-u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.e.x, 0i), -vec3<i32>(u_input.a.x, -23658i, global2.c.d))), _wgslsmith_clamp_vec2_i32(u_input.a.zz, reverseBits(-vec2<i32>(u_input.a.x, u_input.a.x)), global2.e));
    let var_1 = var_0.c.b.x;
    let var_2 = Struct_2(abs(vec4<u32>(1u, abs(1u), countOneBits(57829u) >> ((1u & var_0.a.x) % 32u), 79691u)), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c) + _wgslsmith_f_op_f32(f32(-1f) * -1566f)))), _wgslsmith_sub_vec2_i32(select(global2.e >> (vec2<u32>(31912u, var_0.a.x) % vec2<u32>(32u)), var_0.b.xx, true), -countOneBits(vec2<i32>(global2.e.x, 0i))), func_1(-418f, vec2<i32>(24731i, -39179i << (var_0.a.x % 32u)), -1i).x).wxz, Struct_1(vec3<bool>(global2.c.a.x, false, false), global2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f))), _wgslsmith_dot_vec3_i32(var_0.e.wxx, u_input.a.xzz)), (_wgslsmith_clamp_vec4_i32(var_0.e, -vec4<i32>(2147483647i, u_input.a.x, global2.c.d, -14991i), var_0.d) & reverseBits(var_0.d & vec4<i32>(global2.c.d, var_0.d.x, u_input.a.x, u_input.a.x))) << (var_0.a % vec4<u32>(32u)), u_input.a & (select(var_0.e ^ u_input.a, var_0.e, select(vec4<bool>(false, false, global2.c.a.x, true), vec4<bool>(true, var_0.c.a.x, true, global2.b), vec4<bool>(var_0.c.a.x, var_0.c.a.x, global2.c.a.x, true))) << (max(var_0.a, firstTrailingBit(var_0.a)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.x, global2.e, -vec4<i32>(~(-var_0.c.d), ~select(1i, var_2.c.d, true), var_0.d.x, _wgslsmith_mult_i32(func_2().d, ~var_2.e.x)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.d, u_input.a.x), u_input.a.wz) >> (max(84690u, 2934u) % 32u), ~0i << (_wgslsmith_sub_u32(var_2.a.x, var_2.a.x) % 32u)), i32(-1i) * -34795i, -36276i), _wgslsmith_mult_i32(_wgslsmith_add_i32(~firstLeadingBit(u_input.a.x), ~(u_input.a.x ^ u_input.a.x)), -(~(~62101i))));
}

