struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-40464i, -15099i);

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(84211i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(23911i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(-1i), Struct_2(-12913i), Struct_2(-1i), Struct_2(62934i), Struct_2(-22266i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = true;
    global0 = _wgslsmith_mod_vec2_i32(countOneBits(u_input.b.xy), abs(abs(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-61972i, arg_0.x), arg_0), vec2<i32>(35731i, 2147483647i)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1002f))), 108f)), global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(17783u, 3008u)), 14u)], u_input.d);
    return Struct_3(_wgslsmith_f_op_f32(abs(1000f)), Struct_2(var_1.b.a), u_input.d);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f - arg_1.a)))) * -569f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1433f)));
    let var_1 = Struct_2(arg_0);
    global1 = array<Struct_2, 14>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1636f);
    var var_2 = _wgslsmith_dot_vec2_i32(~(~max(u_input.b.zz, vec2<i32>(arg_0, 1i))), firstLeadingBit(-(~u_input.b.zz))) & abs(-u_input.b.x);
    return vec4<u32>(u_input.c, 1u & u_input.c, 26333u, 4294967295u ^ arg_1.c.x) >> (arg_1.c % vec4<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global1 = array<Struct_2, 14>();
    global0 = ~(_wgslsmith_clamp_vec2_i32(min(countOneBits(u_input.b.zx), vec2<i32>(arg_1.b.a, -1i)), abs(~u_input.b.zy), -(~u_input.b.yz)) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 49877u), _wgslsmith_mult_vec2_u32(arg_1.c.ww, _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c.x, 1u), vec2<u32>(4294967295u, 1u)))) % vec2<u32>(32u)));
    var var_0 = ~u_input.a;
    var_0 = arg_1.c.wyx;
    var_0 = u_input.a;
    return Struct_1(arg_1.b.a, arg_1.a);
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_4(((reverseBits(arg_0) | 35793u) << (abs(u_input.d.x) % 32u)) ^ firstLeadingBit(u_input.c), Struct_3(563f, Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global0.x), _wgslsmith_div_vec2_i32(u_input.b.xz, vec2<i32>(13875i, u_input.b.x)))), func_3(4875i, func_2(vec2<i32>(global0.x, 1084i)), true, u_input.b.x)));
    var var_1 = vec3<u32>(~arg_0, 1u, u_input.a.x);
    global0 = abs(u_input.b.yy);
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    return 37059u;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec4<f32> {
    global0 = max(vec2<i32>(select(-1i, -u_input.b.x ^ (u_input.b.x & u_input.b.x), arg_2.x), -global0.x), ~(-abs(firstLeadingBit(u_input.b.xy))));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(u_input.b.x << (27809u % 32u)), countOneBits(-11423i)), vec2<i32>(~global0.x, 23063i << ((arg_1.x ^ 87789u) % 32u))) ^ vec2<i32>(-14655i, 21725i);
    let var_0 = vec2<f32>(417f, _wgslsmith_f_op_f32(min(1462f, _wgslsmith_f_op_f32(140f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1724f)))))));
    var var_1 = ~vec3<u32>(arg_0, ~4294967295u, 4532u);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-664f, var_0.x, -381f, -822f) * vec4<f32>(740f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1528f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -998f, -1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1760f, -276f, var_0.x, var_0.x))), select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(false, true, arg_2.x, true)), !vec4<bool>(true, true, arg_2.x, arg_2.x), select(vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x), arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, -450f, 849f, -468f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1251f) + vec4<f32>(2633f, var_0.x, -2018f, var_0.x)))) + vec4<f32>(1333f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(1362f - var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, var_0.x)), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, all(vec2<bool>(true, arg_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1530f, Struct_2(u_input.b.x), ~_wgslsmith_sub_vec4_u32(~u_input.d | u_input.d, vec4<u32>(0u, 23736u, u_input.a.x, 4294967295u)));
    var var_1 = true;
    var var_2 = true;
    let var_3 = Struct_2(countOneBits(~1i));
    var var_4 = _wgslsmith_f_op_vec4_f32(func_5(func_1(5746u), var_0.c, vec2<bool>(any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), !(!any(vec2<bool>(true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), -1946f, func_2(u_input.b.xx).a, -1374f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-871f, var_0.a, var_4.x), var_4.zyy, false)) * _wgslsmith_f_op_vec3_f32(var_4.zzy - vec3<f32>(var_0.a, var_0.a, 1000f)))))), _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_dot_vec2_u32(abs(u_input.d.wz), var_0.c.yw), u_input.d, !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(false, false)))).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, var_0.a, 687f, var_4.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, -492f, 953f, 344f))))), var_4.wx);
}

