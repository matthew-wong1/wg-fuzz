struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(1u, 44050u, 4294967295u, 32325u, 9117u, 1u, 1u, 1u, 24998u, 1u, 0u, 1u, 5107u, 8422u, 0u, 806u, 32510u, 1u, 49615u, 1u, 19026u);

var<private> global1: f32;

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(361f, arg_1), vec2<f32>(arg_1, arg_1), arg_0.a.a)))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -509f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 375f))))), arg_0.a, arg_0.a, -1306f, Struct_2(Struct_1(true, -21061i))), !(!(!(!vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a)))), Struct_2(Struct_1(!arg_0.a.a, _wgslsmith_clamp_i32(2147483647i, 74541i, -2147483647i) ^ -3107i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, -1737f, 1000f) - vec3<f32>(arg_1, 426f, arg_1))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-334f, -741f, 427f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(142f, arg_1, arg_1))))))));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), -314f), Struct_1(var_0.b.x | true, -6710i), Struct_1(all(!select(var_0.b.yz, var_0.b.yy, false)), _wgslsmith_sub_i32(2147483647i, arg_0.a.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2633f))))), Struct_2(arg_0.a));
    let var_2 = abs(vec4<i32>(31650i, _wgslsmith_div_i32(arg_0.a.b, ~0i), i32(-1i) * -u_input.e.x, _wgslsmith_div_i32(arg_0.a.b, _wgslsmith_sub_i32(43616i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a.b), u_input.c.wz)))));
    global2 = array<Struct_2, 32>();
    let var_3 = global2[_wgslsmith_index_u32(~min(abs(~22943u), 30750u), 32u)];
    return min(vec3<u32>(firstTrailingBit(~113180u), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a | 0u, arg_2 >> (33024u % 32u)), 21u)], _wgslsmith_div_u32(countOneBits(59688u), _wgslsmith_add_u32(u_input.a, 4294967295u))), (firstTrailingBit(vec3<u32>(52715u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 21u)])) << (vec3<u32>(firstLeadingBit(2303u), u_input.a, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(115372u, 21u)])) % vec3<u32>(32u))) << (firstTrailingBit(vec3<u32>(1u >> (global0[_wgslsmith_index_u32(arg_2, 21u)] % 32u), ~0u, 19637u & global0[_wgslsmith_index_u32(14309u, 21u)])) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_4 {
    global2 = array<Struct_2, 32>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(~u_input.a, 58298u) >> (reverseBits(u_input.a) % 32u), 108124u | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(45317u, 21u)]), func_3(Struct_2(arg_0), _wgslsmith_f_op_f32(1028f + -734f), u_input.a & u_input.a, countOneBits(vec4<u32>(39945u, 87112u, 0u, 1u))))), 32u)];
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(531f, -742f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1163f, -180f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1858f), _wgslsmith_f_op_f32(-169f * 613f)))), var_0.a, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -622f))))), Struct_2(arg_0));
    let var_2 = var_1;
    var var_3 = ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(~1u, 2268u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 43307u), 21u)], ~0u)), firstTrailingBit(min(~vec4<u32>(u_input.a, 32886u, global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a), vec4<u32>(0u, 15419u, global0[_wgslsmith_index_u32(0u, 21u)], 32265u))));
    return Struct_4(var_1, !vec3<bool>(!var_0.a.a, var_2.c.a, true), Struct_2(Struct_1(any(vec2<bool>(false, var_2.b.a)) && all(arg_1.wy), var_1.c.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -549f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - 458f)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> Struct_3 {
    global0 = array<u32, 21>();
    let var_0 = func_2(arg_1, select(!vec4<bool>(!arg_1.a, arg_2.b.a, true, true), select(select(!vec4<bool>(arg_2.e.a.a, false, arg_2.c.a, false), vec4<bool>(arg_2.e.a.a, arg_1.a, false, arg_2.b.a), !arg_1.a), vec4<bool>(true, arg_1.a, false, false & arg_2.e.a.a), vec4<bool>(any(arg_3.b), arg_2.e.a.a, !arg_2.c.a, arg_3.a.c.a)), !select(vec4<bool>(false, false, false, true), !vec4<bool>(false, true, arg_3.c.a.a, arg_1.a), vec4<bool>(arg_1.a, false, arg_2.e.a.a, false))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2247f, arg_3.a.a.x)))), Struct_1(arg_1.a, _wgslsmith_mult_i32(arg_0, (i32(-1i) * -81747i) & _wgslsmith_div_i32(2147483647i, arg_1.b))), func_2(func_2(func_2(func_2(Struct_1(false, 72084i), vec4<bool>(var_0.a.b.a, false, true, true)).a.c, select(vec4<bool>(arg_1.a, false, true, var_0.c.a.a), vec4<bool>(true, false, arg_1.a, true), vec4<bool>(arg_2.e.a.a, true, arg_1.a, var_0.b.x))).c.a, select(!vec4<bool>(arg_1.a, arg_2.c.a, arg_2.b.a, false), !vec4<bool>(var_0.b.x, arg_1.a, arg_3.a.b.a, false), select(vec4<bool>(arg_3.b.x, arg_2.c.a, false, false), vec4<bool>(false, arg_1.a, true, false), vec4<bool>(arg_1.a, var_0.c.a.a, arg_2.e.a.a, false)))).a.c, select(vec4<bool>(true, any(vec4<bool>(arg_1.a, var_0.a.e.a.a, true, arg_3.a.c.a)), !arg_1.a, !arg_3.a.e.a.a), !select(vec4<bool>(false, arg_1.a, false, true), vec4<bool>(false, false, true, arg_3.a.c.a), arg_2.e.a.a), true)).a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f), var_0.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(var_0.a.d * arg_3.d.x))))), func_2(func_2(func_2(arg_3.c.a, select(vec4<bool>(true, true, arg_1.a, var_0.a.c.a), vec4<bool>(var_0.a.e.a.a, arg_3.c.a.a, var_0.c.a.a, arg_3.a.c.a), var_0.c.a.a)).c.a, vec4<bool>(!arg_3.b.x, arg_3.b.x, all(vec4<bool>(true, false, false, arg_3.a.e.a.a)), arg_2.e.a.a)).a.e.a, vec4<bool>(var_0.b.x, var_0.b.x, true, arg_1.a)).a.e);
}

fn func_5(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -865f);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(19392i, arg_0.c.b), vec2<i32>(arg_0.e.a.b, u_input.d.x)), u_input.c.xw << (vec2<u32>(global0[_wgslsmith_index_u32(12666u, 21u)], 0u) % vec2<u32>(32u))), arg_0.b.b, arg_0.c.b), u_input.c.xzw);
    var var_2 = select(!select(select(!vec4<bool>(true, arg_0.b.a, arg_0.c.a, arg_0.b.a), vec4<bool>(true, true, false, arg_0.b.a), arg_0.b.a), vec4<bool>(all(vec2<bool>(arg_0.c.a, true)), u_input.a <= u_input.a, true, arg_0.c.a), select(!vec4<bool>(arg_0.e.a.a, arg_0.b.a, arg_0.b.a, false), select(vec4<bool>(true, arg_0.c.a, arg_0.c.a, arg_0.c.a), vec4<bool>(arg_0.b.a, arg_0.c.a, false, false), arg_0.b.a), !vec4<bool>(true, arg_0.b.a, false, true))), !vec4<bool>(all(select(vec3<bool>(true, arg_0.e.a.a, false), vec3<bool>(arg_0.e.a.a, arg_0.e.a.a, arg_0.e.a.a), arg_0.b.a)), arg_0.c.a, !arg_0.b.a & all(vec4<bool>(arg_0.e.a.a, false, true, arg_0.e.a.a)), arg_0.c.a), !vec4<bool>(!arg_0.c.a, arg_0.b.a, true, func_4(u_input.b, Struct_1(arg_0.c.a, 60245i), Struct_3(arg_0.a, arg_0.e.a, arg_0.b, -279f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 32u)]), Struct_4(arg_0, vec3<bool>(arg_0.c.a, arg_0.b.a, arg_0.b.a), Struct_2(arg_0.b), vec3<f32>(arg_0.a.x, arg_0.a.x, 821f))).b.a));
    var var_3 = ~firstTrailingBit(1u) >> (0u % 32u);
    global2 = array<Struct_2, 32>();
    return min(4294967295u, countOneBits(~u_input.a));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = arg_0.x;
    let var_1 = vec4<u32>(func_5(func_4(1i, Struct_1(false, -2147483647i), Struct_3(vec2<f32>(arg_0.x, 738f), Struct_1(true, arg_3.x), Struct_1(arg_1.a, arg_3.x), 1188f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 32u)]), func_2(Struct_1(arg_2.c.a.a, arg_1.b), vec4<bool>(true, false, true, arg_1.a)))), 37798u, ~(~(~u_input.a)), _wgslsmith_clamp_u32(abs(select(global0[_wgslsmith_index_u32(17874u, 21u)], 30926u, arg_2.c.a.a)), ~(~u_input.a), 4294967295u)) | _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 21u)] << (u_input.a % 32u), global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 21u)], 5433u))), vec4<u32>(_wgslsmith_clamp_u32(abs(global0[_wgslsmith_index_u32(1u, 21u)]), 1u, firstLeadingBit(35210u)), _wgslsmith_add_u32(~49289u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52783u, 21u)], 21u)], 98915u, global0[_wgslsmith_index_u32(22919u, 21u)]), 21u)]), _wgslsmith_mult_u32(func_5(Struct_3(vec2<f32>(arg_0.x, arg_0.x), arg_1, arg_2.a.e.a, -1000f, global2[_wgslsmith_index_u32(u_input.a, 32u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13958u, 21u)], 21u)], 21u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)]), ~(~1u)));
    global0 = array<u32, 21>();
    var var_2 = -809f;
    var_0 = arg_0.x;
    return vec4<bool>(!(arg_1.a || false), true, true, all(select(vec3<bool>(true, arg_1.a, select(true, arg_1.a, false)), func_2(Struct_1(false, -1i), vec4<bool>(arg_1.a, arg_1.a, true, true)).b, arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1f;
    var var_0 = Struct_2(Struct_1(true, u_input.e.x));
    var var_1 = select(u_input.d.ww | u_input.e, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(min(37972i, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b, 17287i, 0i, var_0.a.b), vec4<i32>(-1i, u_input.b, var_0.a.b, -18889i))), ~(-u_input.c.xz)), i32(-1i) * -1i), !vec2<bool>(var_0.a.a, (var_0.a.a && var_0.a.a) | true));
    var var_2 = any(vec2<bool>(any(select(!vec4<bool>(var_0.a.a, true, true, false), func_1(vec3<f32>(-137f, -1584f, 458f), Struct_1(var_0.a.a, var_0.a.b), Struct_4(Struct_3(vec2<f32>(-129f, -803f), var_0.a, var_0.a, -297f, Struct_2(var_0.a)), vec3<bool>(var_0.a.a, true, var_0.a.a), Struct_2(var_0.a), vec3<f32>(-992f, 727f, -1061f)), vec2<i32>(-1i, 0i)), true)), all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))))), vec3<u32>(reverseBits(~56437u) >> (~(u_input.a ^ 1u) % 32u), 1u, abs(u_input.a)));
}

