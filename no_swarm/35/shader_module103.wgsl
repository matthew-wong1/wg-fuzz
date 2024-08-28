struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<vec3<u32>, 4>;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(vec4<bool>(false, true, true, true)), vec4<i32>(-614i, -3372i, 15786i, 1158i), vec2<u32>(0u, 59736u), vec2<i32>(-20440i, -1i), Struct_1(vec4<bool>(false, true, false, false))), Struct_3(Struct_1(vec4<bool>(false, true, false, false)), vec4<i32>(5214i, -1i, -1i, 17948i), vec2<u32>(1u, 1u), vec2<i32>(2147483647i, 27112i), Struct_1(vec4<bool>(true, true, true, false))), Struct_3(Struct_1(vec4<bool>(true, true, true, true)), vec4<i32>(-27280i, 1i, 19435i, 1i), vec2<u32>(25722u, 4294967295u), vec2<i32>(856i, -61099i), Struct_1(vec4<bool>(true, false, true, true))), Struct_3(Struct_1(vec4<bool>(false, false, false, false)), vec4<i32>(1i, 11052i, -1i, i32(-2147483648)), vec2<u32>(17880u, 0u), vec2<i32>(32653i, 1i), Struct_1(vec4<bool>(false, true, false, false))), Struct_3(Struct_1(vec4<bool>(false, false, true, true)), vec4<i32>(17165i, 7362i, 0i, -1i), vec2<u32>(77959u, 4294967295u), vec2<i32>(i32(-2147483648), 2988i), Struct_1(vec4<bool>(false, true, true, true))), Struct_3(Struct_1(vec4<bool>(true, false, true, false)), vec4<i32>(-5144i, 34382i, 2147483647i, 2147483647i), vec2<u32>(4294967295u, 51559u), vec2<i32>(1i, -1i), Struct_1(vec4<bool>(true, true, false, true))), Struct_3(Struct_1(vec4<bool>(false, true, false, false)), vec4<i32>(-1i, i32(-2147483648), 56516i, 2147483647i), vec2<u32>(18427u, 0u), vec2<i32>(0i, 29772i), Struct_1(vec4<bool>(false, false, true, true))), Struct_3(Struct_1(vec4<bool>(true, false, true, false)), vec4<i32>(30020i, 20194i, -28774i, 1i), vec2<u32>(4294967295u, 0u), vec2<i32>(-1i, 1i), Struct_1(vec4<bool>(true, false, true, true))), Struct_3(Struct_1(vec4<bool>(false, false, true, false)), vec4<i32>(-1i, 3625i, 2147483647i, 16375i), vec2<u32>(4294967295u, 0u), vec2<i32>(1i, -35097i), Struct_1(vec4<bool>(true, true, false, false))), Struct_3(Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(i32(-2147483648), 2147483647i, -16618i, 0i), vec2<u32>(148518u, 87155u), vec2<i32>(-11376i, -1i), Struct_1(vec4<bool>(false, true, false, false))), Struct_3(Struct_1(vec4<bool>(true, true, true, true)), vec4<i32>(1i, -1i, 1i, 0i), vec2<u32>(4294967295u, 89142u), vec2<i32>(i32(-2147483648), -9000i), Struct_1(vec4<bool>(true, false, true, true))), Struct_3(Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(34671i, -1i, -15463i, -38835i), vec2<u32>(0u, 91731u), vec2<i32>(1i, 2147483647i), Struct_1(vec4<bool>(true, true, true, false))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_1(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global0 = array<f32, 27>();
    global2 = array<Struct_3, 12>();
    var var_1 = arg_0.yx;
    var var_2 = var_0.a.xw;
    return countOneBits(firstTrailingBit(1i));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = Struct_4(0u, arg_0.a.a.zzy);
    var var_1 = -110f;
    global1 = array<vec3<u32>, 4>();
    global0 = array<f32, 27>();
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-func_3(u_input.a), -2147483647i), arg_0.d.x | _wgslsmith_dot_vec3_i32(-arg_0.b.wzy, vec3<i32>(u_input.a.x, arg_2, 1i))), _wgslsmith_dot_vec3_i32(arg_0.b.yzz, arg_0.b.yyy >> (vec3<u32>(arg_0.c.x, ~var_0.a, 18414u) % vec3<u32>(32u))), _wgslsmith_div_i32(max(_wgslsmith_mult_i32(firstLeadingBit(6846i), ~arg_0.d.x), firstLeadingBit(u_input.a.x)), arg_0.d.x));
    return ~var_0.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = Struct_4(34431u, vec3<bool>(any(!select(arg_1.a.xy, vec2<bool>(arg_3, arg_1.a.x), arg_3)), arg_1.a.x, all(arg_1.a.xyy)));
    let var_1 = func_2(Struct_3(arg_1, vec4<i32>(arg_0, ~3894i, -13253i, 2164i), _wgslsmith_add_vec2_u32(select(vec2<u32>(118533u, var_0.a), ~vec2<u32>(1u, var_0.a), any(vec2<bool>(false, true))), vec2<u32>(var_0.a, countOneBits(29963u))), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.a.x, 47176i) ^ (arg_2 & vec2<i32>(arg_0, arg_0))), arg_1), 1090f, _wgslsmith_add_i32(u_input.a.x, reverseBits(17568i)));
    let var_2 = global0[_wgslsmith_index_u32(~var_1, 27u)];
    let var_3 = global2[_wgslsmith_index_u32(countOneBits(~(~_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.a, var_0.a), _wgslsmith_add_u32(4294967295u, var_1)))), 12u)];
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~countOneBits(firstLeadingBit(~0u)), 27u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10622u, 27u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 12>();
    let var_0 = 1i;
    var var_1 = Struct_1(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(any(vec3<bool>(true, true, false)), true, any(vec2<bool>(false, true)), select(true, true, true)), true), select(vec4<bool>(all(vec3<bool>(false, true, true)), select(false, false, true), all(vec3<bool>(true, false, true)), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(49451u, 27u)], global0[_wgslsmith_index_u32(65243u, 27u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0, Struct_1(var_1.a), u_input.a.zz, var_1.a.x)))), -338f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 4u)], ~vec3<u32>(4294967295u, 1u, 1u)), 27u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-167f * -639f), global0[_wgslsmith_index_u32(~1u, 27u)])));
    let var_3 = select((-(4493i >> (0u % 32u)) >> (func_2(Struct_3(Struct_1(var_1.a), vec4<i32>(u_input.a.x, var_0, var_0, u_input.a.x), vec2<u32>(0u, 1u), u_input.a.xz, Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, false, true))), -1743f, -1i) % 32u)) < -(max(u_input.a.x, u_input.a.x) | -43676i), true, (~(-2147483647i) >= var_0) | true);
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, ~1u));
}

