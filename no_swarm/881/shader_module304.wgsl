struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-21411i, -32888i, i32(-2147483648), 4934i));

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec4_i32(global2.b.a, _wgslsmith_div_vec4_i32(select((vec4<i32>(u_input.b.x, global0.a.x, u_input.b.x, 0i) >> (vec4<u32>(global2.a.x, 0u, 1u, 39558u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(global2.b.a, vec4<i32>(global2.b.a.x, -1i, 32641i, 0i)), ~(-vec4<i32>(-23836i, u_input.b.x, 1i, global0.a.x)), !(23294i >= global0.a.x)), vec4<i32>(-_wgslsmith_mult_i32(global0.a.x, -2147483647i), 86560i & (global1.a.x & u_input.b.x), global1.a.x, _wgslsmith_mult_i32(u_input.a, 383i))));
    let var_1 = u_input.b.wxz;
    return Struct_5(0u, -select(~firstLeadingBit(u_input.b), countOneBits(var_0), any(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)));
}

fn func_3(arg_0: f32) -> Struct_5 {
    global3 = array<Struct_2, 27>();
    global0 = Struct_1(global0.a);
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), true));
    let var_1 = arg_0;
    global3 = array<Struct_2, 27>();
    return func_1();
}

fn func_2() -> Struct_2 {
    global0 = global2.b;
    global2 = Struct_2(_wgslsmith_sub_vec3_u32(global2.a, global2.a), Struct_1(select(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), ~(-5115i), firstLeadingBit(global1.a.x), u_input.a), vec4<i32>(67227i, _wgslsmith_add_i32(-2109i, global1.a.x), u_input.a, 7354i), vec4<bool>(true, true, true, true))));
    let var_0 = global3[_wgslsmith_index_u32(max(abs(global2.a.x), 1u), 27u)];
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(219f - 2066f))))));
    global3 = array<Struct_2, 27>();
    return global3[_wgslsmith_index_u32(var_1.a, 27u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = func_2();
    var var_1 = func_2().b;
    var_1 = func_2().b;
    global1 = global2.b;
    let var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1702f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(425f - -1370f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f), -1486f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f + 138f) - _wgslsmith_div_f32(-1256f, -547f))))).c;
    return func_3(-617f);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_2) -> Struct_5 {
    global0 = global2.b;
    let var_0 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(reverseBits(global2.b.a.x), global1.a.x), abs(arg_3.b.a.x), _wgslsmith_add_i32(~(-9184i), arg_2.b.x >> (65649u % 32u))), global2.b.a.yyw));
    var var_1 = _wgslsmith_f_op_f32(663f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1464f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1094f))))));
    var var_2 = vec4<i32>(global1.a.x & 0i, var_0.x, -2147483647i, 27988i);
    var var_3 = Struct_1(-(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1279f)).b ^ global0.a));
    return func_4(Struct_2(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 17726u, 1u), vec3<u32>(arg_2.a, global2.a.x, arg_2.a))), func_2().b), ~func_2().a, ~vec3<i32>(arg_2.b.x, var_2.x, var_3.a.x));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b.x, -743f, -645f), vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-706f, -561f, 585f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-254f, 664f, -1393f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1072f, -1114f, arg_2.b.x), vec3<f32>(-264f, -1000f, arg_2.b.x), arg_2.c.x)))))));
    global3 = array<Struct_2, 27>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, 1091f)) * var_0.x)));
    var var_2 = arg_0;
    var_1 = Struct_3(var_1.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(_wgslsmith_div_u32(global2.a.x, abs(global2.a.x) | (global2.a.x | global2.a.x)), 8093u);
    let var_1 = func_1();
    let var_2 = vec3<bool>(func_6(func_5(select(select(vec4<bool>(var_1.c, false, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, true), var_1.c), vec4<bool>(var_1.c, false, var_1.c, true), vec4<bool>(var_1.c, false, false, false)), !(!vec2<bool>(true, var_1.c)), func_4(func_2(), min(vec3<u32>(1u, 29753u, 32209u), vec3<u32>(4294967295u, 1u, global2.a.x)), global1.a.zzy), func_2()), max(~_wgslsmith_sub_vec3_u32(global2.a, vec3<u32>(0u, global2.a.x, 0u)), vec3<u32>(1u, 53782u & var_1.a, func_5(vec4<bool>(true, false, var_1.c, true), vec2<bool>(false, false), Struct_5(var_0.x, global0.a, false), Struct_2(vec3<u32>(1u, var_0.x, 0u), global2.b)).a)), Struct_4(global1.a.wxy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-793f, 1020f), vec2<f32>(-178f, -460f), var_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1722f, -577f) - vec2<f32>(1395f, 244f)))), !vec3<bool>(true, var_1.c, var_1.c), !select(vec3<bool>(var_1.c, true, true), vec3<bool>(var_1.c, false, var_1.c), vec3<bool>(false, true, false)))), !any(!vec4<bool>(true, var_1.c, var_1.c, var_1.c)), false);
    var var_3 = !select(select(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_1.c, true, var_1.c, var_2.x), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_2.x, var_1.c, false, true), vec4<bool>(false, true, false, var_1.c)), select(vec4<bool>(true, var_1.c, true, var_1.c), vec4<bool>(false, false, false, var_2.x), vec4<bool>(false, false, false, var_1.c))), true), select(vec4<bool>(func_4(Struct_2(vec3<u32>(1u, 0u, var_1.a), Struct_1(global1.a)), vec3<u32>(global2.a.x, 5686u, var_0.x), vec3<i32>(global2.b.a.x, global2.b.a.x, 20254i)).c, func_3(167f).c, func_4(Struct_2(global2.a, global2.b), global2.a, global1.a.zwz).c, any(var_2)), !select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(false, true, true, true), var_2.x), var_1.c), select(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_1.c)), !select(vec4<bool>(var_2.x, true, false, false), vec4<bool>(true, true, true, var_2.x), true), !(!vec4<bool>(var_1.c, true, var_1.c, false))));
    var var_4 = var_0.x;
    var_4 = ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_0.x, var_0.x, 4294967295u, global2.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_1.a, 33286u, 0u), countOneBits(vec4<u32>(1u, var_0.x, 4294967295u, 1u)))) << (_wgslsmith_dot_vec2_u32(func_2().a.yz, abs(vec2<u32>(1u, 0u))) % 32u);
    global0 = Struct_1(vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.a.x, 2147483647i), -1i), -func_4(Struct_2(vec3<u32>(var_1.a, 0u, 38657u), Struct_1(u_input.b)), global2.a, ~vec3<i32>(global1.a.x, -24893i, var_1.b.x)).b.x, 1i, global2.b.a.x));
    global2 = Struct_2(min(~vec3<u32>(1u, ~global2.a.x, ~var_1.a), _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(var_1.a), 1253u, _wgslsmith_sub_u32(var_0.x, 1u)), firstLeadingBit(~vec3<u32>(var_0.x, 1u, var_0.x)))), Struct_1(global0.a));
    var_3 = vec4<bool>(any(!vec4<bool>(func_4(Struct_2(global2.a, Struct_1(vec4<i32>(-12603i, global0.a.x, -1i, u_input.a))), vec3<u32>(var_0.x, 0u, 75727u), vec3<i32>(-719i, global0.a.x, 0i)).c, true, select(true, true, false), var_2.x)), true, var_0.x <= 18209u, select(true, true, true) && (true && func_5(vec4<bool>(var_1.c, var_2.x, false, var_1.c), select(var_2.yy, var_2.zx, var_1.c), func_1(), func_2()).c));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.a.wz, abs(vec3<i32>(global0.a.x, _wgslsmith_clamp_i32(global2.b.a.x, 18151i, u_input.a) << (~var_1.a % 32u), -14405i)), select(~max(~vec4<u32>(var_1.a, 0u, global2.a.x, 4294967295u), countOneBits(vec4<u32>(var_1.a, 0u, var_1.a, global2.a.x))), vec4<u32>(var_1.a, _wgslsmith_mod_u32(var_1.a, 0u), global2.a.x, func_5(select(vec4<bool>(false, true, var_3.x, true), vec4<bool>(var_1.c, true, true, true), vec4<bool>(true, true, var_1.c, var_2.x)), !vec2<bool>(var_2.x, var_3.x), var_1, Struct_2(vec3<u32>(global2.a.x, var_1.a, 4294967295u), Struct_1(vec4<i32>(global2.b.a.x, var_1.b.x, var_1.b.x, 2147483647i)))).a), false), u_input.b.xzw, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(712f))), _wgslsmith_f_op_f32(select(-1536f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1072f, -836f)))), var_2.x))));
}

