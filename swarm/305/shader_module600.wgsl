struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<bool, 27>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(74713u, 1374u, 1u), -29370i, vec2<u32>(98218u, 1u));

var<private> global4: array<i32, 8> = array<i32, 8>(2147483647i, 2147483647i, 1i, 41939i, 0i, -14565i, -11152i, -29580i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    return Struct_1(global3.a, -_wgslsmith_sub_i32(-(~global4[_wgslsmith_index_u32(53316u, 8u)]), -21531i), global3.c);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = func_2();
    global1 = select(!(!select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 27u)], global1.x), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 27u)]), vec2<bool>(false, true)), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 27u)]), global1.x)), !(!vec2<bool>(true, !global1.x)), !any(!select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.c.x, 27u)]), vec2<bool>(false, global1.x), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 27u)], false))));
    let var_1 = Struct_1(~_wgslsmith_mult_vec3_u32(global3.a, vec3<u32>(u_input.b, _wgslsmith_clamp_u32(4294967295u, arg_2.c.x, var_0.c.x), ~70771u)), -17278i, countOneBits(firstTrailingBit(vec2<u32>(32175u, func_2().c.x))));
    var var_2 = max(1u | ~arg_1.a.x, arg_2.c.x);
    var var_3 = select(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.c.x, 27u)], true, true, true)), vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.a.x, 27u)], global2[_wgslsmith_index_u32(var_0.a.x, 27u)], false, global1.x)) | true, false, true, select(global2[_wgslsmith_index_u32(arg_1.a.x, 27u)], true, false)), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global1.x, true, true)), vec4<bool>(global1.x, true, true, all(vec2<bool>(false, false))), !vec4<bool>(global1.x, global1.x, true, global2[_wgslsmith_index_u32(var_1.c.x, 27u)]))), !vec4<bool>(global2[_wgslsmith_index_u32(global3.a.x, 27u)], !global1.x, select(!global1.x, false, global2[_wgslsmith_index_u32(~1u, 27u)]), select(all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_1.a.x, 27u)])), global1.x, false)), !select(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(var_0.c.x, 27u)]), !(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 27u)], false)), select(vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], global1.x, global2[_wgslsmith_index_u32(u_input.b, 27u)], true), global1.x)));
    return any(select(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], true), vec2<bool>(false, var_3.x), global1.x), select(var_3.zx, var_3.yz, true), false), select(!var_3.zy, var_3.zx, vec2<bool>(global2[_wgslsmith_index_u32(arg_1.a.x, 27u)], var_3.x)), false), var_3.xy, all(select(vec4<bool>(var_3.x, true, true, false), vec4<bool>(global1.x, var_3.x, global2[_wgslsmith_index_u32(u_input.b, 27u)], global1.x), vec4<bool>(var_3.x, global1.x, false, global1.x))) == global2[_wgslsmith_index_u32(var_1.a.x, 27u)]));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    global1 = vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], func_3(vec4<i32>(19432i, global3.b, global3.b, -1i), func_2(), arg_1))), select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~42250u, abs(u_input.b)), ~func_2().a.x, select(1u, 57431u, select(true, global2[_wgslsmith_index_u32(u_input.b, 27u)], global1.x))), 27u)], global2[_wgslsmith_index_u32(func_2().a.x, 27u)], !(!global1.x)));
    let var_0 = min(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, -15363i, -105469i)), vec4<i32>(global3.b, arg_1.b, 0i, arg_1.b));
    var var_1 = reverseBits(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(40410u, 8u)], i32(-1i) * -(~global4[_wgslsmith_index_u32(0u, 8u)])));
    var var_2 = arg_1;
    var var_3 = func_2();
    return select(!vec2<bool>(global1.x, true), vec2<bool>(!global1.x, global1.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(select(vec2<bool>(global2[_wgslsmith_index_u32(global3.c.x, 27u)], global2[_wgslsmith_index_u32(global3.a.x, 27u)]), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)]), vec2<bool>(true, true)), vec2<bool>(global2[_wgslsmith_index_u32(18491u, 27u)], global1.x)), select(!vec2<bool>(true, global1.x), func_1(-1000f, Struct_1(vec3<u32>(global3.c.x, 4294967295u, global3.a.x), global4[_wgslsmith_index_u32(u_input.b, 8u)], vec2<u32>(u_input.b, global3.a.x))), vec2<bool>(global1.x, global1.x)), func_1(_wgslsmith_f_op_f32(floor(1588f)), Struct_1(vec3<u32>(58985u, 4294967295u, u_input.b), global3.b, global3.a.yy)).x));
    global1 = !vec2<bool>(true, func_1(_wgslsmith_f_op_f32(-1089f * _wgslsmith_f_op_f32(f32(-1f) * -345f)), Struct_1(abs(vec3<u32>(global3.a.x, 6897u, u_input.a)), global4[_wgslsmith_index_u32(~4294967295u, 8u)], vec2<u32>(global3.a.x, 32790u) ^ vec2<u32>(u_input.b, 29796u))).x);
    var var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(1562f)), 1961f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1377f, 976f), vec2<f32>(-214f, -127f)))))), (~global3.b <= -1i) || (true && (global3.a.x < global3.c.x))))));
    global4 = array<i32, 8>();
    var var_3 = global3.a;
    var_3 = countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(global3.a, global3.a), global3.c.x & var_3.x, ~_wgslsmith_div_u32(u_input.a, 31889u) ^ _wgslsmith_sub_u32(u_input.b, ~u_input.b)));
    var var_4 = any(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 55618u, global3.c.x), vec3<u32>(21377u, 21955u, 15660u)) == ~51410u, global1.x, false, true)) || !(!global1.x);
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(reverseBits(max(vec2<i32>(global4[_wgslsmith_index_u32(0u, 8u)], -1i), ~vec2<i32>(global4[_wgslsmith_index_u32(global3.a.x, 8u)], -65970i))), _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(global3.a.x, 8u)], 28281i), vec2<i32>(global3.b, global4[_wgslsmith_index_u32(var_3.x, 8u)])), ~(vec2<i32>(20540i, global3.b) ^ vec2<i32>(global4[_wgslsmith_index_u32(var_3.x, 8u)], -54375i)))), abs(select(~vec4<u32>(13482u, u_input.b, 47072u, 1u), vec4<u32>(var_3.x, u_input.b, u_input.a | global3.a.x, reverseBits(4294967295u)), global2[_wgslsmith_index_u32(~var_3.x, 27u)])), -3321f, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.a, global3.a.x, 4294967295u), select(vec4<u32>(13047u, u_input.b, 4294967295u, 85590u), vec4<u32>(u_input.b, 0u, var_3.x, 4294967295u), global1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global3.c.x, u_input.a, 101807u, var_3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(8420u, global3.c.x, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.b, 3890u, global3.c.x)))) & (max(_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 1u, global3.c.x, 3707u), vec4<u32>(u_input.b, 59129u, 0u, u_input.a)), ~vec4<u32>(0u, 4294967295u, 0u, 42925u)) & vec4<u32>(global3.a.x, abs(u_input.a), _wgslsmith_dot_vec2_u32(var_3.yy, var_3.xx), ~30408u)));
}

