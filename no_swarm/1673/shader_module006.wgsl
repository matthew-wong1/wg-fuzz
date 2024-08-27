struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<u32>(82111u, 4294967295u, 75870u), vec3<bool>(false, false, true), 242f), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), vec3<u32>(1u, 36469u, 56698u), vec3<bool>(false, false, false), -260f), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true), vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(true, false, false), 644f), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 39904u), vec3<bool>(false, true, false), -642f), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true), vec3<u32>(0u, 4167u, 1u), vec3<bool>(false, true, false), -422f), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<u32>(2298u, 4294967295u, 24917u), vec3<bool>(true, true, false), -701f), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true), vec3<u32>(0u, 68872u, 1u), vec3<bool>(false, false, false), -972f), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), vec3<u32>(14239u, 1u, 0u), vec3<bool>(true, true, false), -326f), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true), vec3<u32>(58247u, 16446u, 1u), vec3<bool>(true, true, false), 143f), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), vec3<u32>(15609u, 12148u, 1u), vec3<bool>(false, true, false), -1056f), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), vec3<u32>(30877u, 1u, 0u), vec3<bool>(false, true, true), -609f), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<u32>(96584u, 9867u, 4294967295u), vec3<bool>(false, true, true), 685f), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), vec3<u32>(6011u, 7583u, 36906u), vec3<bool>(false, true, true), 366f), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), vec3<u32>(0u, 1u, 0u), vec3<bool>(true, true, true), 158f));

var<private> global1: Struct_2;

var<private> global2: vec2<bool>;

var<private> global3: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    return global1.a.c.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1.x, arg_1.x | 1u), 14u)], vec2<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(2147483647i, global1.b.x)), firstTrailingBit(25395i)), reverseBits(~(-1i)) & u_input.a.x), !(!(!vec4<bool>(global3.x, arg_3, global2.x, true))));
    let var_1 = !all(var_0.c) != all(var_0.a.d.zz);
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mult_u32(~reverseBits(_wgslsmith_div_u32(arg_1.x, var_0.a.c.x)), ~abs(~1u)), func_3(Struct_1(!vec3<bool>(false, global3.x, false), global1.a.b, var_0.a.c, global3.yyz, -1135f), abs(-var_0.b.x), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, global1.a.c.x), global1.a.c) >> (vec3<u32>(8162u, global1.a.c.x, global1.a.c.x) % vec3<u32>(32u)))));
    global2 = vec2<bool>(!var_1, !var_1);
    let var_3 = _wgslsmith_f_op_f32(ceil(global1.a.e));
    return vec2<bool>(false, (66176u >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0.a.c, vec3<u32>(var_0.a.c.x, global1.a.c.x, var_0.a.c.x))) % 32u)) < global1.a.c.x);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    global3 = !select(vec4<bool>(all(select(vec2<bool>(global1.a.a.x, true), vec2<bool>(false, false), global2.x)), arg_1.c.x, true, true), arg_1.c, global1.c);
    global2 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-arg_1.a.e), _wgslsmith_f_op_f32(-1f), global1.a.e)), vec2<u32>(global1.a.c.x, 4294967295u), 890f, !(!(any(global1.a.d) && any(global3.ww))));
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mult_i32(~(-1i), _wgslsmith_add_i32(1i, -1i)), 0i, -19498i, ~0i);
    let var_1 = Struct_2(global1.a, vec2<i32>(27793i, _wgslsmith_mod_i32(-global1.b.x, -arg_1.b.x)) >> (vec2<u32>(74077u ^ reverseBits(global1.a.c.x), firstLeadingBit(~1u)) % vec2<u32>(32u)), vec4<bool>(global1.c.x, !(1i < var_0.x), arg_1.a.d.x, arg_1.a.c.x >= countOneBits(~1u)));
    let var_2 = var_1.c.yyw;
    return select(!var_1.c, select(!select(vec4<bool>(false, false, false, global2.x), arg_1.c, all(vec4<bool>(var_1.a.b.x, false, true, true))), select(!vec4<bool>(true, false, false, var_2.x), select(global1.c, select(arg_1.c, vec4<bool>(false, global1.a.a.x, false, var_1.a.a.x), true), arg_1.c.x), vec4<bool>(true, true, arg_1.a.e <= 1629f, all(vec4<bool>(false, false, false, false)))), true), select(global1.c, !(!(!var_1.c)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !func_1(global1.a.e, Struct_2(global0[_wgslsmith_index_u32(countOneBits(global1.a.c.x) ^ ~global1.a.c.x, 14u)], ~(u_input.a.yx ^ u_input.a.xx), global1.c));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.e, 1346f, 472f))) * vec3<f32>(371f, global1.a.e, -752f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-353f, global1.a.e, global1.a.e))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.e, global1.a.e, 927f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.e, global1.a.e, -1558f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1167f, global1.a.e, global1.a.e), vec3<f32>(633f, global1.a.e, -1000f), global3.x))))))));
    let var_1 = ~global1.a.c.x;
    let var_2 = -165f;
    global1 = Struct_2(Struct_1(global1.a.a, global3.wx, global1.a.c, vec3<bool>(global2.x, global2.x && (global2.x & global3.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 364f)))), select(_wgslsmith_add_vec2_i32(u_input.a.ww, _wgslsmith_div_vec2_i32(-vec2<i32>(14323i, global1.b.x), vec2<i32>(-1i, global1.b.x) >> (global1.a.c.yz % vec2<u32>(32u)))), vec2<i32>(u_input.b, select(i32(-1i) * -19885i, global1.b.x, func_2(vec4<f32>(var_2, var_2, -1470f, -515f), vec2<u32>(64109u, var_1), 527f, global2.x).x)), any(global1.c)), !global1.c);
    let var_3 = !select(vec4<bool>(all(select(global3.wzy, vec3<bool>(global1.a.b.x, global1.c.x, global3.x), global3.x)), true, any(select(vec3<bool>(global1.a.a.x, true, false), vec3<bool>(true, true, false), global2.x)), global3.x), func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1.a.e, var_2, global1.a.d.x)), -1000f)), Struct_2(global0[_wgslsmith_index_u32(~var_1, 14u)], -vec2<i32>(u_input.a.x, 7475i), func_1(global1.a.e, Struct_2(Struct_1(vec3<bool>(true, global3.x, false), vec2<bool>(global1.a.a.x, global3.x), global1.a.c, vec3<bool>(true, global2.x, global1.c.x), 562f), vec2<i32>(u_input.a.x, 40694i), vec4<bool>(global3.x, true, true, global3.x))))), !all(vec4<bool>(global1.c.x, true, global3.x, true)) && all(!vec2<bool>(false, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-3054f + global1.a.e), 47279i >> (~var_1 % 32u));
}

