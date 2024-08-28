struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, true, false, false, false, false, false, false, true, false, true, false, false, true, false, false);

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(9143i, 0i), true), Struct_1(vec2<i32>(-1042i, 29062i), false), Struct_1(vec2<i32>(0i, 15740i), false), Struct_1(vec2<i32>(11450i, -1i), false), Struct_1(vec2<i32>(2586i, -38767i), false), Struct_1(vec2<i32>(-1i, i32(-2147483648)), true));

var<private> global4: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = Struct_5(global0.a);
    let var_1 = var_0.a.b;
    global1 = array<bool, 17>();
    var var_2 = !select(vec4<bool>(false, global1[_wgslsmith_index_u32(7562u, 17u)], true, global0.a.b), !vec4<bool>(true, true | global0.a.b, 287f > global4.x, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], var_0.a.b, global0.a.b, var_0.a.b))), !vec4<bool>(false, true, var_0.a.b, global0.a.b));
    var var_3 = Struct_5(var_0.a);
    return !(!vec3<bool>(all(vec4<bool>(var_0.a.b, false, false, var_0.a.b)) || !var_0.a.b, any(var_2.zx), var_2.x));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32, arg_3: f32) -> vec3<bool> {
    let var_0 = vec2<bool>(global0.a.b, !(!any(select(vec3<bool>(false, global0.a.b, false), vec3<bool>(true, arg_0.a.b, arg_1.a.b), false))));
    let var_1 = select(vec3<bool>(global0.a.b, -569f <= global4.x, !arg_1.a.b), func_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 22102i, -10644i), _wgslsmith_sub_vec3_i32(u_input.b.ywy, _wgslsmith_add_vec3_i32(u_input.b.wzz, u_input.b.www)))), !func_3(~(-u_input.b.x)));
    return vec3<bool>(var_0.x, !(global0.b != global0.b), any(select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 17u)]), var_1, vec3<bool>(false, false, false)), vec3<bool>(global0.a.b, -4758i > arg_1.a.a.x, all(vec4<bool>(global0.a.b, false, false, false))), arg_1.a.b)));
}

fn func_1() -> Struct_5 {
    let var_0 = vec4<bool>(!(!any(func_2(Struct_5(Struct_1(global0.a.a, true)), Struct_5(global0.a), global4.x, global4.x))), global1[_wgslsmith_index_u32(43544u, 17u)], all(!select(!vec4<bool>(false, global0.a.b, false, false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 17u)], true, global0.a.b), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], true, false, true), global1[_wgslsmith_index_u32(0u, 17u)]), any(vec4<bool>(false, true, global0.a.b, global1[_wgslsmith_index_u32(23997u, 17u)])))), all(!vec3<bool>(19122i == global0.a.a.x, true, true)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.x)) * _wgslsmith_div_f32(2121f, _wgslsmith_f_op_f32(-global4.x)))), global4.x, all(var_0.xww)));
    global3 = array<Struct_1, 6>();
    return Struct_5(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_5(Struct_1((_wgslsmith_mult_vec2_i32(var_0.a.a, var_0.a.a) | -u_input.b.zx) ^ ~countOneBits(vec2<i32>(u_input.b.x, 16768i)), true));
    let var_2 = vec2<bool>(func_1().a.b & (~firstTrailingBit(1u) == (63425u >> ((global0.b >> (global0.b % 32u)) % 32u))), all(select(select(vec4<bool>(global0.a.b, var_0.a.b, global0.a.b, var_0.a.b), vec4<bool>(global0.a.b, global1[_wgslsmith_index_u32(1u, 17u)], global0.a.b, var_0.a.b), vec4<bool>(true, true, false, global0.a.b)), vec4<bool>(true, true, true, var_1.a.b), !vec4<bool>(false, global1[_wgslsmith_index_u32(16617u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], var_0.a.b))) | func_3(u_input.b.x).x);
    let var_3 = _wgslsmith_div_u32(u_input.c.x, 8529u);
    var_1 = func_1();
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, -704f, global4.x, global4.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, global4.x, 629f, 1000f)))))))));
    var var_5 = var_0;
    global3 = array<Struct_1, 6>();
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_5.a.a, _wgslsmith_mult_vec2_i32(var_1.a.a, vec2<i32>(-global0.a.a.x, 2147483647i))), u_input.a, var_1.a.a.x, ~(vec3<u32>(1u, 16928u, _wgslsmith_clamp_u32(u_input.c.x, var_6, var_3)) | ~(~u_input.c.wzw)));
}

