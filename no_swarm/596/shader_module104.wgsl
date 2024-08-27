struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 6580u), vec2<u32>(1u, 58589u), vec2<u32>(63902u, 0u), vec2<u32>(56911u, 4294967295u), vec2<u32>(40263u, 77743u), vec2<u32>(66779u, 0u), vec2<u32>(62819u, 15225u), vec2<u32>(15635u, 4294967295u), vec2<u32>(16374u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(34741u, 80012u), vec2<u32>(23472u, 4294967295u), vec2<u32>(39477u, 9737u), vec2<u32>(46379u, 0u), vec2<u32>(1u, 69816u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 104608u), vec2<u32>(4294967295u, 522u), vec2<u32>(5545u, 1u), vec2<u32>(1u, 57831u), vec2<u32>(20040u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(76271u, 23714u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(47375u, 17670u), vec2<u32>(83925u, 8170u), vec2<u32>(36045u, 1u), vec2<u32>(5678u, 1u), vec2<u32>(4294967295u, 66987u));

var<private> global1: Struct_1;

var<private> global2: Struct_4 = Struct_4(2147483647i, -36002i, Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(373f, -1317f), true));

var<private> global3: Struct_2 = Struct_2(vec2<i32>(-65890i, i32(-2147483648)), vec2<f32>(-282f, 949f), true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<u32>) -> i32 {
    global1 = Struct_1(_wgslsmith_sub_vec4_i32(global1.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(-3666i, global3.a.x, 26445i, arg_1.a.x)), vec4<i32>(arg_1.a.x, 19362i, global2.b, -1i) >> (vec4<u32>(u_input.a, arg_3.x, arg_3.x, u_input.a) % vec4<u32>(32u)), global1.a) & vec4<i32>(_wgslsmith_div_i32(global1.a.x, -39821i), 35568i >> (arg_3.x % 32u), 1i, -global1.a.x)), _wgslsmith_f_op_f32(max(global2.c.b.x, arg_1.b.x)));
    let var_0 = global2.c;
    let var_1 = Struct_3(Struct_1(vec4<i32>(var_0.a.x >> (reverseBits(1u) % 32u), arg_1.a.x, ~(-1i), ~(~1460i)), global3.b.x), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_3, arg_3), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.x, 64698u, arg_3.x), select(vec3<u32>(4294967295u, 29299u, 6684u), arg_3, vec3<bool>(true, global2.c.c, var_0.c))), 1u) << (arg_3 % vec3<u32>(32u)), Struct_1(select(global1.a >> ((vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) & vec4<u32>(24830u, u_input.a, 878u, arg_3.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(abs(global1.a), max(vec4<i32>(arg_0.x, -15396i, arg_1.a.x, global2.c.a.x), vec4<i32>(arg_2.x, global1.a.x, arg_2.x, 1i))), any(select(vec3<bool>(false, global3.c, global2.c.c), vec3<bool>(false, true, var_0.c), vec3<bool>(true, true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-139f * global3.b.x))), _wgslsmith_f_op_f32(exp2(global2.c.b.x)))), 33890u);
    let var_2 = _wgslsmith_f_op_f32(sign(1246f));
    var var_3 = Struct_2(max(reverseBits(~arg_0), vec2<i32>(arg_0.x, global1.a.x)) ^ global3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 773f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b.x, global2.c.b.x), arg_1.b, vec2<bool>(global2.c.c, false))) * _wgslsmith_f_op_vec2_f32(abs(global3.b)))) - var_0.b), true);
    return -(var_0.a.x & -1i);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = global2.c.c;
    let var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(global2.b, 0i, global3.a.x, _wgslsmith_dot_vec4_i32(abs(global1.a), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a, 20362i, 1i, 44529i), vec4<i32>(global2.c.a.x, global1.a.x, -18406i, global1.a.x)))), global1.a);
    var var_2 = _wgslsmith_mult_i32(func_3(-(countOneBits(vec2<i32>(var_1.x, global3.a.x)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 47768u), vec2<u32>(u_input.a, 45431u)) % vec2<u32>(32u))), global2.c, vec2<i32>(var_1.x, -29120i), vec3<u32>(~u_input.a, u_input.a, 0u)), -14346i);
    var var_3 = arg_0;
    var var_4 = global3.b;
    return abs(_wgslsmith_add_u32(~0u & u_input.a, ~_wgslsmith_mod_u32(u_input.a, 75716u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_4 {
    global3 = Struct_2(global1.a.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c.b + vec2<f32>(_wgslsmith_f_op_f32(global2.c.b.x * global3.b.x), _wgslsmith_f_op_f32(-global3.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, -842f) * _wgslsmith_f_op_vec2_f32(global3.b + global3.b)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, global3.b.x) * vec2<f32>(global1.b, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.b.x, -1296f), vec2<f32>(global1.b, global1.b))))), global3.c);
    var var_0 = Struct_3(Struct_1(select(vec4<i32>(global1.a.x, global3.a.x, abs(global2.c.a.x), -global3.a.x), select(_wgslsmith_mult_vec4_i32(global1.a, global1.a), reverseBits(vec4<i32>(global1.a.x, 26030i, global1.a.x, 1i)), !vec4<bool>(global2.c.c, false, global3.c, global2.c.c)), any(vec3<bool>(global2.c.c, false, global2.c.c)) || !global3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-207f * global1.b))))), countOneBits(vec3<u32>(firstLeadingBit(1u), ~func_2(vec3<bool>(global3.c, true, global3.c)), 1u << (arg_1.x % 32u))), Struct_1(_wgslsmith_mult_vec4_i32(~select(global1.a, global1.a, true), vec4<i32>(global3.a.x & 2147483647i, ~global2.a, -79569i & global1.a.x, global2.c.a.x)), global2.c.b.x), ~arg_0.x);
    let var_1 = max(~vec3<u32>(~27438u, _wgslsmith_dot_vec3_u32(~var_0.b, vec3<u32>(0u, var_0.d, var_0.d)), countOneBits(arg_1.x)), var_0.b);
    var var_2 = !(!vec3<bool>(!any(vec2<bool>(global2.c.c, global3.c)), var_0.a.a.x < abs(var_0.a.a.x), false));
    global2 = Struct_4(-(_wgslsmith_div_i32(0i, global1.a.x) | reverseBits(global1.a.x)) & _wgslsmith_add_i32(global2.a, firstTrailingBit(global3.a.x)), global3.a.x, global2.c);
    return Struct_4(abs(~(global2.c.a.x | 5460i) | 19510i), -_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(global1.a.yw, vec2<i32>(global3.a.x, 2147483647i))), _wgslsmith_sub_vec2_i32(-vec2<i32>(-19259i, global1.a.x), global1.a.yy)), Struct_2(firstLeadingBit(var_0.c.a.zy), vec2<f32>(-1028f, var_0.c.b), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.x;
    global2 = func_1(global0[_wgslsmith_index_u32(u_input.a, 30u)] >> ((~(vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, 1u)) | ~select(vec2<u32>(u_input.a, 49314u), vec2<u32>(u_input.a, 20462u), true)) % vec2<u32>(32u)), vec2<u32>(6737u, u_input.a));
    let var_1 = Struct_3(Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + global2.c.b.x)) + global1.b)), ~countOneBits(vec3<u32>(u_input.a, u_input.a, 11654u) << (firstTrailingBit(vec3<u32>(0u, u_input.a, 89062u)) % vec3<u32>(32u))), Struct_1(abs(reverseBits(global1.a)), -1259f), u_input.a);
    global0 = array<vec2<u32>, 30>();
    var var_2 = vec3<i32>(-(~_wgslsmith_mult_i32(2147483647i >> (var_1.d % 32u), ~0i)), _wgslsmith_add_i32(countOneBits(-2147483647i), 14235i), -1i);
    global1 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_div_u32(var_1.b.x, 38237u), global3.b);
}

