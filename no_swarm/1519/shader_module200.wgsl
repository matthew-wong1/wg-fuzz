struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(67440u, Struct_2(vec4<f32>(-529f, -1134f, 584f, -1358f), true)), Struct_3(54160u, Struct_2(vec4<f32>(-1000f, -1687f, 1694f, -408f), false)), Struct_3(4294967295u, Struct_2(vec4<f32>(-624f, 1075f, 514f, -1213f), false)));

var<private> global3: f32;

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_2(vec4<f32>(-532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x))))), arg_0.e.x), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, arg_0.c, true))));
    let var_1 = vec4<f32>(-974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x + -1043f)))), _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(arg_0.a.x * arg_2.a.x));
    global3 = _wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2289f)), var_0.a.x, _wgslsmith_f_op_f32(-arg_0.e.x) >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, -452f), arg_0.e.x, any(vec4<bool>(var_0.b, arg_2.b, true, var_0.b)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + _wgslsmith_f_op_f32(max(-246f, 110f)));
    var var_3 = ~1u;
    return select(false, true, !select(true, true || all(vec3<bool>(arg_0.c, true, arg_0.c)), true));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> bool {
    var var_0 = all(!select(select(vec4<bool>(arg_2.b.b, false, false, arg_2.b.b), select(vec4<bool>(true, true, arg_2.b.b, arg_2.b.b), vec4<bool>(arg_2.b.b, true, arg_2.b.b, false), arg_2.b.b), !vec4<bool>(false, arg_2.b.b, true, true)), vec4<bool>(arg_2.b.b, true, true, arg_0 > arg_3.x), vec4<bool>(true, true, true, true)));
    let var_1 = !(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - arg_2.b.a.x))) > _wgslsmith_f_op_f32(arg_2.b.a.x - _wgslsmith_f_op_f32(566f - arg_2.b.a.x))));
    var var_2 = !select(vec2<bool>(true, true), !vec2<bool>(global4.x < arg_1, !arg_2.b.b), func_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1254f, arg_2.b.a.x, -1907f), vec3<f32>(arg_2.b.a.x, 981f, arg_2.b.a.x)), vec3<i32>(1i, arg_1, global4.x) | vec3<i32>(-10761i, global4.x, global4.x), var_1, select(global1.xx, vec2<i32>(2147483647i, arg_1), vec2<bool>(false, var_1)), arg_2.b.a.zxw), vec3<i32>(0i, _wgslsmith_div_i32(global1.x, 78674i), -global1.x), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, arg_2.b.a.x, 301f, 1139f) * vec4<f32>(232f, 1676f, -1179f, arg_2.b.a.x)), any(vec4<bool>(arg_2.b.b, arg_2.b.b, false, true)))));
    global1 = _wgslsmith_mult_vec3_i32(~select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1, arg_1, u_input.a.x), vec4<i32>(22814i, 4163i, global1.x, global1.x)), 25379i, 37393i), -vec3<i32>(arg_1, global1.x, global1.x) >> (~vec3<u32>(arg_0, 11240u, arg_3.x) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_2.b.b, var_1), !vec3<bool>(false, false, arg_2.b.b))), -(~countOneBits(global4.ywy)));
    var var_3 = var_1;
    return arg_2.b.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = select(!vec2<bool>(false, arg_0.b), vec2<bool>(true, !(arg_0.b | func_2(56259u, global4.x, global2[_wgslsmith_index_u32(20282u, 3u)], vec3<u32>(70543u, 33446u, 40139u)))), arg_0.b);
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1984u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(20982u, 11384u), select(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<bool>(var_0.x, arg_0.b))) | 1u, ~1u, !all(select(vec3<bool>(true, arg_0.b, true), vec3<bool>(var_0.x, true, arg_0.b), var_0.x)))), 3u)];
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = -_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -1i, u_input.a.x, firstTrailingBit(reverseBits(0i))), -vec3<i32>(~(-317i), global4.x, _wgslsmith_mult_i32(global4.x, global1.x)));
    var var_1 = Struct_1(arg_0.b.a.xwz, vec3<i32>(2147483647i, global1.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, 1i, -2147483647i)), ~global4.wyz))), !(arg_0.b.a.x == arg_0.b.a.x), global1.yz << (~abs(max(vec2<u32>(arg_1, arg_0.a), vec2<u32>(18485u, arg_1))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.a.x, arg_0.b.a.x, -587f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-571f, -252f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2399f * -1000f) * _wgslsmith_f_op_f32(max(arg_0.b.a.x, -405f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-986f - arg_0.b.a.x) + _wgslsmith_f_op_f32(-arg_0.b.a.x))), !(!vec3<bool>(true, false, arg_0.b.b)))));
    var var_2 = var_0.yy;
    global3 = 352f;
    var var_3 = Struct_1(arg_0.b.a.xzz, -var_1.b, true, ~_wgslsmith_div_vec2_i32(global1.xx, max(global4.wz, vec2<i32>(-1i, 80196i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(61195u, arg_0.a), vec2<u32>(arg_0.a, 2177u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(func_1(arg_0.b, vec2<f32>(-310f, 1000f), 1i).b.a.x, 384f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.e.x, arg_0.b.a.x))), arg_0.b.a.x))));
    return _wgslsmith_f_op_f32(-arg_0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(1u), 3u)];
    let var_1 = -(u_input.a.x >> (~23202u % 32u));
    global2 = array<Struct_3, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_0.b.a.zww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, var_0.b.a.x, 1061f))))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x), var_0.b.a.x)), 552f, _wgslsmith_f_op_f32(exp2(var_0.b.a.x))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(func_4(func_1(var_0.b, vec2<f32>(var_2.x, -408f), global4.x), ~0u)), 1000f), var_0.b.a.yyz)), vec3<i32>(-(u_input.a.x >> (var_0.a % 32u)), global4.x, var_1), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_0.b.a.x, var_2.x) + var_0.b.a.zyw), global4.yzz, var_0.b.b, global4.zx, vec3<f32>(631f, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-var_2.x))), -vec3<i32>(select(global4.x, global4.x, false), _wgslsmith_mult_i32(-59279i, -11889i), 5214i), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, 680f, var_0.b.a.x, -973f) * vec4<f32>(762f, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), var_0.b.b && var_0.b.b)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-43977i, -var_1), -firstTrailingBit(u_input.a.xx)), select(global4.xy, vec2<i32>(-global4.x, ~global1.x), !(!vec2<bool>(var_0.b.b, var_0.b.b)))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 132f, func_1(Struct_2(_wgslsmith_div_vec4_f32(var_0.b.a, vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), 1u > var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yz - var_0.b.a.yy)), _wgslsmith_div_i32(global4.x & 1i, global1.x)).b.a.x));
    global1 = -vec3<i32>(global1.x, ~(~var_1) ^ (i32(-1i) * -1i), -4770i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_0.a, 11699u), select(select(-2147483647i, ~(var_3.d.x & global1.x), false), _wgslsmith_mult_i32(~var_3.b.x, -2147483647i >> (var_0.a % 32u)), var_0.b.b == true));
}

