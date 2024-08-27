struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(32940u, 12629u);

var<private> global1: array<Struct_1, 18>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.d.xz;
    global1 = array<Struct_1, 18>();
    global3 = array<vec3<u32>, 2>();
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, ~(~global0.x & global2.a)), u_input.b.yy);
    let var_2 = Struct_1(4294967295u, ~abs(-var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, arg_1.c.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1091f)), _wgslsmith_f_op_f32(floor(884f))), vec2<bool>(any(vec4<bool>(true, true, true, true)), false))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.c))), vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(abs(-719f))))), vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(-2828i), i32(-1i) * -arg_1.b), _wgslsmith_div_i32(var_0.x, arg_1.d.x), arg_0.x));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-401f)))))));
}

fn func_2() -> vec4<f32> {
    var var_0 = !(~countOneBits(_wgslsmith_div_i32(-2147483647i, -1i)) >= global2.d.x);
    var var_1 = u_input.b;
    let var_2 = global1[_wgslsmith_index_u32(~var_1.x, 18u)];
    global0 = abs(countOneBits(u_input.b.xz));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(19333i, var_2.b)), vec2<i32>(40316i, -32153i)), global1[_wgslsmith_index_u32(0u, 18u)])));
    return vec4<f32>(_wgslsmith_f_op_f32(global2.c.x + 745f), _wgslsmith_f_op_f32(max(519f, _wgslsmith_f_op_f32(var_2.c.x + -2167f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1379f))), _wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    global3 = array<vec3<u32>, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(338f, arg_0.x), vec2<f32>(arg_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 * 1120f), -1530f))))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 18u)];
    var var_2 = _wgslsmith_sub_i32(-(~1i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x >> (4294967295u % 32u), _wgslsmith_div_i32(global2.d.x, global2.d.x))), global2.d.xx));
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(~(~abs(0u))), 18u)];
    return Struct_1(_wgslsmith_dot_vec2_u32(max(u_input.b.zy, u_input.b.zz) >> (_wgslsmith_add_vec2_u32(~u_input.b.yx, ~u_input.b.yz) % vec2<u32>(32u)), ~abs(~u_input.b.yz)), ~firstTrailingBit(_wgslsmith_sub_i32(-1i ^ arg_1.x, min(var_3.d.x, global2.d.x))), arg_0.yx, global2.d);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_add_u32(select(u_input.b.x, 1u, false), abs(arg_2.a))), _wgslsmith_clamp_u32(1u, abs(global0.x), min(~arg_2.a, global0.x))), u_input.b.zy);
    global1 = array<Struct_1, 18>();
    global2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(404f, -1253f, global2.c.x, 1605f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1))))), u_input.a.xz ^ _wgslsmith_div_vec2_i32(firstTrailingBit(global2.d.yx), _wgslsmith_mult_vec2_i32(min(vec2<i32>(global2.d.x, u_input.a.x), arg_0.d.yx), _wgslsmith_div_vec2_i32(arg_0.d.zz, u_input.a.yy))), ~arg_2.d, _wgslsmith_f_op_f32(949f + arg_0.c.x));
    var var_0 = all(select(!vec4<bool>(select(true, false, false), all(vec4<bool>(true, true, true, false)), true, arg_2.a <= arg_0.a), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), true, !all(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) - arg_2.c.x);
    return Struct_1(u_input.b.x, reverseBits(countOneBits(27143i)), vec2<f32>(_wgslsmith_f_op_f32(select(-1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), true)), arg_2.c.x), global2.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global3 = array<vec3<u32>, 2>();
    let var_0 = 2071f;
    var var_1 = !(!((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 14108i), vec4<i32>(global2.d.x, 1i, 0i, arg_0.d.x)) <= 47403i) && true));
    var var_2 = global2.d.x;
    global3 = array<vec3<u32>, 2>();
    return func_1(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x), arg_0.c.x), 787f, _wgslsmith_f_op_f32(-arg_0.c.x), global2.c.x)), Struct_1(67996u, _wgslsmith_div_i32(arg_0.b, select(47938i, -arg_0.d.x, select(false, false, false))), func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, arg_1.c.x, arg_0.c.x, global2.c.x))), vec2<i32>(i32(-1i) * -2147483647i, 4851i), ~(global2.d >> (global3[_wgslsmith_index_u32(arg_1.a, 2u)] % vec3<u32>(32u))), -1000f).c, arg_1.d)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.c.x - global2.c.x), -1055f, global2.c.x) * vec3<f32>(_wgslsmith_f_op_f32(-253f + 513f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1933f, global2.c.x)), _wgslsmith_f_op_f32(trunc(global2.c.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -489f)));
    global0 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, global2.a, 1u), vec4<u32>(global0.x, 28772u, global2.a, u_input.b.x)), ~max(u_input.b.x, 0u)), _wgslsmith_add_u32(~func_5(func_1(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], vec4<f32>(-127f, -235f, 1640f, global2.c.x), Struct_1(0u, u_input.a.x, vec2<f32>(global2.c.x, 226f), u_input.a)), func_4(vec4<f32>(var_0.x, global2.c.x, var_0.x, 1088f), global2.d.yy, u_input.a, var_0.x)), ~53173u));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(sign(global2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -516f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -113f, 715f) - vec3<f32>(-177f, -1792f, var_0.x))))))) * _wgslsmith_f_op_vec4_f32(func_2()).xzx);
    let var_1 = !(_wgslsmith_div_i32(2147483647i, i32(-1i) * -u_input.a.x) >= func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1080f, -1442f, 1322f, 1000f) + vec4<f32>(1146f, -378f, -1000f, 197f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, var_0.x, 881f, 975f) - vec4<f32>(var_0.x, 117f, 1188f, var_0.x)), vec4<bool>(true, true, true, true))), reverseBits(~vec2<i32>(global2.d.x, 31832i)), -firstLeadingBit(global2.d), -1000f).b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.x));
}

