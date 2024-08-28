struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 10> = array<bool, 10>(false, false, true, false, false, false, true, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<f32> {
    var var_0 = true;
    global1 = array<bool, 10>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(global0.a, vec2<f32>(-1847f, -168f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1865f, arg_0.a.x) - _wgslsmith_f_op_vec2_f32(abs(arg_1.b.xx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(817f, arg_1.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -494f))))), vec4<i32>(0i, select(_wgslsmith_div_i32(-arg_0.c.x, global0.e), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(u_input.b, arg_2.x, u_input.b, global0.c.x)), arg_2.x), (-973f >= arg_1.a.x) || false), _wgslsmith_div_i32(firstLeadingBit(-2147483647i & arg_2.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, arg_0.c.x), global0.c.x)), countOneBits(-39328i)), _wgslsmith_dot_vec2_u32(u_input.c.yw, ~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(41160u, arg_1.d), vec2<u32>(u_input.c.x, global0.d), vec2<u32>(global0.d, 19501u)))), -2147483647i);
    global1 = array<bool, 10>();
    var var_2 = false;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, arg_0.b.x, (false || global1[_wgslsmith_index_u32(arg_1.d, 10u)]) && true)), _wgslsmith_f_op_f32(ceil(1f)), 352f));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global1 = array<bool, 10>();
    let var_0 = u_input.c.zw;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.b.xz, vec2<f32>(global0.a.x, -1153f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_1, Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b, ~arg_1.c, 0u, u_input.b), vec3<i32>(~(-2147483647i), -arg_1.e, _wgslsmith_dot_vec4_i32(arg_1.c, global0.c))))), arg_1.c, _wgslsmith_sub_u32(_wgslsmith_add_u32(27210u, 1u), 1u), arg_1.e);
    global1 = array<bool, 10>();
    let var_2 = any(select(vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(85937u, var_0.x, 1u), 10u)], !global1[_wgslsmith_index_u32(~4294967295u, 10u)], !(!global1[_wgslsmith_index_u32(1u, 10u)])), select(vec3<bool>(!global1[_wgslsmith_index_u32(arg_1.d, 10u)], all(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 10u)])), global1[_wgslsmith_index_u32(~global0.d, 10u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(71680u, 10u)], false, global1[_wgslsmith_index_u32(arg_1.d, 10u)])), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.d, var_0.x), 10u)]), global1[_wgslsmith_index_u32(79230u, 10u)]));
    return 970f;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) + _wgslsmith_f_op_f32(global0.b.x + global0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(-923f, _wgslsmith_f_op_f32(func_2(global0.a, Struct_1(vec2<f32>(618f, global0.b.x), vec3<f32>(global0.b.x, global0.b.x, -340f), global0.c, u_input.d, global0.c.x))), _wgslsmith_f_op_f32(1000f + global0.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), vec3<f32>(-1000f, 1000f, 2347f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(393f, global0.a.x, global0.b.x), global0.b) + vec3<f32>(global0.b.x, 458f, -1200f)))), -vec4<i32>(-(~(-2147483647i)), 40182i, -(-29309i >> (1u % 32u)), _wgslsmith_dot_vec4_i32(-global0.c, -vec4<i32>(u_input.b, -36919i, 1678i, global0.c.x))), 117643u, global0.c.x);
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(14270i, -30280i, countOneBits(var_0.c.x), u_input.b) | (~vec4<i32>(-29663i, u_input.b, global0.e, -32976i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.d, 0u, 48502u), vec4<u32>(global0.d, 0u, 38932u, 23292u)) % vec4<u32>(32u))), firstTrailingBit(~(~vec4<i32>(2147483647i, 1i, var_0.c.x, global0.c.x)))), vec4<i32>(var_0.e, u_input.b, -1i, -11673i));
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 1000f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2203f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(954f, var_0.a.x))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global0.b.x, global0.b.x)))))), global0.b, -global0.c & -(~_wgslsmith_mod_vec4_i32(var_1, var_0.c)), 50169u, max(1i, global0.c.x));
    var var_2 = select(!(!select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.d, 10u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(var_0.d, 10u)], global1[_wgslsmith_index_u32(18955u, 10u)]), false)), select(!vec2<bool>(global1[_wgslsmith_index_u32(~1u, 10u)], var_0.c.x > -42957i), select(vec2<bool>(select(true, false, false), true & global1[_wgslsmith_index_u32(1u, 10u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global0.d, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global0.d, 10u)], true), vec2<bool>(global1[_wgslsmith_index_u32(global0.d, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), false), vec2<bool>(true, true)), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], false), vec2<bool>(global1[_wgslsmith_index_u32(27374u, 10u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(63150u, 10u)])), false != global1[_wgslsmith_index_u32(global0.d, 10u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 10u)], all(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(8158u, 10u)]))))), !(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(20712u, 10u)], false)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(global0.a));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<f32>(789f, global0.b.x), var_0.b, vec4<i32>(var_0.e, u_input.b, 2147483647i, 1i), 6887u, 1i), Struct_1(vec2<f32>(var_3.x, global0.b.x), vec3<f32>(global0.a.x, -1000f, global0.a.x), vec4<i32>(-50445i, -2147483647i, var_1.x, global0.c.x), global0.d, global0.c.x), var_1.xzx)).xy), vec2<f32>(_wgslsmith_div_f32(var_0.b.x, var_3.x), _wgslsmith_f_op_f32(ceil(567f))))) + vec2<f32>(_wgslsmith_f_op_f32(var_3.x * var_3.x), var_0.b.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<f32>(var_0.b.x, var_3.x), global0.b, global0.c, u_input.d, 1i), Struct_1(vec2<f32>(-226f, -289f), global0.b, vec4<i32>(var_0.e, 9285i, -1i, -21021i), global0.d, 414i), vec3<i32>(-1i, -2495i, 32533i))).x), -423f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1698f, global0.b.x)) + -1096f), global0.a.x)), var_1, _wgslsmith_div_u32(global0.d, _wgslsmith_mult_u32(4294967295u, var_0.d)) & u_input.c.x, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(~(~u_input.d), 10u)], (~u_input.a < 47525u) != (_wgslsmith_f_op_f32(f32(-1f) * -814f) != global0.a.x), false, true);
    var var_1 = func_1();
    var var_2 = Struct_1(vec2<f32>(1664f, -437f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(global0.b.x, var_1.a.x, var_1.b.x)), vec3<f32>(772f, global0.b.x, global0.b.x))))), vec4<i32>(u_input.b, var_1.c.x, i32(-1i) * -1i, reverseBits(reverseBits(-1i))), 1u, func_1().c.x);
    let var_3 = Struct_1(func_1().a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) - global0.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, -1005f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004f, -1936f, 868f)))), min(_wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.e, var_1.c.x, -2147483647i, -29700i), var_1.c), vec4<i32>(var_2.c.x, 1i, global0.c.x, u_input.b)), ~global0.c) ^ var_1.c, ~38027u, _wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.c.zz) ^ max(var_2.c.yw, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.e, var_2.c.x), var_2.c.yx)), vec2<i32>(0i, ~(var_1.c.x | var_1.e))));
    global0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(_wgslsmith_add_i32(global0.e, global0.e) >> (4294967295u % 32u)), -2147483647i, -(~2147483647i)), 44647u, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1055f, var_2.b.x) * vec2<f32>(1000f, -999f)))), func_1())), ~(~select(2157u, 4294967295u, var_0.x)));
}

