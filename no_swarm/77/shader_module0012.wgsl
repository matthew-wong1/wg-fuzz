struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: vec3<i32>;

var<private> global2: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    global0 = array<vec3<bool>, 23>();
    var_0 = arg_1;
    let var_1 = firstTrailingBit(firstLeadingBit(global1.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a))), vec3<bool>(any(vec4<bool>(!arg_3.b.x, true != arg_1.b.x, true, u_input.c != 0u)), arg_1.b.x, arg_1.b.x), 4294967295u);
    return _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(15948u, arg_3.c), var_0.c >> (var_2.c % 32u), 4294967295u), max(vec3<u32>(var_2.c, arg_1.c, 53976u), abs(vec3<u32>(41354u, 50765u, arg_0.x)))), firstLeadingBit(var_2.c));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = true;
    var var_1 = arg_2;
    global2 = 0u;
    global1 = _wgslsmith_div_vec3_i32(u_input.d, u_input.d);
    global0 = array<vec3<bool>, 23>();
    return _wgslsmith_div_vec3_u32(~vec3<u32>(abs(_wgslsmith_sub_u32(u_input.c, 23342u)), _wgslsmith_div_u32(func_3(vec2<u32>(var_1.c, 4294967295u), arg_2, vec2<i32>(0i, u_input.b), arg_2), 1u), var_1.c), select(~select(vec3<u32>(var_1.c, 30587u, 136917u), vec3<u32>(32406u, arg_2.c, 4294967295u), var_1.b.x), vec3<u32>(~65810u, 0u, u_input.c), var_1.b));
}

fn func_1() -> u32 {
    var var_0 = u_input.c <= _wgslsmith_clamp_u32(5428u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.c) ^ vec3<u32>(u_input.c, 1u, u_input.e), ~func_2(false, -1340f, Struct_1(-1392f, vec3<bool>(false, false, false), u_input.e))), ~(~u_input.e) >> (firstTrailingBit(u_input.e) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-200f * 155f)))), !vec3<bool>(true, global1.x <= abs(2147483647i), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), 45168u);
    return firstTrailingBit(_wgslsmith_sub_u32(reverseBits(u_input.c), 58740u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~func_1());
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-326f - -1024f), !(!select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 23u)], all(global0[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_mod_u32((u_input.c | (u_input.c << (9857u % 32u))) >> (21409u % 32u), ~1u >> (reverseBits(func_3(vec2<u32>(u_input.e, 1u), Struct_1(905f, vec3<bool>(false, false, false), 22921u), vec2<i32>(global1.x, global1.x), Struct_1(-117f, vec3<bool>(true, true, true), u_input.c))) % 32u)));
    let var_1 = true;
    global2 = u_input.c;
    global2 = 4294967295u >> (_wgslsmith_mod_u32(2195u, u_input.c) % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(752f)), select(vec3<bool>(all(var_0.b.yx), true, var_1), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c, ~24748u), 23u)], !(!all(vec2<bool>(false, false)))), ~u_input.c);
    var var_3 = firstLeadingBit(1i);
    var var_4 = select(any(!vec3<bool>(var_0.b.x, var_1, var_0.b.x)) && (1i > _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global1.zy, vec2<i32>(-2147483647i, global1.x)), _wgslsmith_sub_i32(0i, global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-919i, 64396i, 24013i), vec3<i32>(-1i, u_input.d.x, 23436i)))), all(select(!select(vec2<bool>(var_0.b.x, var_2.b.x), vec2<bool>(var_2.b.x, var_0.b.x), true), vec2<bool>(true, true), false)), any(!select(var_2.b.zz, !vec2<bool>(false, var_0.b.x), true)));
    let var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~877u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(808f, var_0.a, 1487f, var_2.a)), vec4<f32>(304f, -673f, -699f, -1224f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, -1156f, 143f, 787f) * vec4<f32>(-943f, 279f, var_2.a, var_2.a))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_2.a, var_0.a, -1610f)));
}

