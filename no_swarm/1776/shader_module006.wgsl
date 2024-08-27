struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<Struct_1, 31>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(4058i, vec4<bool>(true, false, true, true), Struct_1(0u, vec4<bool>(false, false, false, false), vec3<i32>(2147483647i, -1i, -55735i), 13738u, vec3<u32>(65486u, 55986u, 30315u)), true), Struct_2(-1i, vec4<bool>(false, true, false, false), Struct_1(1u, vec4<bool>(true, true, false, false), vec3<i32>(i32(-2147483648), 2147483647i, 74192i), 80746u, vec3<u32>(4294967295u, 1u, 1u)), false), Struct_2(29198i, vec4<bool>(false, false, false, true), Struct_1(4294967295u, vec4<bool>(false, false, false, true), vec3<i32>(10091i, -43676i, 2147483647i), 4294967295u, vec3<u32>(4294967295u, 4366u, 1u)), true), Struct_2(-1i, vec4<bool>(true, true, true, false), Struct_1(4294967295u, vec4<bool>(false, false, true, true), vec3<i32>(-1i, -1177i, -1i), 51546u, vec3<u32>(0u, 122225u, 4294967295u)), true), Struct_2(4097i, vec4<bool>(true, false, false, true), Struct_1(0u, vec4<bool>(false, false, false, true), vec3<i32>(-35682i, 17357i, 2147483647i), 13592u, vec3<u32>(1102u, 1u, 0u)), true), Struct_2(0i, vec4<bool>(false, false, false, true), Struct_1(14827u, vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, 0i, 0i), 32121u, vec3<u32>(84819u, 1u, 0u)), true), Struct_2(1i, vec4<bool>(true, true, true, false), Struct_1(0u, vec4<bool>(false, true, false, false), vec3<i32>(16526i, -16681i, i32(-2147483648)), 68681u, vec3<u32>(49417u, 11838u, 2102u)), true), Struct_2(-55170i, vec4<bool>(false, false, false, false), Struct_1(17536u, vec4<bool>(false, false, true, true), vec3<i32>(-1i, 8618i, -22627i), 14924u, vec3<u32>(4294967295u, 1u, 79210u)), false), Struct_2(0i, vec4<bool>(true, true, true, true), Struct_1(4941u, vec4<bool>(true, true, false, true), vec3<i32>(22398i, -25634i, -81882i), 4294967295u, vec3<u32>(1u, 1u, 3475u)), false), Struct_2(29501i, vec4<bool>(true, true, false, true), Struct_1(16054u, vec4<bool>(false, true, true, false), vec3<i32>(i32(-2147483648), -44340i, 16018i), 1u, vec3<u32>(0u, 73347u, 0u)), false), Struct_2(i32(-2147483648), vec4<bool>(false, true, false, true), Struct_1(0u, vec4<bool>(true, false, true, true), vec3<i32>(-3460i, 23203i, 11965i), 1u, vec3<u32>(1u, 16220u, 0u)), true), Struct_2(12753i, vec4<bool>(true, true, false, false), Struct_1(37031u, vec4<bool>(false, true, true, false), vec3<i32>(27933i, -51144i, -8323i), 1u, vec3<u32>(1u, 93066u, 75088u)), false), Struct_2(0i, vec4<bool>(false, true, false, true), Struct_1(4294967295u, vec4<bool>(false, true, false, false), vec3<i32>(-19963i, -38119i, -1i), 4294967295u, vec3<u32>(11756u, 4294967295u, 67773u)), false), Struct_2(1i, vec4<bool>(true, false, true, true), Struct_1(19701u, vec4<bool>(false, true, false, true), vec3<i32>(9639i, 6106i, i32(-2147483648)), 131203u, vec3<u32>(1u, 1u, 9180u)), true), Struct_2(2147483647i, vec4<bool>(false, false, false, false), Struct_1(37903u, vec4<bool>(false, false, false, false), vec3<i32>(-1i, 2147483647i, 1i), 0u, vec3<u32>(84125u, 18367u, 31012u)), true), Struct_2(28162i, vec4<bool>(true, false, true, false), Struct_1(14837u, vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 85980u, vec3<u32>(1u, 4294967295u, 4294967295u)), true), Struct_2(2147483647i, vec4<bool>(false, true, false, false), Struct_1(18726u, vec4<bool>(false, false, true, false), vec3<i32>(-34964i, 1i, -1i), 31680u, vec3<u32>(4294967295u, 4294967295u, 0u)), false), Struct_2(299i, vec4<bool>(false, true, true, true), Struct_1(1919u, vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, -1i, 11341i), 4294967295u, vec3<u32>(2727u, 10622u, 27991u)), false), Struct_2(41437i, vec4<bool>(true, false, false, true), Struct_1(25434u, vec4<bool>(false, false, false, true), vec3<i32>(1628i, 1i, 1i), 1u, vec3<u32>(1u, 4415u, 4294967295u)), false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(~reverseBits(arg_0), select(select(arg_2.c.e, vec3<u32>(60864u, global0.d, 20708u), !global3.b.x), vec3<u32>(~0u, 11629u, global0.d), !select(global3.b.wxx, global3.b.xww, arg_2.c.b.x))), select(vec4<bool>(false, ~arg_0.x >= arg_2.c.d, false, false), select(vec4<bool>(true, true, false, false), select(select(arg_2.b, arg_2.c.b, vec4<bool>(true, arg_2.d, true, global3.d)), select(global0.b, vec4<bool>(false, arg_2.c.b.x, false, arg_2.d), false), !global0.b.x), vec4<bool>(any(vec3<bool>(false, true, false)), all(global0.b), global0.b.x, true)), vec4<bool>(false, any(global0.b.wy), false, !(!arg_2.d))), vec3<i32>(~arg_2.a >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(72534u, global0.d), vec2<u32>(u_input.c.x, 1u))) % 32u), _wgslsmith_add_i32(arg_1.x, -3517i), -44366i), 0u, vec3<u32>(~abs(0u >> (0u % 32u)), 13915u ^ ~arg_2.c.a, _wgslsmith_mult_u32(52485u, abs(firstLeadingBit(34540u)))));
    let var_0 = vec3<i32>(arg_1.x, -1i, _wgslsmith_mult_i32(firstTrailingBit(arg_1.x), global3.c.c.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 58204u, arg_0.x), vec3<u32>(4294967295u, ~countOneBits(1u), ~global3.c.a), ~countOneBits(global3.c.e)) % vec3<u32>(32u));
    let var_1 = true;
    global1 = global3.d;
    global3 = arg_2;
    return -1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_2 {
    global3 = global4[_wgslsmith_index_u32(12505u, 19u)];
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(-39414i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(4985i, 82243i), global3.c.c.yy) & -2147483647i), 51082i, _wgslsmith_mult_i32(-countOneBits(_wgslsmith_clamp_i32(global3.c.c.x, global3.c.c.x, -2147483647i)), func_3(~vec3<u32>(arg_0.x, 1u, 4294967295u), _wgslsmith_mod_vec4_i32(max(vec4<i32>(-1i, global3.a, 51683i, -43555i), vec4<i32>(global3.c.c.x, global0.c.x, global3.a, -2147483647i)), firstLeadingBit(vec4<i32>(global0.c.x, global0.c.x, u_input.a.x, global3.a))), Struct_2(global0.c.x, global0.b, global3.c, all(global0.b.wz)))), ~0i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-347f)) * _wgslsmith_f_op_f32(-572f * arg_1.x))))), arg_1.x, 194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))) + arg_1.x)));
    let var_2 = global0.b.x;
    var var_3 = any(!global0.b.wxx);
    return Struct_2(global3.c.c.x | -var_0.x, !(!select(global0.b, !global3.b, global3.b.x)), Struct_1(~abs(select(arg_2.x, arg_0.x, global3.d)), global0.b, var_0.wxz, 3434u, vec3<u32>(reverseBits(~26403u), arg_2.x, ~1u)), true);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = abs(~firstLeadingBit(~vec3<u32>(18726u, u_input.d, arg_1.d)));
    global3 = func_2(~abs(vec3<u32>(36188u, global0.d | 96472u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, u_input.d, u_input.c.x), vec3<u32>(0u, 4294967295u, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -392f), u_input.c.wwy);
    let var_1 = func_2(~select(global3.c.e, func_2(u_input.c.yww, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1017f), vec2<f32>(1042f, -539f), true)), global0.e).c.e, any(global3.c.b) && any(vec3<bool>(arg_1.b.x, arg_1.b.x, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))), arg_1.c.x >= -2147483647i))))), vec3<u32>(reverseBits(1u), 0u, 4294967295u));
    var var_2 = func_2(global3.c.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(673f, arg_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -147f), vec2<f32>(arg_0, 1000f), true)))))), global0.e);
    var var_3 = 1u;
    return u_input.c.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    global3 = func_2(~max(global3.c.e, max(global0.e, func_2(vec3<u32>(global3.c.e.x, 30188u, 10271u), vec2<f32>(276f, -408f), vec3<u32>(40296u, arg_3.c.d, arg_3.c.a)).c.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-326f, -1623f, true))))), vec3<u32>(~(arg_0.x >> (u_input.c.x % 32u)) & _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(arg_0.x, 33282u, 1u, 4294967295u)), ~_wgslsmith_div_u32(arg_2.x, 1u), 95209u));
    global1 = any(!(!global0.b.xy)) && !select(true, select(global3.d, false, !global3.c.b.x), true);
    global4 = array<Struct_2, 19>();
    global1 = false;
    global3 = func_2(min(firstTrailingBit(~global0.e), vec3<u32>(~arg_2.x, _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_add_u32(arg_2.x, 1u))) & _wgslsmith_sub_vec3_u32(~(global3.c.e | vec3<u32>(u_input.d, arg_2.x, arg_2.x)), select(arg_3.c.e | arg_3.c.e, global3.c.e, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-673f * -1410f))), _wgslsmith_f_op_f32(f32(-1f) * -1070f))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3.c.e, _wgslsmith_mult_vec3_u32(global3.c.e, arg_0)) ^ _wgslsmith_clamp_vec3_u32(~arg_3.c.e, u_input.c.yxy, ~global0.e), ~(vec3<u32>(1u, arg_0.x, 4158u) & vec3<u32>(global3.c.e.x, 1u, arg_0.x)) << (firstTrailingBit(vec3<u32>(arg_3.c.a, 3065u, global3.c.d)) % vec3<u32>(32u))));
    return firstLeadingBit(-30952i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= _wgslsmith_f_op_f32(1895f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(104f - 1000f), _wgslsmith_f_op_f32(-1847f * -873f)) * vec2<f32>(-469f, _wgslsmith_f_op_f32(select(367f, -1931f, global3.c.b.x)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(1658f)), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, 126f) + vec2<f32>(595f, 487f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 335f), vec2<f32>(-430f, -453f), vec2<bool>(true, global3.d))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.d, u_input.d, 52840u), u_input.a, func_4(~vec3<u32>(func_1(-1606f, global2[_wgslsmith_index_u32(0u, 31u)], global0.b.x), 75038u >> (u_input.d % 32u), _wgslsmith_sub_u32(u_input.d, 4294967295u)), global0.c.zx, ~vec2<u32>(1u, 1u), global4[_wgslsmith_index_u32(~4294967295u, 19u)]), countOneBits(~vec2<u32>(u_input.c.x, _wgslsmith_add_u32(7260u, global0.d))));
}

