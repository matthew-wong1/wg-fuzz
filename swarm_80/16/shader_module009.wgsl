struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(2147483647i, 536f, 0u, vec3<bool>(false, true, false), true);

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 36489u), vec4<u32>(48560u, 1u, 0u, 0u), vec4<u32>(1u, 55665u, 1u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 13431u), vec4<u32>(7628u, 4294967295u, 4294967295u, 0u), vec4<u32>(42349u, 50291u, 1u, 9370u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(0u, 42019u, 20612u, 19829u), vec4<u32>(4294967295u, 1u, 7682u, 15216u), vec4<u32>(38546u, 12913u, 20202u, 14397u), vec4<u32>(9574u, 39152u, 17713u, 55944u), vec4<u32>(1u, 4294967295u, 35459u, 1u), vec4<u32>(1u, 87914u, 75885u, 1501u), vec4<u32>(66810u, 60811u, 0u, 78838u), vec4<u32>(33300u, 0u, 45693u, 4294967295u), vec4<u32>(67053u, 45782u, 57654u, 27620u), vec4<u32>(54732u, 35866u, 12416u, 1u), vec4<u32>(27129u, 4294967295u, 60555u, 1u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(18263u, 84291u, 27920u, 63426u), vec4<u32>(4294967295u, 1u, 2348u, 1u), vec4<u32>(23811u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 14381u, 1u), vec4<u32>(1u, 14141u, 0u, 45502u), vec4<u32>(0u, 0u, 1u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    global1 = global2[_wgslsmith_index_u32(u_input.a, 30u)];
    var var_0 = 40394u;
    global1 = Struct_1(u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.b - arg_2.b.b) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-827f, _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_add_u32(arg_2.b.c, select(1u, abs(~arg_0), arg_2.b.d.x)), vec3<bool>(any(select(global1.d, select(arg_2.b.d, vec3<bool>(arg_2.b.d.x, true, true), true), any(vec2<bool>(arg_2.b.d.x, arg_2.b.e)))), all(vec3<bool>(true, global1.d.x, !global1.d.x)), any(arg_2.b.d)), _wgslsmith_f_op_f32(step(-1448f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(769f, arg_1.x))))) <= arg_2.b.b);
    let var_1 = Struct_2(~((vec2<u32>(17193u, 20987u) ^ vec2<u32>(4294967295u, u_input.d.x)) >> (vec2<u32>(arg_0, abs(1u)) % vec2<u32>(32u))), Struct_1(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-1i, 2147483647i)) & _wgslsmith_div_i32(min(-15221i, global1.a), _wgslsmith_mod_i32(-2147483647i, arg_2.b.a)), 1245f, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, arg_2.a.x, arg_2.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(2282u, 30245u, 8194u), vec3<u32>(arg_2.b.c, arg_2.a.x, u_input.d.x))), !select(!vec3<bool>(arg_2.b.e, false, false), select(vec3<bool>(false, true, arg_2.b.e), arg_2.b.d, vec3<bool>(false, true, arg_2.b.d.x)), arg_2.b.a != 2147483647i), arg_2.b.e));
    let var_2 = var_1;
    return -309f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(ceil(-990f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b)) * _wgslsmith_f_op_f32(-294f * 168f)), arg_0.d.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(arg_0.c, arg_0.c) << (global1.c % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, global1.b, global1.b) * vec3<f32>(-580f, global1.b, global1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, arg_0.b, -384f))), Struct_2(u_input.d.zy, Struct_1(1i, global1.b, 86699u, vec3<bool>(false, global1.e, true), arg_0.e))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - 1085f), _wgslsmith_f_op_f32(trunc(global1.b))));
    let var_1 = Struct_2(vec2<u32>(min(arg_0.c, ~max(arg_0.c, 0u)), 1u), Struct_1(abs(_wgslsmith_dot_vec3_i32(u_input.b.xxw, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -341f), ~u_input.d.x, vec3<bool>(global1.d.x, global1.d.x, any(!vec4<bool>(arg_0.d.x, true, false, global1.e))), all(vec4<bool>(true, !global1.e, true, true))));
    global3 = array<vec4<u32>, 26>();
    global0 = global1.b;
    var var_2 = var_1.b;
    return -vec3<i32>(arg_0.a, _wgslsmith_add_i32(-(~23040i), 1i >> ((13446u | arg_0.c) % 32u)), -33531i);
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 30>();
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 30u)];
    var var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_div_i32(u_input.e, -31376i), 0i), u_input.b.yxw ^ func_2(global2[_wgslsmith_index_u32(0u, 30u)], u_input.c)) != firstTrailingBit(1i << (~(u_input.d.x & global1.c) % 32u));
    global1 = global2[_wgslsmith_index_u32(4294967295u << (_wgslsmith_clamp_u32(72427u, firstLeadingBit(_wgslsmith_add_u32(1u, u_input.a)), ~u_input.d.x) % 32u), 30u)];
    global3 = array<vec4<u32>, 26>();
    return Struct_2(u_input.d.zw ^ (select(vec2<u32>(global1.c, 0u), u_input.d.yz, any(vec3<bool>(false, true, true))) >> (~(~vec2<u32>(u_input.a, global1.c)) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_i32(-(~(-33639i)), global1.a), _wgslsmith_f_op_f32(f32(-1f) * -277f), global1.c, vec3<bool>(true, true, true), global1.d.x));
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = vec3<bool>(false, arg_0.b.d.x, false);
    let var_1 = arg_0;
    let var_2 = true;
    let var_3 = select(var_2, false, false);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b, 197f));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.d.x, arg_0.a.x, 17992u, 30037u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(abs(global3[_wgslsmith_index_u32(0u, 26u)]), ~global3[_wgslsmith_index_u32(global1.c, 26u)]), ~vec4<u32>(arg_0.a.x, 1u, 0u, u_input.d.x))), 67301u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.e, firstTrailingBit(1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(28186u, u_input.d.x, u_input.d.x, 2228u), ~vec4<u32>(1u, 6411u, 0u, u_input.d.x)) % 32u)), 1i >> (~(~abs(u_input.d.x)) % 32u));
    var var_1 = ~reverseBits(~(~vec2<u32>(1u, 4294967295u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), global1.b, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(select(global1.b, global1.b, global1.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, 1633f, global1.b, 415f) - vec4<f32>(-783f, global1.b, global1.b, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-471f, 1523f, global1.b, 948f))) - vec4<f32>(_wgslsmith_f_op_f32(global1.b * 1385f), _wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(floor(959f)))))));
    global1 = global2[_wgslsmith_index_u32(select(0u, 46950u, global1.e), 30u)];
    var var_3 = Struct_2(~min(func_4(func_1()), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 8345u), u_input.d.yx >> (u_input.d.xz % vec2<u32>(32u)))), global2[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 30u)]);
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 1393f)))), global1.b, func_1().b.b, var_2.x)));
    var var_4 = -var_0;
    let var_5 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(45395u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b))), _wgslsmith_f_op_f32(-1812f - _wgslsmith_f_op_f32(var_2.x + 561f)), global1.b, var_3.b.b))));
}

