struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 0u, 1u);

var<private> global1: array<bool, 17>;

var<private> global2: array<bool, 1>;

var<private> global3: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec3<f32> {
    global0 = array<u32, 3>();
    let var_0 = Struct_3(~u_input.a, Struct_1(vec4<bool>(true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(71170u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], arg_0.x)), true && all(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 1u)], false, false, true)), global1[_wgslsmith_index_u32(u_input.c, 17u)]), _wgslsmith_mult_u32(4294967295u, u_input.c)), ~u_input.d);
    var var_1 = Struct_3(u_input.b, var_0.b, ~firstLeadingBit(u_input.c));
    let var_2 = vec4<i32>(-(~(~(~u_input.b.x))), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(0i & var_0.a.x, reverseBits(2147483647i)), -(-10505i << (_wgslsmith_mult_u32(var_0.c, 23685u) % 32u))), _wgslsmith_add_i32(53109i, firstLeadingBit(max(-u_input.b.x, firstTrailingBit(37246i)))), arg_1);
    global0 = array<u32, 3>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-408f))) - -1194f), -886f, _wgslsmith_div_f32(-548f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-896f, -437f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    global0 = array<u32, 3>();
    var var_0 = Struct_4(arg_1, -1212f, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, -1i)), countOneBits(vec2<i32>(0i, arg_2))), abs(u_input.b.yx)), abs(vec2<u32>(1u, ~abs(75132u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, arg_1.a, 1031f), vec3<f32>(-589f, var_0.b, arg_1.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, arg_1.a, -138f)) * vec3<f32>(-328f, arg_1.a, -213f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-957f, 604f, var_0.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.a, var_0.b, arg_1.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.a, var_0.a.a) * vec3<f32>(arg_1.a, -477f, -964f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, 2402f, arg_1.a), vec3<f32>(arg_1.a, 1626f, -885f))) + vec3<f32>(arg_1.a, 155f, var_0.b)) * _wgslsmith_f_op_vec3_f32(func_3(!var_0.a.b.a, i32(-1i) * -53754i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a, arg_1.a, arg_1.a), vec3<f32>(1488f, 814f, -233f)))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.b.b, 1u)], arg_1.b.a.x)), arg_0.x), select(!vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(arg_1.c, 17u)]), vec3<bool>(arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(80781u, 1u)]), arg_1.b.a.yyx), global1[_wgslsmith_index_u32(4294967295u, 17u)])), vec3<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(33522u, 1u)], false)) == !arg_0.x, true, arg_1.b.a.x), select(arg_1.b.a.zyx, select(arg_1.b.a.zwz, select(vec3<bool>(global2[_wgslsmith_index_u32(16411u, 1u)], var_0.a.b.a.x, false), vec3<bool>(arg_1.b.a.x, false, false), arg_0.x), false), select(select(vec3<bool>(true, var_0.a.b.a.x, arg_0.x), vec3<bool>(global1[_wgslsmith_index_u32(28584u, 17u)], global1[_wgslsmith_index_u32(arg_1.b.b, 17u)], false), var_0.a.b.a.x), select(vec3<bool>(false, true, true), var_0.a.b.a.xyw, arg_0.x), arg_1.b.a.yxz)))));
    var var_2 = arg_1.b;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -149f), Struct_1(var_2.a, var_0.a.b.b), var_0.d.x);
    return _wgslsmith_f_op_f32(-var_0.b);
}

fn func_1() -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), Struct_2(512f, Struct_1(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(4797u, 1u)]), u_input.c), 47816u), -1i)), _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(4294967295u, 1u)]), 2147483647i)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(569f, -1000f, true)) - 1f))), Struct_1(select(select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10444u, 3u)], 17u)], true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 3u)], 17u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)]), true), vec4<bool>(!global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 1u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 40247u), 1u)], false, global1[_wgslsmith_index_u32(1u, 17u)]), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(117701u, 3u)], 3u)], 17u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21223u, 3u)], 1u)])), u_input.c), u_input.c << (max(22853u, 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    let var_0 = func_1();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_0.a);
}

