struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 29>;

var<private> global2: Struct_1 = Struct_1(1386f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    let var_0 = ~1i;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1744f, global2.a, global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 327f, -109f), vec3<f32>(global2.a, global0.x, -964f), vec3<bool>(false, false, false)))))))));
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    global2 = Struct_1(global0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) + global2.a) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(0i, -(global1[_wgslsmith_index_u32(u_input.b, 29u)] & arg_0.b.a) << (firstLeadingBit(arg_0.c) % 32u), Struct_1(arg_1), true, Struct_1(_wgslsmith_f_op_f32(func_2(~arg_0.c, -vec2<i32>(28135i, -2147483647i), arg_0.c & u_input.b)))), arg_0.b, ~0u);
    var var_1 = (vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-16231i, -22842i, -108121i), ~vec3<i32>(2147483647i, 0i, var_0.b.a)), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a, arg_0.a.b), vec2<i32>(1i, var_0.a.b))) ^ ~firstTrailingBit(vec2<i32>(u_input.a, 0i) ^ vec2<i32>(global1[_wgslsmith_index_u32(0u, 29u)], u_input.a))) | select(~(-vec2<i32>(arg_0.a.b, arg_0.b.a)), ~(max(vec2<i32>(var_0.a.a, u_input.a), vec2<i32>(arg_0.b.b, -8164i)) >> (vec2<u32>(1u, 5205u) % vec2<u32>(32u))), var_0.b.d);
    global2 = Struct_1(global0.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(~1u, vec2<i32>(~(-var_0.a.a), reverseBits(1i | u_input.a)), u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1, 614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + var_0.a.e.a)));
    var var_2 = firstLeadingBit(vec4<i32>(max(0i & arg_0.a.b, max(global1[_wgslsmith_index_u32(1u << (arg_3 % 32u), 29u)], u_input.a)), var_1.x, var_1.x, ~1i));
    return arg_0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    global2 = func_3(Struct_3(arg_2.a, func_3(arg_2, 355f, -374f, arg_2.c), 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1439f))), arg_1.e.a, ~4294967295u).e;
    let var_0 = arg_1.e;
    let var_1 = min(43384i & arg_2.a.a, firstLeadingBit(u_input.a));
    return arg_2.a.e;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = !vec2<bool>(arg_3.d, u_input.c > ~_wgslsmith_sub_u32(1u, u_input.b));
    global2 = func_4(reverseBits(0u), func_3(Struct_3(arg_3, arg_3, ~u_input.b), -728f, _wgslsmith_f_op_f32(func_2(~abs(u_input.c), ~(-vec2<i32>(u_input.a, -11908i)), 4294967295u)), ~4294967295u), Struct_3(arg_3, func_3(Struct_3(arg_3, func_3(Struct_3(arg_3, arg_3, u_input.c), -1000f, arg_3.c.a, u_input.b), ~u_input.c), -1891f, 1713f, 4294967295u), u_input.b));
    var var_1 = i32(-1i) * -firstTrailingBit(global1[_wgslsmith_index_u32(~0u, 29u)]);
    var var_2 = _wgslsmith_add_vec3_u32(max(reverseBits(countOneBits(~vec3<u32>(39080u, 1u, u_input.c))), ~vec3<u32>(max(u_input.c, u_input.b), 30795u, u_input.b)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 45733u), firstTrailingBit(~vec3<u32>(u_input.c, u_input.b, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, 22274u), vec3<u32>(u_input.c, 4294967295u, 24790u)), ~vec3<u32>(u_input.c, 32610u, 1u))));
    var var_3 = _wgslsmith_div_vec2_f32(global0.zy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global2.a))), _wgslsmith_f_op_vec2_f32(-arg_0.yw))))), arg_0.wz, any(vec2<bool>(select(var_0.x, false, var_0.x), all(vec4<bool>(true, arg_3.d, arg_3.d, arg_3.d)))))));
    return i32(-1i) * -22980i;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = global0.zx;
    var var_1 = arg_2.x;
    var_1 = ~(~firstLeadingBit(14756u | select(arg_2.x, u_input.c, false)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1u, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a) << (vec2<u32>(50908u, arg_2.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 6706i), vec2<i32>(1i, arg_1), vec2<i32>(arg_1, 1i)), vec2<i32>(1i, 29628i)), arg_2.x))));
    let var_3 = global0.xz;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 29>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 737f, global0.x) - vec3<f32>(global0.x, global2.a, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))));
    let var_0 = 419f;
    global2 = func_5(Struct_1(_wgslsmith_f_op_f32(-993f - _wgslsmith_f_op_f32(floor(566f)))), _wgslsmith_sub_i32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 529f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, -417f, global2.a, -448f))), _wgslsmith_f_op_f32(f32(-1f) * -1045f), 1i, Struct_2(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b, 29u)], u_input.a), global1[_wgslsmith_index_u32(u_input.b, 29u)] | global1[_wgslsmith_index_u32(26111u, 29u)], Struct_1(var_0), true, Struct_1(global2.a))), abs(-(~u_input.a))), ~max(vec4<u32>(min(41536u, u_input.b), u_input.b, u_input.c, 20511u), select(~vec4<u32>(5779u, u_input.c, u_input.c, u_input.b), vec4<u32>(53762u, u_input.b, u_input.c, u_input.b) >> (vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))));
    global1 = array<i32, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0, var_0)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(global2.a))));
    global1 = array<i32, 29>();
    let var_2 = u_input.c & 0u;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_1.xx))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(select(var_2, ~1u, select(true, false, false)), abs(~u_input.c), ~var_2), firstTrailingBit(_wgslsmith_clamp_u32(var_2, abs(u_input.c), 0u) << (_wgslsmith_div_u32(8035u, var_2) % 32u)));
}

