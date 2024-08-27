struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
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

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<f32, 4> = array<f32, 4>(-1556f, -988f, 1910f, -731f);

var<private> global2: vec2<f32> = vec2<f32>(1253f, -664f);

var<private> global3: i32 = 64206i;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 4>();
    var var_0 = Struct_1(1i, global4.zx);
    global0 = array<Struct_2, 12>();
    return Struct_2(select(~(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 1i, -42088i), vec3<i32>(var_0.a, 2147483647i, var_0.a))), select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-20941i, -2147483647i), vec2<i32>(var_0.a, 21235i)), min(-101784i, var_0.a), _wgslsmith_mod_i32(var_0.a, var_0.a)), vec3<i32>(-2147483647i, reverseBits(36962i), var_0.a), global4.zyx), !select(select(global4.yyy, vec3<bool>(false, global4.x, var_0.b.x), global4.x), global4.xyy, vec3<bool>(var_0.b.x, global4.x, global4.x))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = (u_input.a.x | _wgslsmith_dot_vec2_u32(reverseBits(min(vec2<u32>(arg_2.x, 38203u), vec2<u32>(u_input.a.x, 59348u))), ~(vec2<u32>(u_input.b, arg_2.x) & vec2<u32>(u_input.a.x, u_input.a.x)))) >= 17451u;
    return Struct_1(~arg_0, vec2<bool>(global4.x != all(vec4<bool>(false, true, global4.x, global4.x)), !any(!vec4<bool>(global4.x, false, true, global4.x))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_2, 12>();
    return Struct_2(firstTrailingBit(select(vec3<i32>(_wgslsmith_mult_i32(-7401i, arg_0.a), -2147483647i, 32200i), vec3<i32>(arg_0.a, arg_0.a & 39956i, countOneBits(39271i)), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_1))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = max(arg_0.a.yz, arg_1.a.xx);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x >> (~1u % 32u), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * _wgslsmith_f_op_f32(min(766f, 561f))))));
    let var_2 = func_2(func_2(countOneBits(_wgslsmith_dot_vec2_i32(arg_1.a.zz, vec2<i32>(-2147483647i, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_1.x, _wgslsmith_f_op_f32(floor(-1578f)), _wgslsmith_f_op_f32(floor(1000f)))), select(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)), vec4<u32>(~1u, 1u, _wgslsmith_add_u32(50868u, 65601u), ~46238u), !global4.x)).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31163u, 4u)] - -1744f), _wgslsmith_div_f32(1000f, var_1.x), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(86330u, 4u)], global2.x), _wgslsmith_div_f32(1000f, global1[_wgslsmith_index_u32(1u, 4u)])) + vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, -224f, -974f, global2.x) - vec4<f32>(3056f, var_1.x, global1[_wgslsmith_index_u32(1u, 4u)], 427f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -273f, 890f, global1[_wgslsmith_index_u32(1u, 4u)]), vec4<f32>(-651f, 147f, 376f, global2.x)))))), ~u_input.a);
    global1 = array<f32, 4>();
    var var_3 = arg_0;
    return !vec4<bool>(true, !all(vec4<bool>(global4.x, global4.x, false, var_2.b.x)), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-vec3<i32>(1i, 1i, 1i));
    let var_1 = func_1();
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    global0 = array<Struct_2, 12>();
    let var_2 = func_4(func_3(func_2(-12519i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1013f, 1513f, global1[_wgslsmith_index_u32(4294967295u, 4u)], global2.x), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], 403f, global2.x, global2.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 108f, global2.x, 2001f)))), ~u_input.a << ((u_input.a << (vec4<u32>(0u, 17565u, 4294967295u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), !global4.x, select(abs(firstTrailingBit(u_input.a)), u_input.a, !select(vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(global4.x, global4.x, true, true)))), Struct_2(var_1.a));
    global0 = array<Struct_2, 12>();
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, -875f), vec2<f32>(1000f, global1[_wgslsmith_index_u32(0u, 4u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(216f, 1384f), vec2<f32>(2004f, -1785f), var_2.x)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global1[_wgslsmith_index_u32(4048u, 4u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-756f, global1[_wgslsmith_index_u32(56349u, 4u)]), _wgslsmith_div_vec2_f32(vec2<f32>(-571f, global1[_wgslsmith_index_u32(104114u, 4u)]), vec2<f32>(global2.x, global2.x)), all(var_2.yw)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-662f, global2.x), vec2<f32>(2851f, -1510f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(281f, 239f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -383f) * vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(45316u, 4u)])))))))));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, _wgslsmith_clamp_vec3_i32(-var_1.a, vec3<i32>(countOneBits(~var_1.a.x), var_0.a.x, var_1.a.x), vec3<i32>(-(-2147483647i ^ var_0.a.x), _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(2147483647i, var_0.a.x)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.a.x, 2147483647i), ~var_1.a.x))), -277f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(43188u, 4u)], _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(798f, global1[_wgslsmith_index_u32(50963u, 4u)])))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1750f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), -1933f, -1133f, _wgslsmith_f_op_f32(1484f + 371f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.x, global1[_wgslsmith_index_u32(35129u, 4u)])), 1139f))));
}

