struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 18810i, i32(-2147483648));

var<private> global1: vec2<f32> = vec2<f32>(1106f, 974f);

var<private> global2: Struct_2 = Struct_2(vec2<u32>(1u, 18339u));

var<private> global3: array<u32, 20> = array<u32, 20>(31187u, 40555u, 4294967295u, 24190u, 4294967295u, 4294967295u, 20223u, 73618u, 0u, 31939u, 27726u, 1u, 33348u, 29358u, 0u, 4294967295u, 0u, 4197u, 0u, 88907u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(vec2<u32>(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a.x, 4294967295u, global2.a.x), vec3<u32>(0u, 24122u, 1u)), select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47074u, 20u)], 20u)], global2.a.x, 18529u), vec3<u32>(global2.a.x, global3[_wgslsmith_index_u32(arg_3.a.x, 20u)], 30350u), false))), ~27789u));
    let var_1 = true;
    global3 = array<u32, 20>();
    let var_2 = Struct_2(~(~(~arg_3.a)));
    let var_3 = select(vec2<bool>(any(select(select(vec4<bool>(false, false, false, var_1), vec4<bool>(var_1, var_1, var_1, var_1), false), !vec4<bool>(var_1, var_1, var_1, var_1), select(var_1, var_1, var_1))), !select(true, true, !var_1)), !(!(!vec2<bool>(var_1, var_1))), all(vec4<bool>(any(select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, var_1))), true, var_1, select(true, select(false, true, true), var_1))));
    return vec4<bool>(any(select(var_3, var_3, vec2<bool>(var_1, var_0.a.x > 4294967295u))), var_1, any(select(vec2<bool>(all(vec2<bool>(false, false)), var_3.x), !select(vec2<bool>(var_1, var_3.x), vec2<bool>(var_3.x, var_1), true), !vec2<bool>(var_3.x, true))), all(select(vec3<bool>(var_3.x, !var_3.x, var_1), select(select(vec3<bool>(false, var_3.x, var_1), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), global1.x < global1.x), true)));
}

fn func_2() -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global1.x + -210f), _wgslsmith_f_op_f32(-198f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 581f)))));
    global0 = abs(vec3<i32>(u_input.c, reverseBits(u_input.c), -(u_input.c >> (1u % 32u))));
    var var_0 = ~firstLeadingBit(_wgslsmith_div_u32(countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), firstLeadingBit(vec2<u32>(global2.a.x, global2.a.x)))));
    var var_1 = select(select(!vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), all(vec3<bool>(true, true, true))), select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false), vec4<bool>(true, true, true, all(vec2<bool>(false, false))), any(vec3<bool>(true, false, true)) || all(vec4<bool>(false, false, true, true)))), select(func_3(global1.x, ~global0.yx, ~firstLeadingBit(u_input.c), Struct_1(vec2<u32>(0u, 54490u))), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), global1.x >= global1.x, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false)) && true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))), !(!vec4<bool>(select(false, false, true), true, 14299i >= global0.x, true)));
    return !var_1.xw;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = Struct_2(vec2<u32>(~6094u, 8420u));
    global2 = var_1;
    let var_2 = ~(~vec4<u32>(1u, 1u, ~global2.a.x, firstTrailingBit(global3[_wgslsmith_index_u32(var_0.a.x, 20u)])) >> (_wgslsmith_div_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(36416u, 1u, var_1.a.x, var_0.a.x), vec4<u32>(1u, 64271u, 1u, 20332u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.a.x, 4294967295u, arg_0.a.x), vec4<u32>(global3[_wgslsmith_index_u32(1u, 20u)], var_1.a.x, 70365u, 4294967295u), vec4<u32>(global2.a.x, global3[_wgslsmith_index_u32(global2.a.x, 20u)], arg_0.a.x, var_0.a.x))), ~vec4<u32>(u_input.b, u_input.b, var_1.a.x, var_0.a.x) >> (~vec4<u32>(var_1.a.x, var_0.a.x, global2.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(920f, global1.x), vec2<f32>(-1925f, -1736f)))) * arg_1.zz))));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(global0.zx, -vec2<i32>(-2147483647i, u_input.c) << (abs(vec2<u32>(4294967295u, var_0.a.x)) % vec2<u32>(32u))), -u_input.c, firstTrailingBit(global0.x), 32435i);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_add_i32(21933i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, ~global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(global0.x, 2147483647i)), i32(-1i) * -2147483647i), -vec4<i32>(2147483647i, -7059i, global0.x, global0.x), func_4(Struct_1(vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, global1.x)), func_2())), (vec4<i32>(-1i) * -vec4<i32>(u_input.c, global0.x, global0.x, 2198i)) >> (_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 19143u, u_input.a, 10816u), vec4<u32>(u_input.b, 23613u, 10436u, u_input.b), vec4<bool>(false, false, true, true)), vec4<u32>(global2.a.x, 41490u, 96547u, global3[_wgslsmith_index_u32(arg_0, 20u)]) | vec4<u32>(arg_0, global2.a.x, 4294967295u, 100360u)) % vec4<u32>(32u))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-720f * global1.x), _wgslsmith_div_f32(-474f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-730f - 305f), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 138f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 258f) * vec2<f32>(global1.x, 374f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -422f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, global1.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, global1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x))))))));
    var var_1 = true;
    var_1 = true;
    let var_2 = global1.x;
    return func_3(_wgslsmith_div_f32(global1.x, 1311f), ~vec2<i32>(func_4(Struct_1(vec2<u32>(arg_0, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), func_3(global1.x, vec2<i32>(2265i, var_0), -2147483647i, Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 20u)], 11838u))).zx).x, _wgslsmith_sub_i32(global0.x, ~51051i)), u_input.c, Struct_1(global2.a)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var var_1 = !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(max(global2.a.x, u_input.a))), !vec2<bool>(all(vec2<bool>(true, false)), true), !(!any(vec2<bool>(true, true))));
    var var_2 = Struct_1(abs(vec2<u32>(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global2.a.x) << (countOneBits(1u) % 32u), 1u)));
    var_2 = Struct_1(select(min(global2.a, global2.a), _wgslsmith_clamp_vec2_u32(select(var_2.a, _wgslsmith_mod_vec2_u32(var_2.a, var_2.a), !vec2<bool>(var_1.x, false)), ~vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(global2.a.x, 20u)]), max(select(var_2.a, global2.a, vec2<bool>(var_1.x, false)), global2.a)), !func_2()));
    var var_3 = Struct_2(_wgslsmith_clamp_vec2_u32(var_2.a, ~(~global2.a) | vec2<u32>(var_2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(677u, 1u), vec2<u32>(var_2.a.x, 0u))), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(vec2<u32>(var_3.a.x, 1374u) | var_3.a) & var_2.a, 252f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, 359f, global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, 1000f, -380f, global1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1000f, global1.x, true)))), global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1516f))), -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -17600i, global0.x), vec3<i32>(-2147483647i, -2147483647i, global0.x)), select(0i, 1i, var_1.x), _wgslsmith_div_i32(-2147483647i, 61186i), u_input.c), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, 42472i, u_input.c, 2075i)), ~vec4<i32>(u_input.c, -20008i, global0.x, global0.x))));
}

