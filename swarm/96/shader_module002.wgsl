struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: Struct_4,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 8>;

var<private> global3: vec2<u32> = vec2<u32>(14203u, 29604u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<u32> {
    global0 = array<vec4<i32>, 17>();
    var var_0 = 761f;
    var var_1 = !vec3<bool>(!global1.d.b.x, global1.d.c.x, global1.d.b.x == global1.d.c.x);
    var var_2 = global3.x;
    var_0 = global1.b;
    return ~(select(vec2<u32>(global3.x, 1u), _wgslsmith_add_vec2_u32(global1.d.a.xy, global1.d.a.xy) ^ ~vec2<u32>(global1.d.d, 4294967295u), select(all(vec3<bool>(var_1.x, global1.d.b.x, var_1.x)), !var_1.x, global1.d.b.x)) | ~vec2<u32>(~0u, 0u << (1u % 32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    var var_0 = !global1.d.c;
    global2 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(abs(~global1.d.a.x), 0u)), 8u)]);
    let var_2 = func_3();
    let var_3 = Struct_4(arg_1, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(~u_input.b, u_input.b)), -_wgslsmith_sub_vec2_i32(-vec2<i32>(global1.a, 53138i), u_input.b)), true, reverseBits(vec2<u32>(arg_1.d, ~(1u & global1.d.d))));
    return countOneBits(global3.x);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_1.x, 1u), global1.d.a & arg_1.yzz), global1.d.a, max(abs(arg_1.zzz), vec3<u32>(global1.d.d, global3.x, global3.x))), select(vec4<bool>(arg_2.x && global1.d.c.x, arg_2.x, all(vec3<bool>(false, global1.d.c.x, false)), true), select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, global1.d.c.x, arg_2.x, arg_2.x), global1.d.b.x), !global1.d.b, vec4<bool>(false, arg_2.x, true, global1.d.c.x)), select(true, all(global1.d.c), any(vec4<bool>(true, false, arg_2.x, global1.d.c.x)))), vec4<bool>(all(!arg_2), all(select(vec2<bool>(global1.d.c.x, true), arg_2, vec2<bool>(false, false))), global1.d.c.x, true), ~global1.d.d));
    var var_1 = max(firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, global1.a, 3152i), vec3<i32>(u_input.a, u_input.a, -4160i)))), _wgslsmith_div_vec3_i32(abs(abs(firstTrailingBit(vec3<i32>(global1.c, global1.a, global1.a)))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(7724i, u_input.b.x, 2147483647i), vec3<i32>(3284i, -2147483647i, 1i)), vec3<i32>(u_input.b.x, 5593i, u_input.a)), max(vec3<i32>(u_input.a, 0i, u_input.b.x), vec3<i32>(u_input.a, -1i, 1i)))));
    let var_2 = Struct_5(vec4<bool>(true, !global1.d.c.x, var_0.a.c.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -190f), -496f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1449f)))), Struct_4(var_0.a, -25101i, !all(select(vec4<bool>(global1.d.b.x, true, var_0.a.b.x, false), global1.d.c, vec4<bool>(true, var_0.a.b.x, global1.d.c.x, arg_2.x))), global1.d.a.yz), Struct_4(Struct_1(vec3<u32>(0u, select(global3.x, arg_1.x, var_0.a.b.x), global3.x >> (4294967295u % 32u)), !var_0.a.c, var_0.a.c, ~1u), 61156i, global1.d.c.x, max(~firstLeadingBit(arg_1.xx), vec2<u32>(~1u, ~arg_1.x))), Struct_2(1i, 567f, var_1.x, Struct_1(min(firstLeadingBit(global1.d.a), vec3<u32>(global1.d.a.x, var_0.a.d, 0u) | arg_1.xzz), vec4<bool>(any(vec2<bool>(global1.d.c.x, var_0.a.b.x)), global1.d.c.x, var_0.a.c.x && arg_2.x, false), select(var_0.a.b, var_0.a.c, !global1.d.c), firstLeadingBit(global1.d.d))));
    var var_3 = Struct_5(!vec4<bool>(all(vec3<bool>(true, true, var_2.e.d.b.x)), arg_2.x && false, var_2.e.c != global1.c, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.a.x, 4294967295u, arg_1.x, 0u), arg_1), 8u)], var_2.d, var_2.c, Struct_2(_wgslsmith_add_i32(abs(_wgslsmith_sub_i32(38129i, u_input.a)), -1i), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.x, 8u)]), var_1.x, var_0.a));
    let var_4 = select(var_2.d.a.c, !vec4<bool>(all(!var_3.e.d.b.wwz), false, true, any(!vec2<bool>(var_3.d.a.b.x, true))), _wgslsmith_add_u32(countOneBits(var_2.d.d.x), var_3.e.d.a.x ^ countOneBits(16155u)) <= _wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.d.d, min(global3.x, 0u)), 1u ^ var_3.c.d.x, ~0u));
    return var_3.e;
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] - -1412f)))))), ~(vec4<u32>(0u, 0u, func_2(global1.a, global1.d, vec2<i32>(12332i, 1i)), 1u) | ~reverseBits(vec4<u32>(4294967295u, global1.d.d, 12269u, 4832u))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(global1.d.c.x, global1.d.b.x), global1.d.b.x & global1.d.c.x)), global1.d.c.x));
    let var_1 = Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)), vec4<u32>(1u, global3.x, 1u, 4294967295u), !(!var_0.d.b.wz)).d);
    global1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(10849u, 0u, global3.x, global1.d.a.x) | vec4<u32>(268u, var_0.d.a.x, global1.d.a.x, var_0.d.d), (vec4<u32>(global3.x, var_0.d.a.x, 7664u, 4294967295u) & vec4<u32>(global3.x, var_0.d.a.x, var_1.a.d, 26023u)) | vec4<u32>(0u, 19913u, 83645u, 23991u)), !global1.d.b.yy);
    global3 = global1.d.a.xx;
    global3 = vec2<u32>(var_1.a.d, 1u) | var_1.a.a.yx;
    return Struct_4(var_1.a, 11129i, false, var_0.d.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(!global1.d.b, global1.b, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(global3.x, 8u)]))), vec2<f32>(-761f, global2[_wgslsmith_index_u32(global3.x, 8u)])) - vec2<f32>(global1.b, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(10744u, 8u)]))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1213f, global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<f32>(-1185f, -132f))) + vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(global1.d.d, 8u)])))), Struct_2(u_input.b.x, -1292f, _wgslsmith_mult_i32(-5424i, -_wgslsmith_div_i32(u_input.a, 3253i)), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 8u)], -359f)))))).a));
    global1 = Struct_2(-59678i, -357f, firstTrailingBit(-58376i), Struct_1(~func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.e.d.a.x, 8u)], global1.b) - vec2<f32>(-499f, global2[_wgslsmith_index_u32(2164u, 8u)]))).a.a, func_1(vec2<f32>(-1096f, 1f)).a.b, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.b + 188f)), firstTrailingBit(~vec4<u32>(var_0.c.a.a.x, 5839u, 4294967295u, global1.d.a.x)), vec2<bool>(!global1.d.b.x, !global1.d.c.x)).d.b, select(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global3.x, 4294967295u, global1.d.a.x, 1u)), vec4<u32>(1u, 1u, var_0.e.d.a.x, 0u) ^ vec4<u32>(20473u, var_0.e.d.d, 4643u, var_0.e.d.d)), 4294967295u, true)));
    var_0 = Struct_5(vec4<bool>(true, true, -u_input.a < _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), true), -2053f, var_0.c, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b + -422f), _wgslsmith_f_op_f32(min(global1.b, var_0.e.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, global2[_wgslsmith_index_u32(var_0.d.d.x, 8u)]), vec2<f32>(global2[_wgslsmith_index_u32(55826u, 8u)], 489f), var_0.d.a.b.yz)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e.b, -1002f)))))), var_0.e);
    var var_1 = Struct_5(vec4<bool>(!global1.d.b.x, !global1.d.b.x, global1.c <= -2147483647i, all(!vec4<bool>(false, var_0.a.x, global1.d.b.x, global1.d.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.b), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 8u)], global1.b, false)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.b)) * _wgslsmith_f_op_f32(sign(-1617f))), !global1.d.c.x)), var_0.c, Struct_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(975f, global2[_wgslsmith_index_u32(global1.d.a.x, 8u)]))))).a, -2619i, select(any(vec2<bool>(false, global1.d.b.x)), all(!vec3<bool>(var_0.e.d.c.x, true, var_0.e.d.b.x)), false), global1.d.a.xz), var_0.e);
    global2 = array<f32, 8>();
    global3 = ~vec2<u32>(global3.x, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(var_1.e.d.a.x, global3.x)), vec2<u32>(_wgslsmith_sub_u32(global1.d.a.x, global1.d.d), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(857f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), -116f, true)), reverseBits(global1.a) << (global3.x % 32u), ~global1.d.d, ~_wgslsmith_dot_vec2_u32(~global1.d.a.yz << (var_1.d.a.a.zy % vec2<u32>(32u)), func_3()));
}

