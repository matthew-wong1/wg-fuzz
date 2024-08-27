struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(0u, 48713u);

var<private> global2: Struct_4 = Struct_4(Struct_1(4294967295u, 0u), -646f, true, Struct_3(vec3<i32>(-2546i, -1i, 13047i), Struct_1(1u, 4294967295u), vec3<bool>(false, false, true), vec4<bool>(false, false, true, true), vec2<i32>(2147483647i, -154i)));

var<private> global3: array<f32, 18>;

var<private> global4: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -3015f)))));
    global2 = Struct_4(Struct_1(110077u, firstTrailingBit(~_wgslsmith_div_u32(global2.d.b.b, 31050u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1889f, global2.b, true)) * _wgslsmith_f_op_f32(f32(-1f) * -130f))))), (~_wgslsmith_dot_vec2_i32(global2.d.a.zy, arg_1.a.xx) >> (_wgslsmith_clamp_u32(44789u, 1u, abs(arg_0)) % 32u)) > max(_wgslsmith_sub_i32(global2.d.a.x, 8531i) & (global2.d.e.x ^ u_input.c.x), ~2147483647i), global2.d);
    global1 = arg_1.b;
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(arg_1.b.a), _wgslsmith_dot_vec2_u32(vec2<u32>(~global1.b, firstTrailingBit(9597u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(global1.a, 42799u), u_input.d, vec2<bool>(global2.c, true)), firstLeadingBit(u_input.b))), global1.a), vec3<u32>(1u, ~(~(~arg_0)), countOneBits(~global1.b))), 18u)];
    var var_1 = arg_1.d;
    return ~_wgslsmith_clamp_u32(global1.b, ~abs(0u), 24173u);
}

fn func_2() -> bool {
    global2 = Struct_4(Struct_1(79788u, global1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -370f))))), !((u_input.a << (global2.a.b % 32u)) < (u_input.c.x << (35800u % 32u))) & (u_input.b.x < _wgslsmith_add_u32(global1.b, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, global2.a.b))), Struct_3(max(firstLeadingBit(vec3<i32>(0i, u_input.c.x, u_input.a)), global2.d.a), Struct_1(79456u, func_3(~4294967295u, Struct_3(vec3<i32>(global2.d.a.x, global2.d.e.x, 33567i), Struct_1(0u, 4294967295u), vec3<bool>(global4.x, global2.d.d.x, false), vec4<bool>(true, false, true, global2.d.c.x), vec2<i32>(u_input.c.x, 1i)))), global2.d.c, vec4<bool>(all(!global2.d.c), global2.c, 59256u >= (u_input.b.x << (global1.a % 32u)), _wgslsmith_f_op_f32(floor(384f)) > 386f), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 46136i), vec2<i32>(-u_input.a, 0i))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1490f), global2.b, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mult_u32(4294967295u, 0u)), 18u)] * -278f));
    var var_0 = Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, global0.x, global0.x), vec3<f32>(306f, 160f, global3[_wgslsmith_index_u32(global1.a, 18u)]), false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 18u)], global3[_wgslsmith_index_u32(global2.d.b.a, 18u)], global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<f32>(-305f, global2.b, global0.x), true)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1139f, -1128f, global2.b) - vec3<f32>(global2.b, -149f, 1691f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, global0.x, global2.b), vec3<f32>(-898f, global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(u_input.b.x, 18u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b, 575f, -2025f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], -847f, -2263f) * vec3<f32>(1650f, global2.b, 1000f))), true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-3002f, 2680f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], global3[_wgslsmith_index_u32(u_input.b.x, 18u)])))))), _wgslsmith_f_op_vec2_f32(floor(global0.xz)))), global2.d.a.x, _wgslsmith_f_op_vec2_f32(round(global0.zy)));
    global4 = vec2<bool>(true, any(select(vec4<bool>(true, true, global4.x, global4.x), global2.d.d, select(global2.d.d, vec4<bool>(true, global2.d.c.x, true, false), false))) || true);
    let var_1 = true;
    return !all(vec4<bool>(!any(vec4<bool>(true, global2.d.c.x, false, false)), var_1, true, global2.c));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.b, 18u)] - _wgslsmith_f_op_f32(min(886f, _wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 18u)]))))));
    var var_1 = !select(global2.d.d.xyz, vec3<bool>(true, arg_0, any(vec3<bool>(true, true, true))), vec3<bool>(!(1142f != global2.b), any(global2.d.d.ywz), func_2()));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(global2.a.a), 18u)])))));
    return ~min(u_input.d.x, ~_wgslsmith_add_u32(~global1.a, ~37715u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(0u, select(4294967295u, ~_wgslsmith_mod_u32(0u ^ global1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.b.b, 66903u, global1.b), vec3<u32>(6801u, 39957u, global2.a.b))), global2.d.d.x));
    let var_0 = vec3<u32>(4294967295u, func_1(true), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4363u, 21397u, 0u, 9811u), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.d.b.b, u_input.b.x, 1u, 0u), vec4<u32>(global2.d.b.b, u_input.d.x, 4294967295u, 87099u)), min(vec4<u32>(51696u, 4294967295u, 1u, global1.a), vec4<u32>(35432u, global1.b, 3058u, 0u)))), ~(vec4<u32>(u_input.d.x, global2.d.b.a, 6531u, 0u) | ~vec4<u32>(4316u, 40279u, 3017u, u_input.d.x))));
    global4 = vec2<bool>(6339i <= u_input.c.x, all(global2.d.d));
    var var_1 = false;
    var var_2 = global2.d;
    var var_3 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1079f, global0.x))))), 757f));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1567f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -403f)) + _wgslsmith_f_op_f32(-global0.x)))), var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a))) * _wgslsmith_f_op_f32(min(var_3.a, _wgslsmith_f_op_f32(abs(global2.b))))), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0.x), 18u)]))));
    var var_5 = ~min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, global2.a.a), 0u & u_input.d.x, ~(~13892u)), _wgslsmith_dot_vec2_u32(~(~var_0.xz), u_input.d));
    let var_6 = abs(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-125f)), u_input.a, i32(-1i) * -23360i);
}

