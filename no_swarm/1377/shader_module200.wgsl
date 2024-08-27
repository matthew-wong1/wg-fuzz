struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = true;
    return abs(select(_wgslsmith_div_vec4_u32(vec4<u32>(~38081u, ~4294967295u, 60315u, reverseBits(11246u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, u_input.b.x, arg_1.x), select(vec4<u32>(1u, 19692u, 1u, arg_1.x), vec4<u32>(arg_1.x, u_input.b.x, u_input.b.x, 0u), vec4<bool>(true, true, true, true)))), select(vec4<u32>(u_input.b.x, u_input.b.x, arg_1.x, 57416u) >> (~vec4<u32>(4294967295u, arg_1.x, 11738u, 36157u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 34850u, arg_1.x, u_input.b.x), ~vec4<u32>(arg_1.x, 1u, 70086u, 0u)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 434f)), 1288f))) + _wgslsmith_f_op_vec2_f32(global0.c + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-584f, global0.b) * vec2<f32>(-1132f, 1001f)) + global0.c)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = 1u;
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(arg_0.d.x, 2147483647i, global0.e)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.a, vec3<i32>(0i, -39083i, 2343i)) ^ select(vec3<i32>(-32785i, 2147483647i, 45759i), vec3<i32>(global0.d.x, arg_0.d.x, global0.a.x), true), u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(-arg_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), reverseBits(-global0.d), _wgslsmith_add_i32(~global0.d.x, arg_0.d.x));
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) + _wgslsmith_f_op_f32(trunc(var_1.x))), arg_0.c.x);
    var var_3 = arg_0;
    return any(!vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, _wgslsmith_f_op_f32(-var_3.b) < -980f));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = !select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, true, u_input.b.x < u_input.b.x)), vec4<bool>(true, true, true, true), func_4(Struct_1(u_input.a, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_vec2_f32(func_3(u_input.a.x)), vec2<i32>(0i, global0.e), global0.d.x), (u_input.b.x ^ 104056u) ^ _wgslsmith_clamp_u32(27667u, u_input.b.x, u_input.b.x), u_input.b.x));
    var var_1 = min(reverseBits(-(vec3<i32>(arg_0.x, arg_0.x, arg_0.x) | vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)) >> (u_input.b % vec3<u32>(32u))), u_input.a);
    var_1 = vec3<i32>(~0i, 1i, 1i);
    var var_2 = !select(var_0.zyy, vec3<bool>(any(select(var_0.wyx, var_0.xwz, var_0.x)), true, all(var_0.wx) == var_0.x), vec3<bool>(var_0.x, true, !all(vec4<bool>(false, true, true, false))));
    var var_3 = -(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(u_input.a.x, arg_0.x, -1i)), select(global0.d.x, global0.e, false)), global0.e, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(-66440i, u_input.a.x, 768i))) << (select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), abs(u_input.b)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b) >> (abs(u_input.b) % vec3<u32>(32u)), var_2.x) % vec3<u32>(32u)));
    return Struct_1(select(arg_0, vec3<i32>(arg_0.x, 53996i, 13379i) ^ (vec3<i32>(var_1.x, -2147483647i, -2147483647i) ^ _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(var_3.x, u_input.a.x, u_input.a.x), u_input.a)), vec3<bool>(!(!var_2.x), var_1.x > -441i, all(vec2<bool>(true, false)))), 1468f, _wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(1f, 1f)), vec2<i32>(abs(arg_0.x), var_3.x), -_wgslsmith_div_i32(arg_0.x, global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(vec3<i32>(max(-1i, ~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x))), -vec3<i32>(select(global0.e, -5085i, false), 17702i, u_input.a.x), vec3<bool>(-40406i <= u_input.a.x, select(true, true, false) | true, _wgslsmith_sub_u32(104288u, u_input.b.x) >= ~28273u)), global0.b, global0.c, -_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, countOneBits(u_input.a.x)), ~u_input.a.xz), firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, global0.a.x, global0.d.x)), ~vec4<i32>(u_input.a.x, -1i, 1i, 24131i)), 2022i)));
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(global0.d.x, global0.e, global0.e));
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(func_1(Struct_1(vec3<i32>(0i, -2147483647i, 0i), global0.b, vec2<f32>(global0.b, 212f), vec2<i32>(global0.e, global0.e), u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec4_u32(max(vec4<u32>(16660u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(91366u, 0u, u_input.b.x, 13259u)), ~vec4<u32>(4294967295u, u_input.b.x, 46406u, 0u))), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, ~u_input.b.x, firstTrailingBit(0u), ~18758u))) >> (vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 0u), u_input.b.x, 110053u) % vec4<u32>(32u));
    let var_2 = func_2(u_input.a);
    var var_3 = var_2;
    var_0 = var_3.a;
    var var_4 = func_2(~vec3<i32>(-2147483647i, 16821i << (func_1(var_2, vec2<u32>(93499u, u_input.b.x)).x % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.a.x, -1i), max(vec2<i32>(var_2.d.x, var_3.a.x), vec2<i32>(var_3.d.x, -1i)))));
    let var_5 = func_2((~firstLeadingBit(vec3<i32>(0i, -1i, var_2.e)) ^ func_2(var_2.a >> (var_1.yww % vec3<u32>(32u))).a) >> (u_input.b % vec3<u32>(32u)));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_3.b, -1235f, var_4.b))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-142f, -100f, -1000f, var_3.c.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, var_2.b, -1000f, var_3.c.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_6.zyx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(1386f * var_3.b), _wgslsmith_f_op_f32(select(-1297f, -953f, true))))))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 6949u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 44162u), vec4<u32>(u_input.b.x, var_1.x, 1u, var_1.x)))), -539f, 543f);
}

