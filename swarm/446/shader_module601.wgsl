struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(true), Struct_1(false), vec4<i32>(-1i, 2147483647i, 0i, 36299i));

var<private> global2: array<vec2<i32>, 5>;

var<private> global3: vec3<f32>;

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = global4.b;
    let var_1 = Struct_3(global1.b);
    global4 = Struct_2(var_1.a, global1.a, vec4<i32>(~global1.c.x, -17939i, countOneBits(global4.c.x & 0i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-40848i, u_input.b.x), 10755i)) << (vec4<u32>(countOneBits(u_input.c), _wgslsmith_mult_u32(u_input.d, 4294967295u) << (_wgslsmith_add_u32(u_input.e, 34650u) % 32u), ~u_input.c, 71810u << (min(1u, global0.x) % 32u)) % vec4<u32>(32u)));
    global1 = Struct_2(Struct_1(!(!all(vec2<bool>(global1.a.a, true)))), global1.a, global1.c);
    let var_2 = var_1;
    return ~abs(max(-reverseBits(2147483647i), _wgslsmith_mod_i32(i32(-1i) * -12017i, u_input.b.x)));
}

fn func_2() -> f32 {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(select(155f, global3.x, any(vec4<bool>(true, false, false, -3916i <= global4.c.x)))), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-global3.x)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global3.x, global3.x))))))));
    global4 = Struct_2(global1.a, Struct_1(false), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x << (~42153u % 32u), min(func_3(), abs(-2147483647i))), _wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(global4.c.x, global1.c.x), global4.c.yw), abs(global4.c.zx)), _wgslsmith_div_vec2_i32(vec2<i32>(global4.c.x, global4.c.x), global2[_wgslsmith_index_u32(1u, 5u)]) ^ global1.c.wy), func_3(), firstLeadingBit(-2147483647i)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(797f, global3.x, global3.x, 1028f) * vec4<f32>(1953f, -869f, global3.x, global3.x)))))));
    let var_1 = _wgslsmith_div_f32(1156f, 1150f);
    var var_2 = !vec3<bool>(false, true, !global4.b.a);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, 1718f)), _wgslsmith_f_op_f32(-890f - _wgslsmith_f_op_f32(floor(-862f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f)) - -1000f)), -626f));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = ~((abs(abs(vec3<u32>(4294967295u, 0u, 18145u))) >> (firstTrailingBit(~vec3<u32>(87656u, 2900u, arg_0)) % vec3<u32>(32u))) | ~(~(vec3<u32>(1u, 7159u, u_input.a) << (vec3<u32>(0u, global0.x, 4294967295u) % vec3<u32>(32u)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global3.x) * _wgslsmith_div_f32(global3.x, -767f)), _wgslsmith_f_op_f32(-global3.x), -137f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.x, 919f, 289f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2184f, global3.x, 1171f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, -553f, global3.x) - vec3<f32>(-363f, 1472f, 289f)))))));
    global3 = vec3<f32>(global3.x, _wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(func_2()));
    let var_0 = arg_0;
    global4 = Struct_2(Struct_1(global4.b.a), Struct_1(true), ~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(global4.c.x, -25766i, global1.c.x, 0i))));
    return Struct_2(Struct_1(any(select(vec2<bool>(false, global4.a.a), select(vec2<bool>(global4.b.a, global1.b.a), vec2<bool>(global1.a.a, global1.a.a), vec2<bool>(true, global1.b.a)), select(global1.b.a, true, true)))), Struct_1(global4.a.a), max(vec4<i32>(global4.c.x, abs(abs(global1.c.x)), ~global4.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1981i, -16190i), firstLeadingBit(global2[_wgslsmith_index_u32(91827u, 5u)]))), -vec4<i32>(-global1.c.x, -19565i, reverseBits(1i), _wgslsmith_add_i32(global4.c.x, global4.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(global0.x);
    var var_1 = func_1(~min(1u, countOneBits(max(global0.x, var_0))));
    let var_2 = global1.c.x;
    global1 = Struct_2(global1.b, global4.b, vec4<i32>(_wgslsmith_div_i32(1i, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, global0.x, 24551u), vec4<u32>(global0.x, 0u, 1u, 42936u))).c.x), ~var_1.c.x, select(countOneBits(26732i), var_1.c.x, ~u_input.d < 20441u), -abs(func_1(u_input.d).c.x)));
    global4 = func_1(var_0);
    global0 = abs(vec3<u32>(min(~u_input.e, 11999u), ~4294967295u >> (var_0 % 32u), u_input.a)) ^ max(~vec3<u32>(28139u, u_input.a ^ global0.x, u_input.c), vec3<u32>(u_input.a, var_0, ~_wgslsmith_dot_vec2_u32(global0.zy, global0.zz)));
    var var_3 = Struct_3(func_1(global0.x).a);
    let var_4 = select(vec3<bool>(286f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -1000f)), true, true), vec3<bool>(!(any(vec4<bool>(true, var_1.b.a, global1.a.a, var_3.a.a)) & var_1.b.a), true, ((true && var_1.a.a) & true) || (_wgslsmith_mod_u32(53508u, u_input.a) <= countOneBits(var_0))), !(!vec3<bool>(any(vec2<bool>(false, global4.a.a)), false, var_1.b.a | global4.b.a)));
    let var_5 = Struct_3(func_1(~global0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 1u, global0.x) ^ vec4<u32>(var_0, 1u, var_0, 1u), vec4<u32>(global0.x, global0.x, u_input.e, u_input.a))).a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-676f, global3.x, global3.x, global3.x)) - vec4<f32>(global3.x, -794f, global3.x, 1458f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, -152f, global3.x, 799f))) - _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 653f, 1455f, global3.x), vec4<f32>(-992f, global3.x, 552f, global3.x))))), func_1(_wgslsmith_add_u32(~53698u, 1u)).c.xx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2199f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(func_2())));
}

