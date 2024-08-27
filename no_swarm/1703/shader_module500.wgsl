struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<f32>(-376f, 924f, 1000f, 471f)), Struct_2(vec4<f32>(1993f, -763f, -389f, 1021f)), Struct_2(vec4<f32>(527f, 1367f, -173f, 323f)), Struct_2(vec4<f32>(-1132f, 602f, -693f, -1704f)), Struct_2(vec4<f32>(-699f, -200f, -920f, 540f)), Struct_2(vec4<f32>(-1199f, -1578f, -370f, 440f)), Struct_2(vec4<f32>(135f, -830f, 1000f, -403f)), Struct_2(vec4<f32>(-1000f, 624f, -1000f, 1000f)), Struct_2(vec4<f32>(-1018f, -1242f, -548f, -639f)), Struct_2(vec4<f32>(-1142f, -1078f, 217f, -200f)), Struct_2(vec4<f32>(1344f, 352f, -569f, -1011f)), Struct_2(vec4<f32>(303f, 573f, -1853f, 1884f)), Struct_2(vec4<f32>(1470f, 374f, -1000f, 451f)), Struct_2(vec4<f32>(-337f, 744f, -1549f, -413f)), Struct_2(vec4<f32>(390f, 1000f, 2573f, 2100f)), Struct_2(vec4<f32>(369f, -392f, -1766f, 740f)), Struct_2(vec4<f32>(746f, 1000f, 1948f, -1426f)));

var<private> global2: array<vec2<bool>, 17>;

var<private> global3: bool = true;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec3<u32> {
    global1 = array<Struct_2, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + 800f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.x) - _wgslsmith_div_f32(-1381f, arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c.www) * _wgslsmith_f_op_vec3_f32(trunc(global4.c.xyz))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, global4.a, 2691f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -526f, -943f) * arg_0.a.zzy)))));
    let var_1 = Struct_1(1803f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1520f - 332f), _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), _wgslsmith_div_f32(-138f, var_0.x), -427f) * global4.c)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(567f - -668f))), -951f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(-1333f))))), arg_1.a.x, arg_0.a.x), -(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global4.d, global4.d, global4.d)), -vec3<i32>(arg_2, global4.d, -25578i))));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_0.a.xwz);
    return vec3<u32>((u_input.a.x >> (countOneBits(41554u) % 32u)) ^ max(42260u, u_input.a.x), _wgslsmith_clamp_u32(~(~max(u_input.a.x, 4294967295u)), ~u_input.a.x, max(_wgslsmith_clamp_u32(countOneBits(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), select(13345u, 31310u, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), 29287u)), 0u);
}

fn func_2() -> Struct_3 {
    global4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x - -507f)))), global4.b, _wgslsmith_div_vec4_f32(global4.c, _wgslsmith_f_op_vec4_f32(-global4.c)), ~_wgslsmith_add_i32(~(-53605i), -global4.d));
    let var_0 = ~_wgslsmith_mult_vec2_i32(reverseBits(-vec2<i32>(31214i, global4.d)), min(~abs(vec2<i32>(-11116i, global4.d)), vec2<i32>(-40847i, global4.d)));
    let var_1 = global4.b.x;
    var var_2 = ~func_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, global4.a, -1633f, global4.b.x) + vec4<f32>(-1479f, global4.c.x, global4.b.x, global4.a))), global1[_wgslsmith_index_u32(72254u, 17u)], -global4.d);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(max(global4.c.x, global4.b.x))) - _wgslsmith_f_op_f32(select(global4.a, global4.b.x, global0[_wgslsmith_index_u32(0u, 24u)] | false))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.c.xx))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -1149f) - global4.c.zx), global4.b.ww)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, _wgslsmith_div_f32(208f, 1100f))), !select(global2[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(global0[_wgslsmith_index_u32(31371u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), !global0[_wgslsmith_index_u32(4294967295u, 24u)]))), global4.b.xwz);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    global2 = array<vec2<bool>, 17>();
    let var_0 = !(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(17048u, u_input.a.x, u_input.a.x))), 24u)], _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) <= firstTrailingBit(u_input.a.x), !all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(77841u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])), false));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 17u)];
    global1 = array<Struct_2, 17>();
    var var_2 = !(!(!all(vec2<bool>(global0[_wgslsmith_index_u32(41934u, 24u)], var_0.x))));
    return global4.d;
}

fn func_1() -> vec2<i32> {
    var var_0 = ~u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1032f + 488f) * _wgslsmith_f_op_f32(global4.c.x * global4.b.x)))), _wgslsmith_f_op_f32(-global4.a))), global4.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)), _wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(f32(-1f) * -692f)), 1f))), countOneBits(func_4(291f, func_2(), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1157f, global4.c.x), global4.b.ww), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(578f, global4.a, 937f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.a, -536f, global4.a, global4.c.x))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(240f, 1966f, var_1.a, global4.b.x), global4.c)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1000f, 447f, global4.c.x)))))), global4.b));
    global2 = array<vec2<bool>, 17>();
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
    return -vec2<i32>(reverseBits(~_wgslsmith_mod_i32(-2147483647i, global4.d)), global4.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(global4.b * global4.b);
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-24883i, global4.d, var_1.x, global4.d), vec4<i32>(1410i, -21156i, global4.d, 1i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a.x), vec4<u32>(68548u, 1u, 7551u, 4294967295u)) % 32u), _wgslsmith_add_i32(countOneBits(0i), 36072i), max(1i, global4.d), min(~var_1.x, _wgslsmith_clamp_i32(19334i, 1i, var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(923f + global4.c.x))), ~u_input.a.x);
}

