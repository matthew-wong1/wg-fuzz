struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = 927f;

var<private> global2: vec2<u32> = vec2<u32>(7240u, 4294967295u);

var<private> global3: array<Struct_4, 8>;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> f32 {
    global0 = firstTrailingBit(-(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global0.x, -45542i, 0i), vec4<i32>(-1i, global0.x, global0.x, global0.x)))));
    let var_0 = _wgslsmith_mult_vec2_i32(max(-_wgslsmith_clamp_vec2_i32(-global0.xw, vec2<i32>(global0.x, 1i), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_add_vec2_i32(-(~vec2<i32>(-28799i, global0.x)), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-30794i, -10627i)), reverseBits(vec2<i32>(40945i, 1587i))))), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.x, -1i, global0.x), vec4<i32>(global0.x, global0.x, 4146i, 0i)), 19i), -1i));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global4.zz), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.zx))))));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, var_1.x, var_1.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.yy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global4.xy))));
    return -249f;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    let var_0 = Struct_3(Struct_2(1u, Struct_1(reverseBits(vec2<i32>(arg_0.x, -1i)), min(vec3<i32>(-32190i, 7411i, arg_0.x) >> (vec3<u32>(global2.x, 4294967295u, arg_2.x) % vec3<u32>(32u)), vec3<i32>(0i, arg_0.x, -15005i))), global0.yzw, vec2<bool>(true, true), Struct_1(global0.zw, ~vec3<i32>(arg_0.x, 2147483647i, global0.x))), !vec2<bool>(_wgslsmith_sub_u32(4294967295u, 71539u) > u_input.a, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(round(global4.xy)));
    let var_1 = 1u;
    var var_2 = 1u;
    global3 = array<Struct_4, 8>();
    var var_3 = Struct_2(~select(~4015u, arg_1, !(!var_0.b.x)), Struct_1((select(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, var_0.a.b.a.x), var_0.a.d) << (_wgslsmith_sub_vec2_u32(arg_2.yz, arg_2.yx) % vec2<u32>(32u))) & -(~vec2<i32>(1437i, 1i)), vec3<i32>(~2147483647i, ~(-29096i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 18361i, 47913i), vec4<i32>(global0.x, 56614i, arg_0.x, global0.x))) | vec3<i32>(_wgslsmith_mod_i32(-15391i, var_0.a.e.b.x), ~global0.x, ~arg_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(select(-25408i, var_0.a.e.b.x, var_0.a.d.x) ^ var_0.a.c.x, (global0.x << (var_1 % 32u)) >> (firstTrailingBit(var_0.a.a) % 32u), 24041i), global0.xwx), var_0.b, Struct_1(vec2<i32>(~72517i, min(-3329i, ~(-27442i))), ~vec3<i32>(1i, global0.x, global0.x) << (vec3<u32>(~4294967295u, _wgslsmith_sub_u32(u_input.a, var_1), ~arg_1) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -580f);
}

fn func_1() -> i32 {
    var var_0 = !any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false)) && true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -424f) <= _wgslsmith_f_op_f32(-global4.x);
    global4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-721f * global4.x))), _wgslsmith_f_op_f32(-global4.x))) + _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-384f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-global4.x), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.xyy, 28616u, vec3<u32>(global2.x, global2.x, 0u), -1061f))) + 1644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_div_f32(579f, 545f))));
    global0 = vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -12363i), global0.zw)), _wgslsmith_sub_i32(global0.x, -global0.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, 1i), -1i) << (~firstLeadingBit(u_input.a) % 32u), countOneBits(_wgslsmith_sub_i32(firstTrailingBit(3348i), -10726i) ^ ~global0.x), firstTrailingBit(~global0.x));
    let var_1 = _wgslsmith_clamp_vec2_u32(min(~vec2<u32>(~1u, 1u), reverseBits(reverseBits(vec2<u32>(1u, u_input.a) ^ vec2<u32>(global2.x, 17524u)))), _wgslsmith_sub_vec2_u32(min(abs(vec2<u32>(0u, 4294967295u)), vec2<u32>(_wgslsmith_sub_u32(0u, u_input.a), ~u_input.a)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(global2.x, global2.x), vec2<u32>(1u, u_input.a) & vec2<u32>(496u, u_input.a))), ~vec2<u32>(4294967295u, global2.x));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 8>();
    let var_0 = (_wgslsmith_clamp_i32(~(-global0.x), global0.x, 2147483647i) == global0.x) & false;
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, global0.x), -global0.x, global0.x, i32(-1i) * -10680i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a ^ u_input.a, 26341u, ~38521u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 25548u), vec4<u32>(global2.x, 0u, 38720u, u_input.a) << (vec4<u32>(0u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u)), select(-vec4<i32>(global0.x | global0.x, ~22482i, func_1(), -14280i), -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, global0.x, global0.x), vec4<i32>(0i, 2147483647i, -24962i, -1598i), vec4<i32>(global0.x, global0.x, -35526i, -9392i)), vec4<i32>(-2147483647i, global0.x, 2147483647i, -2147483647i)), false));
    let var_3 = abs(vec3<i32>(func_1(), abs(global0.x), var_2.x));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, global4.x))), vec3<f32>(global4.x, -881f, _wgslsmith_f_op_f32(-789f - 902f))))));
    let var_4 = Struct_3(Struct_2(_wgslsmith_add_u32(u_input.a, 1u), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(3732i, global0.x), abs(var_3.xy)), vec3<i32>(var_3.x | -1i, i32(-1i) * -1i, 4205i >> (u_input.a % 32u))), var_2.wyw, select(select(vec2<bool>(false, var_1), vec2<bool>(false, false), var_1), !(!vec2<bool>(var_0, true)), vec2<bool>(-1i <= global0.x, all(vec4<bool>(var_1, var_1, var_1, false)))), Struct_1(~(var_3.zx ^ vec2<i32>(global0.x, -33723i)), var_2.xyx)), vec2<bool>(false, all(select(select(vec4<bool>(var_1, var_0, var_1, false), vec4<bool>(var_0, false, false, true), true), !vec4<bool>(var_0, var_1, var_0, var_0), var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 210f)) - vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-1465f * global4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global2.x, 0u), vec3<u32>(76978u, global2.x, global2.x)) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.x, 1u), vec3<u32>(0u, var_4.a.a, 0u))), select(vec3<u32>(max(u_input.a, 1u), var_4.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(44940u, global2.x, 52082u), vec3<u32>(4977u, 4294967295u, global2.x))), min(~vec3<u32>(4294967295u, u_input.a, 57560u), min(vec3<u32>(var_4.a.a, 9243u, 0u), vec3<u32>(52648u, global2.x, 46974u))), select(select(vec3<bool>(var_1, true, var_0), vec3<bool>(true, var_0, false), vec3<bool>(var_1, var_4.a.d.x, var_0)), !vec3<bool>(true, var_1, false), any(vec3<bool>(var_0, true, var_1))))), _wgslsmith_add_vec3_i32(firstLeadingBit(reverseBits(var_2.ywz)), vec3<i32>(~(-2147483647i), var_3.x, countOneBits(11935i))) ^ vec3<i32>(-_wgslsmith_clamp_i32(25377i, -1i, -1397i), global0.x, firstLeadingBit(max(var_3.x, var_2.x))), -56980i, reverseBits(abs(~vec2<i32>(var_4.a.e.a.x, -7689i))), max(_wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(var_4.a.a, var_4.a.a, 0u), vec3<u32>(u_input.a, var_4.a.a, 11525u), vec3<bool>(false, var_4.b.x, false))), ~vec3<u32>(1u, global2.x, 1u) >> (countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), vec3<u32>(27821u & var_4.a.a, var_4.a.a & _wgslsmith_add_u32(global2.x, u_input.a), countOneBits(~u_input.a))));
}

