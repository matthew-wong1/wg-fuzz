struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(4294967295u, 17247u, vec2<bool>(false, false), 1u), Struct_2(0u, 33918u, vec2<bool>(true, true), 1u), Struct_2(4294967295u, 4294967295u, vec2<bool>(true, true), 6733u), Struct_2(4294967295u, 32292u, vec2<bool>(false, true), 1u), Struct_2(1u, 0u, vec2<bool>(true, true), 31611u), Struct_2(14262u, 1u, vec2<bool>(false, true), 35414u), Struct_2(0u, 4671u, vec2<bool>(false, true), 15051u), Struct_2(57069u, 62448u, vec2<bool>(true, true), 3015u), Struct_2(1u, 4294967295u, vec2<bool>(false, true), 24625u), Struct_2(55593u, 4294967295u, vec2<bool>(true, false), 4294967295u), Struct_2(39246u, 1u, vec2<bool>(true, true), 36694u), Struct_2(1u, 4294967295u, vec2<bool>(false, true), 16844u), Struct_2(40427u, 0u, vec2<bool>(false, false), 27244u), Struct_2(65801u, 116132u, vec2<bool>(false, true), 4294967295u), Struct_2(11715u, 0u, vec2<bool>(true, false), 0u), Struct_2(31659u, 4294967295u, vec2<bool>(false, false), 1u), Struct_2(54497u, 30200u, vec2<bool>(true, true), 4294967295u), Struct_2(0u, 4294967295u, vec2<bool>(true, true), 63555u), Struct_2(25122u, 50310u, vec2<bool>(false, false), 0u), Struct_2(14962u, 17348u, vec2<bool>(true, true), 35030u), Struct_2(15130u, 39310u, vec2<bool>(true, false), 0u), Struct_2(1u, 530u, vec2<bool>(false, false), 20946u), Struct_2(5704u, 4294967295u, vec2<bool>(false, false), 1u), Struct_2(1u, 277u, vec2<bool>(false, true), 1u), Struct_2(27449u, 4294967295u, vec2<bool>(true, false), 47264u), Struct_2(1u, 4294967295u, vec2<bool>(true, true), 83218u), Struct_2(0u, 10072u, vec2<bool>(false, false), 4294967295u), Struct_2(4294967295u, 15353u, vec2<bool>(true, true), 4294967295u));

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<bool, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> bool {
    global0 = array<Struct_2, 28>();
    global1 = array<Struct_2, 17>();
    global1 = array<Struct_2, 17>();
    let var_0 = arg_0;
    var var_1 = ~var_0;
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec4<bool> {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    var var_0 = arg_3.x;
    global2 = array<bool, 11>();
    var var_1 = Struct_3(arg_3.x, !any(vec4<bool>(true, true, true, true)), arg_0.x, arg_0.x);
    return select(select(select(vec4<bool>(false, true, var_1.b, true), vec4<bool>(var_1.a >= -648f, global2[_wgslsmith_index_u32(countOneBits(4294967295u), 11u)], true, var_1.b), var_1.b), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(arg_0.x, 10474u, arg_0.x)), 11u)], false, any(vec3<bool>(false, false, var_1.b)), !var_1.b), select(!(!vec4<bool>(false, var_1.b, false, true)), vec4<bool>(func_2(u_input.b), any(vec3<bool>(true, true, true)), 825f <= var_1.a, all(vec2<bool>(true, true))), !all(vec4<bool>(false, false, false, false)))), select(select(vec4<bool>(func_2(1i), var_1.b & var_1.b, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.b, global2[_wgslsmith_index_u32(var_1.c, 11u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(8211u, 11u)], true, global2[_wgslsmith_index_u32(0u, 11u)], true)), true), !select(!vec4<bool>(false, global2[_wgslsmith_index_u32(arg_2.x, 11u)], true, var_1.b), vec4<bool>(var_1.b, global2[_wgslsmith_index_u32(var_1.c, 11u)], true, global2[_wgslsmith_index_u32(arg_0.x, 11u)]), true && var_1.b), vec4<bool>(all(select(vec4<bool>(true, var_1.b, true, true), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(arg_2.x, 11u)]), var_1.b)), var_1.b && global2[_wgslsmith_index_u32(46721u, 11u)], true, true)), vec4<bool>(true, !(var_1.a >= _wgslsmith_f_op_f32(step(790f, 473f))), func_2(~arg_1) | (max(arg_2.x, 32943u) >= ~1u), all(select(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_2.x, 11u)], global2[_wgslsmith_index_u32(51918u, 11u)], false), vec3<bool>(false, var_1.b, false), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], true, global2[_wgslsmith_index_u32(var_1.c, 11u)])), select(vec3<bool>(true, var_1.b, global2[_wgslsmith_index_u32(0u, 11u)]), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(global2[_wgslsmith_index_u32(58317u, 11u)], false, var_1.b)), select(vec3<bool>(global2[_wgslsmith_index_u32(27144u, 11u)], false, true), vec3<bool>(true, false, var_1.b), true)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, -570f)), arg_0.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2288f - arg_2.x), _wgslsmith_f_op_f32(-1721f - arg_2.x)) - -463f) - 311f), false, ~_wgslsmith_mod_u32(4294967295u, arg_0), _wgslsmith_mult_u32(~0u, arg_0));
    global1 = array<Struct_2, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), arg_2.x))));
    let var_2 = arg_0;
    let var_3 = any(arg_1.a.wxx);
    return func_2(_wgslsmith_sub_i32(firstTrailingBit(-50651i), firstTrailingBit(-1i << (var_2 % 32u))) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<Struct_2, 28>();
    var var_1 = all(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 11u)], false, true, var_0), vec4<bool>(var_0, false, false, var_0), true))) | func_4(38420u, Struct_1(func_1(select(vec3<u32>(80217u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 53925u), vec3<bool>(global2[_wgslsmith_index_u32(48121u, 11u)], false, var_0)), ~(-2147483647i), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2408f, 669f, 655f))), abs(vec4<i32>(u_input.a, u_input.a, 78538i, u_input.a)), u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1385f, 499f) - vec2<f32>(469f, -148f)), max(vec4<i32>(u_input.a, u_input.b, u_input.b, 19200i), vec4<i32>(-1i, -2147483647i, -1i, -3699i)), vec2<i32>(u_input.a, u_input.a) & vec2<i32>(1i, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(1055f + -1505f), -1000f)), 34357i);
    let var_2 = firstLeadingBit(-39364i) | firstTrailingBit(~u_input.a & ~u_input.b);
    var var_3 = _wgslsmith_div_u32(~firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(~select(abs(vec2<u32>(42747u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 8990u), vec2<u32>(43686u, 62185u)), false), select(vec2<u32>(select(40732u, 24750u, true), min(0u, 5653u)), ~(~vec2<u32>(44124u, 18491u)), vec2<bool>(func_2(1i), true))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, vec3<u32>(19282u, 1u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 68716u), vec2<u32>(1u, 0u)) << (~0u % 32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(max(vec4<u32>(1u, 49767u, 1u, 23150u), vec4<u32>(31264u, 44031u, 99745u, 12668u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-12690i, 1i, u_input.b), select(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(u_input.b, var_2, -2147483647i), var_0), vec3<i32>(-6245i, u_input.a, -32690i) << (vec3<u32>(16237u, 1u, 8677u) % vec3<u32>(32u)))));
}

