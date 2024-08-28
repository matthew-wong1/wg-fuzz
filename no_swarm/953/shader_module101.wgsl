struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: Struct_2;

var<private> global2: array<f32, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    global0 = select(global1.a, vec4<bool>(true, any(!(!global1.a.zyx)), false, arg_2.a.x), global0.x);
    let var_0 = vec2<bool>(58422i > firstTrailingBit(u_input.a), select(false, false, false));
    var var_1 = arg_2;
    let var_2 = Struct_1(global1.c.a ^ ~_wgslsmith_sub_vec3_u32(arg_0.a, _wgslsmith_mod_vec3_u32(var_1.c.b.xzx, vec3<u32>(101770u, global1.c.c, global1.c.b.x))), select(global1.c.b, select(_wgslsmith_add_vec4_u32(global1.c.b, ~global1.c.b), ~firstTrailingBit(arg_0.b), vec4<bool>(true, all(arg_2.a.xw), true, false)), arg_2.a.x), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(7856u, 21u)])), _wgslsmith_f_op_f32(ceil(-393f))))) + arg_2.d));
    let var_3 = !all(!(!var_1.a.xyy));
    return (_wgslsmith_sub_i32(-34816i, _wgslsmith_clamp_i32(select(arg_1.x, u_input.d.x, var_3), u_input.c.x, -arg_1.x)) ^ _wgslsmith_div_i32(abs(_wgslsmith_add_i32(u_input.b, u_input.d.x)), 1i)) & arg_1.x;
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.c.d), global1.d);
    global2 = array<f32, 21>();
    let var_1 = vec4<i32>(~(-(-5321i & -u_input.d.x)), _wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-1i, -2147483647i, u_input.c.x)), u_input.c.x | 35599i, false), func_3(Struct_1(global1.c.a, vec4<u32>(global1.c.b.x, 20502u, global1.c.c, global1.c.b.x), global1.c.a.x, -1004f), max(u_input.d.zz, u_input.c.yx), Struct_2(vec4<bool>(false, false, global1.a.x, true), vec2<f32>(var_0.x, 1000f), global1.c, var_0.x))) & -2147483647i, ~firstTrailingBit(~select(u_input.b, 1i, global0.x)), firstTrailingBit(reverseBits(u_input.b)));
    let var_2 = select(all(vec2<bool>(false, true)), var_0.x <= 514f, global1.a.x);
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.d, -1025f) - global1.b)) + vec2<f32>(var_0.x, 424f))));
    return Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b))), Struct_1(~(~(global1.c.b.ywz >> (vec3<u32>(global1.c.a.x, global1.c.b.x, 9327u) % vec3<u32>(32u)))), global1.c.b, _wgslsmith_clamp_u32(countOneBits(1u), min(global1.c.a.x, global1.c.c ^ 47069u), global1.c.c), -420f), _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(abs(-977f))));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<bool> {
    global2 = array<f32, 21>();
    var var_0 = func_2();
    let var_1 = !any(!global1.a);
    var var_2 = func_2().c;
    global2 = array<f32, 21>();
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global1.c.b.x, 21u)])), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1531f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1194f, global1.b.x))))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-1044f)), _wgslsmith_div_f32(-1262f, _wgslsmith_div_f32(-1227f, 877f)))), func_2().c, global1.d);
    global0 = func_2().a;
    global0 = func_2().a;
    var var_0 = true;
    var var_1 = select(!func_2().a.wyz, global1.a.wzz, global0.x);
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c.zz) >> (_wgslsmith_div_vec2_u32(global1.c.a.xx, vec2<u32>(_wgslsmith_div_u32(10750u, 1u), _wgslsmith_mod_u32(global1.c.b.x, 25714u))) % vec2<u32>(32u)));
}

