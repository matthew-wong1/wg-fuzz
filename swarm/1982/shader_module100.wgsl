struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<bool, 13>;

var<private> global4: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    return ~firstTrailingBit(select(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, -6175i, 0i), -vec4<i32>(u_input.c, -1i, -1i, 16774i)), vec4<i32>(u_input.a.x, -u_input.a.x, u_input.a.x, i32(-1i) * -2147483647i), !(!global0[_wgslsmith_index_u32(u_input.d, 22u)])));
}

fn func_2() -> Struct_2 {
    global4 = select(u_input.c, _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-u_input.a.x, _wgslsmith_sub_i32(1i, -1i))), true && !global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 33611u), 13u)]) < ~54999i;
    var var_0 = ~vec4<i32>(-10656i, u_input.c, ~(-6972i), _wgslsmith_add_i32(21449i, 0i));
    var_0 = reverseBits(~(~func_3(!global3[_wgslsmith_index_u32(u_input.d, 13u)])));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(929f))), _wgslsmith_div_f32(-416f, _wgslsmith_div_f32(-1046f, 413f))), 404f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-802f - -1588f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(336f, 302f))))));
    return Struct_2(global2[_wgslsmith_index_u32(u_input.d & 1u, 18u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = -37962i;
    let var_1 = arg_0.d;
    var var_2 = Struct_2(func_2().a);
    let var_3 = func_2();
    global1 = array<vec2<bool>, 2>();
    return arg_0.d;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_4(all(vec4<bool>(any(vec3<bool>(true, false, true)), true != global3[_wgslsmith_index_u32(u_input.d, 13u)], global3[_wgslsmith_index_u32(reverseBits(u_input.d), 13u)], !global3[_wgslsmith_index_u32(u_input.d, 13u)])), func_2(), -476f, Struct_3(any(global0[_wgslsmith_index_u32(u_input.d & 1u, 22u)]), false, Struct_2(func_2().a)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.c, 0i, -43741i) >> (~vec4<u32>(1u, 1u, 36973u, 4294967295u) % vec4<u32>(32u)))), vec3<bool>(false, true, (abs(u_input.c) > ~u_input.c) != any(select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 13u)], global3[_wgslsmith_index_u32(13350u, 13u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 13u)], true, global3[_wgslsmith_index_u32(u_input.d, 13u)]), global3[_wgslsmith_index_u32(4294967295u, 13u)]))), !global0[_wgslsmith_index_u32(select(1u, 0u, true), 22u)]);
    global1 = array<vec2<bool>, 2>();
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c.a.b.x, 4294967295u << (_wgslsmith_add_u32(min(_wgslsmith_add_u32(var_0.c.a.b.x, u_input.d), _wgslsmith_mod_u32(29134u, u_input.d)), _wgslsmith_div_u32(abs(var_0.c.a.b.x), var_0.c.a.b.x)) % 32u), var_0.c.a.b.x), 13u)];
    global1 = array<vec2<bool>, 2>();
    var var_1 = 1u ^ ~u_input.d;
    return var_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(u_input.d), 18u)];
    var var_1 = var_0.b.wzx;
    global1 = array<vec2<bool>, 2>();
    let var_2 = var_0.e;
    let var_3 = Struct_2(func_1());
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(950f - var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(746f - -666f) - _wgslsmith_div_f32(var_0.a.x, var_0.a.x))))) * func_1().a.x);
    var var_5 = vec4<bool>(!var_0.d.x, all(!vec4<bool>(true, !var_3.a.d.x, global3[_wgslsmith_index_u32(37812u, 13u)], false)), all(select(vec3<bool>(true, !var_3.a.d.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.d.x, var_0.d.x), var_3.a.d.x || false), !all(vec4<bool>(true, var_3.a.d.x, true, global3[_wgslsmith_index_u32(4294967295u, 13u)])))), false);
    var var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a.x);
}

