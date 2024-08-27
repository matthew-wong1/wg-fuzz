struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: u32) -> vec4<f32> {
    global0 = arg_2.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f));
    let var_1 = any(select(select(vec2<bool>(-59726i <= arg_2.x, arg_0.x), select(!vec2<bool>(arg_0.x, false), select(arg_0.yz, arg_0.xy, true), all(arg_0.xx)), false), vec2<bool>(_wgslsmith_mod_u32(17304u, arg_3) == _wgslsmith_div_u32(38767u, arg_1.x), !(!arg_0.x)), all(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), arg_0.x), arg_0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(2745f)), global1[_wgslsmith_index_u32(arg_1.x, 29u)]) + vec2<f32>(_wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1062f, 1138f, arg_0.x)) * global1[_wgslsmith_index_u32(abs(u_input.a.x), 29u)])), -142f));
    let var_3 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))))), 189f, _wgslsmith_f_op_f32(floor(-1000f)), global1[_wgslsmith_index_u32(min(1u, 21005u), 29u)]);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(~(~1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(54004u, 29u)] * -738f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f)), 1283f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35596u, 29u)] * 125f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec4<u32>(49325u, 4294967295u, 0u, 62741u), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-23949i, 1049i)), ~19202u)))), firstLeadingBit(vec4<i32>(reverseBits(0i), 0i, _wgslsmith_clamp_i32(6325i, 1i, -48168i), 1i) >> (~abs(vec4<u32>(0u, 1u, arg_0, u_input.a.x)) % vec4<u32>(32u))));
    global0 = var_0.c.x;
    global1 = array<f32, 29>();
    var var_1 = vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xx), arg_0) & _wgslsmith_mod_u32(arg_0, 1u), ~4294967295u, ~_wgslsmith_clamp_u32(~u_input.a.x, arg_0, 4294967295u), arg_0);
    global0 = 57315i;
    return 53109u;
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2(4294967295u) << (23135u % 32u), 29u)]);
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1859f, var_0), -822f)))), -853f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] - -267f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(52003u, 29u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(948f, 269f, 1970f, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-398f, -954f, global1[_wgslsmith_index_u32(0u, 29u)], var_0)))))));
    global1 = array<f32, 29>();
    let var_3 = select(~_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 0i, -1i, -34243i), vec4<i32>(1i, abs(0i), 43073i, ~(-1i))), select(~vec4<i32>(1i, 1i, 1i, 1i), ~reverseBits(~vec4<i32>(1i, -1i, 0i, 41034i)), true), all(vec2<bool>(false, all(vec2<bool>(true, true)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0, global1[_wgslsmith_index_u32(0u, 29u)], -413f) * vec4<f32>(var_2.x, var_0, var_2.x, global1[_wgslsmith_index_u32(21683u, 29u)])) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1127f, global1[_wgslsmith_index_u32(1u, 29u)], 657f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1000f, -2769f, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    global0 = -4327i >> (~(~u_input.a.x) % 32u);
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(abs(abs(vec2<i32>(arg_2.c.x, arg_2.c.x))), arg_2.c.yz), ~_wgslsmith_add_vec2_i32(~arg_2.c.xz, select(vec2<i32>(25628i, 39149i), arg_2.c.zz, vec2<bool>(false, false))), ~arg_2.c.yw), ~arg_2.c.yy);
    global0 = min(~2147483647i, arg_2.c.x | (~arg_2.c.x ^ _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_2.c.yxz), abs(arg_2.c.wyy))));
    global1 = array<f32, 29>();
    let var_0 = -vec4<i32>(-reverseBits(-1i & arg_2.c.x), _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.c.xz), _wgslsmith_sub_vec2_i32(arg_2.c.zw, arg_2.c.xx)) >> (arg_0.x % 32u), 41217i, ~countOneBits(arg_2.c.x));
    return Struct_4(Struct_3(Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(min(arg_2.b, _wgslsmith_f_op_vec4_f32(round(arg_2.b)))), max(vec4<i32>(2147483647i, var_0.x, 6388i, 1i), vec4<i32>(-1i, 30802i, var_0.x, -19895i))), true), arg_2, u_input.a.yy, !any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_2(_wgslsmith_div_i32(max(-1i, arg_2.c.x), -21890i) <= ~2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(1i << (u_input.a.x % 32u));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, select(abs(max(-39334i, 22032i)), -(~(-10334i)), any(vec3<bool>(true, true, true))), ~1i), ~abs(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(37872i, 0i, 28037i), vec3<i32>(2147483647i, 0i, -1i)), -vec3<i32>(-1i, 0i, 1i), vec3<i32>(1669i, -14071i, -1i))));
    global1 = array<f32, 29>();
    var var_0 = func_4(vec4<u32>(~0u, 2334u, _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x ^ 0u), 48080u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~1u, ~1u))), 4294967295u, Struct_1(abs(u_input.a.x ^ 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())), ~vec4<i32>(1i, 1i, 1i, 1i)));
    global0 = _wgslsmith_mod_i32(var_0.b.c.x, var_0.a.a.c.x);
    global1 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(17854i, _wgslsmith_dot_vec4_i32(var_0.b.c, var_0.b.c)), 6880u, vec4<i32>(i32(-1i) * -var_0.b.c.x, 1i, var_0.b.c.x, abs(var_0.b.c.x ^ var_0.a.a.c.x)), firstLeadingBit(~vec4<u32>(var_0.c.x, u_input.a.x ^ var_0.b.a, u_input.a.x, ~u_input.a.x)));
}

