struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
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

var<private> global0: Struct_2 = Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec3<f32>(-1184f, -1031f, 326f), vec4<u32>(28107u, 104692u, 4294967295u, 34020u)), 4294967295u);

var<private> global1: array<f32, 7> = array<f32, 7>(-994f, -811f, 706f, -119f, 1655f, -781f, -2426f);

var<private> global2: array<bool, 16>;

var<private> global3: f32 = 1598f;

var<private> global4: array<u32, 18> = array<u32, 18>(4294967295u, 13913u, 34792u, 65820u, 70095u, 1u, 9572u, 1u, 4294967295u, 77741u, 35429u, 4294967295u, 5105u, 71913u, 1u, 29884u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = !(!vec4<bool>(true, !any(vec2<bool>(arg_0, true)), arg_0, arg_0));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 7u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 7u)]), -145f)) + -1000f)));
    var var_2 = global0.b.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a.x, 1861f, 1180f) + global0.b.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.x, global0.b.a.x, global0.b.a.x)))))), global0.b.b << (~(~vec4<u32>(global0.b.b.x, 4294967295u, global4[_wgslsmith_index_u32(4294967295u, 18u)], global0.c)) % vec4<u32>(32u)));
    var_2 = global0.b.a;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_3.a.x, global0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(56972u, 7u)], global1[_wgslsmith_index_u32(global0.b.b.x, 7u)])) * _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(abs(global0.b.b.x), 18u)], 7u)]))), _wgslsmith_f_op_f32(select(510f, _wgslsmith_f_op_f32(-global0.b.a.x), all(var_0)))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(~countOneBits(-_wgslsmith_mod_vec2_i32(global0.a, u_input.b)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(ceil(1008f)) <= _wgslsmith_f_op_f32(global0.b.a.x * arg_0.a.x))), firstTrailingBit(~(~global0.b.b))), 1u);
    global3 = -899f;
    global2 = array<bool, 16>();
    global4 = array<u32, 18>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.xz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(arg_0.a.zy))))) + arg_0.a.xz));
    return !(!vec4<bool>(!global2[_wgslsmith_index_u32(~16850u, 16u)], true & any(vec4<bool>(global2[_wgslsmith_index_u32(global0.b.b.x, 16u)], true, true, global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), true, global2[_wgslsmith_index_u32(0u, 16u)]));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = select(!select(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 16u)], true, global2[_wgslsmith_index_u32(85297u, 16u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(global0.c, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(63041u, 16u)], global2[_wgslsmith_index_u32(594u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 16u)], global2[_wgslsmith_index_u32(global0.c, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), global2[_wgslsmith_index_u32(arg_0.x, 16u)]), any(select(vec3<bool>(global2[_wgslsmith_index_u32(13846u, 16u)], true, global2[_wgslsmith_index_u32(0u, 16u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), true))), select(select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], true, false, global2[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.x, 18u)], 18u)], 16u)], global2[_wgslsmith_index_u32(6682u, 16u)], global2[_wgslsmith_index_u32(global0.c, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(69527u, 16u)], true, false, true)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(10248u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], true, false, global2[_wgslsmith_index_u32(global0.c, 16u)]))), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(5096u, 16u)], global2[_wgslsmith_index_u32(2436u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], true), all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], false))), vec4<bool>(true, true, true, true)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(20068u, 7u)], 813f, 273f) - global0.b.a), global0.b.b)), select(!func_2(global0.b), vec4<bool>(true, global2[_wgslsmith_index_u32(30851u, 16u)], true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 16487u), 16u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(49155u, 16u)], !global2[_wgslsmith_index_u32(100468u, 16u)], global2[_wgslsmith_index_u32(23195u, 16u)]))), any(select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 68682u), 16u)], all(vec2<bool>(global2[_wgslsmith_index_u32(15070u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]))), true || global2[_wgslsmith_index_u32(~global0.b.b.x, 16u)])));
    let var_1 = abs(select(vec3<i32>(-global0.a.x, reverseBits(-16868i), abs(34795i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.a.x, u_input.a.x, -2147483647i), vec3<i32>(global0.a.x, -23955i, 19986i)), global2[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(~global0.b.b.x, 18u)]), 16u)]) | ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-22103i, u_input.b.x, -2147483647i), vec3<i32>(u_input.a.x, 2147483647i, global0.a.x))));
    global2 = array<bool, 16>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(220f)) - _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 7u)]))))) * -330f));
    var var_2 = global0.b;
    return 267f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(global0.b.b)), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(min(34081u, global4[_wgslsmith_index_u32(u_input.c.x, 18u)]), 18u)], 7u)], global2[_wgslsmith_index_u32(global0.c, 16u)])), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(235f + global1[_wgslsmith_index_u32(44159u, 7u)])) * _wgslsmith_f_op_f32(sign(-1025f)))) * -900f);
    global1 = array<f32, 7>();
    var var_1 = global0.b;
    var var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1579i);
}

