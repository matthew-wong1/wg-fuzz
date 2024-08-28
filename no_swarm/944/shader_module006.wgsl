struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 19>;

var<private> global2: f32;

var<private> global3: vec2<bool>;

var<private> global4: Struct_2 = Struct_2(Struct_1(1i, 0i), 8268u, Struct_1(2035i, 37434i), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1020f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(-2416f, -1184f))))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(415f * -1000f)))), _wgslsmith_f_op_f32(931f * _wgslsmith_f_op_f32(f32(-1f) * -466f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, 463f, 306f, 208f))))));
    global4 = Struct_2(Struct_1(~u_input.a.x, u_input.c.x), max(~(global4.b ^ _wgslsmith_sub_u32(u_input.b, 17252u)), u_input.b), Struct_1(~(-_wgslsmith_mod_i32(11588i, global4.a.a)), _wgslsmith_mod_i32(0i, i32(-1i) * -global4.a.a)), global4.d << (abs(global4.d) % vec2<u32>(32u)));
    var var_1 = Struct_2(global4.c, 0u, Struct_1(u_input.a.x, u_input.a.x), reverseBits(vec2<u32>(_wgslsmith_sub_u32(30750u, max(u_input.b, global4.d.x)), select(0u, global4.d.x << (1u % 32u), global3.x))));
    var var_2 = vec3<bool>(true, !any(!(!vec4<bool>(global3.x, true, global3.x, false))), global4.a.b > global4.c.b);
    global3 = var_2.xz;
    return (~_wgslsmith_sub_i32(global4.a.a, 0i) << ((~var_1.d.x >> (~(~var_1.b) % 32u)) % 32u)) | global4.c.a;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(firstTrailingBit(global4.a.a), 3698i << (1u % 32u), global4.c.b, -(-18734i ^ global4.c.a)), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, global4.a.a), -1i), 1i, -54117i, _wgslsmith_add_i32(func_3(), -31985i))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(28150i, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), global4.c.b), abs(-u_input.a.x), ~1i, ~(1i & u_input.a.x)), min(vec4<i32>(_wgslsmith_sub_i32(-9307i, global4.a.a), abs(u_input.c.x), abs(u_input.a.x), abs(2389i)), vec4<i32>(1i, min(global4.a.a, 2595i), 37230i, global4.c.a << (u_input.b % 32u)))), 34i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, _wgslsmith_f_op_f32(select(-126f, 474f, all(vec2<bool>(global3.x, false)) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2109f + -681f))));
    global4 = Struct_2(Struct_1((firstTrailingBit(11549i) & (var_1.b | global4.c.b)) ^ (_wgslsmith_mult_i32(-54266i, var_1.b) ^ 33991i), -26879i), _wgslsmith_div_u32(97573u, ~global4.b), global4.a, global4.d);
    global0 = firstLeadingBit(max(-1i, global4.c.b ^ 2147483647i)) <= firstLeadingBit(7012i);
    return global4.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> vec3<bool> {
    global1 = array<vec4<bool>, 19>();
    global3 = select(vec2<bool>(false, true), vec2<bool>(true, global3.x), !any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.d.x, arg_2, u_input.b, 420u), vec4<u32>(1u, arg_2, 69852u, 56136u)) | ~arg_2, 19u)]));
    global1 = array<vec4<bool>, 19>();
    global2 = arg_3.x;
    let var_0 = Struct_1(abs(u_input.c.x), arg_0);
    return !select(select(vec3<bool>(true, any(vec3<bool>(global3.x, global3.x, global3.x)), -1000f <= arg_3.x), !(!vec3<bool>(global3.x, global3.x, global3.x)), vec3<bool>(false, arg_3.x > arg_3.x, global3.x)), vec3<bool>(any(vec3<bool>(true, global3.x, false)), false, ~global4.c.a == _wgslsmith_mult_i32(-13293i, -10777i)), !(global3.x || false) || any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    global0 = all(!func_4(_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, global4.a.a), max(175i, 13549i)), global4.c, func_2(), vec4<f32>(_wgslsmith_f_op_f32(-1789f - -429f), _wgslsmith_div_f32(-1004f, 960f), _wgslsmith_f_op_f32(trunc(1264f)), _wgslsmith_f_op_f32(448f - 1759f))));
    let var_0 = Struct_3(Struct_1(~(_wgslsmith_clamp_i32(1i, -16051i, arg_1.a.b) >> (102895u % 32u)), -35690i & (0i << ((u_input.b ^ 4294967295u) % 32u))), !(!(!global3.x || true)), 34541u, global4.c);
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(55604i, min(min(-firstTrailingBit(var_0.a.a), ~arg_1.c.b), ~u_input.c.x));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, -14306i), ~func_3(), -1i);
    return any(!vec2<bool>(all(vec2<bool>(global3.x, global3.x)), select(all(vec3<bool>(false, global3.x, var_0.b)), true, select(var_0.b, var_0.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -3096f);
    var var_1 = var_0;
    var var_2 = Struct_3(Struct_1((-2147483647i & global4.a.b) | -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-7521i), 1i, u_input.c.x, -27993i), ~vec4<i32>(-53651i, -1i, -26813i, -13396i))), true, 0u, Struct_1(-(~global4.a.a), -2147483647i));
    global3 = select(vec2<bool>(global3.x, true & func_1(vec3<u32>(80419u, global4.b, 1u), Struct_2(global4.c, var_2.c, Struct_1(1i, var_2.a.b), global4.d))), select(select(!vec2<bool>(var_2.b, global3.x), vec2<bool>(global3.x, var_2.b), select(vec2<bool>(false, true), select(vec2<bool>(global3.x, true), vec2<bool>(var_2.b, global3.x), vec2<bool>(true, false)), !vec2<bool>(true, var_2.b))), vec2<bool>(any(func_4(global4.a.a, var_2.d, 76655u, vec4<f32>(var_0, var_0, -552f, var_0)).zy), var_2.b), true), !(!func_4(u_input.a.x, Struct_1(12448i, global4.a.a), var_2.c, _wgslsmith_div_vec4_f32(vec4<f32>(539f, var_0, var_0, var_0), vec4<f32>(717f, 442f, var_0, var_0))).zz));
    let var_3 = Struct_1(func_3(), ~u_input.a.x);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1177f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 0i, u_input.c.x << (60601u % 32u), -var_2.d.b), vec4<i32>(0i, var_3.a, 14646i, u_input.a.x)), 13503u, u_input.c, var_3.a, ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(20946u, u_input.b, var_2.c, u_input.b), vec4<u32>(u_input.b, u_input.b, var_2.c, 19338u)) | ~vec4<u32>(u_input.b, 44178u, 45239u, 33815u))));
}

