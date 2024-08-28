struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(5962i, 1i, -51902i), vec3<i32>(22128i, -25152i, -6375i))) << (abs(32112u << (~u_input.b % 32u)) % 32u), _wgslsmith_add_i32(18273i, -20765i));
    var var_1 = Struct_1(select(global0.a.a, select(global0.a.a, select(vec4<bool>(false, global0.b.a.x, global0.a.a.x, global0.b.a.x), vec4<bool>(global0.a.a.x, global0.a.a.x, false, false), !global0.a.a.x), global0.b.a.x), !global0.b.a));
    let var_2 = ((u_input.a & countOneBits(1u)) | u_input.b) | u_input.b;
    var var_3 = vec3<i32>(~(~(-2147483647i)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-31353i, -1i), vec2<i32>(-1i, -24068i)), 0i) << (countOneBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, 1u), ~var_2)) % 32u), 2966i);
    return global0.a.a.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    let var_0 = !select(!vec2<bool>(arg_1.a.x, true | arg_1.a.x), vec2<bool>(select(arg_0.x, true, all(arg_1.a)), true), all(select(select(arg_0, vec4<bool>(true, global0.a.a.x, true, false), true), select(global0.b.a, vec4<bool>(false, global0.b.a.x, arg_0.x, false), global0.b.a), !global0.b.a)));
    global1 = _wgslsmith_add_u32(2863u, 29064u);
    let var_1 = Struct_2(Struct_1(arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(620f, global0.c.x, true)))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, global0.c.x, var_1.a.a.x)) - _wgslsmith_f_op_f32(541f * global0.c.x)) - global0.c.x) * -253f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(853f * _wgslsmith_f_op_f32(sign(var_1.b))))));
    let var_3 = _wgslsmith_mod_u32(min(reverseBits(u_input.b) | 1u, _wgslsmith_dot_vec3_u32(countOneBits(arg_3) >> (~vec3<u32>(18018u, arg_3.x, arg_3.x) % vec3<u32>(32u)), vec3<u32>(abs(4294967295u), 4294967295u, arg_3.x))), ~1u);
    return false;
}

fn func_2() -> Struct_1 {
    global1 = select(u_input.a, 59184u, global0.b.a.x);
    global1 = u_input.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.wz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, global0.c.x) - global0.c.zz)))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.c.yw, vec2<f32>(2020f, -881f)), global0.c.yw);
    var var_1 = !any(!(!global0.b.a)) == !global0.a.a.x;
    return Struct_1(vec4<bool>(true, false, all(vec2<bool>(true, true)), func_4(vec4<bool>(true, all(global0.b.a.xx), any(global0.b.a.zz), func_3()), global0.b, -vec2<i32>(-49814i, 4812i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(select(!vec4<bool>(false, global0.a.a.x, global0.a.a.x, arg_0.b.a.x), vec4<bool>(true, arg_1.a.x, true, arg_0.a.a.x), arg_1.a)), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x + -1203f), _wgslsmith_f_op_f32(step(708f, global0.c.x)), global0.c.x, -659f)) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, -1000f), -427f), 889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-760f, global0.c.x), _wgslsmith_f_op_f32(-130f + global0.c.x))))));
    global1 = u_input.a;
    let var_1 = u_input.a;
    global1 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(abs(1u), ~10939u), ~(~0u)), ~abs(min(vec2<u32>(var_1, u_input.b), vec2<u32>(u_input.a, u_input.b)))));
    var var_2 = !any(vec2<bool>(false, arg_1.a.x));
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global1 = 1u;
    global0 = Struct_3(global0.a, Struct_1(!global0.b.a), _wgslsmith_f_op_vec4_f32(-global0.c));
    let var_0 = vec2<f32>(1000f, -852f);
    var var_1 = func_5(Struct_3(func_2(), global0.a, global0.c), func_2(), func_2(), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0, arg_0), -arg_0, ~arg_0), -2147483647i & arg_0)));
    let var_2 = _wgslsmith_mod_i32(arg_0 >> (max(abs(4294967295u >> (u_input.b % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 25283u, u_input.a), reverseBits(vec3<u32>(4294967295u, 4294967295u, u_input.b)))) % 32u), _wgslsmith_div_i32(countOneBits(~2147483647i), _wgslsmith_mod_i32(i32(-1i) * -11871i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0, 27426i), select(vec3<i32>(-1i, arg_0, arg_0), vec3<i32>(arg_0, -2147483647i, arg_0), var_1.a.yyw)))));
    return Struct_3(Struct_1(!func_5(Struct_3(global0.b, Struct_1(var_1.a), vec4<f32>(var_0.x, -1000f, 106f, global0.c.x)), global0.a, global0.b, vec2<i32>(arg_0, var_2) >> (vec2<u32>(u_input.b, 8116u) % vec2<u32>(32u))).a), global0.a, global0.c);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = Struct_2(func_1(1i).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-683f - -835f) - arg_2.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(floor(global0.c.x)))))));
    let var_2 = vec3<bool>((global0.a.a.x | (!arg_0.a.a.x & !arg_0.a.a.x)) || global0.a.a.x, true, true);
    global1 = u_input.b;
    let var_3 = 38362i;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a >> (u_input.b % 32u);
    var var_0 = Struct_3(Struct_1(select(global0.b.a, global0.a.a, vec4<bool>(u_input.a <= 49797u, global0.b.a.x, true, true))), Struct_1(select(vec4<bool>(global0.a.a.x & false, global0.c.x <= global0.c.x, all(vec3<bool>(true, global0.b.a.x, global0.a.a.x)), global0.b.a.x), global0.a.a, !all(global0.a.a.yzw))), global0.c);
    let var_1 = global0.b;
    let var_2 = func_6(func_1(abs(2147483647i)), vec2<i32>(-(~0i), -1i | _wgslsmith_dot_vec4_i32(vec4<i32>(7683i, -1i, -8698i, 13221i), vec4<i32>(47601i, 59594i, 36254i, 40262i))) >> ((vec2<u32>(4294967295u, ~54619u) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 1u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_2(Struct_1(!func_5(Struct_3(Struct_1(global0.a.a), Struct_1(vec4<bool>(var_0.b.a.x, global0.b.a.x, false, var_0.b.a.x)), vec4<f32>(153f, 479f, -971f, -305f)), Struct_1(var_0.b.a), Struct_1(var_1.a), vec2<i32>(-1i, -2147483647i)).a), _wgslsmith_f_op_f32(abs(var_0.c.x))), select(vec2<i32>(1i, countOneBits(_wgslsmith_clamp_i32(8341i, 31924i, 2319i))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-78036i, -29477i), _wgslsmith_add_vec2_i32(vec2<i32>(-22511i, -1i), vec2<i32>(-42256i, -32797i))), abs(vec2<i32>(1i, 1i))), !var_0.b.a.yw));
    let var_3 = !global0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b)) + -198f))), -579f, abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(81516u, 4294967295u, u_input.b), ~vec3<u32>(u_input.a, 13423u, 2792u), select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(18108u, u_input.b, u_input.a), var_1.a.x))) >> (vec3<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), ~_wgslsmith_add_u32(u_input.a, 1u)) % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-59937i, 5290i, 24256i), vec3<i32>(0i, 41813i, -1i)), vec3<i32>(5043i, -2147483647i, 1i), var_1.a.zzy), reverseBits(vec3<i32>(1i, 1i, 1i))));
}

