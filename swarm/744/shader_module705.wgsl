struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: array<vec2<i32>, 5>;

var<private> global2: array<f32, 18> = array<f32, 18>(1537f, -1005f, -671f, -1224f, -1153f, 543f, -805f, -318f, 295f, 1362f, 406f, 1038f, 1674f, 145f, -1133f, 1742f, 658f, 1553f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = -1022f;
    let var_1 = Struct_5(Struct_3(arg_0), true);
    var var_2 = u_input.d;
    var var_3 = reverseBits(arg_0.b.x);
    let var_4 = select(vec2<bool>(var_1.b, true), select(!select(vec2<bool>(true, true), !vec2<bool>(var_1.b, var_1.b), !vec2<bool>(var_1.b, var_1.b)), select(vec2<bool>(true, -546f <= global2[_wgslsmith_index_u32(38346u, 18u)]), select(!vec2<bool>(var_1.b, false), vec2<bool>(true, true), select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), vec2<bool>(var_1.b, var_1.b))), vec2<bool>(false, true || var_1.b)), true), any(vec2<bool>(true, true)));
    return var_1.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_5) -> u32 {
    let var_0 = _wgslsmith_div_f32(-1323f, global2[_wgslsmith_index_u32(arg_3.a.a.b.x, 18u)]);
    global1 = array<vec2<i32>, 5>();
    global2 = array<f32, 18>();
    global0 = array<Struct_4, 8>();
    global1 = array<vec2<i32>, 5>();
    return countOneBits(~(~(~0u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: i32) -> f32 {
    global0 = array<Struct_4, 8>();
    global2 = array<f32, 18>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + global2[_wgslsmith_index_u32(u_input.c, 18u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)] * arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(787u, 18u)], -559f)) + _wgslsmith_f_op_f32(arg_2.x + 1713f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1533f))))))));
    var_0 = true;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-608f, _wgslsmith_f_op_f32(floor(140f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(abs(-1300f))), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(arg_2.x, 1403f)), true)) - _wgslsmith_f_op_f32(abs(arg_2.x)))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_5(func_2(Struct_2((-2147483647i << (u_input.c % 32u)) >> (92182u % 32u), _wgslsmith_add_vec3_u32(u_input.a.wwz, u_input.b.zxw), vec3<u32>(u_input.e, abs(10140u), _wgslsmith_dot_vec3_u32(u_input.b.zyw, vec3<u32>(53889u, 6382u, 0u))), u_input.d.x)), true);
    let var_1 = global0[_wgslsmith_index_u32(abs(~20475u), 8u)];
    var var_2 = Struct_4(all(vec2<bool>(all(var_1.b.wy), any(!var_1.b.zyy))), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(func_4(vec4<u32>(1u << (0u % 32u), func_3(vec3<bool>(var_0.b, var_0.b, true), var_0.a.a.b.x, global1[_wgslsmith_index_u32(arg_0.x, 5u)], var_0), select(var_1.d, 55710u, var_0.b), _wgslsmith_div_u32(0u, arg_0.x)), vec2<i32>(-48217i, 2147483647i), var_1.c, ~var_0.a.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-962f)))), 1866f), 4294967295u);
    global2 = array<f32, 18>();
    let var_3 = var_1.c.x;
    return Struct_3(Struct_2(-select(-27469i, -1i, any(vec3<bool>(var_0.b, false, false))), u_input.a.zwx, (~vec3<u32>(4294967295u, var_2.d, 49986u) ^ ~u_input.b.yxw) ^ (u_input.a.xzx ^ vec3<u32>(var_1.d, arg_0.x, var_1.d)), reverseBits(u_input.d.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-823f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + 110f)), _wgslsmith_f_op_f32(-553f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(933f - -773f))), vec4<f32>(-279f, arg_0.x, -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.a.b.x, 18u)]))))), true);
    var var_1 = arg_3 & vec4<i32>(-2147483647i, arg_1.a.d, ~_wgslsmith_dot_vec4_i32(arg_3, -vec4<i32>(arg_1.a.d, arg_1.a.d, 1i, -2147483647i)), (~24593i >> (_wgslsmith_add_u32(u_input.a.x, 0u) % 32u)) | -2107i);
    var var_2 = true;
    let var_3 = Struct_5(func_2(arg_1.a), !(!(!var_0.d && true)));
    let var_4 = func_1((u_input.b.ww | vec2<u32>(4294967295u, 27221u)) | (vec2<u32>(_wgslsmith_sub_u32(60807u, u_input.a.x), func_1(vec2<u32>(0u, arg_1.a.b.x)).a.c.x) >> ((firstTrailingBit(var_3.a.a.c.zz) >> (~vec2<u32>(arg_1.a.c.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return vec3<i32>(~arg_3.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_3.x, 1i), ~arg_1.a.d << (19417u % 32u)) & 2147483647i, ~(-1i << (arg_1.a.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 18>();
    var var_0 = 881f;
    var var_1 = firstTrailingBit(~_wgslsmith_mod_vec3_i32(func_5(vec4<f32>(1145f, -731f, 260f, global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), func_1(vec2<u32>(4294967295u, 1u)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 38186i, u_input.d.x, 2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -23480i), vec4<i32>(-1i, 7369i, -2147483647i, u_input.d.x))), reverseBits(u_input.d)));
    var var_2 = any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, !all(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.c, 18u)], -1000f)) < _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 18u)]))));
    var_1 = vec3<i32>(50047i, -2147483647i, -u_input.d.x);
    var var_3 = min(_wgslsmith_add_i32(select(_wgslsmith_mult_i32(-u_input.d.x, ~u_input.d.x), _wgslsmith_add_i32(var_1.x, 0i), true), -35225i), func_5(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 18u)] - global2[_wgslsmith_index_u32(34822u, 18u)]))), _wgslsmith_f_op_f32(ceil(-2374f)), -1343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a, u_input.d.xy, vec3<f32>(global2[_wgslsmith_index_u32(28841u, 18u)], -575f, 1000f), u_input.d.x)) + _wgslsmith_f_op_f32(step(1188f, -1000f)))), func_1(u_input.b.zz), vec2<bool>(false, true), vec4<i32>(46178i, -54819i, i32(-1i) * -25522i, -u_input.d.x >> (_wgslsmith_sub_u32(u_input.e, u_input.b.x) % 32u))).x);
    var var_4 = vec2<u32>(0u, countOneBits(~abs(0u)));
    var var_5 = _wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)] - global2[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_div_f32(-389f, -604f), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(962f))))));
    var var_6 = _wgslsmith_add_vec3_u32(vec3<u32>(12058u, u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(0u >> (var_4.x % 32u), var_4.x))), firstLeadingBit(~vec3<u32>(abs(5103u), var_4.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.zx, abs(func_2(func_2(Struct_2(var_1.x, u_input.a.wzz, vec3<u32>(var_6.x, 15346u, 1u), -1i)).a).a.d | -firstLeadingBit(u_input.d.x)), -(~(-countOneBits(20553i))));
}

