struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<i32, 1> = array<i32, 1>(-3153i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> i32 {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global1 = array<i32, 1>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 1u)];
    global0 = array<bool, 7>();
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(select(2147483647i, 0i, global0[_wgslsmith_index_u32(0u, 7u)]) & -8335i, _wgslsmith_mult_i32(-1i, -1i)) >> (4294967295u % 32u), 1i);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = arg_3.x;
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global0 = array<bool, 7>();
    var var_1 = ~(i32(-1i) * -4094i);
    return ~vec4<i32>(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(0u, 1u)], -19120i), -2147483647i, abs(_wgslsmith_dot_vec2_i32(arg_2.a.a.zz, vec2<i32>(arg_2.b, arg_2.a.a.x))), 290i) << (reverseBits(~vec4<u32>(reverseBits(1u), ~arg_0, _wgslsmith_add_u32(13184u, 1u), 10219u)) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<bool> {
    global1 = array<i32, 1>();
    var var_0 = vec2<f32>(594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(627f))))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.b.a, u_input.a), u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1168f - -494f))), _wgslsmith_f_op_f32(max(-673f, var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(660f, var_0.x), vec2<f32>(var_0.x, var_0.x), arg_0.a.zz)), vec2<f32>(1731f, 1000f)))));
    global1 = array<i32, 1>();
    return arg_0.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<u32>(abs(firstLeadingBit(select(~31997u, 0u, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true))))), 1u, 21594u);
    let var_1 = func_4(Struct_2(vec3<bool>(any(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 7u)])), false, !any(vec2<bool>(false, false))), Struct_1(min(~u_input.a, func_3(var_0.x, -1346f, Struct_4(Struct_1(vec4<i32>(33249i, -1i, global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_0)), global1[_wgslsmith_index_u32(var_0.x, 1u)]), var_0.yx))), vec2<i32>(-(i32(-1i) * -8388i), ~countOneBits(-9896i)), _wgslsmith_div_u32(var_0.x, firstLeadingBit(0u << (var_0.x % 32u)))), countOneBits(vec4<u32>(var_0.x, max(var_0.x, 4294967295u), ~var_0.x, ~var_0.x) >> ((~vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u) & vec4<u32>(0u, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))));
    let var_2 = abs(_wgslsmith_sub_u32(~((4225u & var_0.x) ^ _wgslsmith_mod_u32(0u, var_0.x)), var_0.x << (4294967295u % 32u)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(ceil(-524f)), Struct_2(select(!(!var_1), vec3<bool>(!global0[_wgslsmith_index_u32(var_2, 7u)], true, false), 20434u < var_2), Struct_1(u_input.a), vec2<i32>(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(var_2, 1u)] ^ arg_0), _wgslsmith_sub_i32(-4342i ^ arg_0, u_input.a.x & 55861i)), var_2));
    var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) - var_3.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-236f * var_3.a), 125f)))) - _wgslsmith_div_f32(423f, 384f)), var_3.b);
    return Struct_1(~vec4<i32>(u_input.a.x, abs(arg_0) << ((1u ^ var_2) % 32u), ~62173i, abs(global1[_wgslsmith_index_u32(var_2, 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(vec2<i32>(firstTrailingBit(firstTrailingBit(2147483647i)), 42715i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(198f, -299f, 1316f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-857f, -151f, -446f)))), vec3<f32>(-1159f, -927f, 434f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(157f, 1405f), _wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(-306f + 145f), _wgslsmith_f_op_f32(sign(-1358f)))))));
    let var_2 = Struct_2(vec3<bool>(any(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(32648u, 7u)], false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(5045u, 7u)], true, global0[_wgslsmith_index_u32(43193u, 7u)], false))), !(!global0[_wgslsmith_index_u32(1u, 7u)]), true), var_0, vec2<i32>(-_wgslsmith_mult_i32(-31539i, 14384i) >> (1u % 32u), u_input.a.x), 56913u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-333f, var_1.x))), _wgslsmith_f_op_vec2_f32(var_1.zy * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.zx, var_1.wx), _wgslsmith_f_op_vec2_f32(var_1.wz - var_1.zz))))));
    global1 = array<i32, 1>();
    let var_4 = Struct_4(func_2(-42680i), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-436f - var_1.x), var_1.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -267f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.ww), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -578f) - var_1.wx))))), vec2<u32>(4294967295u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(62443u, 5683u), _wgslsmith_div_u32(var_2.d, 73584u))), var_4.a.a.x);
}

