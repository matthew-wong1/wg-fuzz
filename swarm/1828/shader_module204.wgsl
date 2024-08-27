struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: f32 = -751f;

var<private> global2: vec4<i32> = vec4<i32>(-68194i, -23270i, 15465i, 1i);

var<private> global3: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> vec4<i32> {
    global0 = array<vec4<i32>, 11>();
    global3 = arg_0.b;
    global2 = vec4<i32>(arg_0.d.x & ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1.a.e, vec4<i32>(-70954i, 0i, 36826i, arg_0.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_2, arg_0.a.x, arg_0.d.x), vec4<i32>(2147483647i, arg_1.a.e.x, global2.x, 1i))), _wgslsmith_mod_i32(max(select(firstTrailingBit(arg_1.a.d), arg_2, arg_0.b.x), -1i), arg_2 << (_wgslsmith_dot_vec3_u32(u_input.c.yww, ~vec3<u32>(u_input.c.x, u_input.c.x, arg_1.a.c.x)) % 32u)), -u_input.d.x, arg_2);
    global1 = arg_1.a.a;
    global3 = select(vec3<bool>(true, true, true), !select(arg_0.b, !(!arg_0.b), !(!arg_0.b)), any(select(global3.xx, select(!global3.yz, global3.zx, select(vec2<bool>(arg_0.e.x, global3.x), global3.zy, false)), global3.x)));
    return -vec4<i32>(18099i, -9067i & u_input.d.x, ~arg_2, -arg_2);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.c;
    global3 = vec3<bool>(false, true, any(select(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, global3.x, true)), select(vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, global3.x, global3.x), false), false)) && global3.x);
    var var_1 = select(~_wgslsmith_mult_vec4_i32(-func_3(Struct_2(vec3<i32>(-1i, u_input.a, 21128i), vec3<bool>(false, global3.x, global3.x), true, global2.wzy, global3.yx), Struct_3(Struct_1(-1011f, var_0.x, var_0.yz, -17439i, vec4<i32>(1i, 13892i, -1i, 53941i)), u_input.c), 35615i), u_input.d), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global2.x, u_input.b, global2.x, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2467i, u_input.a, global2.x, -1i), u_input.d), u_input.d), u_input.d | _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, 1i, -2147483647i), vec4<i32>(-57741i, u_input.b, global2.x, global2.x)), global0[_wgslsmith_index_u32(u_input.c.x, 11u)])), global3.x || true);
    let var_2 = u_input.c.yzy;
    var var_3 = 1u;
    return Struct_1(-1040f, ~4294967295u, ~_wgslsmith_clamp_vec2_u32(~var_2.zy, ~vec2<u32>(1u, 4294967295u), u_input.c.zz) & u_input.c.zy, i32(-1i) * -9238i, vec4<i32>(-45310i, 1i, -2147483647i, ~var_1.x));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, ((0u ^ var_0.c.x) | 1u) >> (var_0.c.x % 32u), var_0.c.x), u_input.c.wzz);
    global2 = vec4<i32>(var_0.d, (arg_0 >> (_wgslsmith_clamp_u32(u_input.c.x, var_0.c.x, ~u_input.c.x) % 32u)) | arg_0, firstLeadingBit(1i), 1i & firstTrailingBit(abs(arg_0) >> (min(1u, 29110u) % 32u)));
    global0 = array<vec4<i32>, 11>();
    let var_2 = countOneBits(2147483647i);
    return vec4<i32>(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.d, arg_0, _wgslsmith_mod_i32(0i, u_input.a), _wgslsmith_dot_vec3_i32(global2.xzw, vec3<i32>(u_input.d.x, var_0.e.x, global2.x))), vec4<i32>(~u_input.d.x, firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), global2.wx), -1i)) << (~(~abs(0u)) % 32u), 1004i & min((-13610i >> (0u % 32u)) << (u_input.c.x % 32u), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i ^ ~u_input.b, var_2, var_0.d | ~(-1i), ~(global2.x | 1i)), -abs(firstTrailingBit(u_input.d))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = -select(u_input.d, vec4<i32>(1i, arg_2.x, arg_1, -12425i), arg_3);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().a), -687f) - _wgslsmith_f_op_f32(abs(811f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1231f))), _wgslsmith_f_op_f32(ceil(-1150f)))));
    global0 = array<vec4<i32>, 11>();
    return vec4<u32>(~4294967295u, ~4294967295u, 4294967295u, reverseBits(1u));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = any(!vec3<bool>(global3.x, global3.x, !(global3.x != true)));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_div_i32(min(u_input.b, global2.x), arg_3), abs(arg_2.a.d | global2.x)), arg_3);
    global3 = select(!vec3<bool>(!global3.x, global3.x, true), vec3<bool>((func_2().a == _wgslsmith_f_op_f32(sign(-2118f))) || all(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), true)), true, !global3.x), vec3<bool>(global3.x, select(1114f < _wgslsmith_f_op_f32(ceil(-773f)), true, false), true && (arg_2.a.a > _wgslsmith_f_op_f32(min(-1000f, arg_2.a.a)))));
    let var_2 = vec2<i32>(abs(-16013i), 1i ^ var_1.x);
    let var_3 = select(global3.xz, select(global3.xx, !global3.xz, true), global3.yz);
    return func_2();
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-123f + 116f), _wgslsmith_f_op_f32(174f * -568f), 317f, arg_1.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1623f, arg_2.a.a, _wgslsmith_f_op_f32(exp2(arg_2.a.a)), 241f))));
    global2 = arg_2.a.e;
    global2 = arg_2.a.e;
    let var_1 = arg_2.b.ywy;
    var var_2 = global3.x;
    return StorageBuffer(var_0.wyz, arg_1.e.yyy, vec2<f32>(var_0.x, 1432f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1037f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(551f, arg_1.a) * var_0.zw)) + var_0.zz))), arg_2.a.e.xz ^ (vec2<i32>(2147483647i, select(global2.x, -1i, global3.x)) >> (vec2<u32>(~arg_1.b, arg_2.b.x) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(1u, func_5(-2147483647i, ~((vec3<u32>(u_input.c.x, 0u, 4294967295u) | vec3<u32>(u_input.c.x, u_input.c.x, 53046u)) ^ firstLeadingBit(u_input.c.yww)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-345f + 575f), min(u_input.c.x, u_input.c.x), ~vec2<u32>(4294967295u, u_input.c.x), u_input.a, vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.a)), func_4(90733u, _wgslsmith_mult_i32(global2.x, global2.x), func_1(u_input.a, vec2<i32>(-2147483647i, 40261i), -429f, vec3<bool>(false, true, global3.x)), !vec4<bool>(global3.x, false, global3.x, global3.x))), global2.x), Struct_3(Struct_1(_wgslsmith_div_f32(-375f, 1000f), ~_wgslsmith_mod_u32(4294967295u, 28205u), u_input.c.zx << (_wgslsmith_mult_vec2_u32(u_input.c.wy, u_input.c.zy) % vec2<u32>(32u)), max(reverseBits(u_input.a), _wgslsmith_sub_i32(u_input.b, u_input.b)), vec4<i32>(u_input.b << (14526u % 32u), max(38070i, global2.x), global2.x, ~global2.x)), u_input.c));
}

