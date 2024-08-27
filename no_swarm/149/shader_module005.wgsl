struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(20368u, 4294967295u, 1u, 68629u), vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648)), false, vec2<i32>(0i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 4294967295u, 53941u, 4294967295u), vec4<i32>(20704i, 1325i, -605i, -49156i), false, vec2<i32>(1i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<i32>(8284i, i32(-2147483648), 1i, 2147483647i), true, vec2<i32>(-21792i, -23562i)), Struct_1(vec4<u32>(9218u, 46797u, 33234u, 23008u), vec4<i32>(0i, 1i, 45142i, 1i), false, vec2<i32>(9790i, -12777i)), Struct_1(vec4<u32>(0u, 28400u, 49351u, 35817u), vec4<i32>(2147483647i, 1i, -19158i, -28386i), true, vec2<i32>(-46853i, i32(-2147483648))));

var<private> global1: vec4<f32> = vec4<f32>(-100f, -1401f, -845f, -264f);

var<private> global2: vec3<u32>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(46538u, 1u, 0u, 1u), vec4<i32>(6599i, -27676i, -1i, 3009i), true, vec2<i32>(0i, -14711i));

var<private> global4: array<i32, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(1480f)), -360f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1708f, arg_0.x, 1692f, 137f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -1830f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, global1.x, -149f, -1067f)))))));
    let var_0 = global3.a.zwx;
    global0 = array<Struct_1, 5>();
    var var_1 = global2.x;
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(~_wgslsmith_mod_u32(firstLeadingBit(var_0.x), var_0.x), global3.a.x, true), _wgslsmith_add_u32(174u, ~var_0.x)), 5u)];
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_1(~(vec4<u32>(global2.x, arg_1.a.x, 52183u, 4294967295u) ^ global3.a), vec4<i32>(u_input.b.x, -arg_0.x & 0i, -2147483647i, arg_0.x), global3.c, abs(vec2<i32>(1i, abs(-global4[_wgslsmith_index_u32(global2.x, 32u)]))));
    let var_1 = arg_1;
    return -(~(~vec4<i32>(0i, i32(-1i) * -31543i, ~2147483647i, arg_1.d.x)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(654f))))));
    global2 = arg_0.a.xzw;
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = Struct_1(~max(arg_0.a, firstTrailingBit(~vec4<u32>(global2.x, global2.x, 3554u, 11485u))), select(_wgslsmith_div_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(global2.x >> (global2.x % 32u), 32u)], 0i & global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(global2.x, 32u)] >> (73445u % 32u), global3.d.x), func_3(vec3<i32>(u_input.a.x, global4[_wgslsmith_index_u32(global3.a.x, 32u)], -1i), Struct_1(arg_0.a, vec4<i32>(-2147483647i, -2147483647i, global4[_wgslsmith_index_u32(89018u, 32u)], 0i), true, arg_0.b.ww), !vec3<bool>(true, arg_0.c, global3.c))), ~vec4<i32>(i32(-1i) * -4748i, global4[_wgslsmith_index_u32(global2.x, 32u)], _wgslsmith_dot_vec2_i32(arg_0.b.yy, u_input.a.zx), 0i), global3.c), true && arg_0.c, vec2<i32>(abs(func_3(u_input.b & arg_0.b.yyz, Struct_1(vec4<u32>(arg_0.a.x, global2.x, arg_0.a.x, 1u), arg_0.b, global3.c, arg_0.b.zw), vec3<bool>(false, false, arg_0.c)).x), -1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 638f, global1.x, 221f), vec4<f32>(global1.x, -1076f, global1.x, 497f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1098f, global1.x, 1387f, global1.x) * vec4<f32>(global1.x, global1.x, global1.x, -733f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -498f, -932f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1250f, 549f, 1521f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(842f, global1.x, -1137f, 1127f), vec4<f32>(-595f, global1.x, global1.x, global1.x)), vec4<f32>(-976f, 1000f, global1.x, 1554f)))))));
    return _wgslsmith_f_op_f32(990f * global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 134f;
    let var_1 = func_1(global1.zzx, !((global2.x << ((0u | global2.x) % 32u)) == global2.x));
    global0 = array<Struct_1, 5>();
    global2 = vec3<u32>(1u >> (global2.x % 32u), global3.a.x, global2.x);
    global1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_2(var_1)), 2278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * -1585f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-300f + global1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -659f)))));
    var var_2 = var_1.b.x;
    let var_3 = _wgslsmith_f_op_f32(-global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(4294967295u, global3.a.x, global3.a.x, ~4294967295u)) ^ vec4<u32>(_wgslsmith_mod_u32(global2.x & global3.a.x, 1u), _wgslsmith_sub_u32(24321u, _wgslsmith_mod_u32(26436u, global2.x)), var_1.a.x, ~_wgslsmith_div_u32(global3.a.x, 1u)), select(vec3<u32>(36210u, func_1(global1.wwy, false).a.x << (global3.a.x % 32u), 0u), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.a.x, global3.a.x, global2.x), global3.a.wzx, var_1.a.yyy), select(var_1.a.xzz, vec3<u32>(1u, 0u, 90161u), false)), vec3<bool>(!all(vec3<bool>(var_1.c, true, false)), false, ~global2.x > _wgslsmith_clamp_u32(4294967295u, global2.x, global3.a.x))), _wgslsmith_add_vec4_u32(func_1(global1.yzx, global3.c).a, firstTrailingBit(var_1.a)), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-884f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 122f))));
}

