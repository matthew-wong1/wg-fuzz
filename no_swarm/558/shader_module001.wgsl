struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 7> = array<f32, 7>(-1560f, 1302f, 340f, -362f, 488f, 125f, -618f);

var<private> global2: Struct_1 = Struct_1(-23795i, vec2<bool>(true, false), -221f);

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.d.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f), global2.c)), _wgslsmith_f_op_f32(-arg_1.a.c)))));
    let var_1 = reverseBits(u_input.c.x);
    global3 = array<Struct_2, 4>();
    var_0 = global2.c;
    let var_2 = firstLeadingBit(var_1);
    return _wgslsmith_f_op_f32(arg_1.d.c - -683f);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = array<f32, 7>();
    global1 = array<f32, 7>();
    global1 = array<f32, 7>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_2.b.x, Struct_2(Struct_1(-24479i, global2.b, global2.c), i32(-1i) * -2147483647i, arg_1.b, Struct_1(arg_2.a, vec2<bool>(true, true), global1[_wgslsmith_index_u32(8952u, 7u)])))), arg_2.c, arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -869f)));
    global2 = Struct_1(1i, global2.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-349f, -748f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(933f - -134f))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(!(-966f >= _wgslsmith_f_op_f32(var_0.x * 1393f)), global3[_wgslsmith_index_u32(~(~arg_0), 4u)]))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<i32>) -> vec4<f32> {
    let var_0 = 0i;
    var var_1 = arg_0.d;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(func_2(6975u, Struct_1(-1i, var_1.b, -841f), Struct_1(u_input.b, vec2<bool>(false, false), 1245f)))) * _wgslsmith_div_f32(-726f, -1256f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(159f, _wgslsmith_f_op_f32(arg_0.a.c + 604f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.c))))), arg_0.a.c);
    let var_3 = 1u;
    let var_4 = global3[_wgslsmith_index_u32(~4294967295u, 4u)];
    return arg_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-(global2.a | firstTrailingBit(arg_1.a)), vec2<bool>(true, any(vec3<bool>(true, false, global2.b.x))), 550f), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global2.a, u_input.b), vec2<i32>(1i, 1i)), 2147483647i, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2077i, 2147483647i)), -vec2<i32>(u_input.b, arg_3))), global2.b, Struct_1(0i, arg_1.b, _wgslsmith_f_op_f32(func_3(true, Struct_2(Struct_1(2147483647i, vec2<bool>(true, false), arg_1.c), u_input.b & arg_1.a, !global2.b, arg_1)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2, max(u_input.c.wz, u_input.c.yw)), 7u)], _wgslsmith_f_op_f32(-arg_0.x))));
    var var_2 = Struct_2(arg_1, -2147483647i, arg_1.b, var_0.a);
    global3 = array<Struct_2, 4>();
    var_1 = 1000f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(855f, global2.c, 245f, global2.c) + _wgslsmith_div_vec4_f32(vec4<f32>(-197f, 947f, global1[_wgslsmith_index_u32(u_input.a, 7u)], 420f), vec4<f32>(global2.c, 415f, 147f, 1509f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(global3[_wgslsmith_index_u32(0u, 4u)], vec4<f32>(-114f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], -1392f, -866f), global2.b.x, vec3<i32>(u_input.b, u_input.b, u_input.b))))))), Struct_1(-49119i, global2.b, _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(global2.a, vec2<bool>(global2.b.x, global2.b.x), global2.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, 22061i, 22158i), vec3<i32>(1i, 4694i, 0i)), !global2.b, Struct_1(0i, vec2<bool>(global2.b.x, true), global2.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.c, 848f, global2.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-893f, 1889f, -422f, global2.c) * vec4<f32>(-226f, global2.c, -1000f, global1[_wgslsmith_index_u32(0u, 7u)]))), all(!vec4<bool>(global2.b.x, true, global2.b.x, false)), _wgslsmith_add_vec3_i32(~vec3<i32>(1i, global2.a, 10150i), vec3<i32>(1039i, -1i, global2.a)))).x), firstTrailingBit(~select(vec2<u32>(27356u, u_input.c.x), u_input.c.ww >> (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u)), !global2.b.x)), u_input.b);
    let var_1 = select(-abs(abs(vec2<i32>(2147483647i, 1i))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.a, 2147483647i) >> (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u)), vec2<i32>(global2.a, var_0.d.a)) | _wgslsmith_sub_vec2_i32(-countOneBits(vec2<i32>(u_input.b, u_input.b)), firstTrailingBit(vec2<i32>(global2.a, global2.a))), var_0.a.b.x);
    global1 = array<f32, 7>();
    var var_2 = (select(_wgslsmith_sub_vec3_i32(vec3<i32>(-6924i, 2147483647i, 14440i), vec3<i32>(-2147483647i, global2.a, 0i)) >> (u_input.c.xyz % vec3<u32>(32u)), select(vec3<i32>(global2.a, -2147483647i, 2147483647i), min(vec3<i32>(0i, 37449i, u_input.b), vec3<i32>(-46390i, 43701i, -2147483647i)), !global2.b.x), false) ^ countOneBits(vec3<i32>(-1i, var_1.x, u_input.b))) >> (max(vec3<u32>(abs(u_input.a), ~(~18657u), _wgslsmith_div_u32(reverseBits(0u), 1u)), ~(~vec3<u32>(0u, u_input.a, u_input.c.x))) % vec3<u32>(32u));
    global1 = array<f32, 7>();
    global1 = array<f32, 7>();
    var_2 = vec3<i32>(22194i, u_input.b, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(func_4(vec4<f32>(var_0.a.c, -2239f, var_0.a.c, var_0.d.c), Struct_1(0i, global2.b, var_0.d.c), vec2<u32>(u_input.a, u_input.c.x), 0i).b, i32(-1i) * -48151i), -var_2.zz & (vec2<i32>(60685i, 41311i) | vec2<i32>(var_1.x, 2553i)))));
    let var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 7u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 7u)], -135f) + _wgslsmith_div_f32(-869f, 1787f)))), _wgslsmith_f_op_f32(-276f + 508f), 1088f), func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, global1[_wgslsmith_index_u32(u_input.a, 7u)], var_0.a.c, 836f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.c, var_0.d.c, var_0.a.c, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a, 7u)], var_0.d.c, -359f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c, -132f, 687f, global2.c))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, var_0.d.c, -1250f, global1[_wgslsmith_index_u32(26719u, 7u)]) + vec4<f32>(480f, 301f, -1090f, -902f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1397f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 369f, 1872f) - vec4<f32>(var_0.d.c, global1[_wgslsmith_index_u32(u_input.a, 7u)], var_0.d.c, 626f))), var_0.a, select(u_input.c.zy, u_input.c.wy, global2.b) << (select(u_input.c.zz, vec2<u32>(1u, u_input.a), global2.b) % vec2<u32>(32u)), 2147483647i).d, vec2<u32>(18328u, u_input.c.x), select(1i, var_0.b, true)).d, _wgslsmith_sub_vec2_u32(select(~u_input.c.yy, abs(vec2<u32>(u_input.c.x, 0u)), select(global2.b, var_0.c, func_4(vec4<f32>(-831f, 1056f, var_0.a.c, global2.c), var_0.d, vec2<u32>(u_input.c.x, 1u), u_input.b).d.b)), ~vec2<u32>(u_input.a, u_input.c.x | u_input.c.x)), -1i);
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.c * 330f), _wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(-var_0.d.c)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, var_0.a.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a.c))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c, -669f), vec2<f32>(var_3.a.c, -2427f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1893f, -2053f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d.c, var_3.a.c) - vec2<f32>(-600f, -210f)))), var_0.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-var_3.d.c)), var_3.d.c), -firstTrailingBit(1i), ~(~(~1u)), ~_wgslsmith_add_u32(firstLeadingBit(15387u << (u_input.c.x % 32u)), u_input.a), var_2.x);
}

