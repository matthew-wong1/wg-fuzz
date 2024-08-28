struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<bool, 2>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(global2.d.a, !(countOneBits(~u_input.a) <= ~(~24375u)), min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global2.d.c.x), vec2<u32>(0u, global2.a.a)), 1u) | _wgslsmith_mult_vec2_u32(vec2<u32>(global2.c.c.x, 1u), global2.c.c), vec2<u32>(_wgslsmith_clamp_u32(~1u, ~0u, ~4294967295u), ~global2.c.c.x)));
    var var_1 = all(vec3<bool>(false, true, arg_0));
    global1 = array<bool, 2>();
    global0 = array<Struct_1, 25>();
    var_1 = false;
    return select(global2.b, select(global2.b, global2.b, false), false);
}

fn func_2() -> Struct_3 {
    let var_0 = global2.d.a.x;
    global1 = array<bool, 2>();
    let var_1 = vec3<bool>(global1[_wgslsmith_index_u32(~0u, 2u)], global1[_wgslsmith_index_u32(u_input.a << (abs(~(~4294967295u)) % 32u), 2u)], any(vec2<bool>(all(global2.b), true)));
    let var_2 = select(!func_3(any(!var_1)), func_3(var_1.x), var_1);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.a.d.x, _wgslsmith_f_op_f32(step(global2.a.d.x, 297f)), false)))) - -2078f)));
    return Struct_3(global2.a, vec3<bool>(all(global2.a.c), true, true), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1644f, global2.d.a.x, -2175f, -1467f)) - global2.c.a), all(select(var_1.zy, select(vec2<bool>(global2.d.b, false), var_1.xz, vec2<bool>(var_2.x, global2.b.x)), var_1.x)), ~_wgslsmith_sub_vec2_u32(~global2.d.c, vec2<u32>(global2.a.a, 109021u))), global0[_wgslsmith_index_u32(~12030u, 25u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_1.b;
    var var_1 = Struct_2(_wgslsmith_mod_u32(0u, ~arg_1.a.x), !(!(!global2.a.b)), !arg_1.c.b.zy, vec3<f32>(global2.c.a.x, global2.a.d.x, _wgslsmith_f_op_f32(arg_1.c.a.d.x + _wgslsmith_f_op_f32(round(-250f)))));
    var_1 = global2.a;
    global0 = array<Struct_1, 25>();
    global2 = Struct_3(Struct_2(0u, all(arg_1.c.b), func_2().a.c, vec3<f32>(global2.d.a.x, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(floor(var_1.d.x)))), !(!vec3<bool>(!var_1.b, true, arg_0.c.x)), arg_1.c.d, func_2().c);
    return Struct_3(arg_3, arg_1.c.b, arg_1.c.c, global2.d);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = true;
    let var_1 = ~abs(reverseBits(~select(vec3<u32>(arg_0.c.c.x, u_input.a, 17376u), vec3<u32>(27366u, 4294967295u, u_input.a), true)));
    var var_2 = Struct_3(func_2().a, global2.b, func_2().c, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global2.d.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, 456f, arg_0.c.a.x, arg_0.c.a.x) + vec4<f32>(-852f, -1343f, -524f, -506f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.c.a, arg_0.c.a))))), func_2().a.c.x, global2.c.c));
    let var_3 = vec3<f32>(func_4(func_4(global2.a, Struct_4(vec2<u32>(4294967295u, arg_0.a.a), 1i, Struct_3(global2.a, var_2.b, Struct_1(vec4<f32>(var_2.d.a.x, arg_0.d.a.x, 1072f, global2.a.d.x), false, vec2<u32>(u_input.a, 76616u)), Struct_1(var_2.c.a, var_0, var_2.c.c))), max(min(vec4<u32>(0u, 90175u, arg_0.d.c.x, 19771u), vec4<u32>(var_2.c.c.x, 0u, 4294967295u, arg_0.c.c.x)), abs(vec4<u32>(945u, u_input.a, var_1.x, 0u))), Struct_2(abs(21847u), true, vec2<bool>(false, global2.b.x), func_2().d.a.yyy)).a, Struct_4(_wgslsmith_div_vec2_u32(global2.c.c | var_1.zz, ~vec2<u32>(var_2.c.c.x, var_1.x)), 1i, Struct_3(global2.a, !global2.b, Struct_1(vec4<f32>(-492f, global2.d.a.x, arg_0.d.a.x, global2.d.a.x), var_0, arg_0.d.c), func_4(arg_0.a, Struct_4(var_2.d.c, 11324i, Struct_3(Struct_2(var_2.d.c.x, false, vec2<bool>(global2.a.c.x, arg_0.b.x), var_2.c.a.wxx), arg_0.b, Struct_1(vec4<f32>(global2.d.a.x, arg_0.d.a.x, -566f, var_2.d.a.x), true, vec2<u32>(20111u, 1u)), Struct_1(var_2.c.a, true, var_1.xx))), vec4<u32>(0u, 0u, 10337u, 4473u), Struct_2(1u, true, var_2.b.yy, arg_0.a.d)).c)), firstLeadingBit(vec4<u32>(1u, 1u, 41912u, 4294967295u)), Struct_2(4294967295u, true, vec2<bool>(!global1[_wgslsmith_index_u32(1u, 2u)], true), global2.d.a.xxw)).d.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.a.x), arg_0.d.a.x), 113f);
    let var_4 = reverseBits(var_1);
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_2.d.a)), false, _wgslsmith_add_vec2_u32(var_2.d.c, vec2<u32>(1u, abs(17366u))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = !global2.b;
    var var_1 = func_5(func_4(arg_3, Struct_4(vec2<u32>(u_input.a, 1u), _wgslsmith_add_i32(8266i >> (arg_3.a % 32u), ~0i), func_2()), arg_1, arg_3));
    var var_2 = var_1.a.x;
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(_wgslsmith_div_vec2_u32(var_1.c, vec2<u32>(15413u, arg_1.x)))), var_1.c), 480u);
    global1 = array<bool, 2>();
    return Struct_3(Struct_2(abs(_wgslsmith_div_u32(arg_3.a, var_1.c.x)), all(vec3<bool>(func_5(Struct_3(global2.a, var_0, Struct_1(vec4<f32>(-831f, global2.a.d.x, global2.c.a.x, var_1.a.x), var_0.x, global2.c.c), global2.d)).b, all(vec2<bool>(true, false)), arg_2.x < arg_2.x)), vec2<bool>(false, global2.d.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.wwx))))), func_3(min(4294967295u, abs(var_3)) >= 32485u), global0[_wgslsmith_index_u32(~(~1u), 25u)], global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a.d.x)), 1f)) * -1774f) - _wgslsmith_f_op_f32(-global2.a.d.x));
    global2 = func_1(true, vec4<u32>(~firstTrailingBit(global2.d.c.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(64010u, u_input.a), global2.c.c.x), _wgslsmith_clamp_u32(~global2.c.c.x, u_input.a, 1u), 43519u) ^ ~abs(vec4<u32>(global2.c.c.x, 1003u, global2.a.a, global2.c.c.x) | vec4<u32>(u_input.a, global2.c.c.x, u_input.a, 30462u)), max(vec4<i32>(1i, select(31776i, -21298i, true) | ~1i, abs(abs(0i)), firstTrailingBit(-1i)), abs(vec4<i32>(abs(-28464i), firstLeadingBit(61724i), -2147483647i, reverseBits(0i)))), global2.a);
    var var_1 = 0i;
    let var_2 = Struct_4(select(global2.d.c, vec2<u32>(u_input.a | func_2().c.c.x, _wgslsmith_mod_u32(global2.d.c.x, firstTrailingBit(u_input.a))), all(!vec3<bool>(global2.c.b, true, global1[_wgslsmith_index_u32(4294967295u, 2u)]))), firstLeadingBit(-_wgslsmith_div_i32(-2147483647i, 1i)), func_4(func_1(select(any(vec3<bool>(global1[_wgslsmith_index_u32(global2.c.c.x, 2u)], global1[_wgslsmith_index_u32(26572u, 2u)], false)), global1[_wgslsmith_index_u32(global2.d.c.x, 2u)], true), abs(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), select(vec4<i32>(-3872i, 0i, -5489i, -2147483647i), vec4<i32>(-10579i, 19800i, -32526i, -2147483647i), true), Struct_2(_wgslsmith_mult_u32(4294967295u, 0u), func_1(global1[_wgslsmith_index_u32(global2.c.c.x, 2u)], vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<i32>(-1i, -2147483647i, 8632i, 0i), Struct_2(8660u, global1[_wgslsmith_index_u32(37678u, 2u)], global2.a.c, vec3<f32>(-153f, -170f, global2.a.d.x))).b.x, !vec2<bool>(global2.c.b, global1[_wgslsmith_index_u32(global2.a.a, 2u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, -513f, 1502f)))).a, Struct_4(~(~global2.c.c), abs(-2147483647i) << (~global2.c.c.x % 32u), func_2()), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, _wgslsmith_add_u32(0u, global2.d.c.x), global2.c.c.x), vec4<u32>(~global2.c.c.x, ~12240u, 130789u >> (1u % 32u), _wgslsmith_div_u32(4294967295u, global2.c.c.x))), func_1(true, firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.a.a, global2.d.c.x, u_input.a), vec4<u32>(4294967295u, global2.d.c.x, u_input.a, u_input.a))), ~(~vec4<i32>(-2147483647i, 7149i, 34577i, -21208i)), global2.a).a));
    var var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 31475u, 1u), vec3<u32>(var_2.c.d.c.x, 85806u, u_input.a), vec3<u32>(1u, u_input.a, global2.a.a))) & firstLeadingBit(firstLeadingBit(vec3<u32>(70375u, 27231u, 62447u)))), vec3<u32>(firstTrailingBit(4294967295u), u_input.a, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.c.c.x, 50849u, var_2.a.x), vec3<u32>(4294967295u, u_input.a, global2.d.c.x)) ^ var_2.c.c.c.x)));
    let var_4 = global2.c;
    let var_5 = func_2().c;
    let var_6 = Struct_1(var_4.a, func_1(global1[_wgslsmith_index_u32(global2.d.c.x, 2u)], _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(var_2.a.x, 0u, var_4.c.x, var_5.c.x)), vec4<u32>(var_5.c.x, global2.d.c.x | var_4.c.x, func_1(false, vec4<u32>(var_2.a.x, var_2.a.x, 1u, var_4.c.x), vec4<i32>(var_2.b, -2147483647i, var_2.b, var_2.b), Struct_2(39843u, true, var_2.c.b.zy, global2.d.a.yzx)).a.a, ~83038u)), (min(vec4<i32>(var_2.b, var_2.b, -2147483647i, var_2.b), vec4<i32>(18472i, var_2.b, var_2.b, var_2.b)) ^ (vec4<i32>(2147483647i, var_2.b, -39747i, 1i) & vec4<i32>(var_2.b, var_2.b, -1i, var_2.b))) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, var_2.b, -1i), max(vec4<i32>(-2096i, var_2.b, var_2.b, var_2.b), vec4<i32>(25435i, 19454i, -1i, -1i))), Struct_2(_wgslsmith_div_u32(func_5(Struct_3(Struct_2(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 2u)], vec2<bool>(var_5.b, true), vec3<f32>(var_2.c.a.d.x, -1051f, global2.c.a.x)), vec3<bool>(true, var_4.b, false), Struct_1(var_5.a, var_5.b, var_4.c), global2.c)).c.x, _wgslsmith_div_u32(global2.c.c.x, 8563u)), var_2.c.a.b, vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_5.c.x), 2u)], all(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a, 2u)]))), var_2.c.a.d)).b.x, var_5.c);
    var var_7 = var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(34808u ^ ~(~_wgslsmith_clamp_u32(var_6.c.x, 1u, 2829u)), -5917i, -711f, _wgslsmith_mod_vec2_i32(-(vec2<i32>(var_2.b, -1i) | ~vec2<i32>(16243i, 30577i)), vec2<i32>(-33457i, -var_2.b) & ((vec2<i32>(var_2.b, var_2.b) << (vec2<u32>(10823u, var_5.c.x) % vec2<u32>(32u))) & ~vec2<i32>(var_2.b, 1i))), var_2.b);
}

