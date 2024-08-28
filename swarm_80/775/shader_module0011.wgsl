struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 25> = array<f32, 25>(-734f, -831f, 1580f, 419f, -1077f, 793f, 963f, 488f, -114f, 765f, 1585f, -504f, -1073f, -572f, 474f, 1087f, -1149f, 330f, 2180f, -508f, 378f, -1188f, 1000f, -1467f, 742f);

var<private> global3: array<Struct_2, 8>;

var<private> global4: vec4<f32> = vec4<f32>(-118f, 138f, 712f, 999f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    global3 = array<Struct_2, 8>();
    var var_0 = global3[_wgslsmith_index_u32(0u, 8u)];
    global4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 254f, global0.a, global0.a) - vec4<f32>(global2[_wgslsmith_index_u32(8465u, 25u)], -555f, global2[_wgslsmith_index_u32(30668u, 25u)], -265f)), var_0.d))) + var_0.d)));
    var var_1 = var_0.d;
    var var_2 = -1i;
    return (_wgslsmith_mod_i32(var_0.a.d, 0i) & ~(select(-1i, global1.x, false) & global1.x)) | _wgslsmith_add_i32(countOneBits(var_0.a.d), -19473i);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global1 = ~_wgslsmith_add_vec2_i32(vec2<i32>(~(-42447i), ~global0.d), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(global1.x, global1.x)), select(global0.c.xz, vec2<i32>(1i, global1.x), global0.e))) ^ vec2<i32>(-global0.d, ~global1.x);
    global1 = vec2<i32>(_wgslsmith_mod_i32(-global1.x, _wgslsmith_add_i32(global0.d, -35353i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.c.x, global1.x) >> (global0.b.yx % vec2<u32>(32u)), select((vec2<i32>(global0.d, -2147483647i) | global0.c.yz) ^ _wgslsmith_mult_vec2_i32(global0.c.yy, global0.c.yz), vec2<i32>(-7937i, _wgslsmith_mult_i32(-26674i, -1730i)), global0.e)));
    global2 = array<f32, 25>();
    var var_0 = 1328f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-628f, global4.x))), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global4.x)));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(9043u, 25u)])), global0.a)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * 505f)))))), ~(~global0.b), _wgslsmith_mod_vec4_i32(global0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(4294967295u), -2147483647i, global0.c.x, global1.x), ~firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, -12301i, global1.x)))), firstTrailingBit(_wgslsmith_mod_i32(-7522i, (global1.x & global0.d) >> (abs(32281u) % 32u))), global0.e);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = func_2(_wgslsmith_sub_vec2_u32(arg_0.xy, arg_0.xz ^ vec2<u32>(arg_0.x, ~43215u)));
    var var_1 = _wgslsmith_f_op_f32(635f + 881f);
    var var_2 = var_0.a;
    let var_3 = vec2<bool>(true, global0.e.x);
    global0 = func_2(global0.b.zx);
    return -870f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~(vec3<u32>(u_input.a.x, global0.b.x, 27523u) << (global0.b % vec3<u32>(32u))))), _wgslsmith_div_f32(global0.a, global0.a)), reverseBits(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 113397u, global0.b.x), vec3<u32>(global0.b.x, 22325u, 18358u)) >> (vec3<u32>(u_input.a.x, global0.b.x, 28223u) % vec3<u32>(32u)))), global0.c, global1.x, !vec2<bool>(!all(global0.e), _wgslsmith_add_i32(global1.x, 0i) < global1.x));
    let var_2 = select(select(vec3<bool>(true, true, func_2(vec2<u32>(72015u, u_input.a.x)).e.x), select(select(vec3<bool>(false, false, var_0), select(vec3<bool>(true, false, var_1.e.x), vec3<bool>(false, true, true), var_0), vec3<bool>(true, true, true)), vec3<bool>(true, !var_0, var_0 == var_1.e.x), var_1.e.x), true), select(select(vec3<bool>(var_1.e.x, any(vec3<bool>(false, false, var_1.e.x)), false), vec3<bool>(true, true, !global0.e.x), vec3<bool>(u_input.a.x < u_input.a.x, var_1.e.x, false)), !select(vec3<bool>(false, var_1.e.x, true), vec3<bool>(true, false, false), var_0), !vec3<bool>(!var_1.e.x, false, var_1.e.x)), !select(vec3<bool>(true, var_1.a == -128f, any(var_1.e)), vec3<bool>(true, global0.a < 1000f, !var_1.e.x), vec3<bool>(all(var_1.e), global0.e.x, var_0)));
    var var_3 = vec3<f32>(-1780f, -226f, _wgslsmith_f_op_f32(f32(-1f) * -344f));
    let var_4 = func_2(~firstLeadingBit(_wgslsmith_div_vec2_u32(global0.b.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(5156u, global0.b.x)))));
    let var_5 = firstTrailingBit(-68569i);
    let var_6 = !(false & var_2.x);
    let var_7 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1(vec3<u32>(~0u, _wgslsmith_div_u32(var_1.b.x, global0.b.x), ~5462u))), vec3<u32>(69050u, 59681u, _wgslsmith_mult_u32(29824u, global0.b.x)), var_1.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(select(2147483647i, 34656i, var_4.e.x), 44854i), 1i), func_2(~(~u_input.a)).e), global0.e, select(!(!var_1.e), global0.e, select(global0.e, vec2<bool>(!var_4.e.x, var_4.e.x), _wgslsmith_f_op_f32(global4.x + global2[_wgslsmith_index_u32(u_input.a.x, 25u)]) == global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 823f, 1077f, var_4.a))))), ~(~abs(vec2<u32>(35991u, 0u))));
    var var_8 = Struct_1(var_4.a, ~min(global0.b, firstLeadingBit(vec3<u32>(global0.b.x, 13743u, 14090u)) | ~var_7.a.b), ~(-_wgslsmith_mult_vec4_i32(-var_7.a.c, var_4.c)), var_1.d << (9628u % 32u), vec2<bool>(var_6, !var_6 || var_0));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(~abs(u_input.a.x)), _wgslsmith_sub_u32(global0.b.x, 0u), 46167u, ~0u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_8.a))))), var_4.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global4.yz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -543f), -712f))) - _wgslsmith_f_op_vec2_f32(-global4.xz)));
}

