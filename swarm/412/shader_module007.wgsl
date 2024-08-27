struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31839u;

var<private> global1: array<vec2<bool>, 17>;

var<private> global2: array<bool, 25>;

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: f32) -> vec3<bool> {
    var var_0 = true;
    var var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = 2147483647i;
    let var_4 = Struct_1(-vec3<i32>(countOneBits(1i), firstLeadingBit(u_input.c), _wgslsmith_add_i32(arg_0.a.x, 7873i)) << (_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(5185u, arg_2, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, arg_2), vec3<u32>(1u, arg_2, u_input.b)) ^ countOneBits(vec3<u32>(arg_2, arg_2, 129553u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1237f, _wgslsmith_f_op_f32(arg_0.b.x * -1000f), arg_0.b.x))))));
    return !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], false, all(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 25u)]))), !vec3<bool>(true, !global2[_wgslsmith_index_u32(arg_2, 25u)], true), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(arg_2, 25u)]), arg_0.a.x >= 1i), select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(1u, 25u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2, 25u)], false), any(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2, 25u)], global2[_wgslsmith_index_u32(u_input.b, 25u)]))), select(all(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(69305u, u_input.b), 25u)], true)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(0i, -1i);
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(~firstTrailingBit(arg_1.a), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0, u_input.c), -2147483647i), arg_1.a.x << (_wgslsmith_mod_u32(1u, 54346u) % 32u), _wgslsmith_mult_i32(-arg_0.x, _wgslsmith_clamp_i32(0i, -1i, arg_1.a.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(25590u, 19180u, u_input.a), 357f))), _wgslsmith_f_op_f32(641f * _wgslsmith_f_op_f32(arg_1.b.x * 1090f)), _wgslsmith_f_op_f32(-arg_1.b.x)))));
    let var_2 = arg_1.a.x;
    var var_3 = _wgslsmith_div_u32(19259u, u_input.b);
    global3 = array<Struct_1, 18>();
    return Struct_1(arg_1.a, vec3<f32>(167f, _wgslsmith_f_op_f32(select(var_1.b.x, arg_1.b.x, all(func_3(arg_1, arg_1.a.x, 54714u, -670f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1271f), arg_1.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = vec3<bool>(select(true, global2[_wgslsmith_index_u32(~u_input.a, 25u)], true), true, true);
    let var_1 = func_1(vec4<i32>(0i, arg_1.a.x, ~arg_0.a.x, _wgslsmith_add_i32(arg_1.a.x, u_input.c)), func_1(reverseBits(reverseBits(vec4<i32>(1i, -53137i, arg_1.a.x, 41577i)) >> (vec4<u32>(4294967295u, u_input.a, u_input.b, 4294967295u) % vec4<u32>(32u))), arg_0));
    global3 = array<Struct_1, 18>();
    global2 = array<bool, 25>();
    let var_2 = ~vec2<i32>(-69791i, 7622i) & arg_1.a.xy;
    return -vec3<i32>(1i, 15342i, 18894i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-987f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(888f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)) + -171f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)) + -444f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-414f * _wgslsmith_f_op_f32(min(178f, 945f))), 215f, 601f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(-2035f, -228f, true)), _wgslsmith_f_op_f32(1529f + -425f), _wgslsmith_f_op_f32(floor(-171f)))))));
    global1 = array<vec2<bool>, 17>();
    global2 = array<bool, 25>();
    let var_1 = Struct_1(-max(func_4(func_1(vec4<i32>(u_input.c, -53280i, u_input.c, u_input.c), global3[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), var_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 1i) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(-1i, 2147483647i, u_input.c) ^ vec3<i32>(23533i, -6909i, 47282i), vec3<i32>(-27137i, u_input.c, u_input.c) ^ vec3<i32>(12616i, u_input.c, u_input.c))), var_0);
    var var_2 = ~(u_input.a | u_input.b);
    global1 = array<vec2<bool>, 17>();
    global3 = array<Struct_1, 18>();
    let var_3 = global3[_wgslsmith_index_u32(~u_input.b, 18u)];
    global2 = array<bool, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x + var_3.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, 360f, 877f, -149f)))))));
}

