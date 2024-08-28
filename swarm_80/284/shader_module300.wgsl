struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: array<i32, 2> = array<i32, 2>(1i, 18714i);

var<private> global3: vec3<i32>;

var<private> global4: vec4<u32> = vec4<u32>(1u, 4294967295u, 10030u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_2 {
    var var_0 = global4.x;
    var var_1 = global0.c;
    let var_2 = global4.wwy;
    let var_3 = u_input.a.x;
    return Struct_2(true, global0.b, global0.c, i32(-1i) * -global3.x);
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    global4 = vec4<u32>(52789u, reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, abs(4294967295u) >> (u_input.a.x % 32u))), ~(~_wgslsmith_mult_u32(global4.x, abs(global0.c.b.x))), 60448u);
    var var_0 = countOneBits(vec3<i32>(_wgslsmith_sub_i32(-1i, firstTrailingBit(_wgslsmith_add_i32(global0.d, -1i))), _wgslsmith_sub_i32(global3.x, 3258i << (0u % 32u)) >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(~global3.xy, reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global4.x, 2u)], 0i), vec2<i32>(u_input.b, 0i))))));
    let var_1 = arg_0.zw;
    var var_2 = _wgslsmith_sub_i32(countOneBits(global2[_wgslsmith_index_u32(~0u, 2u)]) ^ (_wgslsmith_dot_vec3_i32(-vec3<i32>(global3.x, 33515i, var_0.x), select(vec3<i32>(global3.x, 1i, 0i), vec3<i32>(var_0.x, global3.x, global3.x), global0.b)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(30205i, 52275i), _wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(23927u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<i32>(global3.x, u_input.b)))), select(-309i, ~reverseBits(firstLeadingBit(-43291i)), global0.b.x));
    global0 = func_1();
    return vec2<f32>(-239f, _wgslsmith_f_op_f32(round(var_1.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_3 {
    global1 = array<vec4<u32>, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-822f, -456f))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1088f, 539f, -1870f, 942f) * vec4<f32>(407f, 498f, 522f, 740f)))))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))));
    var var_1 = arg_0;
    let var_2 = Struct_3(~global4.x, _wgslsmith_dot_vec2_i32(max(global3.zz, global3.xz), arg_2.wx));
    global0 = arg_1;
    return Struct_3((_wgslsmith_clamp_u32(~4294967295u, ~arg_1.c.b.x, global4.x) >> (~global0.c.b.x % 32u)) | arg_1.c.b.x, -2147483647i);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, 1i ^ _wgslsmith_sub_i32(arg_2.b, firstLeadingBit(1i))), -abs(reverseBits(select(vec3<i32>(u_input.b, 56440i, 0i), vec3<i32>(2147483647i, global3.x, global3.x), global0.b))));
    let var_1 = 1u;
    global2 = array<i32, 2>();
    var var_2 = func_1();
    let var_3 = 21694u;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(any(!vec2<bool>(false, global0.a)), global0.b, global0.c, 2147483647i), func_4(!global0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(819f, 980f, 426f, 128f), vec4<f32>(-145f, 1214f, 299f, 2016f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(971f, -258f, 1222f, -244f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, -271f, -563f, 1000f)), true))), func_2(global0.c.b.x, func_1(), _wgslsmith_mult_vec4_i32(~vec4<i32>(global3.x, -7934i, global3.x, 39125i), vec4<i32>(1052i, u_input.b, 31562i, 1i))), global0.c));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(func_1().c.b.x, select(~1u, _wgslsmith_mod_u32(global0.c.b.x, 8412u), any(var_0.a.b.yy)) ^ var_0.b.a), 50443u, u_input.a.x);
    let var_2 = u_input.a.wx;
    let var_3 = var_0;
    let var_4 = var_3;
    var var_5 = global0.b.x;
    let var_6 = func_1().c;
    let var_7 = func_1().c;
    global2 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(372f + _wgslsmith_f_op_f32(f32(-1f) * -1498f)));
}

