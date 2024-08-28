struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, true, false, true, true, false, true, true, true, false, false, false, true, false, false, false, true);

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-26023i, 1i, u_input.a.x, arg_0.c.x), u_input.a), reverseBits(abs(1i))), 0i), _wgslsmith_mod_i32(30296i, -arg_0.c.x));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = arg_0;
    return firstTrailingBit(u_input.d.zyy) ^ select(select(~(~u_input.d.xxy), vec3<u32>(arg_1, 14544u << (arg_0.b.x % 32u), 1u), arg_3), vec3<u32>(var_3.b.x, min(_wgslsmith_mult_u32(arg_1, var_1.b.x), 5899u), ~1u), select(select(!arg_3, arg_3, true), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 18u)], false, false), !vec3<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(0u, 18u)], true), true), arg_3));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_0 = !vec3<bool>(true, all(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], true)), all(vec3<bool>(true, true, true)) && !any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(65543u, 18u)], false)));
    let var_1 = Struct_1(vec2<bool>(!(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 18u)] && (u_input.c >= 0u)), true), ~vec2<u32>(abs(1u), 4294967295u) & u_input.b.zw, vec2<i32>(1i, firstLeadingBit(arg_0) >> (u_input.d.x % 32u)));
    var var_2 = Struct_1(select(vec2<bool>(select(!var_1.a.x, var_1.a.x, select(false, var_1.a.x, var_0.x)), var_0.x), var_0.xz, any(!(!var_1.a))), firstLeadingBit(func_2(Struct_1(vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), var_1.c), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1089f, -226f, false))), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, true), true)).zy), var_1.c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-211f, -562f)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1154f)) * 1078f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-297f, 1607f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<f32> {
    global1 = !(arg_0.c.x >= 55263i);
    let var_0 = _wgslsmith_add_vec3_u32(~(abs(select(u_input.b.yxz, u_input.b.zwx, vec3<bool>(true, true, arg_2.a.x))) ^ u_input.b.zyw), firstTrailingBit(func_2(arg_0, 0u & arg_0.b.x, 302f, vec3<bool>(false, arg_2.a.x, arg_0.a.x))) ^ u_input.b.yyz);
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 18u)];
    global1 = all(vec3<bool>(~0u > arg_0.b.x, true, true)) && (-1017f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-486f))))));
    global1 = arg_2.a.x;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1163f, -1000f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_1.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 401f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-841f, -1037f) * vec2<f32>(-671f, 269f))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(select(vec2<bool>(global0[_wgslsmith_index_u32(30332u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(33233u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true)), firstTrailingBit(vec2<u32>(u_input.e, u_input.b.x)), u_input.a.zz << (u_input.b.wz % vec2<u32>(32u))), ~vec3<i32>(-56019i, 14234i, u_input.a.x) | select(vec3<i32>(61338i, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, -36999i, 5998i), global0[_wgslsmith_index_u32(36196u, 18u)]), Struct_1(vec2<bool>(true, true), vec2<u32>(u_input.c, u_input.b.x), vec2<i32>(44751i, u_input.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(56676u, 18u)], false), vec2<u32>(u_input.e, 4294967295u), vec2<i32>(1i, 27468i)), _wgslsmith_mult_vec3_i32(u_input.a.xwy, u_input.a.xzz), Struct_1(vec2<bool>(false, false), vec2<u32>(u_input.e, u_input.b.x), u_input.a.zx))).x))));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(-254f, -813f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false), u_input.d.wx, u_input.a.zy), _wgslsmith_clamp_vec3_i32(u_input.a.xxy, u_input.a.xxx, vec3<i32>(-10010i, u_input.a.x, u_input.a.x)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], true), vec2<u32>(u_input.b.x, 31146u), u_input.a.yx))).x)))));
    var var_2 = true;
    var_2 = false;
    let var_3 = u_input.d.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f * 176f))))) + 173f);
    let var_4 = _wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.a.wx), abs(countOneBits(abs(-vec2<i32>(u_input.a.x, 2776i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

