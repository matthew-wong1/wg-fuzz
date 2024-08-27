struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<f32>, 7>;

var<private> global3: vec3<i32> = vec3<i32>(-40034i, 8491i, -12389i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_4(abs(-2147483647i), Struct_2(any(vec2<bool>(arg_0.a | true, true && arg_0.a)), Struct_1(min(vec2<i32>(23381i, global3.x), -arg_0.c.a), arg_0.b.b), Struct_1(select(vec2<i32>(-19562i, 2147483647i), vec2<i32>(arg_0.c.a.x, 2147483647i) | vec2<i32>(-2147483647i, arg_0.b.a.x), select(vec2<bool>(false, true), vec2<bool>(arg_0.e, arg_0.a), arg_0.e)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x + -1000f), _wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.a.x, 7u)] + _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(6290u, 7u)])), all(!(!vec4<bool>(arg_0.e, arg_0.a, arg_0.a, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b.x, -279f, 443f)));
    let var_2 = Struct_3(-global3.x);
    let var_3 = select(select(select(!select(vec3<bool>(true, true, arg_0.a), vec3<bool>(arg_0.e, true, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(var_0.b.e, true, false), vec3<bool>(var_0.b.a, true, arg_0.e), false), vec3<bool>(true, true, true), var_0.b.a || arg_0.e), select(select(vec3<bool>(true, var_0.b.e, var_0.b.e), vec3<bool>(false, arg_0.a, arg_0.e), vec3<bool>(arg_0.a, var_0.b.a, true)), select(vec3<bool>(arg_0.e, var_0.b.e, var_0.b.a), vec3<bool>(var_0.b.e, arg_0.a, true), vec3<bool>(arg_0.e, true, arg_0.a)), !vec3<bool>(arg_0.e, false, true))), !(!select(vec3<bool>(var_0.b.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, var_0.b.e), vec3<bool>(var_0.b.a, var_0.b.a, false))), !(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.a, arg_0.a, true), vec3<bool>(var_0.b.e, false, arg_0.a)))), select(vec3<bool>(all(!vec3<bool>(var_0.b.e, true, arg_0.e)), all(vec4<bool>(arg_0.e, var_0.b.a, arg_0.a, var_0.b.a)), true), vec3<bool>(true, all(vec3<bool>(arg_0.a, var_0.b.a, var_0.b.a)), true), vec3<bool>(false, true, _wgslsmith_sub_i32(arg_0.c.a.x, var_0.a) != 0i)), !var_0.b.a);
    var var_4 = var_0.b.d;
    return 2147483647i;
}

fn func_2() -> vec2<f32> {
    let var_0 = -global3.zz;
    global2 = array<vec2<f32>, 7>();
    global3 = ~(vec3<i32>(var_0.x, global3.x, -2147483647i) & vec3<i32>(var_0.x, _wgslsmith_mult_i32(func_3(Struct_2(true, Struct_1(vec2<i32>(var_0.x, -9396i), global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), Struct_1(vec2<i32>(-1i, global3.x), vec2<f32>(-1251f, -2475f)), global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true)), -1i ^ var_0.x), 1i));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32571u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)), reverseBits(u_input.a.x)), 7u)])));
    let var_1 = select(select(vec4<bool>(select(true, true, 0i < global3.x), true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(sign(214f)) == -1401f), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(true, true, true, true), false | all(vec2<bool>(true, false))), !(!vec4<bool>(true, true, true, any(vec3<bool>(false, true, true)))));
    return vec2<f32>(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -582f))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(1u, 7u)])) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1849f, 1162f)), _wgslsmith_f_op_vec2_f32(func_2()), arg_0.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(44026u, 7u)]))))) - _wgslsmith_f_op_vec2_f32(max(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x >> (4294967295u % 32u)), 7u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(global1.x, -908f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, -349f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1045f - global1.x), 383f)));
    global0 = array<Struct_4, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2785f, -1673f, 1516f), vec3<f32>(var_0.x, arg_1.b.x, 541f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, 1375f, 104f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 569f, 230f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-446f, -328f, var_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-1226f, global1.x, arg_1.b.x), vec3<f32>(global1.x, -1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, 584f, global1.x) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, var_0.x, 1358f)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1190f, var_0.x, arg_1.b.x))))))));
    var var_2 = Struct_3(arg_1.a.x);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = 344f;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, 1487f, -1580f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, arg_0.b.x, arg_0.b.x), vec3<f32>(960f, 1076f, -374f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-550f, arg_0.b.x, 875f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-589f, -963f, 1865f), vec3<f32>(1631f, 603f, 1928f), vec3<bool>(arg_2.x, true, false)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(max(-1000f, global1.x))) * vec3<f32>(global1.x, -297f, -1184f)))));
    global1 = _wgslsmith_f_op_vec2_f32(-var_1.xz);
    var_0 = -1000f;
    var var_2 = Struct_3(_wgslsmith_div_i32(-2147483647i, -34691i) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, u_input.a.x), 16353u) % 32u));
    return Struct_1(_wgslsmith_sub_vec2_i32(-arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_0.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b.x, 645f), arg_0.b)))))), var_1.zz, vec2<bool>(arg_2.x, var_2.a >= 1i))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    return abs(max(11807u, ~(~select(85008u, 30724u, arg_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(func_5(global0[_wgslsmith_index_u32(865u, 14u)], -725f, Struct_2(global1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), func_4(func_1(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(global3.x, -41068i), global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), Struct_3(global3.x), vec3<bool>(all(vec3<bool>(true, false, false)), true, true)), func_4(Struct_1(firstLeadingBit(global3.yy), global2[_wgslsmith_index_u32(1u, 7u)]), Struct_3(_wgslsmith_mod_i32(global3.x, global3.x)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(10815u, 7u)]))), true), global3.yy), 7u)];
    let var_1 = select(!vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>((u_input.a.x >> (_wgslsmith_mod_u32(37346u, u_input.a.x) % 32u)) != u_input.a.x, _wgslsmith_f_op_f32(-func_1(vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(global3.x, 0i), global2[_wgslsmith_index_u32(u_input.a.x, 7u)])).b.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(875f)))), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(false, false, false)), false)));
    let var_2 = select(!select(var_1, select(!vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x)), all(vec3<bool>(false, var_1.x, var_1.x))), !(!vec2<bool>(var_1.x, true))), var_1, 0u != _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(13791u, 1u, 30488u)) << (1u % 32u)));
    global2 = array<vec2<f32>, 7>();
    var var_3 = reverseBits(global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(-global3.zy, global3.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -708f), vec3<f32>(var_0.x, global1.x, 229f)))), vec3<f32>(-1000f, var_0.x, func_1(vec4<bool>(var_1.x, var_1.x, var_2.x, false), Struct_1(vec2<i32>(global3.x, -2147483647i), global2[_wgslsmith_index_u32(1u, 7u)])).b.x))), global1.x, global3.x);
}

