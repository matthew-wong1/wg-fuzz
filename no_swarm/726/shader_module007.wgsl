struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: Struct_5 = Struct_5(Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)));

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = vec3<f32>(-1396f, -650f, -804f);
    global2 = 1u;
    global1 = Struct_5(global1.b, Struct_3(!(!(!global1.b.a))));
    let var_1 = ~vec4<u32>(abs(_wgslsmith_add_u32(1u, u_input.a.x) | _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), u_input.a.x, max(u_input.a.x, ~reverseBits(u_input.a.x)), ~u_input.a.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-166f + -514f))), firstTrailingBit(firstTrailingBit(-2147483647i)) < 1i)), -1622f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(ceil(-1474f))) * _wgslsmith_f_op_f32(sign(275f))), var_0.x)));
    return !(!vec4<bool>(global1.a.a.x, _wgslsmith_f_op_f32(sign(var_0.x)) <= arg_0.d.x, global1.a.a.x, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, global1.b.a.x), true))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, -857f, 562f, -815f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -392f, -205f, 419f)), vec4<f32>(2360f, -933f, 1000f, 866f), func_3(Struct_2(u_input.b.x, Struct_1(u_input.b.x), vec3<f32>(-446f, -662f, -742f), vec4<f32>(606f, -1081f, 211f, 925f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2155f, -577f, 126f, -1000f), vec4<f32>(-1000f, 327f, 153f, -1325f))))));
    return _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(select(min(reverseBits(vec4<i32>(1i, u_input.b.x, 0i, 1i)), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -1i) >> (arg_1 % vec4<u32>(32u))), firstLeadingBit(-vec4<i32>(-24898i, u_input.b.x, 2147483647i, 1i)), !global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 29u)]), vec4<i32>(1i, select(-22971i, 47636i, arg_0 && global1.b.a.x), abs(u_input.b.x), _wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(2147483647i, u_input.b.x)))), vec4<i32>(~(~(~2147483647i)), ~u_input.b.x, max(_wgslsmith_mod_i32(~u_input.b.x, u_input.b.x), u_input.b.x), u_input.b.x));
}

fn func_1(arg_0: Struct_5) -> bool {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(func_2(true, vec4<u32>(3580u, 31019u, u_input.a.x, u_input.a.x)), ~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), -u_input.b.x << (u_input.a.x % 32u)), -2147483647i, -firstLeadingBit(_wgslsmith_add_i32(2147483647i, u_input.b.x))) & ~u_input.b;
    global1 = Struct_5(arg_0.b, global1.b);
    global1 = arg_0;
    var var_1 = select(u_input.b.x, 28481i, func_3(Struct_2(0i, Struct_1(27195i), _wgslsmith_div_vec3_f32(vec3<f32>(724f, -1000f, 552f), vec3<f32>(-520f, 517f, 1251f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-484f, -805f, 114f, 472f)))).x || false);
    var_1 = u_input.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.x >> ((_wgslsmith_add_u32(1u, ~(u_input.a.x >> (u_input.a.x % 32u))) & ~_wgslsmith_dot_vec3_u32(~vec3<u32>(98228u, 1u, u_input.a.x), u_input.a.zwx | vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))) % 32u);
    let var_0 = global1.a.a.x;
    var var_1 = func_1(Struct_5(Struct_3(!global1.b.a), global1.a));
    var_1 = global1.b.a.x;
    var var_2 = 798f;
    let var_3 = u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u) << (u_input.a.x % 32u));
}

