struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(21153u, 0u), true, vec2<bool>(false, false), vec3<f32>(1579f, -552f, -1658f)), vec4<i32>(-1i, -38320i, -26586i, i32(-2147483648)), Struct_1(vec2<u32>(48717u, 28565u), false, vec2<bool>(false, false), vec3<f32>(-464f, -134f, 714f)), vec2<u32>(0u, 1u), 0u);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(4294967295u, 12524u), true, vec2<bool>(false, false), vec3<f32>(1468f, 337f, -185f)));

var<private> global2: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> vec2<u32> {
    global1 = array<Struct_1, 1>();
    global0 = Struct_2(global1[_wgslsmith_index_u32(~arg_2, 1u)], _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.a, u_input.a, -vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global0.b.x)) << ((vec4<u32>(65576u, arg_2, global0.a.a.x, global0.d.x) & vec4<u32>(arg_2, 46057u, arg_2, 47704u)) % vec4<u32>(32u)), global0.b), global0.a, ~select(~(global0.a.a | vec2<u32>(0u, global0.c.a.x)), global0.a.a, false), ~min(~(~13871u), _wgslsmith_clamp_u32(8438u, select(30349u, arg_2, true), 4294967295u)));
    let var_0 = -471f;
    global0 = Struct_2(global0.c, ~(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, u_input.a.x, global0.b.x, global0.b.x), global0.b), u_input.a)), global0.a, countOneBits(firstLeadingBit(~global0.c.a)), firstTrailingBit(arg_2));
    let var_1 = global0.c.a.x;
    return _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(global0.d, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, arg_2), reverseBits(vec2<u32>(arg_2, global0.a.a.x)))), ~select(vec2<u32>(0u, 1u), global0.d, vec2<bool>(true, any(vec4<bool>(arg_0, true, arg_1.x, arg_0)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_1 {
    global2 = 0u;
    global1 = array<Struct_1, 1>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(~global0.a.a, func_3(true, select(vec3<bool>(false, false, global0.a.c.x), vec3<bool>(arg_0.x, global0.c.b, false), false), firstTrailingBit(global0.d.x))), all(select(select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, global0.a.c.x, true), vec3<bool>(false, global0.a.b, arg_0.x)), !vec3<bool>(true, false, arg_0.x), !vec3<bool>(global0.a.c.x, true, false))), arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.d.x, global0.c.d.x, 629f) - global0.c.d))))), select(select(select(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, global0.a.b), true), !vec3<bool>(global0.a.b, arg_0.x, true), false), vec3<bool>(any(vec2<bool>(global0.c.c.x, false)), any(vec2<bool>(global0.c.c.x, arg_0.x)), true), vec3<bool>(false, false, select(true, arg_0.x, true))), vec3<bool>(true, false, true), !(!global0.c.c.x) & any(!global0.a.c)), abs(~min(~vec3<u32>(22695u, 30568u, global0.a.a.x), ~vec3<u32>(global0.a.a.x, 7433u, global0.a.a.x))), -1i);
    let var_1 = var_0.a;
    let var_2 = -584f;
    return Struct_1(func_3(true, select(vec3<bool>(true, false, var_2 >= -1813f), var_0.b, true), select(countOneBits(1u) >> (0u % 32u), ~(var_1.a.x << (var_1.a.x % 32u)), all(var_0.a.c))), any(select(!(!vec4<bool>(false, arg_0.x, true, false)), select(select(vec4<bool>(false, false, var_0.b.x, false), vec4<bool>(arg_0.x, global0.a.c.x, false, false), true), !vec4<bool>(false, var_0.a.c.x, var_1.c.x, var_0.b.x), select(vec4<bool>(var_0.a.b, arg_0.x, var_0.b.x, true), vec4<bool>(false, var_0.a.b, true, false), vec4<bool>(true, false, true, global0.a.b))), vec4<bool>(true, true, true, var_0.a.c.x != false))), arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1308f * global0.c.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(ceil(889f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(floor(var_2)), _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-var_2)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = arg_0.x;
    global0 = Struct_2(func_2(select(!vec2<bool>(true, global0.c.b), select(global0.a.c, select(global0.c.c, vec2<bool>(false, true), false), u_input.a.x < arg_1.x), global0.a.c), vec2<i32>(-u_input.a.x, ~(-1i))), vec4<i32>(~(-1i), arg_1.x, 1i, _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_sub_i32(~u_input.a.x, select(arg_1.x, 2802i, false)))), func_2(vec2<bool>(true, any(!vec4<bool>(false, global0.a.b, false, global0.c.c.x))), ~(firstTrailingBit(vec2<i32>(30942i, 2147483647i)) & reverseBits(global0.b.xz))), ((vec2<u32>(4294967295u, 43265u) >> (global0.d % vec2<u32>(32u))) | func_2(select(global0.c.c, vec2<bool>(false, true), vec2<bool>(true, global0.c.b)), _wgslsmith_add_vec2_i32(vec2<i32>(-45665i, -1i), vec2<i32>(global0.b.x, -29462i))).a) & _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(33552u), global0.a.a.x), global0.a.a), arg_0.x);
    var_0 = global0.e;
    var_0 = abs(_wgslsmith_div_u32(~(~abs(arg_0.x)), _wgslsmith_mod_u32(global0.a.a.x, 101570u)));
    var var_1 = ~vec4<u32>(21235u, arg_0.x, global0.e, _wgslsmith_div_u32(1u, global0.e));
    return Struct_2(func_2(global0.a.c, vec2<i32>(2147483647i, 2147483647i >> (0u % 32u))), vec4<i32>(abs(31974i), u_input.a.x, ~arg_1.x, firstLeadingBit(u_input.a.x << (func_3(global0.c.c.x, vec3<bool>(global0.a.b, false, true), arg_0.x).x % 32u))), Struct_1(var_1.wy, false, func_2(vec2<bool>(global0.c.c.x, global0.a.c.x), ~_wgslsmith_sub_vec2_i32(vec2<i32>(40910i, u_input.a.x), vec2<i32>(-37899i, global0.b.x))).c, vec3<f32>(295f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(select(103f, global0.c.d.x, global0.a.c.x)))), global0.a.d.x)), ~(var_1.yx ^ global0.d), select(min(~102611u, firstLeadingBit(~arg_0.x)), ~_wgslsmith_add_u32(var_1.x >> (global0.c.a.x % 32u), firstTrailingBit(6998u)), ((global0.c.d.x >= 416f) || true) | any(vec4<bool>(global0.a.b, false, true, global0.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(max(_wgslsmith_mod_u32(global0.e, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.a.x, global0.e, 0u), vec3<u32>(1u, 25036u, global0.e))), global0.a.a.x, 4294967295u)), -countOneBits(global0.b.wx));
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.e, 22045u, 1u), ~(~vec4<u32>(~65705u, global0.d.x, 52322u, ~global0.e)));
    var var_1 = 3920u;
    var var_2 = global0.a.d;
    let var_3 = func_1(global0.a.a, firstTrailingBit(~((global0.b.zy | u_input.a.xx) | vec2<i32>(2147483647i, -2147483647i))));
    let var_4 = Struct_2(Struct_1(var_3.d ^ var_3.c.a, global0.a.b, func_1(abs(firstTrailingBit(var_3.a.a)), min(~vec2<i32>(u_input.a.x, 6391i), u_input.a.wy)).a.c, global0.c.d), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.x, _wgslsmith_div_i32(global0.b.x, u_input.a.x), countOneBits(var_3.b.x), -var_3.b.x), vec4<i32>(u_input.a.x, global0.b.x, countOneBits(u_input.a.x), 0i), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(18005i, global0.b.x, var_3.b.x, global0.b.x), vec4<i32>(var_3.b.x, -11870i, -1i, global0.b.x)))), Struct_1(vec2<u32>(29297u, ~(global0.c.a.x ^ 42438u)), var_3.c.b, global0.c.c, _wgslsmith_f_op_vec3_f32(-global0.c.d)), ~var_3.c.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0, var_0), vec3<u32>(global0.a.a.x, global0.c.a.x, global0.c.a.x)), vec3<u32>(4294967295u, var_3.d.x, var_0) << (vec3<u32>(4294967295u, var_0, var_0) % vec3<u32>(32u))), ~(~vec3<u32>(9948u, global0.d.x, var_0) & vec3<u32>(57586u, global0.d.x, var_3.c.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_3.a.a.x, var_0, 31635u), vec4<u32>(var_3.a.a.x, var_4.d.x, 0u, 10189u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, 40099u, var_4.a.a.x), vec4<u32>(global0.e, 17015u, var_0, var_3.a.a.x))), -1859f, vec2<u32>(var_4.a.a.x, ~var_0));
}

