struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec4<i32>(2147483647i, -29199i, -5491i, -60239i), Struct_1(0u, -431f)));

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 4>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<u32> {
    global2 = array<u32, 4>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.b), -345f, any(vec3<bool>(global3.x, true, true)))))), global0.a.b.b, global0.a.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f - global0.a.b.b))));
    let var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(_wgslsmith_add_vec4_i32(abs(global0.a.a), vec4<i32>(global1.x, -1i, 1i, global1.x)))), arg_1.a | arg_1.a);
    global2 = array<u32, 4>();
    global2 = array<u32, 4>();
    return abs(firstLeadingBit(~select(u_input.a, u_input.a, global3.x) << (_wgslsmith_clamp_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), u_input.a, u_input.a) % vec4<u32>(32u))));
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = -1i;
    global1 = global0.a.a.xx;
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), func_3(Struct_4(Struct_3(vec4<i32>(global1.x, global0.a.a.x, 2147483647i, -3909i), global0.a.b)), global0.a, vec2<f32>(-335f, global0.a.b.b)))), u_input.a));
    var_1 = global0.a.a.x;
    return Struct_2(reverseBits(_wgslsmith_clamp_i32(0i, firstTrailingBit(6522i), global0.a.a.x)) | -1i, global0.a.b, vec3<f32>(_wgslsmith_f_op_f32(-global0.a.b.b), 1058f, _wgslsmith_div_f32(global0.a.b.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-238f)))))), global0.a.b, vec3<bool>(all(!(!vec2<bool>(var_0, false))), var_0, var_0));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b * global0.a.b.b) + global0.a.b.b)), 220f, _wgslsmith_f_op_f32(trunc(arg_0.c.x)))));
    global3 = select(vec4<bool>(global3.x, _wgslsmith_f_op_f32(ceil(-339f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(767f + 352f), 892f)), !func_2().e.x, global3.x), !(!vec4<bool>(arg_0.e.x, true, global3.x, global3.x)), global0.a.b.a == 20227u);
    var var_1 = global0.a.b.a;
    let var_2 = global0.a;
    var_1 = min(~_wgslsmith_sub_u32(~func_3(Struct_4(Struct_3(global0.a.a, var_2.b)), Struct_3(vec4<i32>(-6073i, u_input.b, 0i, -23077i), var_2.b), vec2<f32>(var_0.x, 121f)).x, ~(~165u)), ~(~(~_wgslsmith_mod_u32(25940u, 50843u))));
    return var_2.b.b;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global2 = array<u32, 4>();
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = ~vec2<u32>(~arg_0.d.a, _wgslsmith_clamp_u32(~u_input.a.x, ~55413u, global0.a.b.a) >> (global2[_wgslsmith_index_u32(u_input.a.x, 4u)] % 32u));
    let var_2 = Struct_5(1u, func_2(), Struct_2(var_0.a, func_2().b, arg_0.c, global0.a.b, select(vec3<bool>(global3.x && true, !var_0.e.x, true), vec3<bool>(!global3.x, any(vec4<bool>(false, false, arg_0.e.x, true)), false), global3.x)), !(!(~global0.a.a.x <= select(var_0.a, global0.a.a.x, var_0.e.x))));
    return Struct_2(_wgslsmith_mod_i32(-(-31644i >> (0u % 32u)), u_input.b) | (i32(-1i) * -(~arg_0.a)), Struct_1(select(_wgslsmith_mult_u32(global0.a.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, arg_0.d.a, 0u), vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 4u)], u_input.a.x, var_1.x, var_0.b.a))), ~(~31046u), all(select(vec2<bool>(arg_0.e.x, arg_0.e.x), vec2<bool>(false, arg_0.e.x), true))), -409f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.b, arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) + 734f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.b.b, arg_0.d.b, 516f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(847f, var_0.b.b, global0.a.b.b), var_0.c, false)), true)))), func_2().b, vec3<bool>(!any(select(vec2<bool>(false, global3.x), var_0.e.yz, var_2.b.e.yz)), all(select(vec4<bool>(true, arg_0.e.x, false, false), vec4<bool>(var_2.b.e.x, true, global3.x, true), vec4<bool>(true, false, global3.x, global3.x))) || global3.x, var_0.e.x));
}

fn func_1() -> Struct_3 {
    var var_0 = global0.a.b.b;
    var var_1 = func_5(Struct_2(~(-2147483647i), Struct_1(_wgslsmith_mod_u32(18413u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global0.a.b.a, 4u)], 11682u)), _wgslsmith_f_op_f32(func_4(func_2(), countOneBits(vec4<i32>(0i, global1.x, -1i, global0.a.a.x))))), _wgslsmith_f_op_vec3_f32(select(func_2().c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1023f, global0.a.b.b, global0.a.b.b)))), global0.a.b.b < 951f)), Struct_1(_wgslsmith_mod_u32(1u, global0.a.b.a) ^ (0u >> (global0.a.b.a % 32u)), -251f), global3.ywy));
    let var_2 = Struct_3(-global0.a.a, func_5(Struct_2(var_1.a >> (func_2().d.a % 32u), Struct_1(~var_1.d.a, var_1.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b, -341f, var_1.d.b)), var_1.b, select(global3.yyz, select(vec3<bool>(var_1.e.x, var_1.e.x, false), var_1.e, var_1.e.x), !vec3<bool>(var_1.e.x, global3.x, true)))).b);
    var var_3 = global0.a.a.x;
    let var_4 = func_5(func_2());
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a.xx ^ vec2<u32>(~global2[_wgslsmith_index_u32(23553u, 4u)], ~global0.a.b.a)) << ((_wgslsmith_add_vec2_u32(~(~u_input.a.yx), u_input.a.yx) >> (firstLeadingBit(abs(abs(vec2<u32>(70719u, u_input.a.x)))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = reverseBits(~_wgslsmith_mult_i32(-1066i, -13402i));
    global0 = Struct_4(func_1());
    var var_2 = u_input.b;
    var var_3 = Struct_2(~(-25655i), func_5(func_5(func_5(func_5(Struct_2(global0.a.a.x, Struct_1(4294967295u, -1022f), vec3<f32>(-1000f, 453f, 696f), global0.a.b, global3.xyy))))).b, vec3<f32>(1060f, _wgslsmith_div_f32(global0.a.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b.b - 481f))), _wgslsmith_div_f32(-337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.b)))), Struct_1(~0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-224f))))), select(select(vec3<bool>(global3.x, false, true), func_2().e, select(global3.xwz, vec3<bool>(false, false, true), vec3<bool>(false, global3.x, global3.x))), global3.yyw, !all(vec3<bool>(false, false, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-global0.a.a.wwz, ~countOneBits(~global0.a.a.xyw)), global1.x, ~4294967295u, ~(~(~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(187f, -236f, var_3.d.b, var_3.b.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(906f, -776f, 194f, var_3.d.b) - vec4<f32>(global0.a.b.b, -1000f, -510f, -194f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1354f, -201f, var_3.b.b, var_3.d.b) - vec4<f32>(1445f, var_3.d.b, 1638f, global0.a.b.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, -1337f, global0.a.b.b, 1000f)))))));
}

