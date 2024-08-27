struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1409u, 0u, 4294967295u);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(true, 1u, 89052u, vec2<f32>(-1000f, 2003f))), Struct_1(true, 0u, 14099u, vec2<f32>(1039f, -929f)), vec4<bool>(false, true, true, true), vec3<u32>(12971u, 4294967295u, 4294967295u), Struct_2(Struct_1(true, 0u, 49297u, vec2<f32>(1015f, 849f))));

var<private> global2: f32 = -1509f;

var<private> global3: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> vec2<bool> {
    return global1.c.zz;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = u_input.b << (1u % 32u);
    let var_1 = !global1.c.ww;
    let var_2 = vec2<bool>(!func_1().x && false, false);
    let var_3 = _wgslsmith_f_op_f32(-arg_2.d.x);
    let var_4 = _wgslsmith_f_op_f32(129f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -612f))));
    return _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-43480i, 33081i, u_input.c), vec3<i32>(u_input.b, -1052i, u_input.b), global1.c.zxw), firstLeadingBit(vec3<i32>(-1i, u_input.b, u_input.c))) << (abs(_wgslsmith_div_vec3_u32(global1.d, global1.d)) % vec3<u32>(32u))), -_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9418i, u_input.b, -2147483647i), vec3<i32>(u_input.c, u_input.b, 0i), vec3<i32>(u_input.c, 35734i, u_input.b)), abs(vec3<i32>(1i, u_input.b, 2147483647i))) ^ abs(select(abs(vec3<i32>(-1i, -1i, -41905i)), vec3<i32>(u_input.b, u_input.b, u_input.c) >> (global1.d % vec3<u32>(32u)), global1.b.a)));
}

fn func_2() -> u32 {
    var var_0 = ~(global1.d.xy & _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(17098u, 13305u), vec2<u32>(0u, 0u) << (global1.d.zy % vec2<u32>(32u))), global1.d.yx));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, 18751i), -_wgslsmith_mult_i32(-3871i, _wgslsmith_div_i32(u_input.c, -35281i) ^ func_3(global1.a, Struct_2(global1.b), Struct_1(true, 1u, 1u, global1.a.a.d))));
    var_0 = vec2<u32>(0u, global0.x);
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-12693i, _wgslsmith_mult_i32(reverseBits(u_input.c), u_input.b)), firstLeadingBit(abs(u_input.c)), u_input.b);
    global1 = Struct_3(Struct_2(Struct_1(global1.c.x, ~4294967295u, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1682f, global1.e.a.d.x) * vec2<f32>(-124f, 128f))))), global1.a.a, global1.c, ~(~(_wgslsmith_mult_vec3_u32(global1.d, global1.d) ^ ~global1.d)), Struct_2(global1.e.a));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(12561u, 54024u);
    global3 = array<vec2<bool>, 11>();
    global0 = firstTrailingBit(reverseBits(~abs(global1.d) & vec3<u32>(13484u, 6347u, 4294967295u)));
    var var_1 = select(select(!(!(!global1.c.zy)), !vec2<bool>(global1.c.x, true), !vec2<bool>(u_input.b > 0i, true)), select(vec2<bool>(true, true), select(global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(var_0.x, var_0.x, 17585u), _wgslsmith_mod_u32(var_0.x, 48011u)), 11u)], !vec2<bool>(global1.b.a, true), !global1.c.yx), any(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 11u)])), func_1());
    let var_2 = 43760i;
    var var_3 = Struct_1(!(!all(global1.c.yzy)), u_input.d.x, ~var_0.x & ~(u_input.d.x ^ func_2()), vec2<f32>(_wgslsmith_f_op_f32(select(-1085f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.d.x))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.d.x))));
    var var_4 = _wgslsmith_f_op_f32(abs(var_3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec2<i32>(-50168i, -3940i) & (vec2<i32>(var_2, 2147483647i) ^ vec2<i32>(-58289i, u_input.b))) & vec2<i32>(_wgslsmith_sub_i32(0i, select(66043i, 1i, true)), firstTrailingBit(5381i | u_input.c)), _wgslsmith_mult_i32(-var_2, -2147483647i), var_3.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(268f)), _wgslsmith_f_op_f32(global1.e.a.d.x + _wgslsmith_f_op_f32(-var_3.d.x)), global1.e.a.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-939f, global1.e.a.d.x), 1f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.a.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) - _wgslsmith_f_op_f32(exp2(var_3.d.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.x * var_3.d.x) + 957f))), var_1.x)));
}

