struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 0u, 19362u, 7441u, 16411u, 0u, 11581u, 15643u, 1925u, 15363u, 4294967295u, 4294967295u, 36376u, 11615u, 25262u, 4294967295u, 4294967295u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> u32 {
    global1 = array<u32, 18>();
    let var_0 = arg_0;
    global1 = array<u32, 18>();
    var var_1 = -300f;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-843f)))), -1180f))));
    return global1[_wgslsmith_index_u32(min((_wgslsmith_div_u32(8181u, global1[_wgslsmith_index_u32(arg_1.a, 18u)]) & firstLeadingBit(arg_1.a)) & _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), ~u_input.a), _wgslsmith_dot_vec2_u32(abs(u_input.a.xy), u_input.a.xx)) | _wgslsmith_div_u32(arg_1.a, 44859u), 18u)];
}

fn func_2() -> Struct_3 {
    global1 = array<u32, 18>();
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(19461u, _wgslsmith_sub_u32(reverseBits(24405u), 37702u)), 18u)], _wgslsmith_div_i32(-2147483647i, 1i) << (global1[_wgslsmith_index_u32(countOneBits(u_input.b), 18u)] % 32u));
    var var_1 = 372f;
    let var_2 = Struct_3(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 1i, var_0.b, var_0.b), -vec4<i32>(var_0.b, 39056i, -2147483647i, var_0.b)) ^ 2147483647i, Struct_3(_wgslsmith_mod_u32(1u, var_0.a), _wgslsmith_add_i32(var_0.b, -2147483647i))), firstTrailingBit(_wgslsmith_sub_i32(-22114i, ~(-1i))));
    var_1 = 1305f;
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global0 = array<vec3<u32>, 9>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(553f, -771f))))), _wgslsmith_f_op_f32(1079f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(707f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(345f * var_1.x) * _wgslsmith_f_op_f32(sign(var_1.x)));
    let var_3 = Struct_3(var_0.a, -1i);
    return Struct_1(true, vec4<i32>(select(abs(_wgslsmith_mod_i32(var_3.b, -9047i)), -1i, false), -var_0.b, select(var_3.b, -2465i, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), ~(~max(var_3.b, 0i))), u_input.a.www);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = func_1();
    global0 = array<vec3<u32>, 9>();
    var var_2 = vec3<bool>(!all(vec4<bool>(true, true && arg_0.a, var_1.a, select(arg_0.a, false, true))), !var_1.a, select(false, arg_0.a, any(vec3<bool>(arg_1 <= arg_1, arg_0.a, func_1().a))));
    var_1 = arg_0;
    return Struct_3(_wgslsmith_mod_u32(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.x, 18u)], 18u)]), var_1.b.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1.d.a;
    return Struct_2(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i | arg_1.a, _wgslsmith_div_i32(arg_0.b, arg_2.d.b.x)), arg_0.b), u_input.a.xyw, global1[_wgslsmith_index_u32(arg_1.d.c.x, 18u)], arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    let var_0 = func_5(func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)), 1i, countOneBits(u_input.a)), Struct_2(-1527i ^ firstTrailingBit(_wgslsmith_mult_i32(-18322i, 37383i)), vec3<u32>(abs(_wgslsmith_mod_u32(0u, 1u)), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(63359u, 1u, u_input.b, 1u)), u_input.a.x & 15901u), ~((u_input.b >> (u_input.a.x % 32u)) << (1u % 32u)), func_1()), Struct_2(15867i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(i32(-1i) * -2147483647i, Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 15667i)), ~u_input.a.x), 18u)], 18u)], 9u)], ~global1[_wgslsmith_index_u32(72654u, 18u)], Struct_1(false, vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec3_u32(u_input.a.xwz, vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(57090u, 18u)], u_input.b)) & _wgslsmith_mult_vec3_u32(u_input.a.wwy, vec3<u32>(1u, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(509f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-358f)))))));
    var var_1 = -_wgslsmith_mult_i32(~var_0.d.b.x, ~(~var_0.a));
    var var_2 = Struct_1(false, -(~var_0.d.b), u_input.a.zwx);
    var var_3 = func_1();
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(143f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-716f)))))), -603f)), ~vec3<u32>(func_3(reverseBits(var_0.d.b.x), func_4(Struct_1(false, vec4<i32>(2147483647i, 5721i, -2147483647i, var_0.d.b.x), vec3<u32>(1u, var_0.c, 39523u)), 460f, 2147483647i, vec4<u32>(u_input.a.x, u_input.a.x, 34653u, 12633u))), _wgslsmith_sub_u32(~var_3.c.x, _wgslsmith_sub_u32(u_input.b, 8430u)), abs(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1084f - 757f)))), ~select(vec2<i32>(2147483647i >> (var_3.c.x % 32u), ~(-20411i)), var_4.d.b.yx << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.d.a), vec2<bool>(var_2.a, true), var_0.d.a), select(vec2<bool>(var_3.a, var_2.a), vec2<bool>(true, true), vec2<bool>(var_4.d.a, var_3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 824f, -1154f, -452f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-262f, -593f, 1630f, 668f) * vec4<f32>(466f, -323f, -1602f, -388f))))));
}

