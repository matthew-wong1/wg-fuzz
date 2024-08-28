struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 68268i, i32(-2147483648));

var<private> global2: array<Struct_3, 23>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.d)), -197f);
    let var_1 = select(vec2<bool>(true, select(any(select(vec4<bool>(false, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, true, arg_0.b, false), vec4<bool>(arg_0.b, global3.a.c.b, arg_0.b, arg_0.b))), all(!vec2<bool>(false, arg_0.b)), arg_0.b)), select(select(select(select(vec2<bool>(global3.a.c.b, false), vec2<bool>(true, arg_0.b), false), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, false), arg_0.b), vec2<bool>(true, true)), select(select(vec2<bool>(arg_0.b, global3.a.c.b), vec2<bool>(arg_0.b, global3.a.c.b), vec2<bool>(arg_0.b, true)), !vec2<bool>(true, arg_0.b), 0u > arg_1), true), vec2<bool>(-326f == _wgslsmith_f_op_f32(global3.b.x - arg_0.c.x), !any(vec2<bool>(true, false))), !vec2<bool>(all(vec4<bool>(false, global3.a.b.b, arg_0.b, arg_0.b)), !arg_0.b)), select(vec2<bool>(true, true), vec2<bool>(true, max(3003u, u_input.c.x) <= arg_1), _wgslsmith_f_op_f32(183f - _wgslsmith_f_op_f32(829f + arg_0.c.x)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.x)))));
    var var_2 = !(!(!select(!var_1, select(var_1, vec2<bool>(global3.a.b.b, var_1.x), false), var_1.x)));
    let var_3 = vec2<bool>(true, true);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -250f);
    return arg_0.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, arg_0.a)), vec2<u32>(24584u, 1u)) ^ _wgslsmith_mult_u32(global3.c, arg_0.a)), 23u)];
    return Struct_1(0i, false, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(523f, -344f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.d, -1133f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.a.b, arg_0.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - var_0.b.yz)), _wgslsmith_f_op_f32(floor(-913f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = max(-5667i, _wgslsmith_dot_vec3_i32(~u_input.a, -vec3<i32>(42268i, ~1i, _wgslsmith_add_i32(global3.a.c.a, u_input.b))));
    var var_1 = arg_1;
    global0 = array<i32, 26>();
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(global3.a.b.a, global1.x)), u_input.a.zz >> (_wgslsmith_clamp_vec2_u32(u_input.c.xz, u_input.c.zx, vec2<u32>(58033u, global3.a.a)) % vec2<u32>(32u))), -(vec2<i32>(arg_3.a.b.a, 41835i) | min(global1.zx, global1.zy))), global1.xx, select(~u_input.a.zy << (_wgslsmith_div_vec2_u32(vec2<u32>(5223u, global3.c), u_input.c.zy) % vec2<u32>(32u)), global1.xy, select(vec2<bool>(global3.a.c.b, false), select(vec2<bool>(true, true), vec2<bool>(var_1.a.c.b, true), arg_1.a.c.b), var_1.a.b.b)) | vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, var_1.a.c.a, global1.x), vec4<i32>(arg_0.a, arg_3.a.c.a, arg_0.a, arg_0.a)), i32(-1i) * -28777i));
    global3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(461f, _wgslsmith_f_op_f32(2076f * _wgslsmith_f_op_f32(round(arg_3.b.x))))));
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-11161i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global3.a.c.a, global3.a.c.a, global0[_wgslsmith_index_u32(1u, 26u)]), vec3<i32>(-2147483647i, 0i, 5267i)) << (abs(_wgslsmith_add_u32(0u, 47772u)) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18496u, u_input.c.x, 47183u), 26u)]), vec3<i32>(53905i, 58505i, 1i), u_input.a);
    global2 = array<Struct_3, 23>();
    let var_0 = _wgslsmith_f_op_f32(2612f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.d + 1000f))))) + _wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(func_4(func_2(global3.a, global3.b.zxz), Struct_3(global3.a, vec4<f32>(1616f, global3.e, 280f, global3.e), global3.a.a, global3.e, global3.e), u_input.c.x, Struct_3(global3.a, global3.b, 0u, -1338f, 448f))))));
    var var_1 = select(select(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, global1.x, -35160i, u_input.a.x), vec4<i32>(2418i, u_input.a.x, global1.x, global0[_wgslsmith_index_u32(75093u, 26u)]))), -(vec4<i32>(global1.x, global1.x, 1i, global1.x) ^ vec4<i32>(-14658i, 486i, global1.x, 33171i)), _wgslsmith_add_vec4_i32(vec4<i32>(global3.a.c.a, 58273i, global1.x, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 28877i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), vec4<i32>(-61962i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b)))), ~vec4<i32>(9041i, u_input.b, 49815i, select(global0[_wgslsmith_index_u32(global3.c, 26u)], 1i, global3.a.c.b)), !select(select(vec4<bool>(true, true, true, global3.a.b.b), vec4<bool>(false, false, false, global3.a.b.b), vec4<bool>(global3.a.b.b, global3.a.c.b, global3.a.b.b, global3.a.b.b)), vec4<bool>(true, global3.a.b.b, true, global3.a.c.b), vec4<bool>(false, false, global3.a.b.b, global3.a.c.b))), _wgslsmith_add_vec4_i32(abs(reverseBits(vec4<i32>(2147483647i, u_input.a.x, 7050i, global3.a.c.a) >> (vec4<u32>(1u, u_input.c.x, u_input.c.x, 1765u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(~vec4<i32>(26625i, u_input.a.x, 2147483647i, global1.x), select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 1i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], -1i), vec4<i32>(u_input.b, -1i, 2147483647i, 0i), global3.a.b.b) & _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 1i, 0i), vec4<i32>(u_input.b, u_input.a.x, -2147483647i, 9570i)))), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53632u, 4294967295u, 47153u), vec4<u32>(u_input.c.x, 45825u, 7267u, 28532u))) >= 42229u);
    global3 = global2[_wgslsmith_index_u32(~abs(~(0u << (u_input.c.x % 32u))) | _wgslsmith_mult_u32(global3.a.a, ~_wgslsmith_sub_u32(global3.c, 0u) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(global3.a.a, 41587u), u_input.c.x ^ u_input.c.x) % 32u)), 23u)];
    return func_2(global3.a, global3.b.xzw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_div_u32(~u_input.c.x, 35971u)), 26u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, global3.a.a, min(0u, 0u), _wgslsmith_mult_u32(global3.c, 0u) << ((u_input.c.x | global3.a.a) % 32u)), firstTrailingBit(vec4<u32>(~4294967295u, global3.c, ~4294967295u, ~global3.a.a))), ~max(~(vec4<u32>(0u, u_input.c.x, global3.a.a, global3.a.a) ^ vec4<u32>(0u, 70372u, u_input.c.x, u_input.c.x)), ~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u))), 23u)];
    global1 = abs(firstTrailingBit(u_input.a));
    global2 = array<Struct_3, 23>();
    var var_3 = Struct_1(-(~(i32(-1i) * -43400i)), any(vec2<bool>(any(vec3<bool>(var_2.a.b.b, var_2.a.c.b, true)) != true, true)), _wgslsmith_f_op_vec2_f32(-var_2.a.b.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(348f, _wgslsmith_f_op_f32(f32(-1f) * -1147f))) * _wgslsmith_f_op_f32(global3.d * 504f)))));
    var var_4 = ~(u_input.c.yy >> ((~(~u_input.c.yx) ^ u_input.c.zy) % vec2<u32>(32u)));
    let var_5 = var_0.c;
    let var_6 = firstTrailingBit(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.x, var_2.c), vec2<u32>(14375u, 38657u), u_input.c.xy) | (u_input.c.yx ^ vec2<u32>(global3.a.a, var_2.c)), countOneBits(u_input.c.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1().c.x), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(func_2(Struct_2(global3.c, Struct_1(-30712i, var_0.b, var_2.b.xz, var_3.d), var_0), vec3<f32>(var_2.a.c.c.x, var_3.c.x, var_2.b.x)).a, -global1.x, ~(-16624i), -2707i), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(20071u, 26u)], var_0.a, u_input.a.x, global3.a.c.a)) | vec4<i32>(2147483647i, var_2.a.c.a, -11682i, -30740i), max(select(vec4<i32>(0i, global3.a.b.a, var_0.a, -7472i), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, global1.x), vec4<bool>(false, var_0.b, false, true)), ~vec4<i32>(global1.x, global3.a.c.a, 6496i, var_2.a.c.a))), var_2.a.b.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, global3.d, -815f, -225f), global3.b))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(2093f, -2077f, var_0.d, -777f), var_2.b)))), 1i);
}

