struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: bool = false;

var<private> global2: Struct_4 = Struct_4(vec3<u32>(1u, 19224u, 40947u), 44501i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_div_f32(795f, 572f);
    global1 = global0.x;
    let var_1 = Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-67965i, u_input.e, u_input.e, -1i), vec4<i32>(u_input.e, 0i, u_input.e, u_input.e)) ^ ~u_input.e, _wgslsmith_mult_i32(global2.b, 1i) ^ -1i), vec3<i32>(firstLeadingBit(~(-12665i)), ~(-u_input.e), u_input.e)), ~(select(u_input.c.x, 236u, global0.x & true) << (~1u % 32u)), Struct_4(firstLeadingBit(vec3<u32>(4294967295u, max(u_input.b.x, 6497u), ~1u)), u_input.e), Struct_3(any(vec2<bool>(any(vec3<bool>(true, true, global0.x)), !global0.x)), !global0.x, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1116f)), -604f), _wgslsmith_mod_vec2_u32(~vec2<u32>(global2.a.x, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global2.a.x), vec2<u32>(69627u, global2.a.x)))), true);
    var var_2 = _wgslsmith_add_i32(-u_input.e, var_1.a);
    var var_3 = Struct_2(Struct_1(u_input.a >> (vec4<u32>(49789u, 1u, global2.a.x, _wgslsmith_mult_u32(u_input.a.x, 22207u)) % vec4<u32>(32u)), 1530f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - -487f), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f * -575f) + -1325f)), 859f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1107f, var_1.d.c.x, _wgslsmith_f_op_f32(-var_0)) * vec3<f32>(1171f, var_0, _wgslsmith_f_op_f32(floor(var_1.d.c.x))))));
    return vec3<i32>(_wgslsmith_mult_i32(u_input.e, u_input.e), select(u_input.e, -_wgslsmith_mod_i32(u_input.e & 0i, u_input.e), var_1.d.b), ~var_1.c.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec4<i32> {
    global2 = Struct_4(global2.a | vec3<u32>(u_input.d, arg_0.a.a.x, 24030u), 2147483647i);
    let var_0 = _wgslsmith_div_vec4_u32(max(~(~arg_0.a.a) << (~(vec4<u32>(global2.a.x, u_input.a.x, global2.a.x, 26977u) & u_input.a) % vec4<u32>(32u)), countOneBits(~(~arg_0.a.a))), u_input.b);
    var var_1 = arg_0;
    let var_2 = Struct_2(arg_0.a);
    let var_3 = var_1.a.a.wy;
    return ((vec4<i32>(-1i) * -select(vec4<i32>(global2.b, arg_2.x, 8048i, global2.b), vec4<i32>(1i, 32068i, 1i, 11977i), vec4<bool>(global0.x, global0.x, global0.x, global0.x))) << (vec4<u32>(4294967295u | var_1.a.a.x, 0u, _wgslsmith_clamp_u32(~0u, 17605u, ~33827u), global2.a.x) % vec4<u32>(32u))) ^ abs(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2.xx, arg_2.xz), u_input.e, 0i, _wgslsmith_mult_i32(-1i, -2147483647i)) ^ vec4<i32>(39156i | u_input.e, arg_2.x, 2147483647i << (var_2.a.a.x % 32u), -12126i));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = global2.b;
    let var_1 = _wgslsmith_sub_vec4_u32(u_input.b, min(vec4<u32>(global2.a.x, 1u, 6118u, global2.a.x) >> ((vec4<u32>(1u, 4294967295u, 1u, 4294967295u) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), ~u_input.c | ~u_input.a) >> (vec4<u32>(_wgslsmith_clamp_u32(~u_input.a.x, u_input.b.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(u_input.a, vec4<u32>(global2.a.x, global2.a.x, 42619u, 53275u), vec4<bool>(global0.x, true, global0.x, false))), u_input.c.x >> (u_input.d % 32u), u_input.d) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(func_4(Struct_2(Struct_1(vec4<u32>(62520u, var_1.x, 60542u, 4294967295u), arg_0.x, vec3<f32>(1168f, -438f, arg_0.x), 1764f, vec3<f32>(arg_0.x, arg_0.x, -551f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, -742f, -1676f)))), reverseBits(func_3()))), vec4<i32>(~(~max(14315i, 20379i)), -25954i, ~(u_input.e >> (26060u % 32u)) & _wgslsmith_sub_i32(func_4(Struct_2(Struct_1(vec4<u32>(45679u, 0u, 4294967295u, 4294967295u), arg_0.x, vec3<f32>(arg_0.x, 405f, -1082f), arg_0.x, vec3<f32>(-856f, arg_0.x, arg_0.x))), arg_0, vec3<i32>(u_input.e, -1i, global2.b)).x, abs(15241i)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, global2.b, -24081i), ~vec3<i32>(global2.b, u_input.e, global2.b))));
    global0 = !select(vec2<bool>((u_input.e ^ -1i) >= ~global2.b, select(true, true, var_1.x <= global2.a.x)), select(!vec2<bool>(true, global0.x), vec2<bool>(global0.x, false != global0.x), !select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), global0.x)), any(select(!vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_3 = global0.x;
    return Struct_2(Struct_1(vec4<u32>(23665u, ~(~var_1.x), global2.a.x, 1u), -973f, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(ceil(-274f))), -207f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -1625f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -233f, -690f) - arg_0), _wgslsmith_f_op_vec3_f32(-arg_0)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1927f, 484f) - _wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -333f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-822f, -434f, -709f) + arg_1.wzz) * _wgslsmith_f_op_vec3_f32(arg_1.yzz * vec3<f32>(arg_1.x, arg_1.x, 539f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1042f, arg_1.x))))));
    var var_1 = Struct_3(!arg_0.x, func_4(func_2(vec3<f32>(arg_1.x, -730f, var_0.a.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.zxz + vec3<f32>(-644f, arg_1.x, -1415f))), select(abs(vec3<i32>(u_input.e, -32446i, u_input.e)), func_3(), !vec3<bool>(global0.x, global0.x, arg_0.x))).x > -u_input.e, _wgslsmith_f_op_vec2_f32(var_0.a.e.yz + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.c.x * -1470f), _wgslsmith_div_f32(var_0.a.d, var_0.a.b)), vec2<f32>(_wgslsmith_f_op_f32(778f + arg_1.x), arg_1.x)))), u_input.c.zy);
    return Struct_4(u_input.b.yyw, _wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.e << (u_input.b.x % 32u), -51537i), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    global0 = vec2<bool>(global0.x, !global0.x);
    var var_1 = vec4<f32>(-129f, 728f, 207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f * -789f))));
    var var_2 = Struct_5(global2.b, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(50417u >> (global2.a.x % 32u), _wgslsmith_add_u32(0u, 0u)), _wgslsmith_dot_vec3_u32(u_input.b.wzw, max(u_input.a.wwx, u_input.a.xzw))), func_1(!vec3<bool>(any(vec4<bool>(true, false, global0.x, true)), !global0.x, !global0.x), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f) - _wgslsmith_f_op_f32(-1241f + var_1.x)), var_1.x, _wgslsmith_f_op_f32(round(-1000f)))), Struct_3((21234u << ((global2.a.x << (global2.a.x % 32u)) % 32u)) == ~0u, (i32(-1i) * -global2.b) <= _wgslsmith_div_i32(global2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, global2.b), vec2<i32>(global2.b, -5291i))), var_1.yw, ~(~reverseBits(global2.a.xy))), global0.x && true);
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.c.x, _wgslsmith_div_f32(var_1.x, 1000f), var_1.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, 5448u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.e.x, -256f))), var_3.e.zz))))));
}

