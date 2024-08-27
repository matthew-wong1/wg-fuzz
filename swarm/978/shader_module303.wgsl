struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_4,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: u32;

var<private> global3: bool = true;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = Struct_4(Struct_2(vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(-2147483647i, arg_3.c.a.x)), arg_3.c.a.x)));
    global4 = -957f;
    let var_1 = vec4<f32>(-173f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2, 19u)]))))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(79342u, 0u, 50635u, 34603u)), ~abs(arg_1)), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f * -2257f))))));
    global1 = array<vec4<i32>, 17>();
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -403f)), global0[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23163u, 19u)]) * global0[_wgslsmith_index_u32(countOneBits(u_input.a), 19u)]))), 2227f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(111f, var_1.x, 1537f, 123f) + var_1))))));
    return countOneBits(vec2<u32>(abs(arg_3.a.x), 1u));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(select(~u_input.b.xyx, _wgslsmith_sub_vec3_u32(vec3<u32>(14221u, 1u, u_input.a), u_input.b.wzx), true), ~vec3<u32>(u_input.a, u_input.a, 74046u) << (_wgslsmith_mult_vec3_u32(u_input.b.yzx, u_input.b.zzw) % vec3<u32>(32u))), 41564u), all(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true)), Struct_1(vec2<i32>(firstTrailingBit(0i), 1i)));
    var var_1 = Struct_3(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a, countOneBits(var_0.a)), vec2<u32>(_wgslsmith_div_u32(28598u, u_input.a), ~u_input.a)), select(vec2<u32>(~0u, var_0.a.x), _wgslsmith_mod_vec2_u32(func_3(var_0.b, u_input.a, 39506u, Struct_3(u_input.b.xy, false, var_0.c)), func_3(var_0.b, var_0.a.x, var_0.a.x, Struct_3(u_input.b.yx, var_0.b, var_0.c))), true)), false, var_0.c);
    let var_2 = Struct_1(vec2<i32>(select(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.c.a.x), vec2<i32>(-14256i, 2147483647i))), ~5235i, var_0.b), 1i >> (1u % 32u)));
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(var_1.a.x), var_0.a.x, ~42653u), (u_input.b.wzw | vec3<u32>(0u, u_input.a, u_input.a)) & ~u_input.b.xxx) | min(u_input.b.ywx, _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, 8219u, var_1.a.x), u_input.b.zyw)), ~min(vec3<u32>(var_0.a.x, u_input.a, 1u), _wgslsmith_mod_vec3_u32(u_input.b.zyy, u_input.b.zwy)) >> (firstLeadingBit(min(~vec3<u32>(4643u, 0u, u_input.a), vec3<u32>(55948u, var_1.a.x, 4294967295u))) % vec3<u32>(32u)));
    var var_4 = Struct_5(Struct_2(abs(-vec2<i32>(-81875i, 0i))), vec4<bool>(any(select(vec4<bool>(false, var_1.b, var_0.b, true), vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_0.b, var_1.b))), all(select(select(vec4<bool>(false, false, true, var_1.b), vec4<bool>(false, var_1.b, var_1.b, var_0.b), var_1.b), select(vec4<bool>(var_1.b, var_0.b, var_0.b, var_0.b), vec4<bool>(false, false, false, false), var_1.b), var_1.b && var_1.b)), true, !(~(-32698i) < var_0.c.a.x)), Struct_4(Struct_2(_wgslsmith_add_vec2_i32(var_1.c.a, var_1.c.a) & _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -18036i), vec2<i32>(var_2.a.x, var_1.c.a.x)))), var_0.b, var_0.a.x);
    return Struct_3(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.x, u_input.a) | _wgslsmith_add_vec2_u32(~u_input.b.yw, countOneBits(var_0.a)), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(var_0.a.x, var_4.e), _wgslsmith_mod_vec2_u32(vec2<u32>(var_4.e, var_0.a.x), var_1.a), vec2<bool>(false, var_1.b)), vec2<u32>(80154u, 1u), select(~var_1.a, vec2<u32>(29268u, var_1.a.x), all(vec2<bool>(true, var_0.b))))), true, var_2);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    global1 = array<vec4<i32>, 17>();
    global3 = false;
    let var_0 = Struct_4(Struct_2(-vec2<i32>(-1i, arg_1.c.a.x)));
    var var_1 = Struct_3(vec2<u32>(_wgslsmith_div_u32(4294967295u, 105199u) << (_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(4294967295u, 137861u)) % 32u), 0u), !all(vec4<bool>(true, 29255i <= var_0.a.a.x, true, arg_1.b)), Struct_1(vec2<i32>(-37209i, i32(-1i) * -var_0.a.a.x)));
    var_1 = Struct_3(~reverseBits(u_input.b.wz), var_1.b, var_1.c);
    return select(select(select(!vec2<bool>(true, var_1.b), select(!vec2<bool>(var_1.b, true), !vec2<bool>(var_1.b, true), arg_1.b && arg_1.b), true), select(select(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(arg_1.b, false), var_1.b), select(vec2<bool>(true, false), vec2<bool>(false, true), arg_1.b), vec2<bool>(true, var_1.b)), vec2<bool>(any(vec4<bool>(var_1.b, var_1.b, false, var_1.b)), all(vec4<bool>(true, true, true, false))), !vec2<bool>(false, var_1.b)), select(select(vec2<bool>(var_1.b, arg_1.b), select(vec2<bool>(true, var_1.b), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(var_1.b, arg_1.b)), vec2<bool>(true, true)), select(!vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(true, arg_1.b), select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, arg_1.b), vec2<bool>(arg_1.b, var_1.b))), !(!vec2<bool>(var_1.b, true)))), select(vec2<bool>(arg_1.b, true), select(select(!vec2<bool>(arg_1.b, true), select(vec2<bool>(false, var_1.b), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(var_1.b, false), vec2<bool>(arg_1.b, arg_1.b), true)), select(!vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, false), false), vec2<bool>(select(var_1.b, true, var_1.b), any(vec2<bool>(var_1.b, var_1.b)))), !vec2<bool>(!arg_1.b, true)), all(!vec2<bool>(all(vec3<bool>(false, true, false)), arg_1.b)));
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(14593u, 19u)], -1000f, -244f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 296f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 229f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1597f, -283f, -1323f))))), any(select(!vec4<bool>(false, true, true, arg_0), !vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false))))), func_2(), func_2().c.a.x << (u_input.a % 32u));
    let var_1 = Struct_4(Struct_2(max(-vec2<i32>(1i, 1i), vec2<i32>(-1i) * -vec2<i32>(1i, -36239i))));
    global3 = !(var_0.x & true);
    let var_2 = Struct_1(firstLeadingBit(var_1.a.a));
    let var_3 = Struct_5(var_1.a, select(!select(!vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, arg_0)), vec4<bool>(var_0.x, arg_0, !(!arg_0), !func_2().b), !vec4<bool>(arg_0, true, true, !var_0.x)), var_1, all(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, var_0.x, true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, arg_0, true), vec3<bool>(var_0.x, var_0.x, var_0.x))), !(!vec3<bool>(var_0.x, var_0.x, true)), arg_0)), _wgslsmith_dot_vec2_u32(u_input.b.xx, abs(vec2<u32>(u_input.b.x & u_input.b.x, 26196u))));
    return Struct_5(var_3.c.a, vec4<bool>(false, var_0.x, var_0.x, true), Struct_4(var_3.a), firstLeadingBit(-2147483647i) <= abs(var_3.a.a.x >> (0u % 32u)), 43431u);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_5) -> vec3<bool> {
    global2 = abs(~_wgslsmith_div_u32(0u, ~1u));
    let var_0 = ~firstTrailingBit(max(u_input.b.yyw, ~u_input.b.zxw ^ vec3<u32>(arg_0.e, arg_0.e, arg_0.e)));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_i32(arg_0.a.a, min(arg_2.c.a.a | arg_2.a.a, vec2<i32>(34993i, -4632i)) | arg_0.a.a));
    global2 = var_0.x;
    global4 = -331f;
    return !func_1(true).b.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~u_input.b);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~var_0.xw, abs(vec2<u32>(33614u, 82810u)))), 3804u ^ abs(u_input.a), abs(var_0.x)), 19u)];
    global0 = array<f32, 19>();
    var var_2 = select(vec3<bool>((true & any(vec4<bool>(false, true, false, false))) & false, true, !any(vec2<bool>(false, true)) != true), !func_5(func_1(all(vec2<bool>(false, false))), select(vec3<u32>(u_input.a, 14656u, u_input.b.x), select(vec3<u32>(323u, 37016u, 13659u), u_input.b.yxw, vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), func_1(false)), !func_5(func_1(func_1(true).b.x), u_input.b.xwx, func_1(true)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1352f))))), global0[_wgslsmith_index_u32(func_3(true, 1u, ~var_0.x, Struct_3(~countOneBits(vec2<u32>(var_0.x, var_0.x)), any(!vec4<bool>(var_2.x, false, true, true)), Struct_1(vec2<i32>(-2147483647i, -3055i)))).x, 19u)]);
    var var_3 = _wgslsmith_f_op_f32(round(-201f)) != _wgslsmith_f_op_f32(f32(-1f) * -465f);
    global4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 19u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c.a.x);
}

