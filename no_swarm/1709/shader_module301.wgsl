struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(-46600i, 15693i, -34054i);

var<private> global2: i32;

var<private> global3: vec2<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(304f, 1000f, 1504f, -439f), vec4<f32>(-1340f, -248f, 2340f, -921f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, 309f, -1000f, 197f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, -1249f, 693f, 336f))))))));
    let var_1 = _wgslsmith_mult_u32(abs(u_input.a.x), (u_input.a.x << (u_input.a.x % 32u)) ^ u_input.a.x);
    global1 = u_input.c.xyw;
    global1 = _wgslsmith_add_vec3_i32(u_input.c.zwy, (select(vec3<i32>(u_input.b.x, 0i, global1.x), min(u_input.e.zyy, vec3<i32>(u_input.e.x, 4310i, global1.x)), arg_0.x) | _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-50755i, 2147483647i, 6533i)), min(vec3<i32>(u_input.b.x, global1.x, global1.x), vec3<i32>(global1.x, 2147483647i, -39600i)))) << (vec3<u32>(_wgslsmith_mult_u32(35225u, _wgslsmith_dot_vec3_u32(u_input.a.wxz, u_input.a.zwz)), _wgslsmith_div_u32(firstLeadingBit(var_1), ~27326u), min(abs(var_1), u_input.a.x)) % vec3<u32>(32u)));
    global1 = vec3<i32>(select(~global1.x, 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) < -100f), -u_input.d, abs(-1i));
    return select(u_input.a.zw, u_input.a.zy, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = vec4<bool>(false, global3.x, all(vec3<bool>(global3.x & !global3.x, !arg_2 & false, false)), !arg_2);
    var var_1 = Struct_3(arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1737f, 1426f, -1073f, -1288f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-683f, 882f, -1198f, 101f), vec4<f32>(-1624f, 778f, 634f, 1299f)))))), var_0.yy);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~select(-arg_0, vec3<i32>(16363i, 29426i, global1.x) << (vec3<u32>(u_input.a.x, 61633u, 0u) % vec3<u32>(32u)), var_0.wxw), -vec3<i32>(_wgslsmith_sub_i32(-1i, global1.x), -10840i, 1i)), vec3<i32>(max(1i | var_1.a.b, ~arg_1.x), ~(-var_1.a.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, arg_0.x, var_1.a.a.x), arg_0)) & arg_0);
    var var_3 = Struct_2(vec4<i32>(global1.x, 39227i, select(~max(global1.x, -1i), arg_3.a.x, arg_2), 3713i), arg_3.b);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.a.x)) * _wgslsmith_f_op_f32(-var_1.b.a.x))), 1208f));
    return _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(func_3(!var_0.zyw, arg_1.x == _wgslsmith_mod_i32(arg_0.x, u_input.e.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, ~41196u), vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_mult_u32(88381u, u_input.a.x)))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, u_input.a.x), u_input.a.x | u_input.a.x), ~u_input.a.wyx), 66122u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_add_u32(select(_wgslsmith_dot_vec2_u32(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-45655i, 1i, -2147483647i), vec3<i32>(arg_1.a.b, u_input.e.x, arg_2.a.b)), -vec4<i32>(1i, u_input.c.x, -3717i, 1i), true, arg_2.a), u_input.a.yw), ~143729u, true), 4294967295u);
    var var_1 = u_input.a.wy;
    global3 = select(arg_2.c, !select(arg_2.c, arg_1.c, true), select(select(arg_0, select(vec2<bool>(true, arg_0.x), arg_2.c, false), !select(vec2<bool>(false, arg_0.x), arg_1.c, arg_0.x)), arg_2.c, !(!any(arg_1.c))));
    var var_2 = arg_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.a.x, -938f)) + _wgslsmith_div_f32(603f, -107f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x))))) + arg_2.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, false, global3.x, any(select(!vec4<bool>(global3.x, false, false, true), select(select(vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, true, global3.x, global3.x)), !vec4<bool>(global3.x, false, global3.x, true), select(vec4<bool>(false, true, true, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, true, true, global3.x))), _wgslsmith_f_op_f32(func_1(vec2<bool>(global3.x, global3.x), Struct_3(Struct_2(u_input.b, -44541i), Struct_1(vec4<f32>(397f, -457f, 1107f, 1117f)), vec2<bool>(global3.x, global3.x)), Struct_3(Struct_2(vec4<i32>(u_input.b.x, -28915i, 2147483647i, global1.x), -2147483647i), Struct_1(vec4<f32>(-2004f, -705f, 230f, -569f)), vec2<bool>(false, global3.x)))) == -1674f)));
    global3 = vec2<bool>(all(vec4<bool>(true, all(vec2<bool>(global3.x, global3.x)) | true, all(select(var_0.wz, var_0.yy, true)), any(select(vec2<bool>(global3.x, global3.x), var_0.wx, vec2<bool>(global3.x, var_0.x))))), all(select(var_0.yx, var_0.zw, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x, abs(max(countOneBits(46997u), 1u))), _wgslsmith_f_op_f32(f32(-1f) * -695f), 2608u);
}

