struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: Struct_5 = Struct_5(0u);

var<private> global2: Struct_1 = Struct_1(true, -1387f, 4294967295u);

var<private> global3: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(675f, -658f, 1867f, 509f), vec4<f32>(-2255f, 1000f, -267f, -209f), vec4<f32>(-361f, 133f, -1000f, -1774f), vec4<f32>(-170f, 1117f, 1106f, 888f), vec4<f32>(381f, 847f, 660f, -153f), vec4<f32>(2469f, 343f, -1000f, 1000f), vec4<f32>(-624f, -558f, 301f, 1125f), vec4<f32>(1630f, -841f, -634f, -1000f));

var<private> global4: Struct_4 = Struct_4(23825u, Struct_1(true, -486f, 79156u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_5(~(~firstTrailingBit(66420u)));
    global0 = array<Struct_3, 29>();
    global2 = Struct_1(select(any(vec4<bool>(true, !global2.a, global4.b.a, false)), global4.b.a || global4.b.a, ~4294967295u != firstLeadingBit(_wgslsmith_div_u32(4294967295u, global4.a))), 1000f, 1u);
    var_0 = Struct_5(select(0u, 97829u, (false != any(vec3<bool>(global2.a, false, true))) || (u_input.d > ~u_input.d)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global4.b.b)))))), global4.b.b);
    return global1.a;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    var var_1 = !(!(true | (_wgslsmith_add_i32(u_input.d, var_0.c.x) >= _wgslsmith_sub_i32(20323i, -1584i))));
    let var_2 = all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, global4.b.a), vec2<bool>(var_0.b.b.a, true)), select(select(vec2<bool>(var_0.b.b.a, global2.a), vec2<bool>(arg_3.a, global4.b.a), vec2<bool>(false, true)), vec2<bool>(true, true), !vec2<bool>(false, global4.b.a)), !global4.b.a), !vec2<bool>(u_input.d <= var_0.c.x, var_0.b.b.a), vec2<bool>(arg_3.a, !select(true, arg_3.a, global4.b.a))));
    return !vec3<bool>(all(vec2<bool>(true, global4.b.a)), all(!select(vec2<bool>(var_0.b.b.a, true), vec2<bool>(arg_3.a, false), vec2<bool>(false, true))), global2.a);
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> Struct_5 {
    let var_0 = Struct_4(4294967295u, global4.b);
    let var_1 = select(vec3<bool>(true, true, true), select(func_3(func_2(vec4<u32>(0u, 62451u, var_0.a, u_input.a.x)), u_input.b, u_input.b, Struct_1(select(false, true, false), 621f, ~1u)), vec3<bool>(var_0.b.a, !global4.b.a == var_0.b.a, global2.a), !(!vec3<bool>(true, global4.b.a, global2.a))), !select(vec3<bool>(any(vec2<bool>(global4.b.a, true)), all(vec4<bool>(false, true, global2.a, false)), true), select(!vec3<bool>(true, global2.a, false), vec3<bool>(true, true, true), any(vec4<bool>(true, global2.a, global4.b.a, true))), !(!vec3<bool>(true, global2.a, false))));
    var var_2 = select(!var_1.yx, var_1.zz, vec2<bool>(var_0.b.a, false));
    let var_3 = ~(~(~select(u_input.a, u_input.a, vec2<bool>(false, false)) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 59431u), vec2<u32>(18220u, u_input.c) & vec2<u32>(global4.b.c, var_0.a))));
    var var_4 = var_0.b.a;
    return Struct_5(~78933u);
}

fn func_4(arg_0: Struct_5) -> bool {
    var var_0 = global2.a;
    global1 = arg_0;
    let var_1 = abs(-(~vec4<i32>(-15852i, 33602i, u_input.d, u_input.d)));
    global4 = Struct_4(~4294967295u, global4.b);
    let var_2 = -211f;
    return 132f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), 633f)) - _wgslsmith_f_op_f32(floor(global4.b.b)));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec3_u32(reverseBits(u_input.b << (u_input.b % vec3<u32>(32u))), select(~vec3<u32>(global1.a, u_input.c, global1.a), ~(vec3<u32>(45355u, 65580u, global2.c) << (vec3<u32>(7096u, global1.a, 0u) % vec3<u32>(32u))), vec3<bool>(arg_1, global2.a, !global4.b.a)) ^ vec3<u32>(abs(~0u), max(~global2.c, u_input.c), _wgslsmith_mod_u32(~0u, 1u)));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, func_1(arg_0, -(~u_input.d)).a, 13596u), _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(0u >> (var_0.x % 32u), countOneBits(1u), ~global4.b.c), reverseBits(_wgslsmith_clamp_vec3_u32(u_input.b, var_0, var_0)))));
    global3 = array<vec4<f32>, 8>();
    let var_2 = true;
    var var_3 = 1u;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(465f, global2.b))) - _wgslsmith_f_op_f32(-global2.b)), ~vec4<u32>(13192u, _wgslsmith_dot_vec2_u32(vec2<u32>(27210u, global2.c), vec2<u32>(arg_0.a, 22570u)) << (~global4.a % 32u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global4.b.c, var_0.x, 1u), ~vec3<u32>(global2.c, 4294967295u, global4.a))), u_input.d, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 29>();
    global4 = Struct_4(global2.c, Struct_1(any(vec3<bool>(global4.b.a, global4.b.a, global2.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-211f))), -456f)), ~reverseBits(~20085u)));
    let var_0 = vec3<i32>(-19664i, ~_wgslsmith_add_i32(_wgslsmith_add_i32(-28182i, u_input.d << (4294967295u % 32u)), 0i), 0i);
    var var_1 = 4294967295u;
    let var_2 = 20989i >= ~(-u_input.d);
    let x = u_input.a;
    s_output = func_5(Struct_5(global1.a), !func_4(func_1(Struct_5(u_input.c), var_0.x)) | var_2);
}

