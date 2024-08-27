struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_f32(arg_2, arg_2);
    let var_1 = global1.b.b.x;
    let var_2 = 0u;
    global2 = array<Struct_4, 22>();
    var var_3 = u_input.b;
    return max(vec3<u32>(min(~var_3.x, max(16418u, 23519u)), var_3.x, var_2) & ~firstTrailingBit(vec3<u32>(22433u, var_3.x, 57177u)), var_3.zwx);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    let var_0 = any(global1.b.b.zz);
    let var_1 = select(select(!vec2<bool>(var_0, !var_0), !vec2<bool>(false, var_0), global1.c.b.yx), global1.c.b.xw, !(!(!(!global1.a.xy))));
    let var_2 = global1.c;
    return select(4294967295u, _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b), global1.a.x);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: bool) -> Struct_2 {
    global0 = select(~(_wgslsmith_dot_vec3_u32(u_input.b.xzw, u_input.b.zzx) & countOneBits(~u_input.b.x)), ~81925u, 17242u > countOneBits(_wgslsmith_sub_u32(arg_2, 1u)));
    global0 = firstLeadingBit(func_3(u_input.b, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(351f * 1518f)), min(u_input.b.yyx ^ u_input.b.zww, func_2(Struct_2(vec4<bool>(arg_3, false, false, false), Struct_1(arg_0.c.c.a, vec4<bool>(false, arg_3, false, global1.b.b.x)), global1.b), global1.c, arg_0.b, u_input.a.x)) & vec3<u32>(u_input.e ^ 102431u, ~1u, _wgslsmith_mult_u32(1u, u_input.e))));
    var var_0 = ~(~u_input.e);
    global2 = array<Struct_4, 22>();
    var var_1 = global1.b;
    return Struct_2(select(vec4<bool>(arg_0.c.c.b.x, all(arg_0.c.a.wz), arg_3, true), select(!select(vec4<bool>(arg_3, arg_3, arg_0.c.b.b.x, global1.a.x), vec4<bool>(global1.b.b.x, arg_0.c.a.x, arg_3, arg_3), global1.c.b.x), select(vec4<bool>(global1.c.b.x, var_1.b.x, false, false), select(vec4<bool>(true, arg_3, true, true), global1.b.b, var_1.b), !arg_3), !vec4<bool>(true, global1.c.b.x, true, arg_3)), arg_0.c.b.b), global1.b, global1.b);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = arg_0.b.a;
    var var_1 = global1.b.b.x;
    let var_2 = Struct_3(arg_0, arg_0, Struct_2(vec4<bool>(true && global1.a.x, false, u_input.c.x == arg_0.b.a, global1.a.x), func_1(Struct_4(~u_input.d, -1050f, func_1(global2[_wgslsmith_index_u32(1u, 22u)], 19798i, 1u, true)), u_input.d.x, ~(~u_input.e), global1.c.b.x).b, global1.c), -select(u_input.d >> (vec4<u32>(64361u, u_input.e, 1u, u_input.b.x) % vec4<u32>(32u)), u_input.d, true & arg_0.c.b.x), func_1(global2[_wgslsmith_index_u32(firstLeadingBit(~func_2(arg_0, global1.b, -192f, 4294967295u).x), 22u)], _wgslsmith_div_i32(u_input.d.x, 1i | global1.c.a), u_input.e, false).b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f - 306f))))) - -664f);
    var var_4 = abs(vec2<u32>(select(41107u, 1u, true), 36537u)) | vec2<u32>(1u, _wgslsmith_dot_vec4_u32(select(u_input.b, ~u_input.b, !vec4<bool>(arg_0.a.x, false, var_2.a.c.b.x, false)), u_input.b));
    return global2[_wgslsmith_index_u32(func_2(var_2.b, Struct_1(arg_0.c.a, vec4<bool>(true, true, global1.c.b.x, func_1(global2[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_div_i32(var_2.d.x, global1.c.a), 17290u, false).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(-138f - _wgslsmith_f_op_f32(f32(-1f) * -152f)))), 3915u).x, 22u)];
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = func_4(arg_1.c);
    global0 = _wgslsmith_clamp_u32(max(select(4294967295u, u_input.a.x, any(func_1(Struct_4(arg_1.a, 895f, Struct_2(vec4<bool>(true, false, false, arg_2.x), var_0.c.c, global1.c)), -29817i, 56620u, arg_3.x).b.b)), u_input.a.x), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(~firstLeadingBit(23002u), _wgslsmith_add_u32(u_input.b.x << (u_input.a.x % 32u), ~51478u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(46032u, u_input.a.x, 32381u)), ~u_input.b.xyw), select(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), countOneBits(u_input.b.yxz), true))), countOneBits(0u));
    global1 = func_1(Struct_4(arg_1.a, _wgslsmith_f_op_f32(-var_0.b), Struct_2(func_4(Struct_2(arg_1.c.a, arg_1.c.b, Struct_1(18332i, vec4<bool>(global1.b.b.x, var_0.c.b.b.x, true, true)))).c.a, func_4(Struct_2(arg_1.c.c.b, var_0.c.b, var_0.c.b)).c.c, func_4(func_4(Struct_2(vec4<bool>(arg_2.x, true, var_0.c.c.b.x, false), Struct_1(u_input.d.x, vec4<bool>(arg_3.x, true, global1.b.b.x, arg_2.x)), Struct_1(2147483647i, vec4<bool>(var_0.c.b.b.x, true, false, var_0.c.b.b.x)))).c).c.b)), -abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.a.yxy, u_input.d.zyy), _wgslsmith_div_vec3_i32(arg_1.a.zxz, var_0.a.zwz))), ~u_input.b.x, true);
    let var_1 = var_0.c;
    var var_2 = Struct_1(arg_1.c.c.a, arg_1.c.c.b);
    return Struct_2(global1.c.b, Struct_1(arg_0 | 2147483647i, func_4(Struct_2(func_4(Struct_2(vec4<bool>(var_1.c.b.x, true, global1.b.b.x, true), Struct_1(global1.c.a, arg_1.c.c.b), Struct_1(-1i, var_0.c.c.b))).c.a, arg_1.c.b, func_4(var_1).c.b)).c.b.b), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(global1.c.a, func_4(func_1(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], i32(-1i) * -u_input.d.x, u_input.b.x, (i32(-1i) * -5311i) != u_input.c.x)), func_1(func_4(Struct_2(global1.c.b, global1.c, func_4(Struct_2(global1.b.b, Struct_1(global1.b.a, global1.c.b), Struct_1(u_input.d.x, global1.b.b))).c.b)), _wgslsmith_add_i32(0i, reverseBits(1i)), 34329u, !any(func_4(Struct_2(global1.b.b, Struct_1(u_input.c.x, vec4<bool>(global1.b.b.x, global1.c.b.x, false, false)), global1.c)).c.c.b)).a.wy, global1.b.b.wy);
    var var_0 = !vec3<bool>(!(!(!global1.b.b.x)), func_2(func_5(global1.c.a, Struct_4(vec4<i32>(-22706i, 0i, u_input.d.x, -39887i), -156f, Struct_2(global1.c.b, Struct_1(global1.b.a, global1.a), global1.c)), global1.a.xz, global1.c.b.yy), global1.c, 229f, 1u).x > u_input.a.x, !global1.c.b.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-844f)), 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1740f, _wgslsmith_div_f32(-1957f, -1077f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-659f, -1015f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(101f, -1055f), vec2<f32>(-1304f, -1417f), var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -468f), func_4(func_5(u_input.c.x, Struct_4(vec4<i32>(u_input.d.x, -1856i, u_input.d.x, -1i), -803f, Struct_2(global1.c.b, Struct_1(29672i, global1.a), global1.b)), global1.c.b.zx, global1.c.b.yw)).b)), !vec2<bool>(true & global1.a.x, func_4(Struct_2(global1.c.b, global1.b, Struct_1(-23787i, vec4<bool>(var_0.x, var_0.x, false, var_0.x)))).c.c.b.x)));
    global0 = u_input.b.x;
    var var_2 = vec4<bool>(false, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + var_1.x)) > _wgslsmith_f_op_f32(exp2(var_1.x))) & false, all(vec4<bool>(global1.b.b.x, any(global1.b.b.xzw), !var_0.x || true, !(u_input.b.x < 4294967295u))), _wgslsmith_f_op_f32(sign(-379f)) <= var_1.x);
    var var_3 = ~_wgslsmith_mult_u32(countOneBits(u_input.e), ~1u);
    var var_4 = ~vec2<i32>(-firstLeadingBit(~0i), -1i);
    global0 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1640i, 9454i & firstTrailingBit(~global1.c.a)), _wgslsmith_clamp_i32(var_4.x, reverseBits(1i), u_input.d.x) | 2147483647i, vec2<u32>(0u, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(4355u, u_input.a.x), 0u)));
}

