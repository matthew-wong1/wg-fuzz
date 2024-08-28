struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1028f;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(792f, 495f, -226f), vec4<i32>(i32(-2147483648), -42364i, -71815i, 1i), Struct_1(vec2<f32>(1787f, 1671f), vec3<i32>(39337i, i32(-2147483648), 3017i), vec3<bool>(false, true, true), vec3<f32>(-160f, -2023f, -1097f)), Struct_1(vec2<f32>(-1825f, -940f), vec3<i32>(-15226i, -1354i, 2147483647i), vec3<bool>(false, true, false), vec3<f32>(567f, -1209f, 966f)), 0i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-150f, global2.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -584f)) * global2.d.d) * global2.d.d), -vec4<i32>(firstTrailingBit(u_input.d.x) ^ global2.c.b.x, 38640i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -2147483647i), firstLeadingBit(_wgslsmith_dot_vec3_i32(global2.c.b, global2.d.b))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(global2.a.xx)), u_input.d.zzw, !(!global2.c.c), _wgslsmith_f_op_vec3_f32(-global2.d.d)), global2.d, -_wgslsmith_mod_i32(global2.c.b.x, _wgslsmith_div_i32(0i, -2147483647i) >> (1u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.a.x));
    let var_2 = select(vec2<bool>(!all(vec3<bool>(global2.c.c.x, false, var_0.c.c.x)) && true, true), select(select(vec2<bool>(true, all(vec3<bool>(global2.c.c.x, true, true))), global2.c.c.yx, var_0.c.c.x), vec2<bool>(false, any(vec4<bool>(global2.d.c.x, global2.d.c.x, true, global2.d.c.x))), var_0.d.c.zx), true);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c.d.x)), -438f);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.d.x, global2.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -752f)) + _wgslsmith_div_vec3_f32(var_0.c.d, _wgslsmith_div_vec3_f32(var_0.c.d, vec3<f32>(var_0.a.x, var_0.a.x, var_0.d.d.x))))), var_0.b, global2.d, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), var_0.c.d.yx, select(vec2<bool>(false, var_0.d.c.x), global2.d.c.zz, global2.d.c.yz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.d.d.xy)) + _wgslsmith_div_vec2_f32(var_0.c.d.yy, var_0.a.zy)))), min(u_input.d.wxy, var_0.b.xyw), var_0.d.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.d + _wgslsmith_f_op_vec3_f32(-var_0.c.d)))), var_0.d.b.x);
    return _wgslsmith_f_op_f32(abs(var_0.a.x));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global2.c.d.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    global0 = 2459f;
    let var_2 = global2.d.d.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -2060f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -132f)))), -221f);
    return 28599u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    global2 = Struct_2(vec3<f32>(_wgslsmith_div_f32(global2.a.x, global2.d.a.x), global2.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_mod_vec4_i32(global2.b, _wgslsmith_add_vec4_i32(~u_input.d, min(global2.b, countOneBits(vec4<i32>(-1491i, global2.e, -21489i, u_input.e.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.c.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(433f, 762f), vec2<f32>(340f, -860f))))), global2.c.b >> (vec3<u32>(u_input.b | u_input.b, ~0u, ~48388u) % vec3<u32>(32u)), global2.c.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1486f), _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(-global2.d.a.x)), global2.a.x)), global1[_wgslsmith_index_u32(select(1u, ~u_input.c, true), 7u)], _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(u_input.e.x, 47153i, global2.e)), countOneBits(-global2.c.b)) << (30106u % 32u));
    global0 = _wgslsmith_f_op_f32(1187f * global2.d.d.x);
    let var_0 = global2.c;
    global2 = Struct_2(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(global2.c.d.x + var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.a.x)))), var_0.d.x))), vec4<i32>(var_0.b.x, -_wgslsmith_mod_i32(global2.c.b.x, ~global2.d.b.x), min(i32(-1i) * -u_input.e.x, ~(-2147483647i)), -global2.c.b.x), global2.c, global2.c, global2.e);
    var var_1 = _wgslsmith_div_u32(10033u, arg_0 & _wgslsmith_sub_u32(27577u, 6861u));
    return global1[_wgslsmith_index_u32(u_input.c, 7u)];
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(func_2(vec3<i32>(global2.b.x, global2.e, ~(-2147483647i | u_input.d.x))));
    global0 = _wgslsmith_f_op_f32(min(global2.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - func_4(u_input.a.x).d.x))));
    global1 = array<Struct_1, 7>();
    let var_1 = u_input.a.x;
    var var_2 = (vec3<i32>(-1i, 1i, 1i) >> ((min(u_input.a, ~u_input.a) | _wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_1, 0u, var_1), vec3<u32>(1u, 64388u, 13627u)), u_input.a, u_input.a)) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(max(u_input.a, vec3<u32>(18965u, u_input.b, var_1)), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(1u, u_input.b, 10036u), vec3<u32>(var_1, 4294967295u, 57146u))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(1u, 78999u, 27673u), u_input.a), vec3<u32>(48995u, var_1, 4294967295u)), ~abs(u_input.a))) % vec3<u32>(32u));
    return Struct_2(global2.a, vec4<i32>(u_input.e.x, max(2147483647i ^ _wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(-15415i, -5050i, global2.c.b.x, var_2.x)), -var_2.x), -56431i, select(abs(var_2.x) & 1i, var_2.x, _wgslsmith_div_f32(global2.a.x, global2.d.a.x) >= _wgslsmith_f_op_f32(trunc(var_0.d.x)))), Struct_1(var_0.a, ~global2.c.b, func_4(var_1).c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -1156f, var_0.d.x)), vec3<f32>(330f, _wgslsmith_f_op_f32(-global2.d.a.x), global2.c.d.x))), Struct_1(_wgslsmith_f_op_vec2_f32(select(global2.d.d.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1265f, var_0.a.x) - vec2<f32>(438f, -1000f)), all(global2.c.c))), vec3<i32>(10792i, ~2147483647i, var_2.x), vec3<bool>(global2.d.c.x, _wgslsmith_clamp_u32(var_1, u_input.c, var_1) != u_input.b, (global2.d.c.x | true) && true), _wgslsmith_f_op_vec3_f32(global2.d.d - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global2.d.d))))), max(2147483647i << (~(~u_input.a.x) % 32u), 31315i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(123303u, 7u)];
    let var_1 = func_1();
    var var_2 = abs(_wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(reverseBits(u_input.a.xz), vec2<u32>(43410u, 47547u) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(113162u, 81649u)), 1u), true), vec2<u32>(1u, u_input.a.x << (u_input.a.x % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(var_1.c.a));
    var var_4 = global1[_wgslsmith_index_u32(~(~(~0u)), 7u)];
    var_4 = global2.d;
    var var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d.b.x, -2147483647i, firstTrailingBit(_wgslsmith_mod_vec2_i32(max(u_input.d.wx, vec2<i32>(0i, var_1.c.b.x)) | (vec2<i32>(var_1.d.b.x, global2.c.b.x) | vec2<i32>(var_0.b.x, global2.e)), vec2<i32>(~u_input.e.x, _wgslsmith_clamp_i32(global2.e, -2840i, var_0.b.x)))));
}

