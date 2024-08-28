struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 8> = array<f32, 8>(-1229f, 245f, 296f, -140f, 1479f, -730f, 562f, 2656f);

var<private> global2: array<i32, 10>;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(min(abs(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(u_input.a.x, u_input.c.x, 45221u, 45951u), global0.a)), global0.a), vec4<u32>(~58199u, _wgslsmith_mult_u32(4294967295u, global0.a.x), ~4294967295u, 1u) ^ ~firstTrailingBit(vec4<u32>(4294967295u, global0.a.x, global0.a.x, u_input.b))));
    var var_1 = Struct_1(var_0.a);
    var var_2 = abs(_wgslsmith_clamp_i32(-(i32(-1i) * -6120i) >> (~(~0u) % 32u), firstTrailingBit(min(-6719i, 0i)), ~global2[_wgslsmith_index_u32(0u << (var_1.a.x % 32u), 10u)]));
    var_2 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(1u | global0.a.x, 10u)]), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.d.yz), ~(-19690i))), global2[_wgslsmith_index_u32(22629u, 10u)]);
    global0 = var_0;
    return ~(~min(vec3<u32>(1u, var_1.a.x, 0u), abs(var_0.a.yyx))) ^ ~select(abs(~global0.a.xxx), abs(global0.a.ywx) | _wgslsmith_add_vec3_u32(global0.a.zyy, vec3<u32>(40700u, u_input.b, u_input.a.x)), vec3<bool>(true, true, true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<f32> {
    let var_0 = 20220u;
    global1 = array<f32, 8>();
    let var_1 = arg_0;
    let var_2 = vec4<u32>(select(var_1.a.x, ~37963u, -456f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-460f * 1380f) - arg_1)), 48515u, abs(~var_0), 4294967295u);
    var var_3 = func_3();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 8u)] - 1536f), arg_1, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0, 8u)])), _wgslsmith_div_f32(-2338f, 234f))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1, -1587f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f + global1[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1088f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1767f))), -1405f, arg_2))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(global0.a), -900f, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, -223f, -784f, -593f) - vec4<f32>(-1118f, 242f, -1612f, -1161f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 776f, 1306f, 1391f) - vec4<f32>(global1[_wgslsmith_index_u32(global0.a.x, 8u)], -481f, global1[_wgslsmith_index_u32(1u, 8u)], 1000f)), vec4<f32>(-429f, -552f, 848f, global1[_wgslsmith_index_u32(global0.a.x, 8u)])))))));
    let var_1 = arg_2;
    let var_2 = countOneBits(countOneBits(_wgslsmith_div_vec3_u32(var_1.a.yxy, (var_1.a.yxy & global0.a.yxw) << (vec3<u32>(37185u, 1u, u_input.b) % vec3<u32>(32u)))));
    var var_3 = var_1;
    var var_4 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_2, global1[_wgslsmith_index_u32(var_1.a.x, 8u)], true)).x)));
    return Struct_1(~vec4<u32>(~var_2.x, global0.a.x, u_input.b, 4294967295u) ^ _wgslsmith_add_vec4_u32(global0.a, ~(~global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(global0.a.x, u_input.b) >> (u_input.a.x % 32u), 64237u, ~80347u, _wgslsmith_add_u32(_wgslsmith_add_u32(global0.a.x, 1u), _wgslsmith_sub_u32(29917u, u_input.b))));
    var var_0 = global0.a.zyy;
    var_0 = ~u_input.c;
    var var_1 = Struct_1(global0.a);
    var_1 = func_1(-(vec3<i32>(-1i) * -(u_input.d & u_input.d)), -28117i, Struct_1(reverseBits(vec4<u32>(4294967295u, ~0u, u_input.b, ~27630u))));
    global0 = Struct_1(vec4<u32>(min(_wgslsmith_sub_u32(var_1.a.x, 36981u) ^ 43074u, 0u), var_0.x, 4294967295u, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_1.a.x, 8u)])) * 445f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 8u)], 486f))), 435f, global1[_wgslsmith_index_u32(~max(4294967295u, var_0.x), 8u)])), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), ~vec2<u32>(1u, 0u)), ~12103u), u_input.b), vec3<i32>(-25657i, 45301i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 6638i, -1i, 2147483647i), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(global0.a.x, 10u)], -27121i, 52966i) & vec4<i32>(u_input.e, u_input.d.x, u_input.e, global3.x)) & min(10083i, u_input.d.x)));
}

