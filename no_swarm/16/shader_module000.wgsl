struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), -2169f, vec2<u32>(0u, 23447u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_2(select(global0.a.xz, select(select(vec2<bool>(false, global0.a.x), select(global0.a.xy, global0.a.zz, false), global0.a.x), global0.a.yx, any(vec2<bool>(global0.a.x, false))), false), Struct_1(vec3<bool>(any(global0.a), all(!global0.a.xz), all(vec2<bool>(global0.a.x, global0.a.x))), 207f, vec2<u32>(global0.c.x, 4294967295u)), -abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_dot_vec4_u32(~reverseBits(firstLeadingBit(vec4<u32>(10178u, 0u, 4294967295u, u_input.c.x))), ((vec4<u32>(var_0.b.c.x, global0.c.x, u_input.c.x, 0u) << (vec4<u32>(66534u, 11907u, global0.c.x, 12175u) % vec4<u32>(32u))) | vec4<u32>(4294967295u, arg_0.x, 4294967295u, var_0.b.c.x)) | countOneBits(vec4<u32>(u_input.c.x, 0u, 38905u, 0u) ^ vec4<u32>(u_input.b.x, 22339u, global0.c.x, 4294967295u))) | ~var_0.b.c.x;
    var var_2 = true | global0.a.x;
    global0 = var_0.b;
    global0 = var_0.b;
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b)))), ~global0.c);
    var var_0 = Struct_1(arg_1, 710f, global0.c);
    var var_1 = func_3(~vec2<u32>(reverseBits(var_0.c.x), countOneBits(1u)) & ~(~(~vec2<u32>(4294967295u, u_input.c.x))));
    let var_2 = Struct_2(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(global0.a.zx, arg_1.yy, false), global0.a.zx), arg_1.yy, true), Struct_1(select(global0.a, select(var_0.a, select(vec3<bool>(arg_1.x, global0.a.x, false), vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, false, global0.a.x)), var_0.a), !(!vec3<bool>(false, false, global0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(-global0.b))), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c.x, 13118u), select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(var_0.c.x, 74631u), true)))), vec2<i32>(abs(arg_2 >> (38888u % 32u)), select(~(-2147483647i), 1i, var_0.a.x)));
    let var_3 = vec4<i32>(-(var_2.c.x | ~(-1i)), u_input.a, 2147483647i, ~1i) << (~select(vec4<u32>(4390u, 44201u, _wgslsmith_add_u32(global0.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9080u, u_input.c.x, 44761u, var_0.c.x), vec4<u32>(var_2.b.c.x, var_0.c.x, 28666u, var_2.b.c.x)), global0.c.x, max(0u, u_input.c.x), _wgslsmith_add_u32(4294967295u, var_0.c.x)), !(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_2.b.a.x))) % vec4<u32>(32u));
    return var_2.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(!select(arg_1.a.yx, arg_1.a.yz, !all(vec4<bool>(global0.a.x, true, arg_1.a.x, false))), Struct_1(!select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), !vec3<bool>(false, global0.a.x, false), arg_1.a), _wgslsmith_f_op_f32(-arg_1.b), func_2(vec3<i32>(~u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1795i, 25586i, u_input.a, -2147483647i), vec4<i32>(u_input.a, -19262i, u_input.a, u_input.a))), vec3<bool>(arg_1.a.x | false, true, u_input.c.x < arg_1.c.x), ~reverseBits(16059i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.b, 131f)), 1757f))).c), vec2<i32>(abs(_wgslsmith_mult_i32(0i, -20635i) >> (0u % 32u)), ~firstTrailingBit(2147483647i) << (4294967295u % 32u)));
    let var_1 = ~49623u;
    global0 = var_0.b;
    var_0 = Struct_2(func_2(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_0.c.x, u_input.a, u_input.a)) & vec3<i32>(1i, 1i, 1i), ~(vec3<i32>(-28471i, u_input.a, u_input.a) << (vec3<u32>(arg_1.c.x, arg_1.c.x, global0.c.x) % vec3<u32>(32u)))), select(select(!vec3<bool>(var_0.a.x, global0.a.x, global0.a.x), vec3<bool>(var_0.b.a.x, arg_1.a.x, false), !arg_1.a), var_0.b.a, !(!vec3<bool>(global0.a.x, true, true))), -747i, 695f).a.xx, var_0.b, var_0.c);
    global0 = func_2(-_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -52716i, u_input.a), vec3<i32>(u_input.a, var_0.c.x, -35802i)), min(vec3<i32>(-19510i, -12768i, u_input.a), vec3<i32>(u_input.a, 21452i, 0i))) << (~countOneBits(vec3<u32>(39424u, 4294967295u, u_input.b.x)) % vec3<u32>(32u)), !select(!(!vec3<bool>(true, global0.a.x, false)), !select(global0.a, arg_1.a, var_0.a.x), all(global0.a.yy)), _wgslsmith_div_i32(~u_input.a, reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -1i, var_0.c.x, -1i), ~vec4<i32>(var_0.c.x, var_0.c.x, u_input.a, var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
    return !global0.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global0 = Struct_1(!(!func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1122f, -1080f, global0.b, 883f), vec4<f32>(global0.b, global0.b, 3230f, 2413f), global0.a.x)), func_2(vec3<i32>(u_input.a, 1i, -38916i), global0.a, u_input.a, -1080f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-global0.b)) + global0.b))), vec2<u32>(u_input.b.x, arg_0.x));
    global0 = func_2(vec3<i32>(~u_input.a, abs(~(-21611i)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a))), select(global0.a, global0.a, 1450f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.b, 984f)), 477f)), 0i, global0.b);
    let var_0 = Struct_2(global0.a.xz, Struct_1(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b * -196f))), func_2(-(~vec3<i32>(u_input.a, 1i, u_input.a)), !(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), -1i, _wgslsmith_f_op_f32(select(-1297f, -819f, false))).c), vec2<i32>(u_input.a, min(u_input.a, u_input.a)));
    var var_1 = var_0;
    var var_2 = Struct_4(Struct_2(vec2<bool>(global0.c.x > ~54477u, !func_2(vec3<i32>(u_input.a, -2147483647i, 2002i), vec3<bool>(false, global0.a.x, false), var_1.c.x, global0.b).a.x), Struct_1(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.x, var_1.c.x, -2147483647i), vec3<i32>(0i, -9879i, 2336i)), vec3<bool>(global0.a.x, true, global0.a.x), min(-30045i, var_0.c.x), _wgslsmith_f_op_f32(var_0.b.b + global0.b)).a, var_1.b.b, vec2<u32>(firstLeadingBit(var_0.b.c.x), 72087u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -var_1.c, ~var_1.c)));
    return Struct_4(Struct_2(var_1.a, var_1.b, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.a.c, var_0.c, vec2<i32>(var_0.c.x, var_0.c.x) << (var_1.b.c % vec2<u32>(32u))), vec2<i32>(-47917i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -57086i, var_2.a.c.x), vec3<i32>(-2147483647i, var_1.c.x, -43645i))))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - 187f)), -1064f));
    var var_1 = arg_3.a;
    let var_2 = arg_3.a;
    var_1 = func_1(vec2<u32>(0u, select(_wgslsmith_sub_u32(4294967295u, u_input.c.x), ~24534u, func_2(vec3<i32>(var_2.c.x, 36604i, -34631i), vec3<bool>(true, var_1.a.x, false), -2147483647i, global0.b).a.x)) << (arg_3.a.b.c % vec2<u32>(32u))).a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(global0.a);
    var_0 = false;
    let var_1 = select(0u, 1u, func_5(any(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), _wgslsmith_div_i32(1i, u_input.a), func_1(~global0.c), func_1(global0.c))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, firstLeadingBit(48353u)), abs(_wgslsmith_add_vec3_u32(min(u_input.c, vec3<u32>(1u, global0.c.x, u_input.b.x)), ~u_input.c))) % 32u);
    var var_2 = Struct_5(func_1(vec2<u32>(_wgslsmith_mod_u32(abs(4294967295u), ~u_input.c.x), u_input.b.x)).a, Struct_3(func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.c.x, 14691u), u_input.b.yx)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1203f, -1000f) + vec2<f32>(global0.b, 1588f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(835f, global0.b) - vec2<f32>(1605f, global0.b)))), func_1(~vec2<u32>(1u, 1u)).a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, global0.b), vec2<f32>(-1506f, global0.b), global0.a.xy))))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), -(~vec2<i32>(u_input.a, -38907i)))), Struct_4(Struct_2(vec2<bool>(global0.a.x, all(vec3<bool>(global0.a.x, global0.a.x, global0.a.x))), func_2(min(vec3<i32>(-9431i, u_input.a, 21743i), vec3<i32>(u_input.a, -2147483647i, 0i)), vec3<bool>(global0.a.x, false, global0.a.x), firstLeadingBit(u_input.a), -2069f), -select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), global0.a.x))), global0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(var_2.b.a.b.b + global0.b)), 1165f, -767f, _wgslsmith_f_op_f32(step(-1496f, _wgslsmith_f_op_f32(-var_2.a.b.b))))));
    var var_4 = var_2.b;
    var_2 = Struct_5(func_1(max(min(~u_input.c.yz, _wgslsmith_mult_vec2_u32(var_2.b.c.b.c, global0.c)), vec2<u32>(var_2.c.a.b.c.x, ~var_2.b.c.b.c.x))).a, var_2.b, var_2.c, vec3<bool>(any(!vec4<bool>(global0.a.x, global0.a.x, true, false)), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b.c.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.b.c.b.c.x, 90853u, 0u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c.x, var_4.a.b.c.x, var_2.a.b.c.x), vec3<u32>(4294967295u, global0.c.x, var_2.c.a.b.c.x))) | select(vec3<u32>(~65334u, var_4.a.b.c.x, ~u_input.c.x), firstLeadingBit(max(u_input.c, u_input.c)), !global0.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -922f) * -744f), 578f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_4.d), var_3.xw, !vec2<bool>(true, var_4.c.b.a.x)))), vec2<bool>(false, !global0.a.x || true))));
}

