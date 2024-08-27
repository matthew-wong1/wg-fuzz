struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(33167u));

var<private> global1: Struct_2 = Struct_2(Struct_1(0u));

var<private> global2: Struct_2 = Struct_2(Struct_1(4294967295u));

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1u), Struct_1(40918u), Struct_1(13306u), Struct_1(4294967295u), Struct_1(0u), Struct_1(50965u), Struct_1(4294967295u), Struct_1(0u), Struct_1(54509u), Struct_1(0u), Struct_1(15174u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(43586u), Struct_1(67993u), Struct_1(38646u), Struct_1(84169u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(32335u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global3 = array<Struct_1, 27>();
    var var_0 = u_input.e.x;
    global2 = arg_2;
    var var_1 = Struct_1(firstTrailingBit(arg_3.a));
    var var_2 = -abs(u_input.e.zz);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-2238f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(288f, _wgslsmith_f_op_f32(ceil(548f))) * 1696f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1372f, 1767f))))) + _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(894f, 1674f, true)), _wgslsmith_f_op_f32(max(672f, 314f))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    global2 = Struct_2(Struct_1(~global1.a.a));
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3(u_input.d, global2.a.a, Struct_2(global2.a), Struct_1(global1.a.a)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2766f, _wgslsmith_f_op_f32(func_3(vec4<u32>(global0.a.a, arg_2, arg_2, global2.a.a), 24890u, Struct_2(Struct_1(1u)), Struct_1(4294967295u))))))), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -664f))) + _wgslsmith_div_f32(428f, _wgslsmith_div_f32(-951f, 512f))))));
    global1 = Struct_2(Struct_1(10043u));
    var var_1 = abs(countOneBits(u_input.d.wz)) & ~u_input.d.zw;
    let var_2 = Struct_1(select(global1.a.a, firstTrailingBit(4435u >> (global1.a.a % 32u)) << (firstTrailingBit(firstTrailingBit(0u)) % 32u), any(vec2<bool>(true, true))));
    return 1822i | u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(77593i, u_input.e.x, u_input.b, ~35810i);
    global2 = Struct_2(global3[_wgslsmith_index_u32(u_input.d.x, 27u)]);
    let var_1 = _wgslsmith_add_vec3_i32(var_0.yyz, vec3<i32>(countOneBits(-3708i), abs(func_2(vec4<f32>(-1468f, -1000f, -222f, -140f), var_0.zzz, u_input.d.x)) ^ 2147483647i, ~var_0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, var_0.x, u_input.b, -60359i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 1i, 46329i, -8945i), vec4<i32>(var_0.x, -1i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, var_0.x, var_0.x)))));
    let var_2 = ~_wgslsmith_mod_vec4_u32(~u_input.d, vec4<u32>(1u, global2.a.a, 57340u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a, u_input.d.x, 17581u, u_input.d.x), vec4<u32>(u_input.d.x, 48538u, 4294967295u, u_input.d.x) & vec4<u32>(57944u, 88406u, global1.a.a, 4294967295u))));
    let var_3 = _wgslsmith_dot_vec3_i32(var_0.xwy, var_1 >> (abs(select(countOneBits(vec3<u32>(4294967295u, global2.a.a, 24263u)), firstLeadingBit(var_2.wyw), true)) % vec3<u32>(32u)));
    return Struct_1(~global1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1());
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(372f * -608f), -1199f)))));
    global1 = Struct_2(global0.a);
    global1 = Struct_2(func_1());
    global0 = Struct_2(func_1());
    let var_2 = u_input.e.xx;
    let var_3 = all(select(vec2<bool>(var_0, any(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_4 = 1i >> (global0.a.a % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(12652u, firstTrailingBit(54839u), max(44779u, global0.a.a)), 4294967295u), 755f, u_input.d.x ^ (~firstTrailingBit(global1.a.a) ^ _wgslsmith_dot_vec2_u32(u_input.d.ww >> (vec2<u32>(59492u, 26726u) % vec2<u32>(32u)), countOneBits(u_input.d.yx))), -1356f);
}

