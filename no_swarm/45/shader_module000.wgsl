struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    global1 = array<Struct_1, 32>();
    var var_0 = Struct_1(true);
    let var_1 = _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, _wgslsmith_mod_i32(0i, -2147483647i) | (-9940i ^ u_input.a.x), firstTrailingBit(abs(u_input.b.x)), -51094i | ~u_input.b.x), -vec4<i32>((u_input.a.x << (arg_1.b % 32u)) & u_input.b.x, -2147483647i, firstLeadingBit(-49430i), ~countOneBits(2147483647i)));
    var var_2 = ~(~max(~vec4<u32>(0u, u_input.d, u_input.d, 1u), ~vec4<u32>(0u, arg_1.b, 35074u, 109699u)) | firstTrailingBit(countOneBits(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), ~_wgslsmith_add_u32(arg_1.b, u_input.d), _wgslsmith_dot_vec2_u32(var_2.wz, vec2<u32>(arg_1.b, var_2.x))), ~(~(var_2.zyw << (vec3<u32>(67386u, u_input.d, 1u) % vec3<u32>(32u))))) | ~(~(~vec3<u32>(5742u, 9699u, 1u)) | var_2.yzy);
}

fn func_2() -> u32 {
    let var_0 = ~(~_wgslsmith_div_vec3_u32(func_3(any(vec4<bool>(false, false, true, false)), Struct_2(-582f, u_input.d, Struct_1(false), 699f)), vec3<u32>(48164u, 13388u, 0u) << (reverseBits(vec3<u32>(u_input.d, 1u, 31906u)) % vec3<u32>(32u))));
    let var_1 = false;
    global1 = array<Struct_1, 32>();
    let var_2 = ~(~u_input.d ^ max(u_input.d, 4294967295u));
    global1 = array<Struct_1, 32>();
    return _wgslsmith_div_u32(var_2, u_input.d);
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2();
    var var_1 = Struct_2(-1093f, firstLeadingBit(u_input.d), Struct_1(true), _wgslsmith_f_op_f32(max(1280f, 1499f)));
    var_0 = max(_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.b, 38804u), ~countOneBits(~58951u)), abs(0u));
    var var_2 = !select(select(select(vec2<bool>(var_1.c.a, var_1.c.a), select(vec2<bool>(false, false), vec2<bool>(false, var_1.c.a), false), false), vec2<bool>(!var_1.c.a, !var_1.c.a), vec2<bool>(var_1.c.a, !var_1.c.a)), vec2<bool>(false, true), !vec2<bool>(var_1.c.a & true, any(vec3<bool>(var_1.c.a, false, var_1.c.a))));
    return firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, countOneBits(10118u), ~1u), vec3<u32>(abs(reverseBits(u_input.d)), ~(~1u), u_input.d)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = any(vec2<bool>(true, true));
    var var_1 = u_input.d;
    var_1 = _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(abs(_wgslsmith_add_u32(~arg_0.x, u_input.d)), ~_wgslsmith_sub_u32(~u_input.d, firstTrailingBit(4294967295u)), 49063u));
    var var_2 = select(vec4<bool>(1u <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 383u), arg_0.xy), var_0, any(!select(vec3<bool>(true, false, arg_2.a), vec3<bool>(var_0, var_0, false), vec3<bool>(true, true, var_0))), ~firstTrailingBit(arg_0.x) != _wgslsmith_sub_u32(4294967295u, 1u)), select(!select(!vec4<bool>(var_0, true, arg_2.a, var_0), select(vec4<bool>(false, arg_2.a, true, arg_2.a), vec4<bool>(false, var_0, true, true), vec4<bool>(false, var_0, true, false)), true | var_0), vec4<bool>(all(!vec2<bool>(false, arg_2.a)), any(select(vec2<bool>(false, var_0), vec2<bool>(arg_2.a, false), vec2<bool>(true, true))), any(vec3<bool>(var_0, var_0, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) + arg_1.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), all(!select(!vec3<bool>(true, arg_2.a, true), select(vec3<bool>(arg_2.a, var_0, false), vec3<bool>(var_0, arg_2.a, true), vec3<bool>(true, true, var_0)), any(vec2<bool>(var_0, true)))));
    var_2 = select(select(!select(select(vec4<bool>(false, arg_2.a, false, true), vec4<bool>(var_0, var_0, var_0, false), var_0), select(vec4<bool>(arg_2.a, var_2.x, true, true), vec4<bool>(arg_2.a, false, true, false), var_2.x), false), vec4<bool>(false, true, all(vec3<bool>(var_0, false, true)), var_2.x), false), !(!vec4<bool>(false, var_0, !var_2.x, arg_2.a)), (0u > u_input.d) & true);
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, 826f, 637f) + vec3<f32>(arg_1.x, 1203f, -197f)))))), vec3<f32>(arg_1.x, 990f, _wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    global1 = array<Struct_1, 32>();
    let var_0 = arg_0.a.x;
    let var_1 = arg_1;
    var var_2 = select(select(select(select(select(vec3<bool>(true, arg_1.c.a, arg_1.c.a), vec3<bool>(true, false, true), vec3<bool>(true, true, var_1.c.a)), vec3<bool>(false, true, arg_1.c.a), !vec3<bool>(false, true, var_1.c.a)), vec3<bool>(true, true, true), !(!vec3<bool>(var_1.c.a, arg_1.c.a, false))), vec3<bool>(false, _wgslsmith_f_op_f32(abs(241f)) < _wgslsmith_f_op_f32(abs(arg_0.a.x)), var_1.c.a), vec3<bool>(var_1.c.a, !(u_input.a.x < u_input.b.x), !(!var_1.c.a))), !vec3<bool>(true != (arg_1.c.a == true), any(vec4<bool>(arg_1.c.a, arg_1.c.a, arg_1.c.a, false)) != (var_1.b < var_1.b), any(vec2<bool>(var_1.c.a, arg_1.c.a))), !(!var_1.c.a));
    var var_3 = ~select(vec4<u32>(abs(1u << (u_input.d % 32u)), ~1u, 4294967295u, ~(~54845u)), vec4<u32>(arg_1.b, ~1u, var_1.b, ~arg_2) << (~(~vec4<u32>(59278u, 61800u, arg_1.b, 0u)) % vec4<u32>(32u)), var_2.x);
    return var_2.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    let var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_5(func_4(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -124f, -300f, 573f)), global1[_wgslsmith_index_u32(u_input.d, 32u)]), Struct_2(273f, ~u_input.d, Struct_1(true), _wgslsmith_f_op_f32(round(1000f))), min(u_input.d & u_input.d, 104978u)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    var var_1 = func_4(~(~(~vec3<u32>(u_input.d, 4294967295u, u_input.d) << (~vec3<u32>(4294967295u, u_input.d, 81266u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(func_4(vec3<u32>(26455u, 23609u, u_input.d), vec4<f32>(1000f, 1239f, -403f, 254f), global1[_wgslsmith_index_u32(4294967295u, 32u)]).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1627f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 452f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-108f, -1237f, -1030f, 1000f) - vec4<f32>(-1373f, 713f, -866f, 610f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, -185f, 1145f, -701f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, 326f, 1371f, 1266f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, 980f, 1087f, 2053f) - vec4<f32>(1127f, -1257f, 1005f, -1064f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, -685f, -1848f, 717f))))))), Struct_1(!(!var_0.x)));
    var var_2 = var_1.a.x;
    var var_3 = Struct_1(var_0.x);
    var var_4 = _wgslsmith_add_u32(1976u, _wgslsmith_add_u32(~u_input.d, ~reverseBits(~13956u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

