struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(-45121i, -3637i), -643f), Struct_1(vec2<i32>(4395i, -7179i), -705f), Struct_1(vec2<i32>(-60438i, -2969i), -254f), Struct_1(vec2<i32>(2147483647i, -8622i), -1453f));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-74814i, -28604i), 495f);

var<private> global2: f32 = -939f;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = select(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 42223u, u_input.b.x, 41437u), u_input.c)), firstLeadingBit(vec4<u32>(firstTrailingBit(u_input.b.x), firstLeadingBit(u_input.c.x), 85959u, u_input.b.x))), firstLeadingBit(vec4<u32>(4294967295u, 1u, ~4294967295u, ~(~13247u))), 265f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))));
    var var_1 = global0[_wgslsmith_index_u32(~select(countOneBits(abs(var_0.x)), _wgslsmith_mod_u32(~(~57538u), var_0.x), arg_0), 4u)];
    var_0 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-807f, global3.b, global3.b, 280f), vec4<f32>(1065f, 1165f, var_1.b, 1121f), true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b, 1038f, 272f, -1166f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, global1.b, var_1.b, global1.b)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, global1.b, 1000f, global1.b))))))));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1457f) + global1.b)))), 685f, any(vec3<bool>(all(select(vec2<bool>(arg_0, false), vec2<bool>(true, false), arg_0)), arg_0, all(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0))))));
    return var_2.yyx;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-320f * 1605f), _wgslsmith_f_op_f32(trunc(global1.b)), arg_1.b) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, global1.b, 848f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, -194f, arg_1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, -363f, -548f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-773f, 2070f, 711f) + vec3<f32>(-1107f, 843f, global1.b)))))) * _wgslsmith_f_op_vec3_f32(func_3(true || any(vec3<bool>(true, true, true)))));
    global0 = array<Struct_1, 4>();
    global1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-856f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(169f, -685f))))));
    let var_1 = -_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(global1.a.x) >> (u_input.c.x % 32u), abs(1i), 1i), ~(~(~vec3<i32>(-13881i, global1.a.x, global3.a.x))));
    global3 = Struct_1(countOneBits(vec2<i32>(26199i, (global3.a.x >> (0u % 32u)) << (countOneBits(1u) % 32u))), 1211f);
    return ~(~countOneBits(1u));
}

fn func_4(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, global3.b, global1.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1405f, 1544f, global1.b), vec3<f32>(-676f, 951f, 434f), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(-global3.b)))))));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(global1.b, 466f), ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3.a.x, u_input.a.x, arg_0), vec4<i32>(1i, arg_0, global1.a.x, global1.a.x))) < -countOneBits(arg_0)));
    global2 = _wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.b))))) - _wgslsmith_f_op_f32(-var_0.x)));
    global1 = Struct_1(global3.a, 654f);
    var var_1 = global0[_wgslsmith_index_u32(7802u, 4u)];
    return Struct_1(global3.a, _wgslsmith_f_op_f32(-var_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    global3 = Struct_1(reverseBits((vec2<i32>(45i, -32648i) << (vec2<u32>(65172u, u_input.c.x) % vec2<u32>(32u))) | -vec2<i32>(1i, u_input.a.x)) << (_wgslsmith_mod_vec2_u32(select(u_input.c.yz ^ u_input.c.ww, u_input.c.zx, vec2<bool>(var_0.x, var_0.x)), vec2<u32>(~8419u, ~u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) + _wgslsmith_f_op_f32(arg_0.b + global3.b)) + arg_1.b))));
    var var_1 = 1i;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_1.a.x, arg_0.a.x, arg_2, arg_2)), vec4<i32>(1794i, ~(-2147483647i), 2147483647i >> (u_input.b.x % 32u), 0i)), min((global3.a.x & arg_1.a.x) >> (u_input.b.x % 32u), 0i)), _wgslsmith_f_op_f32(step(arg_1.b, 1262f)));
    let var_3 = u_input.c.zwx;
    return func_4((func_4(~(-2147483647i), ~var_3.x).a.x & 19849i) | (_wgslsmith_dot_vec3_i32(vec3<i32>(-32433i, -5709i, arg_0.a.x), vec3<i32>(17593i, 2147483647i, -45035i)) | 14064i), firstLeadingBit(u_input.b.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = -436f;
    let var_1 = func_5(func_4(1i, (1u | max(u_input.c.x, 4294967295u)) & ~func_2(vec2<u32>(arg_3, 4149u), Struct_1(vec2<i32>(28206i, 0i), arg_2.b))), func_4(max(0i, arg_2.a.x), arg_3), -countOneBits(firstLeadingBit(-7729i & u_input.a.x)));
    global1 = func_5(arg_2, func_5(Struct_1(arg_2.a, arg_1.b), global0[_wgslsmith_index_u32(2702u, 4u)], _wgslsmith_sub_i32(-56463i, -12874i)), var_1.a.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, -1638f)))), vec2<f32>(_wgslsmith_f_op_f32(arg_2.b + -770f), global1.b), !(arg_2.a.x >= 13821i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, 1718f) - vec2<f32>(-187f, arg_1.b)), vec2<f32>(465f, global3.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1362f)), _wgslsmith_f_op_f32(-1000f * global1.b))), true)));
    let var_3 = vec4<bool>(true, !all(vec4<bool>(select(false, false, true), true, arg_2.a.x <= var_1.a.x, select(true, true, true))), true, true);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-517f, 239f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1074f)))), global1.b);
    var var_1 = vec4<i32>(firstTrailingBit(-10589i), -_wgslsmith_div_i32(global1.a.x, _wgslsmith_add_i32(global3.a.x, global1.a.x)), global3.a.x, _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(global3.a.x, 23718i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global3.a.x, global1.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 41225i, -42910i), vec3<i32>(global1.a.x, 0i, global1.a.x))))) >> (~vec4<u32>(u_input.b.x, func_1(reverseBits(u_input.a.x), global0[_wgslsmith_index_u32(u_input.c.x, 4u)], Struct_1(global3.a, global1.b), firstLeadingBit(u_input.b.x)), u_input.b.x, _wgslsmith_mod_u32(func_1(109492i, global0[_wgslsmith_index_u32(72291u, 4u)], global0[_wgslsmith_index_u32(22503u, 4u)], 80643u), 1u)) % vec4<u32>(32u));
    var_0 = true;
    global2 = global1.b;
    var var_2 = u_input.c;
    let var_3 = func_4(-(~0i), ~1u);
    var var_4 = -1i;
    let var_5 = ~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x & u_input.b.x, ~67900u, ~1u) >> (u_input.c % vec4<u32>(32u)));
    var var_6 = i32(-1i) * -(16615i >> (~var_5.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(global3.b, 1120f)), -2465f, _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-global3.b)));
}

