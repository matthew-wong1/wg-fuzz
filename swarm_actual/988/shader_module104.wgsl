struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec4<u32>, 15>;

var<private> global2: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, false, false));

var<private> global3: array<Struct_1, 11>;

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1343f - 363f))))))), _wgslsmith_f_op_f32(1172f * 254f)));
    global1 = array<vec4<u32>, 15>();
    var var_1 = 1i;
    global1 = array<vec4<u32>, 15>();
    var var_2 = Struct_1(vec4<bool>(false, false | (33141i <= u_input.b.x), true, ~1u == ~_wgslsmith_dot_vec4_u32(vec4<u32>(70426u, u_input.a.x, 0u, 14251u), vec4<u32>(u_input.c.x, global4.x, u_input.c.x, global4.x))), vec2<i32>(~(-9656i), ~u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_0), vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(454f, var_0)))))))), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.b, abs(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x))), u_input.b), select(select(vec3<bool>(false, true, all(vec2<bool>(true, false))), vec3<bool>(true, true, true), 23705u > u_input.c.x), select(vec3<bool>(select(false, true, true), true, all(vec2<bool>(true, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_2.c.x) + _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + -1500f))))));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(!select(global2[_wgslsmith_index_u32(max(~global4.x, 1u), 1u)], global2[_wgslsmith_index_u32(abs(~global4.x), 1u)], !all(vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), ~reverseBits(u_input.b.zx >> (u_input.c % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(func_3()), true)), 1f), 33776i, vec3<bool>(true, all(select(select(vec4<bool>(true, false, false, false), global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(67166u, 1u)]), vec4<bool>(true, false, true, true), global2[_wgslsmith_index_u32(u_input.c.x, 1u)])), _wgslsmith_f_op_f32(ceil(1003f)) == -622f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f)));
    var var_2 = 1i;
    var_2 = 72832i;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2538f)));
    return _wgslsmith_mod_i32(22418i, ~countOneBits(countOneBits(u_input.b.x >> (global4.x % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(~arg_0.d ^ arg_0.d, _wgslsmith_sub_i32(arg_0.d << (u_input.c.x % 32u), ~8990i))), -_wgslsmith_mult_vec2_i32((arg_0.b | arg_1.b) >> (abs(vec2<u32>(1u, global4.x)) % vec2<u32>(32u)), countOneBits(select(arg_1.b, vec2<i32>(u_input.b.x, arg_1.b.x), false))));
    global1 = array<vec4<u32>, 15>();
    global2 = array<vec4<bool>, 1>();
    let var_1 = -2147483647i;
    global0 = ~_wgslsmith_div_i32(i32(-1i) * -2147483647i, -59275i);
    return global4.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = func_4(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], vec2<i32>(func_2(), -19567i) ^ vec2<i32>(-u_input.b.x, arg_1.x & -2147483647i), _wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, 893f)), -1062f >= arg_2.x)), u_input.b.x, vec3<bool>(arg_0, arg_2.x <= arg_2.x, arg_0)), Struct_1(vec4<bool>(true, arg_0, u_input.c.x < ~global4.x, arg_0), vec2<i32>(-u_input.b.x, 0i), vec2<f32>(-764f, arg_2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, u_input.b.x, arg_1.x) >> (vec4<u32>(4294967295u, 1u, u_input.c.x, 0u) % vec4<u32>(32u)), ~vec4<i32>(u_input.b.x, -15789i, u_input.b.x, u_input.b.x)), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), !(!vec3<bool>(false, false, arg_0))));
    var var_1 = Struct_1(!(!global2[_wgslsmith_index_u32(1u, 1u)]), vec2<i32>(abs(2533i), ~(-1i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-222f, _wgslsmith_f_op_f32(-865f * arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2))) - arg_2))), ~(-2147483647i ^ arg_1.x), vec3<bool>(arg_0, !(30171u == u_input.a.x) | any(!vec3<bool>(false, arg_0, true)), !all(!vec3<bool>(arg_0, true, true))));
    global0 = ~_wgslsmith_dot_vec3_i32(u_input.b ^ firstLeadingBit(vec3<i32>(arg_1.x, var_1.b.x, 123067i)), _wgslsmith_div_vec3_i32(-vec3<i32>(3912i, 2147483647i, 2147483647i), -arg_1)) | (func_2() >> (~select(global4.x, abs(1u), arg_0) % 32u));
    global0 = ~_wgslsmith_clamp_i32(2147483647i, ~(~u_input.b.x), _wgslsmith_sub_i32(~(-41024i), -27035i)) & (i32(-1i) * -arg_1.x);
    let var_2 = 45896i;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.c)))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(floor(494f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 11>();
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, 29164u)), 1u)], select(select(global2[_wgslsmith_index_u32(global4.x, 1u)], vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, true, true), global2[_wgslsmith_index_u32(16187u, 1u)], global2[_wgslsmith_index_u32(global4.x, 1u)]), !global2[_wgslsmith_index_u32(global4.x, 1u)])), u_input.b.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-179f, 2135f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(true, vec3<i32>(u_input.b.x, u_input.b.x, 37903i), vec2<f32>(-1696f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 330f)), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, 1f))), max(u_input.b.x, u_input.b.x), vec3<bool>(true, !(global4.x >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 21193u, u_input.c.x), vec4<u32>(u_input.c.x, 28278u, global4.x, global4.x))), select(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true)));
    var var_1 = Struct_1(vec4<bool>(!var_0.e.x, all(vec3<bool>(any(var_0.e.zz), var_0.c.x == var_0.c.x, var_0.e.x)), (_wgslsmith_add_u32(4294967295u, global4.x) | 1u) > 20368u, !var_0.e.x), select(firstTrailingBit(~u_input.b.xz), countOneBits(firstLeadingBit(vec2<i32>(var_0.d, var_0.b.x))), true) ^ max(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, var_0.d) << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(-9328i, u_input.b.x)), vec2<i32>(_wgslsmith_clamp_i32(48500i, var_0.d, 24522i), -25621i >> (u_input.c.x % 32u))), var_0.c, 0i << (reverseBits(global4.x) % 32u), vec3<bool>(var_0.a.x, -140f >= _wgslsmith_f_op_f32(var_0.c.x + -465f), !(!(!var_0.e.x))));
    global2 = array<vec4<bool>, 1>();
    var var_2 = vec2<u32>(~(~40677u | u_input.c.x), _wgslsmith_mod_u32(1u, 15995u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, 11459i));
}

