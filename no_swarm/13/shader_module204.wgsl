struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: vec3<u32>;

var<private> global2: u32 = 0u;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), true, 0i, vec4<i32>(0i, 6770i, 1i, 0i));

var<private> global4: array<vec2<i32>, 6>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.b.yw), _wgslsmith_f_op_vec2_f32(vec2<f32>(528f, 717f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 22u)], 764f)) * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.a, false)))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 22u)] * 1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f)))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-585f - arg_1.a), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.c.x, 22u)])), any(vec2<bool>(global3.b, global3.b)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-160f, var_1))))), _wgslsmith_f_op_f32(-var_0.x), false));
    let var_3 = Struct_2(744f, arg_1.b);
    var var_4 = u_input.c.zy;
    return u_input.c.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-arg_0, -2147483647i, arg_0), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-16666i, -55224i, -25958i, arg_0), vec4<i32>(-15599i, 12244i, global3.d.x, global3.a)), ~2147483647i))) << (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(26967u, func_3(u_input.c.wy, Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], vec4<f32>(global0[_wgslsmith_index_u32(51547u, 22u)], -1345f, 210f, global0[_wgslsmith_index_u32(u_input.b, 22u)])))), global1.x), ~u_input.c.x, global1.x) % vec3<u32>(32u));
    let var_1 = ~(~44141u);
    global1 = select(vec3<u32>(1u, 0u, 1u), ~vec3<u32>(0u, 65403u, ~global1.x), !vec3<bool>(false, true, !all(vec4<bool>(global3.b, false, global3.b, global3.b))));
    global1 = u_input.c.ywx;
    let var_2 = 0u >= (u_input.b << ((u_input.a << (((u_input.b & var_1) & ~27642u) % 32u)) % 32u));
    return Struct_1(-2147483647i, true, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global3.c, 935i), arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.d.yz, global4[_wgslsmith_index_u32(0u, 6u)]), select(var_0.x, var_0.x, var_2) ^ -2147483647i, _wgslsmith_clamp_i32(arg_0, abs(global3.d.x), -global3.a), (arg_0 >> (var_1 % 32u)) >> (u_input.a % 32u)), ~((global3.d | global3.d) >> ((vec4<u32>(var_1, 4294967295u, u_input.b, 0u) & u_input.c) % vec4<u32>(32u))), global3.d));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = func_2(arg_1.x ^ _wgslsmith_mod_i32(~(-36553i) | ~arg_0.x, -(u_input.d.x >> (1u % 32u))));
    var var_1 = Struct_2(1f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(509f, -555f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 22u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)] - global0[_wgslsmith_index_u32(u_input.a, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 22u)]) - global0[_wgslsmith_index_u32(u_input.b, 22u)])) - vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 22u)] - global0[_wgslsmith_index_u32(~4294967295u, 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2636u, 22u)] - -754f)), global0[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(56887u, 22u)]))))));
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(879f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 22u)], -938f))))), _wgslsmith_f_op_vec2_f32(var_1.b.zw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 1178f) * var_1.b.xx))), vec2<bool>(true, all(vec2<bool>(true, false))))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1661f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 1u), 22u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -157f))))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mult_u32(abs(global1.x), global1.x));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i << (~u_input.a % 32u)), global4[_wgslsmith_index_u32(0u >> (~u_input.a % 32u), 6u)]), global3.d.wx);
    global2 = func_1(global3.d.xwy, select(vec3<i32>(global3.a, var_1.x, -1i) ^ ~vec3<i32>(var_1.x, 645i, 2147483647i), vec3<i32>(i32(-1i) * -23628i, _wgslsmith_mult_i32(-12895i, global3.d.x), 1i), global3.b)) | func_3(vec2<u32>(~_wgslsmith_sub_u32(0u, global1.x), ~(~1u)), Struct_2(global0[_wgslsmith_index_u32(global1.x, 22u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], -1976f, global0[_wgslsmith_index_u32(global1.x, 22u)])) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 1135f, global0[_wgslsmith_index_u32(global1.x, 22u)]), vec4<f32>(-264f, -935f, global0[_wgslsmith_index_u32(u_input.b, 22u)], 920f))))));
    let var_2 = ~global3.d.zwz << ((vec3<u32>(global1.x, 67424u, ~u_input.c.x) << (~(~reverseBits(u_input.c.zyy)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global3 = func_2(14806i);
    let var_3 = vec2<f32>(-782f, _wgslsmith_f_op_f32(-240f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1084f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(8641u, 22u)] - 278f))))));
    var var_4 = vec2<bool>(global3.b, (i32(-1i) * -59665i) >= _wgslsmith_dot_vec2_i32(global3.d.xw, global4[_wgslsmith_index_u32(global1.x, 6u)]));
    var var_5 = !all(vec2<bool>(all(vec3<bool>(true, true, global3.b)) & var_4.x, !any(vec4<bool>(global3.b, false, true, global3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1792f, global0[_wgslsmith_index_u32(0u, 22u)])) + 634f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1434f)))))), -abs(select(3392i << (global1.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 51225i), global4[_wgslsmith_index_u32(u_input.b, 6u)]), select(false, global3.b, var_4.x))), _wgslsmith_f_op_vec2_f32(-var_3));
}

