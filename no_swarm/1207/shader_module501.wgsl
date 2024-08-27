struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(-1i, 1886i, -14793i), vec3<bool>(false, true, false), false, vec4<bool>(false, true, true, false), 0u), vec3<f32>(-2925f, -948f, 1058f), Struct_1(vec3<i32>(2147483647i, 0i, -37290i), vec3<bool>(true, true, false), true, vec4<bool>(true, true, true, false), 0u));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-45893i, 0i, 2147483647i), vec3<bool>(false, true, true), false, vec4<bool>(true, true, false, true), 17477u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = ~(-53901i >> (select(min(arg_1.c.e, 1u), _wgslsmith_sub_u32(1u, arg_0.x), -9400i > arg_1.a.a.x) % 32u));
    var var_1 = min(-1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(global1.a), -(vec3<i32>(global0.c.a.x, global1.a.x, global1.a.x) | -global0.a.a)));
    var var_2 = Struct_1(min(global0.a.a, vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(global1.a, firstLeadingBit(arg_1.c.a)), global1.a.x)), !(!global1.d.xyy), global1.c, global1.d, 13076u);
    return countOneBits(~(~(~vec3<i32>(global0.a.a.x, arg_1.c.a.x, -5281i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = -(reverseBits(~arg_0.a.x) ^ ~countOneBits(arg_3.a.x));
    var var_1 = abs(~(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 61139u, 0u) | vec3<u32>(global0.c.e, 12565u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(695u, 1u, 0u), vec3<u32>(68910u, global1.e, 16359u), vec3<u32>(u_input.a, arg_0.e, global0.c.e))) | ~vec3<u32>(global1.e, 33961u, u_input.a)));
    var var_2 = global0.c;
    var var_3 = Struct_3(2266f, Struct_2(Struct_1(global0.a.a, global0.a.d.zzw, global0.c.b.x, select(!arg_3.d, select(var_2.d, vec4<bool>(true, false, global1.c, true), var_2.d.x), true & global1.b.x), 55540u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(756f, 386f, global0.b.x)) - global0.b)), arg_3), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, -16174i, var_2.a.x), vec3<i32>(var_2.a.x, arg_2.x, 0i)), vec3<i32>(arg_3.a.x, 44515i, global1.a.x)), vec3<bool>(var_2.c, true, all(arg_0.d)), false, vec4<bool>(any(global0.c.d), false, true, true & var_2.c), arg_0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(global0.b.x, 418f, global0.b.x)) * _wgslsmith_f_op_vec3_f32(-global0.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, global0.b.x))), Struct_1(func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(8444u, 59937u, var_2.e), vec3<u32>(0u, var_1.x, 0u)), Struct_2(arg_3, vec3<f32>(250f, 503f, -216f), Struct_1(arg_2, arg_0.d.zxw, global1.c, vec4<bool>(arg_3.c, false, false, global0.a.c), 0u))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), global1.d.xww), !arg_0.c, select(select(arg_3.d, vec4<bool>(global1.d.x, true, arg_0.b.x, false), var_2.b.x), !vec4<bool>(var_2.b.x, arg_3.b.x, true, false), !var_2.d), arg_3.e)), reverseBits(firstLeadingBit(vec2<i32>(abs(global1.a.x), _wgslsmith_add_i32(arg_3.a.x, 0i)))));
    var_0 = arg_2.x;
    return _wgslsmith_div_i32(abs(1i), -1i);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec3<i32>(~global0.a.a.x, func_2(Struct_1(vec3<i32>(global0.a.a.x, global0.a.a.x, 18008i), vec3<bool>(true, false, !global0.a.b.x), global1.c, !global0.c.d, 1u), global0.a.a, -(-vec3<i32>(-7317i, global1.a.x, global1.a.x) & ~global0.a.a), global0.c), _wgslsmith_add_i32(0i, ~_wgslsmith_add_i32(1i, -global1.a.x)));
    let var_1 = true;
    global1 = Struct_1(~vec3<i32>(~(-2147483647i), global0.c.a.x, ~1i), !global1.b, !global1.d.x, !global1.d, 20779u);
    let var_2 = global0.c;
    return var_2.e;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = global1.a.zx;
    let var_1 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a.a.x, -57986i, var_0.x, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.a.x, -1i, 55418i, global0.a.a.x), vec4<i32>(global0.c.a.x, global0.c.a.x, 1i, 2147483647i))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 42023u), ~vec4<u32>(4294967295u, u_input.b.x, 1u, global0.c.e)) % vec4<u32>(32u))), (vec4<i32>(-1i) * -vec4<i32>(2147483647i, -79072i, 61301i, global1.a.x)) ^ (abs(vec4<i32>(var_0.x, -1i, arg_2, -28726i) << (vec4<u32>(44919u, arg_1.e, u_input.c, 7004u) % vec4<u32>(32u))) >> (~vec4<u32>(34865u, arg_1.e, global1.e, 4294967295u) % vec4<u32>(32u))));
    var var_2 = u_input.b;
    var_0 = select(arg_1.a.xy, _wgslsmith_mult_vec2_i32(~vec2<i32>(func_3(vec3<u32>(54215u, 8940u, u_input.c), Struct_2(Struct_1(vec3<i32>(13510i, 9565i, arg_0), global0.c.d.xwz, global0.c.c, arg_1.d, u_input.b.x), global0.b, arg_1)).x, -arg_1.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(51208i, _wgslsmith_add_i32(-44489i, arg_2)), ~vec2<i32>(var_0.x, var_1))), !(!any(!global1.d.zx)));
    global0 = Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.b, vec3<f32>(global0.b.x, global0.b.x, 638f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(global0.b.x, 1233f, global0.b.x))))), global0.c);
    return Struct_1(global0.a.a, select(select(arg_1.b, !select(vec3<bool>(true, false, arg_1.d.x), vec3<bool>(false, true, true), false), true), global1.d.xxw, global0.a.b.x), true, global1.d, ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(countOneBits(~1i), Struct_1(vec3<i32>(-1i, global1.a.x, (global0.a.a.x >> (0u % 32u)) & 1i), global1.d.xyy, ~global0.c.e == func_1(global0.b.x), !select(!global0.c.d, select(vec4<bool>(global1.c, global1.c, global0.a.c, true), vec4<bool>(global0.c.c, false, true, false), false), !vec4<bool>(global0.c.b.x, global1.b.x, global0.c.c, false)), firstTrailingBit(~u_input.b.x)), max(~(~(~(-56851i))), global0.a.a.x));
    var var_0 = ~abs(vec2<u32>(global1.e, _wgslsmith_sub_u32(57858u | global1.e, max(u_input.b.x, global1.e))));
    global0 = Struct_2(func_4(-5286i, func_4(0i, Struct_1(vec3<i32>(global1.a.x, global1.a.x, 96076i), select(global0.c.b, global0.a.b, true), false, func_4(global1.a.x, global0.a, -46559i).d, global1.e), global1.a.x), _wgslsmith_mod_i32(abs(-global0.a.a.x), select(1i, ~global0.c.a.x, global0.c.a.x == 1i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global0.b)))), global0.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - -380f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(526f + -746f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b.x, 705f)))), !vec3<bool>(true, true, all(global1.d)))), func_4(global1.a.x, global0.c, i32(-1i) * -firstLeadingBit(global1.a.x)));
    let var_1 = global0.a;
    var_0 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0.c.e, var_1.e), ~(~vec3<u32>(u_input.c, 0u, 0u))), 0u);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), Struct_2(global0.c, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x))), -240f, _wgslsmith_div_f32(global0.b.x, global0.b.x)), func_4(21432i, global0.c, 1i)), Struct_2(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, 639f, global0.b.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.b)))), global0.c), (max(var_1.a.xx, _wgslsmith_mod_vec2_i32(global0.a.a.zy, global0.c.a.xy)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.e, 0u), u_input.b) % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_2.c.c.a.x, 32050i));
}

