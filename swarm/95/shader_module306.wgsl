struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

var<private> global1: array<u32, 32>;

var<private> global2: bool;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(min(1u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(44141u, 0u, arg_1.a), arg_1.b.xwz), max(vec3<u32>(global1[_wgslsmith_index_u32(29400u, 32u)], arg_1.a, global1[_wgslsmith_index_u32(arg_1.b.x, 32u)]), vec3<u32>(16861u, 68859u, arg_1.b.x)))), 32u)] ^ (~4294967295u & arg_1.a), ~arg_1.b, arg_1.c);
    global3 = select(vec2<bool>(!(arg_1.c.x == 790f), -u_input.b.x > -10841i), select(!select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, true), global3.x), select(vec2<bool>(global3.x, true), vec2<bool>(false, true), vec2<bool>(true, global3.x)), true), vec2<bool>(!any(vec3<bool>(global3.x, global3.x, global3.x)), var_1.a <= _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(34223u, 32u)], 4294967295u)), select(vec2<bool>(all(vec2<bool>(global3.x, true)), 25820i != u_input.a.x), vec2<bool>(true, true), vec2<bool>(global3.x | false, any(vec4<bool>(true, false, true, global3.x))))), any(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(global1[_wgslsmith_index_u32(abs(29353u), 32u)], countOneBits(31848u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(global1[_wgslsmith_index_u32(var_1.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), arg_1.b.yy), _wgslsmith_mult_vec2_u32(arg_1.b.yw, arg_1.b.wz))), 12u)]));
    global0 = array<vec4<bool>, 12>();
    global3 = vec2<bool>(global3.x, !(!global3.x));
    return vec2<f32>(425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1743f, -746f)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> i32 {
    global3 = vec2<bool>((~(-20530i) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(-41492i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 0i)) >> (_wgslsmith_add_u32(1u, arg_0.x) % 32u))) == u_input.a.x, !(-u_input.a.x >= 1i));
    let var_0 = Struct_1(arg_0.x, reverseBits(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(9609u, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)], arg_0.x, arg_0.x), max(vec4<u32>(25943u, global1[_wgslsmith_index_u32(95711u, 32u)], 64338u, 1u), vec4<u32>(0u, 1u, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), Struct_1(15602u, vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(arg_0.x, 4294967295u, 17514u, global1[_wgslsmith_index_u32(1u, 32u)]) % vec4<u32>(32u)), vec2<f32>(arg_1.x, 155f)), _wgslsmith_f_op_vec3_f32(floor(arg_1.zwx))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, arg_1.x)), 285f, -632f);
    let var_2 = !(!global3.x);
    global3 = !select(!vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, global3.x, false))), select(!(!vec2<bool>(global3.x, global3.x)), select(!vec2<bool>(false, global3.x), select(vec2<bool>(var_2, global3.x), vec2<bool>(false, var_2), true), any(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 12u)])), any(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 12u)], vec4<bool>(false, var_2, false, false), global3.x))), select(select(select(vec2<bool>(true, var_2), vec2<bool>(var_2, global3.x), vec2<bool>(false, var_2)), vec2<bool>(true, false), var_2 || global3.x), select(select(vec2<bool>(global3.x, true), vec2<bool>(true, var_2), vec2<bool>(var_2, global3.x)), !vec2<bool>(var_2, true), vec2<bool>(false, true)), true));
    return -31574i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 32u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)]) | ~_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(arg_1.b.x, 32u)]), ~global1[_wgslsmith_index_u32(max(0u, arg_1.b.x), 32u)] & abs(~7119u)), vec4<u32>(reverseBits(arg_1.a), 0u << (1u % 32u), _wgslsmith_dot_vec2_u32(min(vec2<u32>(5377u, 1u), ~vec2<u32>(561u, 45745u)), vec2<u32>(arg_1.b.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_1.b.x, 32u)], 0u))), abs(arg_1.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(arg_1.c.x)), Struct_1(29964u, _wgslsmith_div_vec4_u32(vec4<u32>(99809u, 4294967295u, arg_1.b.x, 6247u), vec4<u32>(4294967295u, 1u, 66510u, 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-499f, 272f) * vec2<f32>(arg_1.c.x, arg_1.c.x))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x - -1639f), _wgslsmith_f_op_f32(-840f * arg_1.c.x), _wgslsmith_div_f32(306f, arg_1.c.x)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-478f + -417f)), vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)))))));
    global3 = select(vec2<bool>(global3.x, true), vec2<bool>(any(!(!vec3<bool>(global3.x, true, false))), true), global3.x);
    var var_1 = !global0[_wgslsmith_index_u32(countOneBits(~35143u), 12u)];
    global3 = vec2<bool>(var_1.x, false);
    global0 = array<vec4<bool>, 12>();
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> u32 {
    global1 = array<u32, 32>();
    let var_0 = false;
    var var_1 = func_4(_wgslsmith_mult_i32(-func_2(~arg_3.b.zzy, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_1, arg_1, 753f)))), (abs(-29146i) & u_input.a.x) | firstTrailingBit(u_input.a.x)), arg_3);
    global0 = array<vec4<bool>, 12>();
    var var_2 = func_4(u_input.a.x, func_4(abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, 2147483647i), u_input.a)), func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -41659i, u_input.a.x, -2147483647i) >> (vec4<u32>(1u, arg_0.a, 0u, global1[_wgslsmith_index_u32(0u, 32u)]) % vec4<u32>(32u)), vec4<i32>(1i, -1i, 16387i, 49860i)), func_4(abs(-27068i), Struct_1(2915u, arg_3.b, vec2<f32>(402f, -1783f))))));
    return reverseBits(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.x;
    global1 = array<u32, 32>();
    global3 = !vec2<bool>(global3.x, global3.x);
    let var_0 = ~(~(~global1[_wgslsmith_index_u32(84733u, 32u)]));
    var var_1 = Struct_1(select(~_wgslsmith_mult_u32(var_0, ~var_0), _wgslsmith_mod_u32(~32335u, var_0), global3.x), vec4<u32>(max(2188u, 4294967295u), func_1(Struct_1(~var_0, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0, 32u)], var_0, global1[_wgslsmith_index_u32(14900u, 32u)]), vec2<f32>(1413f, 208f)), _wgslsmith_f_op_f32(sign(215f)), (u_input.b.x != u_input.a.x) && true, Struct_1(~72273u, _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 42887u, 0u, global1[_wgslsmith_index_u32(var_0, 32u)]), vec4<u32>(4294967295u, 1u, var_0, global1[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, -1252f)))), 1u, firstLeadingBit(27057u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1111f, 160f) + _wgslsmith_div_f32(1000f, 601f)))));
    global1 = array<u32, 32>();
    let var_2 = func_4(0i, Struct_1(var_1.a, ~min(~var_1.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 356u, 4294967295u, global1[_wgslsmith_index_u32(49457u, 32u)]), var_1.b, vec4<u32>(0u, var_1.b.x, 4294967295u, 0u))), var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.b.x, 0i, -1i, u_input.a.x))), 2147483647i), u_input.b.zy, !select(vec2<bool>(true, global3.x), !vec2<bool>(global3.x, global3.x), select(vec2<bool>(true, global3.x), vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, _wgslsmith_f_op_f32(floor(var_2.c.x))))), -1364f);
}

