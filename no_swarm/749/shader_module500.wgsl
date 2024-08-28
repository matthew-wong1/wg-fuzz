struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-6401i, vec4<bool>(false, true, true, false), Struct_1(true, 32914u, i32(-2147483648)), Struct_1(true, 10509u, i32(-2147483648)));

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(Struct_2(global0.a, !select(select(global0.b, vec4<bool>(global0.d.a, global0.c.a, global0.d.a, false), global0.d.a), !global0.b, !global0.d.a), Struct_1(global0.b.x, _wgslsmith_clamp_u32(0u, 0u, global0.c.b), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, 15981i, u_input.c), vec3<i32>(-7224i, global0.a, 0i)), vec3<i32>(-1i, 70976i, global0.c.c))), global0.c), ~(~vec4<u32>(global0.c.b, 4294967295u, global0.d.b, 4294967295u) | ~(~vec4<u32>(global0.d.b, global0.c.b, global0.c.b, 25323u))), global0.c);
    global0 = Struct_2(0i, !vec4<bool>(true, any(vec3<bool>(global0.c.a, global0.c.a, global0.c.a)), false, _wgslsmith_f_op_f32(trunc(870f)) == _wgslsmith_f_op_f32(max(1072f, -430f))), global0.d, var_0.c);
    global1 = array<vec3<bool>, 12>();
    global1 = array<vec3<bool>, 12>();
    let var_1 = var_0.a;
    return _wgslsmith_add_u32(var_0.a.d.b, ~_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(countOneBits(1u), 17617u), var_0.b.x));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(u_input.c, global0.b, Struct_1(select(87195i, u_input.c, global0.d.a) >= _wgslsmith_div_i32(arg_2.c, u_input.b), 4294967295u, ~u_input.b), global0.c), firstTrailingBit(vec4<u32>(~20344u, ~arg_1.x, ~27074u, 38193u)), Struct_1(arg_2.a, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(83573u, arg_1.x, 4294967295u, global0.c.b), ~vec4<u32>(0u, global0.c.b, 76007u, 4294967295u))), arg_2.c));
    var_0 = Struct_3(var_0.a, ~(~var_0.b), Struct_1(false, arg_2.b, 1i << ((~arg_1.x << (1u % 32u)) % 32u)));
    var var_1 = var_0.c;
    var var_2 = Struct_3(var_0.a, abs(vec4<u32>(func_3(), 74946u, _wgslsmith_mult_u32(global0.c.b, 36381u), _wgslsmith_dot_vec3_u32(var_0.b.wzz, var_0.b.wzw))) << (vec4<u32>(0u, _wgslsmith_add_u32(var_1.b, 93526u) >> (arg_2.b % 32u), 1u << (1u % 32u), firstTrailingBit(1u)) % vec4<u32>(32u)), Struct_1(any(select(select(global0.b.xx, global0.b.yx, vec2<bool>(false, global0.b.x)), !vec2<bool>(var_0.c.a, var_0.c.a), global0.b.x)), ~min(~4294967295u, 1u), var_0.a.d.c));
    let var_3 = Struct_5(4294967295u, var_2.a.b.wx, _wgslsmith_f_op_f32(trunc(-1813f)));
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(var_0.b & vec4<u32>(_wgslsmith_mult_u32(global0.d.b, 40745u), var_0.c.b, 4294967295u, ~1u)), countOneBits(var_2.b));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_5 {
    global1 = array<vec3<bool>, 12>();
    var var_0 = arg_0;
    let var_1 = Struct_5(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.d.b, 0u, arg_3.x)), vec3<u32>(67481u, _wgslsmith_mult_u32(func_2(1142f, vec2<u32>(arg_3.x, global0.c.b), Struct_1(false, arg_3.x, 1i)), ~arg_0.c.b), _wgslsmith_mult_u32(arg_3.x, ~var_0.d.b))), vec2<bool>(all(arg_1) | true, all(select(global0.b.ww, vec2<bool>(true, arg_1.x), var_0.b.zy)) | all(vec3<bool>(true, false, global0.d.a))), _wgslsmith_f_op_f32(sign(-1000f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c, -1600f, var_1.c), vec3<f32>(121f, 2942f, var_1.c)))))));
    global0 = Struct_2(var_0.a, arg_0.b, global0.d, global0.c);
    return Struct_5(~var_0.c.b, !(!arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, var_1.c))) + var_1.c))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_i32(reverseBits(u_input.b), 19044i), !select(global0.b, vec4<bool>(true, all(global0.b.xx), !global0.b.x, true), true), Struct_1(!global0.d.a, 4294967295u, abs(abs(u_input.a)) | _wgslsmith_sub_i32(i32(-1i) * -2147483647i, select(0i, -3631i, arg_1.b.x))), global0.c);
    let var_1 = countOneBits(arg_1.a) | ~abs(arg_1.a);
    let var_2 = Struct_3(Struct_2(-abs(u_input.a), var_0.b, Struct_1(true, 1u, -1i), var_0.d), ~(~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(12505u, arg_1.a, 1u, var_1), vec4<u32>(var_1, 4294967295u, var_0.c.b, 43356u)))), Struct_1(func_1(Struct_2(~2147483647i, vec4<bool>(arg_0.b.x, var_0.b.x, arg_1.b.x, arg_0.b.x), var_0.c, Struct_1(true, 0u, 23806i)), vec2<bool>(arg_0.b.x && var_0.d.a, all(vec3<bool>(true, var_0.c.a, var_0.b.x))), vec4<i32>(u_input.c, 1i, u_input.a, 0i) ^ (vec4<i32>(13764i, -2147483647i, 624i, global0.a) >> (vec4<u32>(global0.c.b, 30638u, 53614u, 1u) % vec4<u32>(32u))), vec2<u32>(0u, global0.d.b) ^ ~vec2<u32>(arg_1.a, 73213u)).b.x, ~select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(47430u, 0u, 23170u, 0u), vec4<u32>(arg_1.a, 4294967295u, 0u, 1u)), global0.d.a == global0.d.a), -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.a, global0.d.c, u_input.a, -33140i)), select(vec4<i32>(-17974i, 11411i, u_input.c, var_0.d.c), vec4<i32>(u_input.c, var_0.d.c, var_0.d.c, 0i), var_0.b))));
    let var_3 = var_0.b;
    global1 = array<vec3<bool>, 12>();
    return -483f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global0.d.b);
    let var_1 = -25456i;
    var_0 = global0.d.b;
    let var_2 = 679f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(global0.c.b, global0.b.yy, -1000f), func_1(Struct_2(var_1, vec4<bool>(global0.c.a, true, true, global0.d.a), global0.d, Struct_1(global0.d.a, global0.c.b, 0i)), vec2<bool>(global0.d.a, true), vec4<i32>(-6972i, var_1, var_1, var_1), vec2<u32>(global0.c.b, global0.c.b))))), -1491f));
    var_0 = func_2(1230f, _wgslsmith_mod_vec2_u32(vec2<u32>(50366u, ~1u & global0.d.b), ~(~vec2<u32>(25841u, global0.c.b)) | vec2<u32>(104214u, 106165u)), global0.d);
    var var_3 = func_1(Struct_2(u_input.b, vec4<bool>(false, var_2, true, any(vec3<bool>(var_2, false, false))), global0.d, Struct_1(global0.d.a, global0.d.b, _wgslsmith_sub_i32(-5746i >> (global0.c.b % 32u), -var_1))), select(func_1(Struct_2(u_input.b, global0.b, global0.c, global0.c), select(!vec2<bool>(global0.c.a, var_2), global0.b.yw, func_1(Struct_2(u_input.c, vec4<bool>(false, true, global0.d.a, global0.b.x), Struct_1(global0.d.a, 1u, -47794i), Struct_1(false, 4294967295u, var_1)), global0.b.yx, vec4<i32>(global0.a, var_1, global0.a, var_1), vec2<u32>(56662u, 30463u)).b), vec4<i32>(var_1, 1296i, ~2147483647i, _wgslsmith_add_i32(1i, u_input.a)), vec2<u32>(_wgslsmith_sub_u32(15664u, global0.d.b), 12106u)).b, !vec2<bool>(var_2, any(global0.b)), !vec2<bool>(false, global0.c.b > global0.d.b)), -vec4<i32>(var_1, u_input.a >> (func_3() % 32u), -(global0.a << (global0.d.b % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.c, 0i, -31062i, global0.d.c), vec4<i32>(-46527i, var_1, global0.c.c, -51944i)), -vec4<i32>(-5501i, 0i, 1i, -46432i))), vec2<u32>(~global0.d.b, global0.c.b)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1056f + -1430f), u_input.b);
}

