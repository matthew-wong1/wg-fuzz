struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<i32, 27>;

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.x, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.b.zyy), global0.a.b.wxz) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.b.wzx * vec3<f32>(292f, global0.b.x, arg_1.a.a)), _wgslsmith_f_op_vec3_f32(floor(global0.a.b.xyz)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.a.b.xxx - _wgslsmith_f_op_vec3_f32(global0.a.b.xxz * global0.a.b.zwy)))), vec3<bool>(arg_1.a.c <= 0i, global2.x, true))));
    var var_1 = vec3<bool>(global2.x, countOneBits(abs(1u)) == u_input.b, any(!global2.zy));
    global1 = array<i32, 27>();
    let var_2 = ~_wgslsmith_mult_u32(18431u, ~_wgslsmith_div_u32(u_input.b << (u_input.b % 32u), _wgslsmith_sub_u32(u_input.b, 64039u)));
    global1 = array<i32, 27>();
    return arg_1.a.b;
}

fn func_2() -> Struct_1 {
    let var_0 = global0.a.c;
    global1 = array<i32, 27>();
    var var_1 = vec2<bool>(175f > _wgslsmith_f_op_f32(-global0.c), global2.x);
    global1 = array<i32, 27>();
    var var_2 = global0.a.b;
    return Struct_1(173f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(1i, Struct_3(global0.a, global0.b, 1447f, 1000f)))))), global0.a.b)), select(global0.a.c, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(14788i, global1[_wgslsmith_index_u32(1u, 27u)], 2147483647i, -2147483647i), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)], 30304i, global1[_wgslsmith_index_u32(u_input.b, 27u)])), abs(vec4<i32>(-2778i, global1[_wgslsmith_index_u32(89447u, 27u)], 70554i, global1[_wgslsmith_index_u32(u_input.b, 27u)])) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), any(vec3<bool>(var_1.x, !global2.x, true))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = arg_0.c;
    let var_1 = 2147483647i;
    var_0 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(~0u, 27u)], arg_0.c);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, -735f)));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    global0 = arg_2;
    var var_0 = ~(~(~(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(u_input.b, 4294967295u)) | ~vec2<u32>(7000u, u_input.b))));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.b.xw - arg_2.b) + global0.b))), _wgslsmith_f_op_f32(step(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(528f, -391f)) - arg_1.e.b.x)))), arg_0.b.x);
    let var_1 = Struct_5(arg_2, -1i, var_0.x, arg_2.a, all(!(!vec3<bool>(arg_1.b, true, arg_1.b))));
    global0 = arg_2;
    return select(1i, _wgslsmith_div_i32(77057i, ~(-55289i)), all(vec4<bool>(false, !arg_1.b, var_0.x <= 141654u, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(249f + _wgslsmith_f_op_f32(-global0.d)), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.a.a, global2.x)))), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.a + global0.b.x)))), _wgslsmith_add_i32(~func_4(func_1(Struct_1(global0.c, vec4<f32>(global0.d, -1272f, 535f, global0.d), global1[_wgslsmith_index_u32(1u, 27u)]), global0.a, vec2<i32>(1i, -64988i), true), Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.a.x, -21044i), false, 1u, global0.a, global0.a), Struct_3(Struct_1(global0.d, global0.a.b, 43916i), vec2<f32>(global0.b.x, 140f), -770f, 1880f)), -2147483647i));
    var var_1 = Struct_3(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.xx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.b.xz * vec2<f32>(var_0.a, -546f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-576f)), _wgslsmith_f_op_f32(min(global0.c, 421f))))), -1209f, global0.a.b.x);
    global0 = Struct_3(func_1(Struct_1(1000f, _wgslsmith_div_vec4_f32(vec4<f32>(-232f, 488f, -1687f, -110f), vec4<f32>(827f, 1158f, var_1.d, global0.d)), global0.a.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.a, var_1.c))), var_0.b, -100143i), u_input.a, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.b.wy, global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1057f) * global0.b), false))) - _wgslsmith_f_op_vec2_f32(global0.b - var_0.b.xw)), _wgslsmith_f_op_f32(round(-444f)), global0.c);
    var var_2 = vec2<i32>(-func_2().c, var_1.a.c);
    var var_3 = Struct_2(vec3<i32>(func_4(Struct_1(var_1.c, vec4<f32>(-117f, -392f, 346f, 367f), 0i), Struct_2(vec3<i32>(u_input.a.x, -1i, global1[_wgslsmith_index_u32(4294967295u, 27u)]), true, u_input.b, var_1.a, global0.a), Struct_3(Struct_1(var_0.b.x, vec4<f32>(var_0.b.x, -282f, var_1.c, global0.b.x), 0i), vec2<f32>(var_0.a, 1253f), var_1.b.x, var_1.a.a)) & var_0.c, 0i, 47670i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(792f, _wgslsmith_f_op_f32(round(var_0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f + var_1.d))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(864f, 1000f)), _wgslsmith_f_op_f32(-684f * global0.a.b.x)))), 4294967295u, Struct_1(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, 823f))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f * 1009f) * global0.c), _wgslsmith_f_op_f32(func_1(var_1.a, var_1.a, vec2<i32>(-2147483647i, 6837i), global2.x).a - var_1.a.b.x), 145f), -1i), global0.a);
    let var_4 = 4294967295u;
    let var_5 = u_input.a.x;
    var var_6 = Struct_5(Struct_3(func_2(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.b.ww)), global0.b, u_input.a.x != ~var_0.c)), var_0.b.x, -347f), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_5, var_2.x), _wgslsmith_mod_vec3_i32(var_3.a, vec3<i32>(var_3.d.c, 4169i, var_3.a.x))), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.c, u_input.a.x), vec2<i32>(15528i, var_5)))), ~1u, func_2(), any(vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u));
}

