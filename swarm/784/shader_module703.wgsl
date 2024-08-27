struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, true, true, false, true, true, false, false, true, true, false, false, false, true, false);

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> vec4<i32> {
    global0 = array<bool, 16>();
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.a, _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 26u)])))), vec2<f32>(542f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1869f, arg_1))))), 118f, -vec4<i32>(~(var_0.c.x >> (4294967295u % 32u)), var_0.c.x, -var_0.c.x << ((73073u << (u_input.d % 32u)) % 32u), var_0.c.x));
    var var_2 = var_0;
    var var_3 = abs(arg_0.c.x);
    return var_2.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec2<f32> {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(global1.a)))), -1057f, _wgslsmith_sub_vec4_i32(global1.c, max(-arg_2, select(func_3(Struct_1(global1.a, 2135f, vec4<i32>(38213i, 1i, arg_2.x, global1.c.x)), global1.b, u_input.d, global1.a.x), ~vec4<i32>(global1.c.x, arg_2.x, -8763i, arg_0.x), !vec4<bool>(global0[_wgslsmith_index_u32(1159u, 16u)], true, true, arg_1.x)))));
    var var_0 = -_wgslsmith_div_vec4_i32(global1.c, vec4<i32>(-arg_0.x << (_wgslsmith_mod_u32(u_input.c, 0u) % 32u), -_wgslsmith_div_i32(arg_2.x, -2559i), (0i | arg_0.x) << (_wgslsmith_add_u32(u_input.a.x, u_input.e.x) % 32u), ~(~arg_0.x)));
    let var_1 = _wgslsmith_mult_i32(-_wgslsmith_sub_i32(max(1i, _wgslsmith_mod_i32(0i, arg_2.x)), -1i), ~u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(289f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-471f)))))), -352f, arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(122f, -858f) - global2[_wgslsmith_index_u32(u_input.a.x, 26u)])))), _wgslsmith_f_op_f32(f32(-1f) * -689f), ~(~_wgslsmith_div_vec4_i32(~arg_2, -arg_2)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a, global1.a, vec2<bool>(arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-240f, -1959f)) + _wgslsmith_f_op_vec2_f32(global1.a * var_3.a))))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))) * _wgslsmith_f_op_vec2_f32(func_2(-(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.c.x, -46366i, -2147483647i, -28201i), vec4<i32>(740i, global1.c.x, 2147483647i, 1i))), vec2<bool>(!any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(24226u, 16u)])), global0[_wgslsmith_index_u32(~16308u, 16u)]), max(vec4<i32>(global1.c.x ^ -41819i, _wgslsmith_sub_i32(0i, global1.c.x), -1i, global1.c.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, u_input.b.x, -37574i, 2862i), -vec4<i32>(0i, u_input.b.x, global1.c.x, u_input.b.x))))));
    var var_1 = !vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, reverseBits(min(4294967295u, 0u))), 16u)], false);
    let var_2 = all(select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)]))), vec2<bool>(all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x))), !(!global0[_wgslsmith_index_u32(51510u, 16u)])), !(all(vec2<bool>(var_1.x, false)) || false)));
    var var_3 = min(2147483647i, countOneBits(~(-arg_0 ^ _wgslsmith_dot_vec4_i32(vec4<i32>(862i, global1.c.x, -18673i, global1.c.x), vec4<i32>(1i, arg_0, 0i, arg_0)))));
    let var_4 = ~(~(u_input.e >> (vec4<u32>(_wgslsmith_sub_u32(20099u, 1u), 6238u, 3429u, u_input.a.x) % vec4<u32>(32u))));
    return vec4<bool>(var_1.x && var_1.x, var_1.x, any(vec3<bool>(true, true, true)) & true, !(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, u_input.e.x), 16u)] | var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~0i);
    var var_1 = ~(~u_input.b.ywz);
    var var_2 = abs(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.zx, u_input.b.yw), countOneBits(u_input.b.zz)));
    global2 = array<vec2<f32>, 26>();
    var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(16771i, var_1.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 2147483647i), u_input.b.ywy), _wgslsmith_add_i32(global1.c.x, var_1.x), firstTrailingBit(-u_input.b.x))), global1.c.zzw, firstTrailingBit(u_input.b.zyz));
    var var_3 = Struct_1(global2[_wgslsmith_index_u32(23051u, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, global1.a.x)))), firstLeadingBit(global1.c));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1265f, 1940f) + global1.a) - _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(111600u, 26u)] * vec2<f32>(global1.b, -351f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, 1375f)), var_3.a)), global1.a))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(2147483647i, var_3.c.x), 1i, global1.c.x, i32(-1i) * -24125i), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zwy, var_3.c.wwx), var_1.x, min(var_1.x, 0i), countOneBits(u_input.b.x))), vec4<i32>(-30542i, max(var_2.x, var_1.x), var_2.x, -var_1.x) << (u_input.e % vec4<u32>(32u))));
    var var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xxx, abs(~_wgslsmith_clamp_u32(u_input.d << (u_input.a.x % 32u), ~4294967295u, _wgslsmith_add_u32(u_input.a.x, 26265u))), u_input.c >> (4294967295u % 32u));
}

