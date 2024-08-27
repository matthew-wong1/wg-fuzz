struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<i32> = vec3<i32>(1i, -17490i, 11587i);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(4294967295u, -280f, 0u, vec2<u32>(1u, 73003u), 1i), Struct_1(70770u, 131f, 4294967295u, vec2<u32>(0u, 4294967295u), -40290i), Struct_1(3584u, 1000f, 4294967295u, vec2<u32>(137819u, 4294967295u), -26449i), Struct_1(2772u, 1000f, 4294967295u, vec2<u32>(120137u, 4294967295u), -3574i), Struct_1(0u, -655f, 0u, vec2<u32>(0u, 14032u), -12462i), Struct_1(4294967295u, -2034f, 1u, vec2<u32>(3490u, 22182u), i32(-2147483648)), Struct_1(130936u, 1603f, 4294967295u, vec2<u32>(38254u, 1u), 24196i), Struct_1(22400u, 249f, 45628u, vec2<u32>(4294967295u, 0u), -1i), Struct_1(1u, 831f, 71580u, vec2<u32>(73488u, 0u), 0i), Struct_1(30985u, 825f, 42390u, vec2<u32>(0u, 0u), -1i), Struct_1(26472u, 310f, 4294967295u, vec2<u32>(59984u, 42453u), -1771i), Struct_1(7300u, 1980f, 0u, vec2<u32>(1u, 28165u), -39427i), Struct_1(4294967295u, -1000f, 1u, vec2<u32>(1u, 31925u), 35730i), Struct_1(64383u, -1391f, 0u, vec2<u32>(4294967295u, 0u), 43204i), Struct_1(1u, -499f, 1u, vec2<u32>(0u, 17219u), i32(-2147483648)));

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    global0 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(global0.x), global0.x), reverseBits(~vec2<u32>(38524u, global0.x))));
    var var_0 = global2[_wgslsmith_index_u32(0u, 15u)];
    global0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.d, ~vec2<u32>(1u, global0.x), var_0.d)), var_0.d);
    let var_1 = Struct_1(countOneBits(min(~1u, 17248u)), arg_0.x, firstLeadingBit(~global0.x), vec2<u32>(~(~(~54455u)), ~var_0.a), ~(~(-firstTrailingBit(u_input.a))));
    global2 = array<Struct_1, 15>();
    return vec2<f32>(-1627f, -1923f);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(trunc(arg_0.b))))), vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * -1422f) + arg_0.b))), arg_0.b));
    global2 = array<Struct_1, 15>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(174f - -266f), 345f);
    var var_3 = global2[_wgslsmith_index_u32(0u, 15u)];
    return 1u;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = -vec2<i32>(countOneBits(u_input.b.x), ~0i);
    let var_1 = 0i;
    let var_2 = -586f;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(select(select(vec4<i32>(var_3.e, var_1, 2147483647i, 398i), vec4<i32>(global1.x, var_1, -43112i, -24710i), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), vec4<i32>(2479i, 0i, 1i, 0i), arg_2), ~(~vec4<i32>(var_3.e, arg_1.e, 2147483647i, 44683i))), firstLeadingBit(vec4<i32>(-12235i, -2147483647i, _wgslsmith_div_i32(var_0.x, var_3.e), 1i << (firstTrailingBit(47049u) % 32u))));
    return ~arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(39038u, global0.x);
    let var_0 = global2[_wgslsmith_index_u32(global0.x, 15u)];
    let var_1 = global2[_wgslsmith_index_u32(4294967295u >> (~func_3(func_1(Struct_1(var_0.c, -303f, global0.x, var_0.d, 2147483647i)), Struct_1(~1u, 202f, global0.x ^ 118973u, vec2<u32>(global0.x, 14012u), i32(-1i) * -1i), true) % 32u), 15u)];
    let var_2 = ~firstTrailingBit(~firstTrailingBit(var_0.e));
    let var_3 = Struct_1(var_0.a << (~var_1.c % 32u), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f - 860f)), !any(vec2<bool>(true, true)))), ~1u, max(max(var_1.d, ~var_1.d >> (var_0.d % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(~var_1.d, ~var_0.d)), ~abs(_wgslsmith_mult_i32(1i, -1i)));
    global0 = vec2<u32>(~_wgslsmith_add_u32(~var_1.d.x, var_3.a), var_1.c);
    let var_4 = 469f;
    var var_5 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2428f, var_1.b, var_0.b) - vec3<f32>(1424f, 1427f, -1000f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(462f, var_3.b, 453f)))))), reverseBits(-select(-vec2<i32>(var_3.e, u_input.a), -vec2<i32>(var_1.e, var_2), true)), ~vec3<u32>(global0.x, ~(6976u & var_1.c), max(countOneBits(4294967295u), 36316u)));
}

