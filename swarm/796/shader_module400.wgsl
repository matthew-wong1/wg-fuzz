struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec2<u32>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 3757u, 72082u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    let var_0 = 0u;
    global0 = !arg_0;
    var var_1 = -22879i;
    let var_2 = arg_3.b;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32((-28430i & u_input.a.x) >> (1u % 32u), _wgslsmith_sub_i32(-1i, -1i)), -2147483647i >> (~(~1u) % 32u), abs(arg_2.a.a)), u_input.a);
    return global0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = select(vec4<bool>(true, !global0.x, !(!global0.x), func_3(vec4<bool>(true, true, true, true), max(vec4<u32>(global1.x, 4294967295u, 2595u, arg_1), vec4<u32>(1u, 0u, global2.x, 4294967295u)), Struct_4(Struct_1(-23957i, global0.zyx), _wgslsmith_f_op_f32(-arg_0.x)), Struct_3(vec4<bool>(false, false, arg_2.b.x, arg_2.b.x), Struct_2(arg_0.x), global0.x, vec4<i32>(u_input.a.x, arg_2.a, -2147483647i, u_input.a.x)))), vec4<bool>(true, arg_2.b.x, true, false), !select(vec4<bool>(true, all(vec2<bool>(true, false)), false || arg_2.b.x, global0.x || global0.x), vec4<bool>(arg_1 >= global2.x, false, true, global0.x), vec4<bool>(true, true, true, true)));
    global2 = ~abs(vec4<u32>(23943u, global2.x, 50025u, _wgslsmith_add_u32(arg_1, global1.x)));
    var var_0 = Struct_3(vec4<bool>((_wgslsmith_add_u32(global1.x, 32538u) ^ _wgslsmith_div_u32(4294967295u, global2.x)) > _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, arg_1, global1.x, 0u), vec4<u32>(4294967295u, 67389u, global2.x, global2.x), false), ~vec4<u32>(42722u, arg_1, 35578u, arg_1)), any(select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, arg_2.b.x, true, global0.x), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, false, global0.x, true), arg_2.b.x), select(vec4<bool>(true, false, true, arg_2.b.x), vec4<bool>(false, arg_2.b.x, arg_2.b.x, false), vec4<bool>(false, arg_2.b.x, arg_2.b.x, false)))), !((global2.x & arg_1) > ~arg_1), global0.x), Struct_2(-401f), !(arg_2.b.x | any(select(arg_2.b.yz, vec2<bool>(false, true), true))), ~(min(_wgslsmith_mult_vec4_i32(vec4<i32>(3012i, 27461i, arg_2.a, arg_2.a), vec4<i32>(arg_2.a, -50124i, 0i, 1i)), max(vec4<i32>(u_input.a.x, 35722i, u_input.a.x, arg_2.a), vec4<i32>(arg_2.a, arg_2.a, arg_2.a, -23840i))) | vec4<i32>(-2147483647i, arg_2.a, select(u_input.a.x, 1534i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, 2527i, u_input.a.x), u_input.a))));
    let var_1 = var_0.a.x;
    global0 = vec4<bool>(all(!(!(!vec3<bool>(true, global0.x, false)))), all(!select(select(arg_2.b.yx, global0.yx, var_0.a.x), !global0.yw, var_0.a.xw)), true, global0.x);
    return abs(-79752i);
}

fn func_1() -> vec4<u32> {
    global0 = select(vec4<bool>(false, global0.x, u_input.a.x <= func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-989f, -227f), vec2<f32>(-1000f, 1294f)), global2.x, Struct_1(-1i, global0.xyy)), true), vec4<bool>(true, false, true && select(!global0.x, !global0.x, true), func_3(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true)), ~vec4<u32>(global1.x, global2.x, 1u, global1.x), Struct_4(Struct_1(u_input.a.x, vec3<bool>(true, global0.x, global0.x)), 1f), Struct_3(!vec4<bool>(global0.x, false, global0.x, true), Struct_2(-999f), false, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<bool>(true, true, false, !global0.x));
    let var_0 = _wgslsmith_sub_u32(~global2.x, global2.x);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(378f + _wgslsmith_f_op_f32(select(550f, _wgslsmith_f_op_f32(floor(168f)), !global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f + 579f) - -143f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1555f * 148f)), _wgslsmith_f_op_f32(f32(-1f) * -409f), -442f)));
    global0 = !(!vec4<bool>(global0.x, !(var_0 == global2.x), any(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, false), global0.x)), global0.x));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1084f, var_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1581f, 1000f, var_1.x), vec3<f32>(var_1.x, 1386f, var_1.x), vec3<bool>(false, true, global0.x))), ~u_input.a.x <= u_input.a.x)) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(207f, var_1.x, global0.x)), var_1.x), var_1.x, -1000f)) + vec3<f32>(-116f, _wgslsmith_f_op_f32(select(var_1.x, -526f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1385f)))));
    return max(max(~(vec4<u32>(87280u, global1.x, global1.x, 27445u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.x, var_0, var_0), vec4<u32>(global2.x, global2.x, global1.x, var_0)) % vec4<u32>(32u))), vec4<u32>(countOneBits(var_0), min(countOneBits(var_0), ~var_0), countOneBits(0u), ~1u)), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(55704u, var_0, 1u, 4294967295u), firstTrailingBit(vec4<u32>(1148u, global2.x, 30571u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1409f, _wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2362f - -865f)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global2 = ~func_1();
    let var_2 = all(vec3<bool>(global0.x, global0.x, !global0.x));
    let var_3 = select(~(firstLeadingBit(vec3<i32>(-6783i, u_input.a.x, 48384i)) & -u_input.a) | u_input.a, vec3<i32>(-15172i, -1i, -33685i), !vec3<bool>(var_2, true, false));
    global2 = ~_wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(global2.x, global1.x), reverseBits(global1.x), global1.x, ~global1.x), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(8116u, global1.x, 50605u, 1u), vec4<u32>(0u, global1.x, 27443u, global1.x))), func_3(!vec4<bool>(false, global0.x, var_2, var_2), vec4<u32>(0u, 0u, 44551u, global2.x), Struct_4(Struct_1(u_input.a.x, global0.zwz), 149f), Struct_3(vec4<bool>(var_2, true, global0.x, var_2), Struct_2(-979f), var_2, vec4<i32>(20611i, -2147483647i, u_input.a.x, -106i)))), ~(~firstTrailingBit(vec4<u32>(global1.x, global2.x, global1.x, 0u))));
    let var_4 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 4294967295u, 1u, ~_wgslsmith_mod_u32(global2.x, 0u)), ~vec4<u32>(max(global1.x, 4294967295u), min(global2.x, global1.x), _wgslsmith_sub_u32(global2.x, global1.x), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(var_1 * 839f)))), ~(-10953i), min(~(~min(48007u, global2.x)), 1u));
}

