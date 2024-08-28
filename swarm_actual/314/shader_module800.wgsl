struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(902f, -741f, 1999f, 970f, 1701f, 348f, -1148f, 213f, 996f, -1254f, -833f, 161f, 186f, 702f, 184f);

var<private> global1: i32;

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = vec4<u32>(u_input.c | u_input.a.x, max(u_input.c, _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.a.x, 34543u), 21093u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 140961u)), ~1861u) >> (~vec3<u32>(u_input.a.x, 0u, u_input.c) % vec3<u32>(32u)), vec3<u32>(0u, 83893u, 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), u_input.c << (~3679u % 32u)), _wgslsmith_clamp_u32(1u, u_input.a.x, 22237u)));
    var var_1 = Struct_1(-215f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u << (~var_0.x % 32u)), 15u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1895u, 15u)], -561f), _wgslsmith_f_op_f32(abs(808f)), -566f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 127f, global0[_wgslsmith_index_u32(u_input.c, 15u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1871f, 358f, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]) * vec4<f32>(-499f, global0[_wgslsmith_index_u32(4294967295u, 15u)], -1000f, 211f))), vec4<bool>(!arg_0.a.x, arg_0.a.x, -803f == global0[_wgslsmith_index_u32(var_0.x, 15u)], true)))), ~(~(~vec4<u32>(0u, 56964u, 19728u, 4294967295u))));
    global2 = array<Struct_2, 32>();
    global1 = u_input.b;
    let var_2 = vec2<u32>(u_input.a.x, var_1.e.x);
    return reverseBits(~67860u);
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_4(u_input.c ^ u_input.c, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(19858u, 15u)], -1512f) - global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 15u)])))), -519f));
    let var_1 = !((true || any(vec3<bool>(true, false, true))) & true) & all(!vec3<bool>(true, var_0.a > var_0.a, true));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c, abs(~1u), 369u, func_3(Struct_5(vec2<bool>(true, false)))), vec4<u32>(u_input.a.x, ~u_input.a.x, ~u_input.a.x, 0u));
    let var_3 = Struct_3(abs(1u) & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(10752u, var_2.x), ~_wgslsmith_clamp_u32(var_2.x, var_0.a, 43123u), u_input.c ^ 0u), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(trunc(-449f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1265f), global0[_wgslsmith_index_u32(min(u_input.a.x, var_0.a), 15u)]) * -2510f), var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -399f), global2[_wgslsmith_index_u32(0u, 32u)], Struct_1(_wgslsmith_div_f32(665f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] * var_0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x))), -1192f, -657f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(floor(179f)), _wgslsmith_f_op_f32(f32(-1f) * -508f), 631f))), firstTrailingBit(~(~vec4<u32>(21000u, u_input.c, 1u, u_input.a.x)))));
    var var_4 = u_input.b;
    return _wgslsmith_mult_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.e.yz), abs(-18168i << (u_input.c % 32u)), _wgslsmith_add_i32(min(u_input.b, u_input.d.x), 1i ^ u_input.e.x))), countOneBits(-(vec3<i32>(u_input.d.x, 65749i, 15551i) & ~vec3<i32>(u_input.d.x, u_input.d.x, 0i))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = array<Struct_2, 32>();
    global1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(func_2()), u_input.e.zxz | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -u_input.e.x, -2147483647i), u_input.e.xzz, vec3<i32>(-1i) * -u_input.d));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~u_input.c, u_input.a.x), 32u)];
    global1 = -16842i;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-104f, -1123f)) * var_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2471f, arg_0, 1128f, arg_0) + var_0.a.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_0.a.a, -1602f, 1365f))) + vec4<f32>(-1352f, arg_0, 1680f, -101f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a.d, var_0.a.d)), var_0.a.d)) - var_0.a.d), var_0.a.e);
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-28955i, u_input.e.x) | ~22862i, 15188i), u_input.e.x), u_input.d.yy);
    let var_0 = 45749u;
    let var_1 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.wwy)))), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, u_input.a.x), 15u)]))))).c.x, global2[_wgslsmith_index_u32(0u, 32u)], func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -861f)), _wgslsmith_f_op_f32(sign(744f))))));
    global2 = array<Struct_2, 32>();
    return Struct_5(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.b;
    let var_0 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1750f))));
    global1 = select((firstLeadingBit(-u_input.b) | 1i) | abs(func_2().x), func_2().x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(35144u, 15u)], -107f))) + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(52758u, 15u)], _wgslsmith_f_op_f32(-281f * global0[_wgslsmith_index_u32(41105u, 15u)])))) > global0[_wgslsmith_index_u32(~u_input.c ^ firstTrailingBit(_wgslsmith_div_u32(75942u, 23001u)), 15u)]);
    global0 = array<f32, 15>();
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(20709u, u_input.c, 58426u)), ~(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) & vec3<u32>(54251u, u_input.c, 1u))), ~(abs(u_input.c) & 15021u) >> ((u_input.a.x ^ ~_wgslsmith_mult_u32(u_input.c, 0u)) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.c, u_input.c, u_input.a.x, 34553u), vec4<u32>(u_input.c, 1u, 10793u, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, 25325u, 44541u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.c))), 33904u), 21483u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(u_input.d.x), u_input.e.x), ~(~u_input.e.x << (u_input.a.x % 32u)), 1i ^ _wgslsmith_div_i32(31176i, select(-2147483647i, -1i, true)), abs(-2147483647i >> (var_1.x % 32u))), vec4<u32>(var_1.x, 4294967295u, reverseBits(~abs(1u)), _wgslsmith_sub_u32(32988u, u_input.a.x)));
}

