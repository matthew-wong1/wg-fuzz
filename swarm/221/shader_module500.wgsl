struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    global2 = _wgslsmith_f_op_vec4_f32(floor(arg_0));
    var var_0 = ~_wgslsmith_mult_i32(countOneBits(reverseBits(u_input.a.x)), u_input.a.x);
    var var_1 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.a.e, arg_0.x, global0.b.x)))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0));
    let var_2 = abs(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(min(global0.a.b.x, -2074i), u_input.a.x), _wgslsmith_div_i32(global0.a.b.x, -57905i) << (global0.a.d.x % 32u)), _wgslsmith_mult_i32(u_input.a.x, ~(-20181i)), global0.a.b.x));
    return var_2;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = max(_wgslsmith_clamp_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 218i, -19103i)) << (~vec3<u32>(arg_1, 1u, arg_0) % vec3<u32>(32u)), vec3<i32>(-1i) * -reverseBits(vec3<i32>(-30479i, -309i, global0.a.b.x)), vec3<i32>(u_input.a.x, 2040i, global0.a.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a.b.x, 115i, _wgslsmith_mod_i32(u_input.a.x << (arg_1 % 32u), _wgslsmith_mult_i32(global0.a.b.x, -74722i))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(-24585i, 6562i, global0.a.b.x), vec3<i32>(-2147483647i, u_input.a.x, global0.a.b.x))) | func_3(_wgslsmith_f_op_vec4_f32(global0.b + global0.b))));
    let var_1 = arg_0;
    let var_2 = !select(select(select(select(vec3<bool>(global0.a.a.x, false, global0.a.c), global1[_wgslsmith_index_u32(21357u, 2u)], global0.a.a.x), vec3<bool>(global0.a.a.x, true, global0.a.a.x), true), select(select(global1[_wgslsmith_index_u32(18608u, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)], global0.a.a.x), select(global1[_wgslsmith_index_u32(48404u, 2u)], vec3<bool>(global0.a.c, true, global0.a.c), vec3<bool>(true, global0.a.a.x, global0.a.c)), vec3<bool>(true, false, global0.a.a.x)), !select(global1[_wgslsmith_index_u32(8919u, 2u)], vec3<bool>(false, false, true), false)), select(vec3<bool>(2147483647i == u_input.a.x, true, global0.a.c), !select(global1[_wgslsmith_index_u32(1u, 2u)], vec3<bool>(global0.a.c, global0.a.a.x, true), false), !global1[_wgslsmith_index_u32(var_1, 2u)]), vec3<bool>(u_input.a.x > _wgslsmith_mod_i32(global0.a.b.x, u_input.a.x), -667f >= _wgslsmith_f_op_f32(-global0.a.e), !(true || global0.a.a.x)));
    let var_3 = Struct_2(Struct_1(global0.a.a, abs(~select(vec2<i32>(-1i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x), vec2<bool>(global0.a.a.x, global0.a.a.x))), all(!global1[_wgslsmith_index_u32(arg_1, 2u)]) == !(!global0.a.c), _wgslsmith_sub_vec4_u32(global0.a.d, reverseBits(~global0.a.d)), -654f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(abs(arg_2))), 1f, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, global2.x))));
    let var_4 = Struct_3(func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(var_3.a.e)), 187f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-global0.b.x))).zy, Struct_1(vec2<bool>(global0.a.a.x, false), vec2<i32>(global0.a.b.x, 9215i | _wgslsmith_mod_i32(global0.a.b.x, -1i)), any(!(!vec2<bool>(var_2.x, global0.a.a.x))), ~max(global0.a.d >> (vec4<u32>(global0.a.d.x, 5881u, arg_1, global0.a.d.x) % vec4<u32>(32u)), ~vec4<u32>(var_1, 8339u, 118803u, 0u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_3) + _wgslsmith_f_op_f32(round(1533f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f) - _wgslsmith_f_op_f32(130f - 1800f)), global0.a.a.x))), !(!(!select(var_3.a.a, vec2<bool>(global0.a.a.x, true), vec2<bool>(true, false)))), 12250u, var_3.a.e);
    return _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(var_3.b.x * -1000f));
}

fn func_1() -> bool {
    global2 = global0.b;
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(func_2(4294967295u, 11425u, -242f, global0.a.e)), global0.b.x, _wgslsmith_f_op_f32(-global0.a.e)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1148f * global0.a.e), 172f, !global0.a.c))), _wgslsmith_f_op_f32(floor(-1297f)), global2.x, 1377f));
    let var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.a.e, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global2.x, 489f, global0.a.e) * global0.b)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.b.x, global0.a.e, global2.x)), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(min(global0.b.x, 179f)), _wgslsmith_div_f32(global2.x, 676f), global2.x), !select(vec4<bool>(false, global0.a.a.x, global0.a.a.x, true), vec4<bool>(true, global0.a.a.x, true, global0.a.a.x), vec4<bool>(false, false, false, global0.a.c))))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.b.x)), 213f, global0.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b)) * _wgslsmith_f_op_vec4_f32(ceil(global0.b)))));
    global1 = array<vec3<bool>, 2>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(), global0.a.c, global0.a.a.x);
    global2 = vec4<f32>(-953f, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_div_f32(-1625f, _wgslsmith_f_op_f32(f32(-1f) * -135f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -2012f))))));
    global0 = Struct_2(Struct_1(var_0.zx, firstTrailingBit(countOneBits(min(u_input.a, global0.a.b))), global0.a.c, ~select(global0.a.d, vec4<u32>(global0.a.d.x, global0.a.d.x, 0u, global0.a.d.x), !vec4<bool>(false, false, false, global0.a.c)), _wgslsmith_div_f32(global0.a.e, 585f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - _wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(trunc(global0.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(global0.a.e, global0.a.e, global0.b.x, -548f)))), !vec4<bool>(true, true, all(var_0.xx), !var_0.x))));
    global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(global0.b.x, global0.b.x, global0.a.e, global2.x)))))), vec4<f32>(global0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.e - _wgslsmith_div_f32(global0.a.e, 1454f))), _wgslsmith_f_op_f32(544f - global0.b.x), -292f)));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2.x)))), -711f, global2.x, _wgslsmith_f_op_f32(global0.b.x - -1395f)));
    global2 = vec4<f32>(global2.x, 1f, 1339f, _wgslsmith_f_op_f32(floor(728f)));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~global0.a.d.x, ~4294967295u), ~select(max(vec3<u32>(91288u, global0.a.d.x, 24866u), vec3<u32>(9796u, global0.a.d.x, global0.a.d.x)), min(vec3<u32>(53258u, global0.a.d.x, global0.a.d.x), vec3<u32>(global0.a.d.x, 0u, 44715u)), true == var_0.x) << (_wgslsmith_div_vec3_u32(reverseBits(min(vec3<u32>(global0.a.d.x, global0.a.d.x, global0.a.d.x), vec3<u32>(8440u, global0.a.d.x, 1u))), ~(~global0.a.d.zww)) % vec3<u32>(32u)));
    global2 = global0.b;
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d.xzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1198f, _wgslsmith_f_op_f32(158f * _wgslsmith_f_op_f32(-global0.a.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-689f + global0.b.x), global0.b.x, true))) - vec3<f32>(-601f, -120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e)))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(max(global2.x, global0.a.e))) + _wgslsmith_f_op_f32(1642f + 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f * -2393f) + _wgslsmith_f_op_f32(max(212f, -436f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))))), vec2<u32>(~_wgslsmith_sub_u32(var_1.x, global0.a.d.x), 50248u), _wgslsmith_f_op_f32(trunc(global0.b.x)));
}

