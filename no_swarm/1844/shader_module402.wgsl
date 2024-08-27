struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_3 {
    global0 = 1i;
    var var_0 = 1i ^ u_input.a;
    var var_1 = 28064u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-280f)));
    let var_3 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-754f, 1000f)) + var_2)) > 278f, false, arg_1.x);
    return Struct_3(select(vec2<u32>(abs(2203u), u_input.b), vec2<u32>(abs(u_input.b) & 1u, ~(~25284u)), arg_1.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = -1596f;
    var var_1 = Struct_1(vec3<bool>(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), u_input.b > abs(~4294967295u), !(!all(vec3<bool>(false, true, false)))), u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-637f, -606f)), _wgslsmith_f_op_f32(abs(-379f)), _wgslsmith_f_op_f32(step(-1152f, _wgslsmith_f_op_f32(-833f + 451f))))));
    global0 = abs(_wgslsmith_mult_i32(abs(6638i), -7640i));
    var var_2 = !vec2<bool>(~_wgslsmith_mod_u32(1u, arg_0.x) > min(~1179u, 0u), any(!select(vec3<bool>(false, var_1.a.x, var_1.a.x), var_1.a, false)));
    var_0 = _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f + -1394f)))));
    return var_1.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_4 {
    global0 = -(u_input.a << (arg_0.x % 32u));
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_1 = -vec3<i32>(u_input.a, _wgslsmith_div_i32(~u_input.a, _wgslsmith_mod_i32(u_input.c.x, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, u_input.a), firstLeadingBit(vec3<i32>(-2147483647i, u_input.c.x, -2147483647i)))) | max(vec3<i32>(reverseBits(-54572i), ~u_input.c.x, i32(-1i) * -u_input.a), abs(select(-vec3<i32>(1i, -2147483647i, u_input.c.x), -vec3<i32>(u_input.c.x, u_input.c.x, 0i), true)));
    var var_2 = !(firstLeadingBit(var_1.x) != _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -24889i)) | !(arg_1.b > var_0.b);
    let var_3 = vec2<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_3(~vec3<u32>(var_0.a.x, 88379u, arg_1.a.x)), vec3<bool>(true, true, true))), false | (1f < _wgslsmith_f_op_f32(trunc(arg_1.b))));
    return Struct_4(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_0.a.x, 51490u, var_0.a.x, 20783u) << (vec4<u32>(arg_1.a.x, arg_0.x, var_0.a.x, u_input.b) % vec4<u32>(32u)), vec4<u32>(var_0.a.x, arg_1.a.x, u_input.b, 52493u)), max(min(vec4<u32>(var_0.a.x, 37133u, 13647u, u_input.b), vec4<u32>(var_0.a.x, u_input.b, arg_1.a.x, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(13945u, 0u, arg_1.a.x, arg_0.x), vec4<u32>(1u, 1u, 9962u, u_input.b)))), func_1(vec2<u32>(1u, select(50274u, arg_1.a.x, var_3.x)) ^ arg_1.a, vec3<bool>(!var_3.x, !var_3.x & any(vec3<bool>(true, var_3.x, false)), !var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(countOneBits(abs(~(~vec4<u32>(0u, u_input.b, u_input.b, 46850u)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~(~1u), _wgslsmith_mod_u32(u_input.b, 6051u)), 88111u), 2u)]);
    var_0 = func_2(~reverseBits(firstLeadingBit(var_0.a.yxx)), func_1(~var_0.a.xy, !vec3<bool>(true, 1000f >= var_0.b.b, true)));
    var var_1 = Struct_1(!select(vec3<bool>(true, true, true), func_3(vec3<u32>(var_0.b.a.x, var_0.b.a.x, u_input.b)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(-var_0.b.b))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, var_0.b.b, -883f) * vec3<f32>(var_0.b.b, var_0.b.b, var_0.b.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(411f, 2325f, var_0.b.b))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-452f, var_0.b.b, -795f)))), any(vec3<bool>(true, false, true)) || all(vec4<bool>(true, false, false, false))))));
    let var_2 = !vec2<bool>(false, all(!(!vec4<bool>(var_1.a.x, false, var_1.a.x, false))));
    var var_3 = ~abs(reverseBits(vec4<i32>(~u_input.a, u_input.c.x ^ -2147483647i, abs(1i), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)), var_3.zwy);
}

