struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(-489f, vec3<f32>(-480f, -101f, -1443f), vec2<i32>(17659i, i32(-2147483648))), Struct_3(-1741f, vec3<f32>(-715f, -488f, 738f), vec2<i32>(72636i, 1i)), Struct_3(443f, vec3<f32>(-670f, 1097f, -2169f), vec2<i32>(-1i, -1i)), Struct_3(973f, vec3<f32>(662f, -1000f, 1178f), vec2<i32>(-50816i, -12747i)), Struct_3(-1056f, vec3<f32>(762f, 1618f, 464f), vec2<i32>(7141i, 1i)), Struct_3(-1288f, vec3<f32>(254f, 1343f, 465f), vec2<i32>(-20962i, 28496i)), Struct_3(-1000f, vec3<f32>(499f, -1272f, -687f), vec2<i32>(2147483647i, 36821i)), Struct_3(-1800f, vec3<f32>(-825f, 278f, -669f), vec2<i32>(32524i, 19038i)), Struct_3(1315f, vec3<f32>(-203f, 762f, 189f), vec2<i32>(12726i, 26313i)), Struct_3(214f, vec3<f32>(-1000f, -982f, 378f), vec2<i32>(-49514i, 47338i)), Struct_3(-608f, vec3<f32>(-876f, -1073f, -397f), vec2<i32>(-54658i, 2147483647i)));

var<private> global2: array<Struct_3, 8>;

var<private> global3: array<vec4<u32>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = vec4<bool>(global0.x, all(select(global0.yx, global0.yy, !select(global0.yw, global0.ww, vec2<bool>(true, global0.x)))), any(select(!vec3<bool>(global0.x, global0.x, false), select(select(global0.ywz, vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, global0.x)), vec3<bool>(true, global0.x, global0.x), true), vec3<bool>(global0.x != global0.x, all(global0.wyx), global0.x || global0.x))), !all(!(!vec4<bool>(global0.x, false, false, false))));
    let var_0 = _wgslsmith_f_op_f32(709f - arg_0.a);
    let var_1 = global1[_wgslsmith_index_u32(40884u, 11u)];
    global3 = array<vec4<u32>, 16>();
    global3 = array<vec4<u32>, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - arg_0.b.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(722f * _wgslsmith_f_op_f32(max(1345f, arg_0.b.x))), var_0, any(!vec4<bool>(global0.x, true, global0.x, true))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b.x, -1000f))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = arg_0.b.x;
    let var_1 = Struct_1(arg_3.b.x, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.b, arg_1.b), -arg_1.b), ~(_wgslsmith_mult_vec3_i32(arg_1.b, arg_1.b) & vec3<i32>(arg_2.c.x, 0i, -49438i))), global0.wyy, u_input.a.x & _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, arg_1.d, arg_1.d)), arg_1.d), arg_1.d ^ 4294967295u), _wgslsmith_f_op_f32(func_3(arg_0)));
    var var_2 = arg_0.b.x;
    let var_3 = Struct_2(~(~arg_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - -1269f) - arg_0.b.x)) * 723f), any(!vec2<bool>(all(vec3<bool>(global0.x, var_1.c.x, false)), true)));
    global0 = !select(vec4<bool>(arg_1.c.x || any(vec4<bool>(var_3.c, var_1.c.x, false, true)), global0.x != all(vec4<bool>(true, false, global0.x, true)), any(select(global0.ywx, global0.wwy, arg_1.c)), select(true, true, all(arg_1.c.zz))), select(vec4<bool>(global0.x, -193f <= arg_0.b.x, false, false), vec4<bool>(!global0.x, var_3.c, all(vec2<bool>(arg_1.c.x, true)), var_3.c), select(false | global0.x, 20418u <= var_1.d, true)), true);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(433f, 600f, arg_1.e, 2269f)))))));
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_3, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_3(-424f, vec3<f32>(-482f, 1306f, 1280f), vec2<i32>(-2147483647i, 36213i)), Struct_1(932f, vec3<i32>(12442i, 37020i, 13032i), global0.wzy, 24283u, 1000f), global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)]))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_vec4_f32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 13377u), 8u)], Struct_1(-694f, vec3<i32>(1i, -40999i, -2147483647i), vec3<bool>(false, global0.x, false), u_input.a.x, var_0.x), Struct_3(var_0.x, var_0.wyx, vec2<i32>(-28087i, -2147483647i)), global1[_wgslsmith_index_u32(83863u, 11u)])).x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(363f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f * 1492f)))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 11u)])) * var_0.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-155f + 1311f)))))));
    var var_2 = !all(select(vec3<bool>(all(global0.yw), true, true), !(!vec3<bool>(true, global0.x, global0.x)), any(vec3<bool>(true, global0.x, true))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -526f))), countOneBits(vec3<i32>(1i, 1i, 1i)), vec3<bool>((abs(u_input.a.x) <= 4294967295u) | all(!vec3<bool>(global0.x, global0.x, global0.x)), global0.x | global0.x, false), 4294967295u, -1426f);
    return ~max(var_3.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.b.x << (1u % 32u), var_3.b.x, 10013i), -_wgslsmith_mod_vec3_i32(vec3<i32>(-23564i, 0i, var_3.b.x), var_3.b), -var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!global0.x) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-410f))))));
    var var_1 = !(!(!vec3<bool>(global0.x | false, true, true)));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), 5080u, vec4<i32>(2147483647i << ((var_2.x >> ((32203u & u_input.a.x) % 32u)) % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -1i, -35705i, -1129i), max(vec4<i32>(0i, 26263i, -1i, -11907i), vec4<i32>(0i, 1786i, -38740i, 2147483647i))), ~countOneBits(-26688i)), countOneBits(select(reverseBits(22584i), min(-41034i, 434i), true)), -23871i));
}

