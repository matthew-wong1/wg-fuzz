struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<i32, 29>;

var<private> global2: array<bool, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    global1 = array<i32, 29>();
    var var_0 = max(abs(abs(abs(select(vec2<u32>(18027u, arg_3), vec2<u32>(u_input.b.x, 4294967295u), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(4628u, 7u)]))))), u_input.b.zz);
    var var_1 = !vec3<bool>(true & ((var_0.x << (arg_3 % 32u)) > _wgslsmith_mod_u32(u_input.b.x, 1u)), (i32(-1i) * -global1[_wgslsmith_index_u32(u_input.b.x, 29u)]) < _wgslsmith_sub_i32(-arg_2.x, arg_2.x), false);
    global0 = array<vec2<bool>, 20>();
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(-arg_0.a.x)), -1300f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.x, u_input.b.x), ~var_0.x), 7u)])))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<i32, 29>();
    global2 = array<bool, 7>();
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), -1192f) - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(arg_2.x, var_1.x, 942f, var_0.e), var_1.x, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(arg_2.ywx - vec3<f32>(var_0.b, var_1.x, 1000f)), _wgslsmith_f_op_f32(var_1.x - arg_2.x)), (57906u < u_input.b.x) || false, select(vec2<i32>(arg_0.c.x, 31522i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c.x, u_input.a.x), vec2<i32>(u_input.a.x, 1i)), arg_0.c.x <= var_0.c.x), abs(firstTrailingBit(u_input.b.x))))), reverseBits(vec2<i32>(0i, -18714i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1194f, arg_2.x, var_1.x), arg_2.zzy, vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 411f, -270f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1441f, 1090f))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.d;
    global2 = array<bool, 7>();
    var var_1 = arg_0;
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_1.b, var_1.d.x, arg_0.a.x)) * _wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 7u)])))))), _wgslsmith_f_op_f32(f32(-1f) * -1449f), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(18556i, -20528i)), var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-294f, var_1.d.x, 1187f) + arg_0.a.yzw))), _wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))))), global2[_wgslsmith_index_u32(2040u, 7u)], vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - -466f) + _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 873f) * _wgslsmith_f_op_f32(ceil(-1702f))), _wgslsmith_div_f32(arg_0.b, arg_0.b)));
    global1 = array<i32, 29>();
    return func_2(func_2(arg_0, global2[_wgslsmith_index_u32(~448u, 7u)], var_2.a), -1346f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -101f)) * _wgslsmith_f_op_f32(var_1.e + _wgslsmith_f_op_f32(abs(var_1.e)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, vec4<bool>(global2[_wgslsmith_index_u32(47058u, 7u)], true, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(62919u, 7u)]))))), _wgslsmith_f_op_vec4_f32(-var_2.a), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec2<bool>, 20>();
    let var_0 = _wgslsmith_mult_vec3_i32(countOneBits(firstLeadingBit(~(vec3<i32>(arg_1.c.x, arg_3.x, -2147483647i) & arg_3))), vec3<i32>(-1i, _wgslsmith_sub_i32(1i, -_wgslsmith_add_i32(arg_2.c.x, 62725i)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~u_input.b.x, 29u)], i32(-1i) * -14000i)));
    global0 = array<vec2<bool>, 20>();
    var var_1 = Struct_1(vec4<f32>(-2103f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, arg_1.e) * arg_2.e)), _wgslsmith_f_op_f32(-arg_1.e)), -358f, arg_3.yy, arg_1.a.yxz, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(439f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 7u)], vec2<i32>(var_1.c.x, 31621i) >> (u_input.b.xx % vec2<u32>(32u)), 1u | u_input.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + var_1.a.x) + arg_1.a.x)) * 512f), vec2<i32>(36073i, arg_3.x), func_1(arg_1).a.xwz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + arg_2.d.x), _wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1214f * arg_0.x), _wgslsmith_f_op_f32(-var_1.b))) * -633f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(round(var_1.b)), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * func_1(arg_2).b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-277f - _wgslsmith_f_op_f32(ceil(670f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(933f * -1000f))), -1431f)), vec3<f32>(835f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-439f + -1000f), _wgslsmith_f_op_f32(-376f + -609f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f - -1118f)))));
    global2 = array<bool, 7>();
    global0 = array<vec2<bool>, 20>();
    let var_1 = abs(_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(19885u, 29u)], 1i, 1i, 62166i) | vec4<i32>(-1i, 1i, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], -58485i), select(vec4<i32>(1650i, 0i, 2147483647i, global1[_wgslsmith_index_u32(1u, 29u)]), vec4<i32>(u_input.a.x, 37896i, 2147483647i, 55548i), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)]))), abs(-abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 0i, u_input.a.x, global1[_wgslsmith_index_u32(10571u, 29u)])))));
    global1 = array<i32, 29>();
    global2 = array<bool, 7>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_4(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + -1168f), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(-766f, var_0.x)), Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_f32(round(1545f)), var_1.xy, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1611f, -484f) - vec3<f32>(-1000f, var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(var_0.x))), func_1(Struct_1(vec4<f32>(231f, -293f, var_0.x, var_0.x), -346f, vec2<i32>(var_1.x, -1i), vec3<f32>(var_0.x, var_0.x, 1000f), var_0.x)), var_1.yzy)), var_0.x, _wgslsmith_f_op_f32(1f * -1000f)), vec3<f32>(_wgslsmith_f_op_f32(func_1(func_1(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, 2182f), 2180f, u_input.a, vec3<f32>(var_0.x, 333f, -1095f), var_0.x))).a.x + var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * 582f), _wgslsmith_f_op_f32(exp2(var_0.x)), any(vec2<bool>(global2[_wgslsmith_index_u32(8175u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)])))), 328f)), 1425f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, var_1.x, -1335f);
}

