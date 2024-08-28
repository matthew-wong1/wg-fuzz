struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec2<f32> = vec2<f32>(-1229f, -153f);

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 28279i), vec2<i32>(-1i, 1i), vec2<i32>(-75605i, 3254i), vec2<i32>(0i, 33232i), vec2<i32>(-1i, -9351i), vec2<i32>(0i, 0i), vec2<i32>(14090i, 0i), vec2<i32>(-63245i, 21368i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -35208i), vec2<i32>(2147483647i, -11346i), vec2<i32>(1i, -20984i), vec2<i32>(83548i, 85417i), vec2<i32>(58522i, -16159i), vec2<i32>(0i, 1i));

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = select(vec2<bool>(!global0[_wgslsmith_index_u32(abs(u_input.b.x), 14u)], !all(!vec3<bool>(false, global0[_wgslsmith_index_u32(6125u, 14u)], false))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(957u, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(1u, 14u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 14u)]), vec2<bool>(true, false)), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), false), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 14u)], true), !vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1, 14u)]), global1.x < 293f), vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(9647u, 14u)], true)), firstTrailingBit(u_input.b.x) <= 4294967295u), select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)])), !select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(1267u, 14u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1, 14u)])), false && global0[_wgslsmith_index_u32(u_input.b.x, 14u)])));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), global1.x);
    let var_1 = Struct_2(arg_0.b, Struct_1(arg_0.b.a));
    let var_2 = _wgslsmith_add_u32(~(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x) | 0u) ^ u_input.b.x, max(_wgslsmith_mult_u32(16434u, firstTrailingBit(1u)), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) & u_input.b.x) << (arg_1 % 32u));
    let var_3 = vec4<i32>(40374i, ~(~(2147483647i | u_input.a.x)), u_input.c, -2431i) ^ u_input.a;
    return arg_2.a;
}

fn func_2() -> Struct_1 {
    global3 = global1.x;
    global2 = array<vec2<i32>, 16>();
    var var_0 = Struct_2(Struct_1(vec3<f32>(740f, _wgslsmith_f_op_f32(-global1.x), 578f)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<f32>(global1.x, 1021f, global1.x)), Struct_1(vec3<f32>(global1.x, -1545f, 1000f))), ~u_input.b.x, Struct_1(vec3<f32>(global1.x, 1846f, -1711f))))));
    let var_1 = true;
    var var_2 = true;
    return var_0.b;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-880f, -1000f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -302f, global1.x)), vec3<bool>(true, true, true)))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, -302f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(168f + -1765f), _wgslsmith_f_op_f32(-1000f - 353f)))) - vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, var_0.a.x)))));
    global2 = array<vec2<i32>, 16>();
    let var_1 = vec4<i32>(-12255i, _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(-2147483647i, -2147483647i)), max(_wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -11149i), 1i), ~(-21978i)), (u_input.a.x ^ -2147483647i) | (u_input.a.x ^ u_input.a.x));
    var_0 = func_2();
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = !global0[_wgslsmith_index_u32(76467u, 14u)];
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1245f + 306f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -676f) - 609f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(-651f - 1000f))) + 1370f));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-357f, Struct_2(func_1(), func_1()))) * _wgslsmith_f_op_f32(max(-737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -680f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1721f))) + var_0));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(123f, -1000f, global1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, global1.x, var_0)))))), func_2());
    let var_2 = Struct_2(Struct_1(var_1.a.a), var_1.b);
    global2 = array<vec2<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.a.x, var_1.a.a.x, global1.x, 786f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1181f, var_0, -1344f), vec4<f32>(global1.x, 504f, var_0, 2158f))))));
}

