struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec2<f32>(-1000f, -1973f), -11432i, vec4<bool>(true, false, false, false), false, Struct_1(vec2<i32>(14978i, 1i), 0i)), 1i, Struct_2(vec2<f32>(1299f, 1852f), 1i, vec4<bool>(true, true, true, false), true, Struct_1(vec2<i32>(1i, 2147483647i), 3797i)), -1i);

var<private> global1: array<i32, 15>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<Struct_4, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.a.x, 100f)) * _wgslsmith_f_op_f32(max(738f, -367f))))))), _wgslsmith_f_op_f32(-451f - -1000f), _wgslsmith_f_op_f32(395f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.a.x, _wgslsmith_f_op_f32(floor(-266f)))))));
    global3 = array<Struct_4, 5>();
    var var_1 = max(vec3<i32>(1i, ~_wgslsmith_div_i32(-5605i, u_input.b) >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 15u)]), select(-vec2<i32>(33453i, -1i), -vec2<i32>(0i, global1[_wgslsmith_index_u32(1u, 15u)]), true))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2318i, 0i), vec2<i32>(-2147483647i, -58229i)), min(global1[_wgslsmith_index_u32(0u, 15u)], -2147483647i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(17095i, global0.d, u_input.b, -21783i), vec4<i32>(u_input.c, global0.b, 26782i, global1[_wgslsmith_index_u32(u_input.a, 15u)])) | min(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15637i)) >> (~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 12646u, u_input.a), ~vec3<u32>(56300u, u_input.a, 72780u)) % vec3<u32>(32u)));
    global0 = Struct_4(global0.c, 59092i, global0.c, min(max(var_1.x, -u_input.b), global0.d));
    var var_2 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(28908u, u_input.a), vec2<u32>(u_input.a, u_input.a))), 1u, 0u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(1u, 1u))), vec4<u32>(~(~4294967295u), 0u >> (~u_input.a % 32u), u_input.a, ~u_input.a)), 0i, global0.c);
    return vec2<i32>(-global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2.a, abs(u_input.a)), 15u)], _wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.c.e.a.x, max(global0.b, global0.c.b) << (1u % 32u)), global1[_wgslsmith_index_u32(1u, 15u)] | ~32229i));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(global0.c.a.x, global0.c.a.x);
    let var_1 = 28038u;
    var var_2 = vec3<bool>(arg_2.d, global2.x && (u_input.a <= select(var_1, arg_0, !global2.x)), arg_2.d);
    var_2 = select(arg_2.c.ywy, arg_2.c.wyx, !(!(_wgslsmith_mult_u32(arg_0, 10845u) >= (arg_0 | u_input.a))));
    let var_3 = vec3<bool>(var_2.x, true, arg_2.d);
    return !vec2<bool>(any(global0.c.c.xz), !(!(!var_3.x)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<bool>) -> vec2<i32> {
    var var_0 = Struct_3(82955u, arg_0.b, arg_0.c);
    global0 = global3[_wgslsmith_index_u32(u_input.a, 5u)];
    global2 = func_4(min(~u_input.a, 0u), reverseBits(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a, 15u)], select(global1[_wgslsmith_index_u32(var_0.a, 15u)], -15630i, arg_3.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.a.x)), _wgslsmith_f_op_f32(-global0.a.a.x))), _wgslsmith_sub_i32(firstLeadingBit(i32(-1i) * -1242i), 1i), vec4<bool>(global2.x, true, arg_0.c.d, !(!var_0.c.d)), !arg_3.x | global0.c.d, Struct_1(func_3(vec4<bool>(arg_0.a.d, arg_3.x, true, false)), u_input.b)));
    let var_1 = vec3<u32>(countOneBits(~firstTrailingBit(u_input.a)), var_0.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(min(u_input.a << (var_0.a % 32u), 32491u), select(var_0.a, ~var_0.a, false)), var_0.a ^ ~0u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.a.x, -1259f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, -1000f))))))), min(arg_0.a.e.a.x, global0.c.b), vec4<bool>(global0.c.d, false, arg_0.a.d, !arg_3.x), all(!(!vec3<bool>(false, false, global0.c.d))), Struct_1(max(abs(global0.c.e.a), arg_0.c.e.a), ~(~abs(global0.d))));
    return vec2<i32>(reverseBits(i32(-1i) * -1i), ~770i ^ arg_0.a.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>) -> i32 {
    global2 = global0.a.c.yz;
    var var_0 = global0.a.b;
    var var_1 = global0.c.e;
    var_1 = Struct_1(vec2<i32>(-1i, _wgslsmith_div_i32(~u_input.b, _wgslsmith_add_i32(-2147483647i, var_1.a.x))), global1[_wgslsmith_index_u32(15815u, 15u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global0.c.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(968f)), global0.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.a.x, 680f))), global0.a.a.x))));
    return select(-1i, 14012i, true);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(u_input.a, _wgslsmith_mult_i32(~func_5(select(global0.c.c.xww, vec3<bool>(false, global2.x, true), global0.c.c.wyx), func_2(Struct_4(Struct_2(global0.c.a, 2147483647i, global0.a.c, true, global0.a.e), 5250i, global0.a, 2147483647i), vec3<f32>(-986f, 141f, global0.a.a.x), global0.c.a.x, global0.c.c.wx)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-59521i, 12598i) << (abs(u_input.a) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~23999u, ~u_input.a), 15u)])), global0.a);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(max(min(~vec2<i32>(var_0.c.b, u_input.b), global0.c.e.a), vec2<i32>(-global1[_wgslsmith_index_u32(9050u, 15u)], u_input.b)), func_3(vec4<bool>(all(var_0.c.c.zz), -105949i <= global0.b, !global2.x, any(global0.c.c.yx)))), u_input.b);
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(trunc(798f));
    let var_4 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a.x) + 942f), _wgslsmith_f_op_f32(step(var_0.c.a.x, global0.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_5(vec3<bool>(false, !(u_input.a == 0u), !(!global0.a.d)), func_2(global3[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.a.x, var_0.c.a.x, -1458f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-835f, 1000f, global0.a.a.x), vec3<f32>(var_0.c.a.x, global0.a.a.x, 134f)))), -439f, vec2<bool>(any(global0.a.c.www), true))), vec4<bool>(false, false, global0.a.c.x, all(!vec3<bool>(true, false, global0.a.c.x)) || (all(vec3<bool>(false, true, true)) && all(var_0.c.c))), !(!all(!global0.c.c.yxy)), var_1);
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x * var_4.a.x)), _wgslsmith_f_op_f32(round(var_0.c.a.x))), vec2<f32>(_wgslsmith_f_op_f32(min(-1241f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_4.a.x)), _wgslsmith_f_op_f32(-var_4.a.x))))), _wgslsmith_f_op_f32(max(1329f, var_4.a.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f - var_4.a.x) + _wgslsmith_f_op_f32(var_0.c.a.x + 515f)) * -2129f), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) + _wgslsmith_f_op_f32(f32(-1f) * -641f)) + var_0.c.a.x), _wgslsmith_f_op_f32(select(var_4.a.x, global0.c.a.x, var_4.c.x))), abs(~vec3<i32>(var_4.b, u_input.b, 1i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_0.a), vec3<u32>(var_0.a, 42008u, 0u)) % vec3<u32>(32u))) >> (min(_wgslsmith_mod_vec3_u32(select(vec3<u32>(109397u, u_input.a, 46576u), vec3<u32>(46122u, var_0.a, u_input.a), false), vec3<u32>(52041u, var_0.a, 0u)), vec3<u32>(u_input.a, var_0.a, 3777u) >> (min(vec3<u32>(1u, 49977u, 31333u), vec3<u32>(0u, var_0.a, var_0.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(912f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = ~(~u_input.a);
    var_1 = (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, 59278u), abs(vec4<u32>(u_input.a, 23036u, u_input.a, u_input.a))) ^ (~40302u | u_input.a)) << (_wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u);
    var var_2 = _wgslsmith_clamp_i32(i32(-1i) * -(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(42354u, 15u)], global0.b)), abs(global0.c.e.b), _wgslsmith_sub_i32(global0.b, 1i << (u_input.a % 32u)));
    var var_3 = u_input.a;
    var var_4 = 0u;
    let x = u_input.a;
    s_output = func_1();
}

