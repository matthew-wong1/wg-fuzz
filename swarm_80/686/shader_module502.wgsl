struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(32788u, vec4<i32>(1i, 11035i, -1i, 2147483647i));

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-47227i), max(global0.b.x, 1i)), global1.c.c.b.zw), ~select(vec2<i32>(0i, 60192i), vec2<i32>(global1.c.c.b.x, u_input.b), true) | _wgslsmith_clamp_vec2_i32(global0.b.yx, vec2<i32>(global0.b.x, global1.c.b.b.x), global0.b.wx), !select(true, global1.a.x, true));
    let var_1 = 447f;
    global0 = Struct_1(~(u_input.a | select(global0.a, ~46528u, global1.a.x)), -select(vec4<i32>(-1i) * -global0.b, global0.b, !global1.a.x));
    return vec4<bool>(!all(!global1.b.xx) | !any(!global1.b.xy), false, !(!(~u_input.c > 1u)), !(!(0u < global0.a)) == any(!(!global1.b.xx)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> vec4<bool> {
    global0 = Struct_1(abs(global1.c.b.a), global0.b);
    global1 = Struct_3(func_3(_wgslsmith_f_op_f32(min(-616f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-362f)), -357f))))), global1.b, global1.c);
    var var_0 = arg_0.b;
    let var_1 = -vec4<i32>(abs(_wgslsmith_div_i32(~var_0.b.x, global0.b.x >> (global1.c.c.a % 32u))), _wgslsmith_add_i32(arg_1.x, -2147483647i), 2147483647i, _wgslsmith_clamp_i32(11869i, _wgslsmith_dot_vec4_i32(arg_1 & vec4<i32>(global1.c.a.b.x, arg_1.x, arg_0.a.b.x, 46456i), -arg_1), global0.b.x));
    var var_2 = arg_0.b;
    return global1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = any(vec4<bool>(any(func_2(Struct_2(global1.c.c, global1.c.b, global1.c.c, global0.a), vec4<i32>(-24602i, u_input.b, global0.b.x, 12578i), 4294967295u, global1.a.x)), !all(global1.b.yy), !(!global1.b.x), global1.b.x)) || false;
    var var_1 = global0.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1930f)) - _wgslsmith_f_op_f32(415f - -257f)))));
    let var_3 = firstTrailingBit(global1.c.c.b.x);
    var var_4 = Struct_3(vec4<bool>(global1.a.x, true, global1.a.x, func_2(global1.c, vec4<i32>(-2147483647i, ~(-2147483647i), countOneBits(32214i), _wgslsmith_mult_i32(var_3, global1.c.b.b.x)), 31609u, true).x), func_3(var_2.x).wwx, Struct_2(global1.c.a, global1.c.b, Struct_1(0u, global1.c.b.b), 75960u));
    return Struct_1(reverseBits(global0.a), ~_wgslsmith_sub_vec4_i32(var_4.c.a.b, reverseBits(~global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = select(global1.a.zwx, global1.b, global1.b.x & global1.b.x);
    var var_1 = u_input.a;
    var var_2 = ~(~_wgslsmith_dot_vec4_i32(global0.b, _wgslsmith_add_vec4_i32(global1.c.c.b, global0.b)));
    var_0 = global1.b;
    var_0 = global1.a.wwy;
    let var_3 = _wgslsmith_mod_i32(min(global0.b.x, _wgslsmith_add_i32(global1.c.a.b.x, i32(-1i) * -2147483647i)) >> (~54725u % 32u), -24216i);
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~max(countOneBits(71838u), ~13288u), ~global1.c.a.a), func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_sub_u32(global0.a, _wgslsmith_mod_u32(1u, var_4)), var_4), ~(~vec2<u32>(global1.c.d, global0.a)), select(select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, global1.b.x), global1.b.xy, vec2<bool>(false, true)), global1.a.x & false), var_0.xz, vec2<bool>(false, select(global1.a.x, false, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -715f) * _wgslsmith_f_op_f32(round(1937f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-742f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f * -716f)), _wgslsmith_f_op_f32(-814f + 983f))), 397f));
}

