struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, true, true, false));

var<private> global1: bool = true;

var<private> global2: array<f32, 31> = array<f32, 31>(-1632f, 1000f, -1972f, 1408f, -102f, 723f, -607f, -1510f, -1594f, -534f, -147f, 432f, 808f, -1876f, 572f, 3079f, -311f, -1315f, -593f, -1806f, -393f, 435f, -557f, 148f, -332f, -373f, 764f, 580f, 842f, 1457f, 1000f);

var<private> global3: Struct_3;

var<private> global4: array<vec2<u32>, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1347f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1576f, arg_0, arg_0, global2[_wgslsmith_index_u32(15448u, 31u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1370f, arg_0, 321f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-601f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)])))));
    let var_1 = global3.a.xzx;
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.b, arg_0)))), 1000f)), -585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(27836u, 31u)]))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - global2[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(floor(-719f))))))));
    let var_3 = ~(abs(~vec4<u32>(15095u, u_input.b.x, u_input.b.x, u_input.b.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 46503u), vec4<u32>(4294967295u, 32843u, u_input.b.x, 0u))) | ~firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, 33342u, u_input.b.x)));
    var var_4 = select(!vec4<bool>(global0.a.x, any(global0.a.wz), all(vec3<bool>(global3.a.x, arg_1, var_1.x)), var_1.x), vec4<bool>(global3.a.x, var_1.x, all(global0.a.zxw), var_1.x), vec4<bool>(global0.a.x, !all(select(vec4<bool>(arg_1, false, true, arg_1), global3.a, vec4<bool>(false, false, true, var_1.x))), arg_1, select(true, false, true)));
    return u_input.a.x;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mult_vec4_i32(min(-firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a | vec3<i32>(25380i, u_input.a.x, u_input.a.x), ~u_input.a), -31114i, ~reverseBits(u_input.a.x), ~0i)), -vec4<i32>(func_3(global2[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 31u)], select(false, global3.a.x, global3.a.x)), 18231i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(5302i, u_input.a.x, u_input.a.x, 1i))), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 7368i, -1i), -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))));
    var var_1 = -188f;
    let var_2 = Struct_3(!global3.a);
    var_0 = countOneBits(firstTrailingBit(vec4<i32>(0i, u_input.a.x, 2147483647i, -16451i)));
    let var_3 = Struct_3(global0.a);
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1789f))), !var_2.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a << (arg_1.yzy % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(34055i, u_input.a.x, u_input.a.x), -u_input.a), vec3<i32>(u_input.a.x, -u_input.a.x, u_input.a.x | u_input.a.x))), -u_input.a.x, ~func_2());
    global0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_3 * arg_3), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(floor(-1248f))))), -1683f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_3)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))));
    var var_3 = reverseBits(max(~abs(global4[_wgslsmith_index_u32(~4294967295u, 4u)]), min(~(~vec2<u32>(1u, 32325u)), vec2<u32>(u_input.b.x, ~4294967295u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -420f)), _wgslsmith_f_op_f32(step(2473f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-844f, arg_0.a.x))), -529f)), 2435f);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.wz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_0.b, arg_0.a.x, 745f), vec4<f32>(1f, 1f, 1f, 1f), global3.a)), _wgslsmith_f_op_vec4_f32(round(arg_0.a)))), true);
    let var_1 = global3.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))));
    let var_3 = 4294967295u;
    let var_4 = vec3<bool>(any(var_1.xzy), global3.a.x, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1577f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(vec3<bool>(all(!(!global3.a)), -_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(2147483647i, u_input.a.x)) < u_input.a.x, true));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], -917f), vec4<f32>(1501f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(23852u, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), global0.a.x), vec4<u32>(13655u, u_input.b.x, u_input.b.x, 1u), Struct_3(global0.a), vec4<f32>(-682f, -236f, 972f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)])), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)))))), 510f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global2[_wgslsmith_index_u32(54115u, 31u)], var_0.x, _wgslsmith_div_f32(-318f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]))) + vec4<f32>(_wgslsmith_f_op_f32(-func_1(Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(8699u, 31u)], var_0.x), vec4<f32>(781f, var_0.x, 372f, -1541f), global3.a.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, 64624u), Struct_3(vec4<bool>(global3.a.x, true, global3.a.x, false)), vec4<f32>(-570f, 1073f, var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 31u)])).a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<f32>(var_0.x, var_0.x, -1271f, -526f), 325f), vec3<i32>(u_input.a.x, 19047i, 2147483647i))))), 231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f + 673f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 517f, -1468f) + vec4<f32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 31u)], -671f, -1630f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, -1655f, 695f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)])))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], var_0.x, var_0.x, 587f), vec4<f32>(-362f, global2[_wgslsmith_index_u32(16219u, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -510f, var_0.x)), global3.a.x || true))))));
    global4 = array<vec2<u32>, 4>();
    var var_2 = Struct_3(!global3.a);
    global1 = all(vec2<bool>(reverseBits(2147483647i) != _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(-1i, u_input.a.x, -32990i, 2147483647i)), (1u ^ _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) < (38637u << (u_input.b.x % 32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, global2[_wgslsmith_index_u32(0u, 31u)], var_0.x, 2533f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1408f, var_1.x, global2[_wgslsmith_index_u32(0u, 31u)], var_1.x) * vec4<f32>(451f, -686f, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 841f)))))), global2[_wgslsmith_index_u32(2173u, 31u)]);
    global0 = Struct_3(!select(global0.a, vec4<bool>(false, global3.a.x, false, select(var_2.a.x, global3.a.x, false)), any(!global3.a.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, -341f, var_0.x, -628f) - var_3.a) - var_3.a)))), u_input.b.x);
}

