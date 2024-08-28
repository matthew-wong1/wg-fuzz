struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32>;

var<private> global2: array<u32, 27> = array<u32, 27>(4294967295u, 26069u, 4294967295u, 0u, 1u, 4294967295u, 0u, 0u, 4294967295u, 1u, 0u, 1u, 18009u, 66587u, 0u, 0u, 1u, 1u, 0u, 1u, 37938u, 63802u, 86112u, 4294967295u, 4294967295u, 1u, 0u);

var<private> global3: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = select(!vec2<bool>(global0.c.a, global0.c.a && !global0.c.a), !vec2<bool>(_wgslsmith_f_op_f32(-605f * global1.x) == global1.x, false), any(!select(vec3<bool>(true, global0.c.a, false), vec3<bool>(global0.c.a, true, false), !vec3<bool>(global0.c.a, true, global0.c.a))));
    var var_1 = global0.c;
    let var_2 = Struct_1(global0.b.a, reverseBits(715u));
    var var_3 = global0.c;
    var var_4 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33373u, 4294967295u, global2[_wgslsmith_index_u32(var_2.b, 27u)]) << (vec4<u32>(arg_1.b, 30134u, 4294967295u, 23696u) % vec4<u32>(32u)), firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, global0.b.b, global0.a.b, 18047u)))), var_2.b);
    return var_2.a.x;
}

fn func_2(arg_0: i32) -> u32 {
    global0 = Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-51239i, func_3(-34411i, Struct_1(vec2<i32>(u_input.a, 14655i), global0.a.b))), ~_wgslsmith_clamp_vec2_i32(global0.a.a, vec2<i32>(-2147483647i, -42244i), global0.a.a)), 1u), Struct_1(~(vec2<i32>(global0.b.a.x, u_input.a) & global0.b.a) << (vec2<u32>(global0.a.b, 4294967295u) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global0.a.b, 1u, global0.a.b), vec3<u32>(global0.b.b, 19748u, 4294967295u), false), min(vec3<u32>(26145u, 9845u, global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(global0.a.b, 0u, 4294967295u)), min(vec3<u32>(4294967295u, global0.a.b, 34177u), vec3<u32>(72458u, global2[_wgslsmith_index_u32(global0.b.b, 27u)], 1u))), vec3<u32>(firstTrailingBit(0u), global0.b.b, firstLeadingBit(0u)))), Struct_2(any(vec2<bool>(true, all(vec3<bool>(global0.c.a, false, true))))));
    var var_0 = 79634u;
    let var_1 = Struct_1(vec2<i32>(arg_0, arg_0) & -(-global0.b.a ^ global0.a.a), 1u);
    global0 = Struct_3(Struct_1(vec2<i32>(firstTrailingBit(arg_0), _wgslsmith_clamp_i32(global0.b.a.x, -1i & global0.a.a.x, u_input.a)), global0.a.b | 4294967295u), var_1, Struct_2(global0.c.a));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 563f);
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = vec4<u32>(global2[_wgslsmith_index_u32(func_2(-max(-11107i, global0.a.a.x) << (9651u % 32u)), 27u)], 16453u, global2[_wgslsmith_index_u32(~(~global0.b.b), 27u)], global2[_wgslsmith_index_u32(60051u, 27u)]);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1078f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global1.x) * _wgslsmith_f_op_f32(arg_2 * 133f)), true))), _wgslsmith_f_op_f32(trunc(-1279f)));
    global2 = array<u32, 27>();
    var var_2 = global0.a;
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(global0.a.a.x, _wgslsmith_div_i32(37006i, global0.b.a.x), ~u_input.a), countOneBits(-vec3<i32>(-26100i, 2147483647i, 33519i))), vec3<i32>(i32(-1i) * -6694i, global0.b.a.x, ~2147483647i)), _wgslsmith_add_vec3_i32(reverseBits(~vec3<i32>(-41281i, 50699i, 19932i)) >> (var_0.wwz % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(min(0i, u_input.a), _wgslsmith_sub_i32(var_2.a.x, -14406i), 1i), vec3<i32>(var_2.a.x, _wgslsmith_div_i32(-1i, u_input.a), u_input.a))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + 538f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(true, global0.c.a, global0.c.a, arg_1)))))), 449f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> bool {
    var var_0 = Struct_3(global0.a, arg_0, global0.c);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(112f + 505f), -645f, global1.x, 1497f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(701f, -2642f, 620f, global1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(-520f)), 445f, _wgslsmith_f_op_f32(global1.x - global1.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -725f, -1000f, global1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(1057f, -715f, -1002f, -1000f)) - vec4<f32>(global1.x, 161f, -531f, global1.x))))));
    var var_2 = ~select(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.b, 1u, 1u), vec3<u32>(arg_1.x, 60852u, 4294967295u)), abs(vec3<u32>(var_0.b.b, 0u, 4294967295u)), select(vec3<bool>(false, global0.c.a, global0.c.a), vec3<bool>(false, var_0.c.a, false), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(var_0.c.a, false, global0.c.a), global0.c.a))) >> (abs(vec3<u32>(~1u, arg_1.x, arg_1.x)) % vec3<u32>(32u));
    global2 = array<u32, 27>();
    let var_3 = Struct_1(vec2<i32>(min(global0.b.a.x, var_0.a.a.x), ~global0.a.a.x), 33062u);
    return any(select(!(!vec2<bool>(false, var_0.c.a)), vec2<bool>(!select(var_0.c.a, true, global0.c.a), any(!vec2<bool>(var_0.c.a, true))), !vec2<bool>(77008u < var_3.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, func_4(global0.a, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.b, global2[_wgslsmith_index_u32(global0.b.b, 27u)]) >> (vec2<u32>(global0.b.b, 1u) % vec2<u32>(32u)), vec2<u32>(global0.a.b, global0.a.b)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(global1.x * -928f), true, _wgslsmith_f_op_f32(f32(-1f) * -191f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, 965f)), _wgslsmith_f_op_f32(trunc(global1.x)))));
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    global3 = func_4(global0.b, ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)]), reverseBits(vec2<u32>(20978u, global2[_wgslsmith_index_u32(global0.b.b, 27u)])))), all(var_0));
    var var_2 = reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.b, ~global0.b.b | _wgslsmith_add_u32(23293u, 0u), 1u, ~(~1u)), reverseBits(vec4<u32>(~4294967295u, ~global0.a.b, global0.a.b, global0.a.b >> (68042u % 32u)))));
    let var_3 = vec3<i32>(1i, firstTrailingBit(0i), ~global0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(~global0.b.a.x, var_3.x), max(~(~global0.b.a), vec2<i32>(2147483647i, u_input.a) << ((var_2.yz >> (vec2<u32>(11589u, global2[_wgslsmith_index_u32(1u, 27u)]) % vec2<u32>(32u))) % vec2<u32>(32u)))), 30747u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), var_1, _wgslsmith_f_op_f32(func_1(829f, var_0.x, var_1))))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1943u, 74503u, var_2.x) | ~vec4<u32>(global0.a.b, 4294967295u, 51101u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.b, 27u)], 27u)], 27u)]), ~(vec4<u32>(global0.b.b, var_2.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], global2[_wgslsmith_index_u32(var_2.x, 27u)]) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.b, 27u)], 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.b, 27u)], 27u)], 5157u, var_2.x))) ^ abs(vec4<u32>(~global2[_wgslsmith_index_u32(1u, 27u)], countOneBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global0.a.b, 27u)], var_2.x, 121510u), vec3<u32>(global2[_wgslsmith_index_u32(var_2.x, 27u)], 11786u, 1u)), ~41976u)));
}

