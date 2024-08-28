struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-34676i), Struct_2(-54977i), Struct_2(-19870i), Struct_2(1i), Struct_2(-71413i), Struct_2(37770i), Struct_2(40641i), Struct_2(46984i), Struct_2(0i), Struct_2(2147483647i), Struct_2(0i), Struct_2(-1708i), Struct_2(13844i), Struct_2(27266i), Struct_2(38995i));

var<private> global2: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = !vec2<bool>(!any(vec2<bool>(true, true)) & any(vec4<bool>(true, true, true, true)), !(!(global0.a <= arg_1.c)));
    var var_1 = arg_1.d.wxz;
    var var_2 = arg_1;
    var var_3 = Struct_2(arg_1.d.x);
    let var_4 = Struct_1(select(reverseBits(vec3<u32>(1u, var_2.b.x, arg_0.a.x) & vec3<u32>(var_2.e.x, 4294967295u, u_input.a.x)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_0.a, u_input.a, vec3<u32>(arg_1.a.x, 0u, arg_1.a.x))), true) << ((firstTrailingBit(var_2.e) << (~(~arg_0.a) % vec3<u32>(32u))) % vec3<u32>(32u)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, ~21807u, var_2.a.x), _wgslsmith_div_vec4_u32(~arg_0.b, vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, arg_0.b.x, u_input.a.x) % vec4<u32>(32u))))), -22583i, arg_0.d, reverseBits(~(~(~vec3<u32>(arg_0.e.x, 4294967295u, 3884u)))));
    return _wgslsmith_f_op_f32(-1000f - -811f);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    global0 = Struct_2(arg_0.c);
    let var_0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, arg_0.c), firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_2.xy, vec2<i32>(1i, arg_0.c)))), vec2<i32>(~(-arg_2.x), _wgslsmith_dot_vec2_i32(~arg_0.d.zw, vec2<i32>(25814i, global0.a))));
    global1 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_f32(590f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(819f, 1222f), _wgslsmith_f_op_f32(-225f * 116f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 40708u), arg_0.b, -6953i, arg_0.d, arg_0.e), arg_0)), 464f), vec2<f32>(121f, _wgslsmith_f_op_f32(-1000f - 1207f)), true)), vec2<f32>(737f, _wgslsmith_f_op_f32(f32(-1f) * -453f))));
    var var_2 = ~(~(~vec4<i32>(-arg_2.x, firstTrailingBit(1i), var_0, _wgslsmith_add_i32(global0.a, 65290i))));
    return 1000f;
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 15u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 45668u), -13656i, vec4<i32>(global0.a, global0.a, var_0.a, var_0.a), u_input.a), u_input.a.x, vec3<i32>(-4380i, global0.a, 53745i))))), _wgslsmith_f_op_f32(floor(1331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a, vec4<u32>(5645u, u_input.a.x, 1u, 52373u), var_0.a, vec4<i32>(0i, global0.a, var_0.a, global0.a), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), u_input.a.x, vec3<i32>(var_0.a, 0i, var_0.a)))))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(~(0u >> (u_input.a.x % 32u)), 4294967295u)), u_input.a.x), 15u)];
    var var_2 = global0.a;
    let var_3 = Struct_1(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(abs(u_input.a), vec3<u32>(16146u, 4294967295u, 0u)) ^ u_input.a.x, ~(~4294967295u)), abs(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(18688u, u_input.a.x, 22697u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 40243u) % vec4<u32>(32u)), select(vec4<u32>(1u, 24362u, u_input.a.x, u_input.a.x), vec4<u32>(24145u, u_input.a.x, 70186u, u_input.a.x), false), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)))), global0.a, vec4<i32>(firstLeadingBit(global0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(global0.a), ~8053i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, global0.a, -1i), vec3<i32>(24356i, -18100i, var_0.a))), 68510i, 25913i), select(u_input.a, u_input.a, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return _wgslsmith_div_i32(1i, ~(2147483647i ^ var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(min(min(vec3<i32>(49169i, -13717i, 17366i) ^ vec3<i32>(global0.a, 17263i, -2147483647i), vec3<i32>(global0.a, -2147483647i, -54555i) << (vec3<u32>(15474u, 61395u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(func_1(), firstLeadingBit(global0.a), _wgslsmith_mod_i32(2147483647i, 2147483647i))) ^ select(vec3<i32>(func_1(), 26482i, global0.a), -vec3<i32>(global0.a, -1i, global0.a) >> (u_input.a % vec3<u32>(32u)), global0.a >= global0.a));
    var var_1 = any(vec3<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), 40382u == u_input.a.x)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), true));
    let var_2 = Struct_2(-2147483647i);
    global1 = array<Struct_2, 15>();
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-261f * -1839f)));
    var_1 = false & any(!vec3<bool>(true, any(vec2<bool>(false, false)), any(vec3<bool>(false, false, true))));
    let var_4 = any(vec4<bool>(false, false, true, true));
    let var_5 = vec3<i32>(~(var_2.a & _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-711i, var_2.a), vec2<i32>(-5455i, 0i)), firstLeadingBit(var_0.x))), min(select(0i << (u_input.a.x % 32u), -2147483647i, var_4), global0.a), var_0.x);
    var_3 = -153f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(~countOneBits(var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(464f, 1181f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(488f, -632f) * _wgslsmith_f_op_f32(f32(-1f) * -143f)))));
}

