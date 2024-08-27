struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 2147483647i, -8097i, i32(-2147483648));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: Struct_3 = Struct_3(vec2<bool>(false, true), 318f, Struct_1(2147483647i, vec4<bool>(true, false, true, false), false, true, 58672i), Struct_1(-1i, vec4<bool>(false, false, true, true), false, false, 65064i), Struct_2(i32(-2147483648)));

var<private> global3: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(-4674i, vec4<bool>(true, true, true, false)), Struct_5(1i, vec4<bool>(false, true, false, true)), Struct_5(0i, vec4<bool>(false, true, true, false)), Struct_5(-37210i, vec4<bool>(false, true, true, false)), Struct_5(0i, vec4<bool>(false, true, false, false)), Struct_5(0i, vec4<bool>(true, false, true, true)), Struct_5(25302i, vec4<bool>(false, false, true, false)), Struct_5(i32(-2147483648), vec4<bool>(true, true, true, false)), Struct_5(727i, vec4<bool>(true, false, false, true)), Struct_5(34119i, vec4<bool>(true, true, true, true)), Struct_5(0i, vec4<bool>(true, false, false, true)), Struct_5(0i, vec4<bool>(false, false, false, true)), Struct_5(20068i, vec4<bool>(false, true, false, true)), Struct_5(1i, vec4<bool>(true, false, false, true)), Struct_5(52723i, vec4<bool>(false, true, false, false)), Struct_5(i32(-2147483648), vec4<bool>(false, false, true, true)), Struct_5(27801i, vec4<bool>(true, true, false, true)), Struct_5(2147483647i, vec4<bool>(false, true, true, false)), Struct_5(-2617i, vec4<bool>(true, true, false, false)), Struct_5(1i, vec4<bool>(false, false, false, false)), Struct_5(i32(-2147483648), vec4<bool>(false, true, false, true)), Struct_5(25029i, vec4<bool>(false, false, true, true)), Struct_5(0i, vec4<bool>(false, true, false, false)), Struct_5(-1i, vec4<bool>(true, true, false, true)), Struct_5(2147483647i, vec4<bool>(false, false, false, false)), Struct_5(i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_5(864i, vec4<bool>(true, false, false, false)), Struct_5(-1i, vec4<bool>(true, true, false, true)), Struct_5(1i, vec4<bool>(false, true, false, false)), Struct_5(2147483647i, vec4<bool>(false, false, false, false)), Struct_5(i32(-2147483648), vec4<bool>(false, false, false, false)), Struct_5(i32(-2147483648), vec4<bool>(false, false, false, false)));

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = u_input.d;
    global0 = _wgslsmith_div_vec4_i32(u_input.b, ~(~_wgslsmith_clamp_vec4_i32(-u_input.b, -vec4<i32>(arg_0.a, 5840i, global2.d.e, 2147483647i), vec4<i32>(arg_1.e, 11388i, -2147483647i, -6281i))));
    let var_1 = 1i;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32((-vec4<i32>(global0.x, global0.x, -1i, var_1) >> (~vec4<u32>(4294967295u, 4240u, 67889u, 0u) % vec4<u32>(32u))) | ~vec4<i32>(27180i, 0i, global4.a, 0i), u_input.b), _wgslsmith_add_i32(global2.c.e & -49031i, global2.d.e), 2147483647i, ~(-(~(-19162i))));
    let var_3 = arg_0;
    return true;
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = global2.d;
    let var_1 = all(select(vec2<bool>(true, true), global4.b.wx, true));
    global2 = Struct_3(vec2<bool>(arg_0.x, func_3(global2.e, Struct_1(firstTrailingBit(0i), var_0.b, arg_0.x, select(global1.x, arg_0.x, false), global2.c.e), _wgslsmith_div_f32(-426f, global2.b), -1i)), 1627f, global2.c, Struct_1(1i, select(select(!global2.d.b, select(global2.c.b, global2.d.b, global2.c.b), global2.d.b), vec4<bool>(any(vec4<bool>(var_0.d, arg_0.x, var_1, true)), any(vec2<bool>(true, false)), !var_0.d, 33901i < global0.x), func_3(Struct_2(12669i), Struct_1(25962i, vec4<bool>(arg_0.x, false, false, true), var_1, global2.a.x, u_input.d.x), _wgslsmith_f_op_f32(global2.b * global2.b), min(-45822i, -1421i))), var_0.d, arg_0.x, _wgslsmith_mod_i32(-global4.a >> (1u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 22501i), u_input.d.zz), reverseBits(u_input.b.x)))), Struct_2(38724i));
    var var_2 = abs(min(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(1i, -2371i, global0.x, 1i)), u_input.c, global4.a, u_input.c), ~select(u_input.b, u_input.b, true)), u_input.a));
    var var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(27019u, 1u), 1u), 32u)];
    return vec4<i32>(var_0.a, 2147483647i, -31333i, _wgslsmith_mod_i32(1i, 1i));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    global4 = global2.c;
    global3 = array<Struct_5, 32>();
    global1 = vec4<bool>(true, global2.b > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b))) - -211f), global2.c.d, any(global4.b.xzy));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, -(~u_input.b << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(firstTrailingBit(-21970i), u_input.a & 3233i, _wgslsmith_sub_i32(1i, -1i), _wgslsmith_mult_i32(global0.x, global4.a)))), ~_wgslsmith_clamp_vec4_i32(-u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), func_2(vec2<bool>(global4.b.x, true))) >> (firstLeadingBit(~vec4<u32>(20263u, 44556u, 4294967295u, 30955u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(vec2<bool>(global2.a.x, global1.x && global1.x)));
    global1 = global4.b;
    var var_1 = Struct_1(28212i, global2.c.b, any(global2.c.b.zxx), func_3(Struct_2(global0.x), Struct_1(-(u_input.c & 2147483647i), !global4.b, all(vec3<bool>(global1.x, false, false)), true, firstLeadingBit(global0.x) ^ u_input.b.x), global2.b, var_0.x), var_0.x);
    global3 = array<Struct_5, 32>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * -1508f)))));
    let var_3 = _wgslsmith_clamp_vec3_u32(min(countOneBits(~abs(vec3<u32>(4294967295u, 30651u, 10184u))), ~firstLeadingBit(vec3<u32>(1u, 1u, 1u))), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(19114u, 44983u, 0u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 1u)), abs(64390u), 1u), ~vec3<u32>(4294967295u, 132913u, 49923u)), vec3<u32>(~1u, 23523u, abs(_wgslsmith_clamp_u32(18466u, 0u, 25732u))), ~vec3<u32>(1u, ~1u, 1u)), ~(~countOneBits(~vec3<u32>(73455u, 1112u, 15699u))));
    global1 = vec4<bool>(!global2.a.x, true, true, any(vec4<bool>(true, any(!var_1.b), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, select(vec3<i32>(-_wgslsmith_mult_i32(-8026i, global4.e), select(var_1.e, -global2.c.a, 14977u != var_3.x), 0i), vec3<i32>(56358i, ~(-global0.x), var_1.a), global1.xzy), firstLeadingBit(_wgslsmith_add_u32(abs(abs(75511u)), ~(~var_3.x))));
}

