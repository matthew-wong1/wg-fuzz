struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: Struct_2 = Struct_2(Struct_1(4013i, -1453f), Struct_1(44670i, 262f), vec4<u32>(102256u, 8012u, 0u, 28784u), vec2<bool>(false, false));

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-2139f, -1074f, 264f), vec3<f32>(-1073f, -1086f, -163f), vec3<f32>(1000f, 755f, 563f), vec3<f32>(-991f, -879f, 1000f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(-16549i, 1806f), Struct_1(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 4726i), max(vec2<i32>(u_input.b, 0i), vec2<i32>(31408i, -41791i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1069f)))), _wgslsmith_sub_vec4_u32(reverseBits((vec4<u32>(global1.c.x, 4294967295u, arg_0.a.c.x, arg_0.a.c.x) ^ arg_0.a.c) >> (vec4<u32>(46521u, global1.c.x, arg_0.a.c.x, global1.c.x) % vec4<u32>(32u))), vec4<u32>(4294967295u, 4294967295u, ~arg_0.a.c.x, global1.c.x) & abs(vec4<u32>(global1.c.x, global1.c.x, 13427u, u_input.a.x) << (vec4<u32>(1u, arg_0.a.c.x, 1u, u_input.a.x) % vec4<u32>(32u)))), select(vec2<bool>(!any(vec3<bool>(global1.d.x, arg_0.a.d.x, false)), true), select(!(!global1.d), select(!vec2<bool>(arg_0.a.d.x, arg_0.b.c.x), vec2<bool>(arg_0.a.d.x, true), !global1.d.x), vec2<bool>(any(vec3<bool>(arg_0.a.d.x, true, global1.d.x)), any(vec4<bool>(false, true, true, false)))), any(select(vec4<bool>(false, true, true, true), !vec4<bool>(false, false, arg_2.x, false), any(vec4<bool>(arg_2.x, true, arg_2.x, false))))));
    let var_1 = Struct_4(arg_0.a, Struct_3(true, Struct_1(max(1i, countOneBits(u_input.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.x, arg_0.c.x)), var_0.b.b))), vec2<bool>(false, global1.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(728f, 657f) - arg_0.c));
    let var_2 = Struct_2(var_1.a.a, global1.a, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global1.c, select(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), global1.c, select(global1.d.x, false, false))), abs(~(var_0.c << (vec4<u32>(global1.c.x, var_0.c.x, u_input.a.x, var_1.a.c.x) % vec4<u32>(32u))))), select(!global1.d, arg_2, vec2<bool>(true, true)));
    var var_3 = var_1;
    var var_4 = vec2<f32>(_wgslsmith_div_f32(-172f, var_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(583f, _wgslsmith_f_op_f32(floor(-368f)), _wgslsmith_clamp_u32(0u, 1u, arg_0.a.c.x) >= ~var_1.a.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1308f)) * _wgslsmith_f_op_f32(global1.a.b + _wgslsmith_f_op_f32(step(-276f, arg_0.b.b.b))))));
    return var_2.c;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_1, arg_2, ~select(min(global1.c << (u_input.a % vec4<u32>(32u)), u_input.a), max(firstLeadingBit(u_input.a), func_3(Struct_4(Struct_2(arg_1, Struct_1(-3874i, 852f), vec4<u32>(4294967295u, u_input.a.x, global1.c.x, global1.c.x), vec2<bool>(global1.d.x, global1.d.x)), global0[_wgslsmith_index_u32(global1.c.x, 21u)], vec2<f32>(450f, -699f)), arg_0, global1.d)), !select(vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, global1.d.x), global1.d.x)), global1.d);
    let var_1 = global2[_wgslsmith_index_u32(var_0.c.x, 4u)];
    var var_2 = Struct_4(var_0, Struct_3(true, global1.a, vec2<bool>(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec2_f32(var_1.zx + var_1.yx));
    let var_3 = vec3<bool>(all(!(!select(vec3<bool>(global1.d.x, true, true), vec3<bool>(global1.d.x, global1.d.x, false), global1.d.x))), var_0.d.x | all(vec2<bool>(var_2.b.c.x || false, var_0.d.x)), !var_2.b.c.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 716f, -1000f))))))));
    return var_0.b;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.b + 1071f), _wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_div_f32(296f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1248f + 979f), _wgslsmith_f_op_f32(arg_1.b.b * global1.a.b))))), arg_1.a, arg_1.b);
    global1 = arg_1;
    var var_1 = Struct_3(false, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(arg_1.b.a, u_input.b, arg_1.a.a, u_input.b)), min(vec4<i32>(u_input.b, -24959i, -20044i, -73210i), vec4<i32>(arg_1.a.a, -1i, -12503i, arg_1.b.a))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.a, 56262i, u_input.b, 1i), vec4<i32>(-488i, 0i, var_0.a, arg_2)), -vec4<i32>(9416i, -10463i, arg_2, var_0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b)))))), select(vec2<bool>(true, global1.d.x), !arg_1.d, any(!vec3<bool>(global1.d.x, true, arg_0))));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(271f, _wgslsmith_f_op_f32(ceil(var_1.b.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -259f))))), var_1.b, global1.a);
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(-arg_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(global1.d.x, true, true), vec3<bool>(global1.d.x, false, false)), global1.d.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, 1000f > global1.b.b, all(global1.d)), !(!vec3<bool>(global1.d.x, false, false))), vec3<bool>(global1.d.x, !global1.d.x & global1.d.x, true), _wgslsmith_div_f32(global1.b.b, global1.b.b) < _wgslsmith_f_op_f32(sign(-525f))), (_wgslsmith_f_op_f32(func_1(all(global1.d), Struct_2(global1.b, Struct_1(7888i, global1.a.b), u_input.a, vec2<bool>(false, false)), _wgslsmith_div_i32(-1i, u_input.b))) > 250f) || ((~global1.c.x >> (20481u % 32u)) > global1.c.x));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1993f, 953f) - vec2<f32>(global1.b.b, global1.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b, global1.b.b)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.b.b)), global1.a.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-811f, -1552f)))), Struct_1(global1.b.a, global1.b.b), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b.b, global1.a.b)))))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, 535f))), func_2(vec2<f32>(772f, 1712f), global1.b, global1.b), global1.b), global1.b));
    global2 = array<vec3<f32>, 4>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global2 = array<vec3<f32>, 4>();
    let var_2 = select(!vec4<bool>(_wgslsmith_sub_i32(-4826i, var_1.a) <= -26290i, global1.d.x, global1.d.x, true), !(!select(!vec4<bool>(var_0.x, false, true, true), vec4<bool>(global1.d.x, var_0.x, true, var_0.x), vec4<bool>(false, true, false, true))), all(vec3<bool>(!select(var_0.x, global1.d.x, var_0.x), !any(var_0.xy), all(select(var_0.xz, var_0.zy, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(1u), func_3(Struct_4(Struct_2(Struct_1(var_1.a, -535f), global1.a, global1.c, vec2<bool>(global1.d.x, true)), global0[_wgslsmith_index_u32(~global1.c.x, 21u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.b, -122f) * vec2<f32>(1286f, 255f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, var_1.b)) - vec2<f32>(572f, 2067f)), select(vec2<bool>(false, true), global1.d, select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), var_0.yx))).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.b, -573f), vec2<f32>(-534f, 2354f)))), vec2<f32>(_wgslsmith_f_op_f32(min(630f, var_1.b)), global1.b.b)))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(max(var_1.a, 44242i), u_input.b)), firstLeadingBit(-vec2<i32>(1i, 0i)), select(_wgslsmith_sub_vec2_i32(~vec2<i32>(8823i, var_1.a), abs(vec2<i32>(global1.b.a, 10731i))), vec2<i32>(-6318i, _wgslsmith_div_i32(u_input.b, 0i)), var_0.x | all(var_0.yy))));
}

