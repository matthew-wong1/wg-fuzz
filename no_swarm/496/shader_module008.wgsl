struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<f32>;

var<private> global2: array<u32, 9>;

var<private> global3: array<vec4<u32>, 12>;

var<private> global4: array<vec4<u32>, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    global2 = array<u32, 9>();
    let var_0 = vec3<bool>((((u_input.e.x << (global2[_wgslsmith_index_u32(0u, 9u)] % 32u)) & firstTrailingBit(4294967295u)) >> (1u % 32u)) != _wgslsmith_div_u32(arg_1.x, arg_2.a.c.x >> (u_input.e.x % 32u)), arg_2.c.d, any(select(!(!vec2<bool>(arg_2.c.d, arg_2.c.d)), !vec2<bool>(arg_2.a.d, arg_2.b), false)));
    let var_1 = _wgslsmith_mult_vec2_u32((~arg_1.zz >> (abs(arg_1.yw & arg_1.zz) % vec2<u32>(32u))) | vec2<u32>(~max(0u, arg_2.e.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 0u, 0u), arg_1.zzy)), arg_1.zz);
    global4 = array<vec4<u32>, 18>();
    return global1.x;
}

fn func_2(arg_0: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.x, global0.x), _wgslsmith_f_op_f32(-1943f * arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, 1135f) * vec2<f32>(global1.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1106f, 2305f))))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(737f * global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 1008f, 2362f, global1.x))), _wgslsmith_sub_vec4_u32(global4[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 9u)], 9u)]), 18u)], ~vec4<u32>(12283u, 4294967295u, 4294967295u, 0u)), !(884f > global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1054f, 1000f, -1807f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 104f, global1.x, 1269f)))), true, Struct_1(-2791f, vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(-1118f, -825f)), -1000f), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 3765u, 19463u, 0u), vec4<u32>(arg_0.x, 4294967295u, 66622u, 29557u)), (-72987i <= u_input.b.x) && all(vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, -1158f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 275f))))), u_input.a, Struct_1(1582f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -1072f, global1.x, global1.x))))), min(firstTrailingBit(vec4<u32>(77890u, arg_0.x, 0u, 4294967295u)), vec4<u32>(1u, u_input.d.x, 34100u, u_input.e.x)), true, vec4<f32>(_wgslsmith_div_f32(-950f, -263f), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(sign(global0.x)), global1.x))), Struct_2(Struct_1(-1253f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 821f, global1.x, global0.x), vec4<f32>(-1203f, global0.x, 1074f, 181f))), countOneBits(~global4[_wgslsmith_index_u32(4294967295u, 18u)]), ~4294967295u < _wgslsmith_sub_u32(0u, arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global0.x, global0.x, global0.x))) + vec4<f32>(1577f, -1204f, global1.x, -468f))), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), Struct_1(-808f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 409f, 608f))), vec4<u32>(u_input.d.x, 76502u, 36707u >> (u_input.e.x % 32u), arg_0.x), any(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global1.x, -2392f, global1.x), _wgslsmith_div_vec4_f32(vec4<f32>(-995f, global1.x, global1.x, 181f), vec4<f32>(global1.x, -1176f, global0.x, -913f))))), _wgslsmith_div_vec2_i32(u_input.a, ~(vec2<i32>(u_input.c, 2147483647i) >> (vec2<u32>(62380u, u_input.d.x) % vec2<u32>(32u)))), Struct_1(1000f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 1000f, global0.x, -1340f)), vec4<f32>(273f, global1.x, -258f, global1.x), vec4<bool>(true, true, true, false))), ~(~global4[_wgslsmith_index_u32(0u, 18u)]), true, vec4<f32>(_wgslsmith_f_op_f32(trunc(-139f)), -779f, -665f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(~var_0.b.e.c, countOneBits(vec4<u32>(~31038u, 4294967295u ^ global2[_wgslsmith_index_u32(29934u, 9u)], u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 20030u, arg_0.x), vec4<u32>(105213u, var_0.a.c.c.x, 1u, 4658u))))), Struct_3(Struct_2(var_0.b.e, true, var_0.a.c, vec2<i32>(-11727i, ~(-1i)), var_0.b.e), Struct_2(var_0.b.e, all(!vec4<bool>(false, var_0.a.a.d, false, var_0.b.a.d)), var_0.b.a, vec2<i32>(19012i, -1i), var_0.b.e)), Struct_2(var_0.b.e, !(!var_0.b.b), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * 419f), 283f)), vec4<f32>(1301f, var_0.b.c.e.x, global1.x, _wgslsmith_f_op_f32(round(396f))), abs(var_0.a.a.c), true, var_0.b.c.e), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a.x, 7002i)), var_0.b.d), u_input.b.yx), var_0.a.c));
    let var_2 = select(!vec3<bool>(var_1.c.e.d, var_1.c.a.d, var_1.b.b.a.d), !(!vec3<bool>(any(vec2<bool>(false, var_1.c.b)), false, var_1.b.a.b)), false);
    let var_3 = select(vec3<i32>(~(~(-var_1.b.a.d.x)), 29543i ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.b.a.d.x, -1i, -1i), 2147483647i | var_1.b.a.d.x), ~_wgslsmith_mult_i32(~var_0.a.d.x, _wgslsmith_sub_i32(48112i, var_1.b.b.d.x))), vec3<i32>(var_0.a.d.x, _wgslsmith_dot_vec2_i32(min(~vec2<i32>(var_1.c.d.x, -35055i), vec2<i32>(43722i, var_0.b.d.x)), reverseBits(vec2<i32>(-39198i, u_input.a.x) >> (vec2<u32>(global2[_wgslsmith_index_u32(21916u, 9u)], 12143u) % vec2<u32>(32u)))), ~_wgslsmith_sub_i32(-var_1.b.a.d.x, var_1.c.d.x)), false);
    let var_4 = !select(select(var_2, vec3<bool>(true, true, true), var_2.x == var_2.x), vec3<bool>(var_2.x, var_1.b.a.c.d, true), false);
    return _wgslsmith_mult_u32(~var_0.a.e.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0, max(firstLeadingBit(arg_0), arg_0)), var_0.b.c.c.zxy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1151f, -1462f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-2046i, u_input.a.x), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 65392u, u_input.e.x, 14273u), Struct_2(Struct_1(global0.x, vec4<f32>(global1.x, 1107f, 705f, -175f), global3[_wgslsmith_index_u32(0u, 12u)], true, vec4<f32>(global1.x, global1.x, global1.x, 1695f)), false, Struct_1(global0.x, vec4<f32>(1000f, -1100f, global0.x, global1.x), global3[_wgslsmith_index_u32(u_input.d.x, 12u)], false, vec4<f32>(global1.x, -826f, global1.x, global0.x)), vec2<i32>(u_input.b.x, u_input.c), Struct_1(global0.x, vec4<f32>(global0.x, global0.x, global0.x, global1.x), global3[_wgslsmith_index_u32(51798u, 12u)], false, vec4<f32>(-1465f, 1687f, 290f, -2473f))))) - global1.x))) * _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -585f))));
    let var_0 = _wgslsmith_add_u32(8721u | ~func_3(u_input.d), 22852u);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) - _wgslsmith_f_op_f32(global1.x + -892f)), vec4<f32>(-1166f, _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(max(global0.x, 716f))), vec4<u32>(0u, 4294967295u, var_0 ^ 19317u, global2[_wgslsmith_index_u32(4294967295u, 9u)] >> (global2[_wgslsmith_index_u32(4294967295u, 9u)] % 32u)), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 1778f, 2464f, 323f))), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), Struct_1(global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2825f, -1416f, global0.x, global0.x))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(44208u, global2[_wgslsmith_index_u32(1u, 9u)], 73452u, 4294967295u)), global3[_wgslsmith_index_u32(33197u, 12u)], vec4<u32>(var_0, 12976u, var_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42874u, 9u)], 9u)])), false, vec4<f32>(global1.x, -948f, _wgslsmith_f_op_f32(1959f - global1.x), 220f)), vec2<i32>(_wgslsmith_mod_i32(~u_input.a.x, ~u_input.c), ~u_input.c ^ u_input.b.x), Struct_1(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-560f + -137f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-3109f, global1.x, 145f, -1239f), vec4<f32>(global1.x, -1086f, 204f, global1.x))), vec4<f32>(global0.x, global1.x, 695f, -1622f), select(true, true, false))), ~vec4<u32>(4294967295u, var_0, u_input.e.x, u_input.e.x) >> (abs(global4[_wgslsmith_index_u32(4294967295u, 18u)]) % vec4<u32>(32u)), select(true, true, global0.x < -179f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1197f, -1000f, global0.x, global1.x) * _wgslsmith_div_vec4_f32(vec4<f32>(-1480f, -1382f, 740f, global1.x), vec4<f32>(global0.x, global1.x, global1.x, global1.x))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-993f * _wgslsmith_f_op_f32(global1.x + -1297f)), vec4<f32>(-107f, _wgslsmith_f_op_f32(f32(-1f) * -220f), -265f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, var_0, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)]), vec4<u32>(1u, 787u, global2[_wgslsmith_index_u32(var_0, 9u)], 28859u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, u_input.e.x, u_input.e.x, 0u), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 12u)])), false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 688f, global1.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 276f, global1.x, global1.x)))), any(vec4<bool>(true, true, false, false)) & true, Struct_1(_wgslsmith_f_op_f32(floor(-479f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -720f, 187f, -1307f))), ~abs(vec4<u32>(u_input.e.x, 0u, 4294967295u, 18538u)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(805f, global1.x, global0.x, -660f))))), u_input.a, Struct_1(_wgslsmith_f_op_f32(ceil(-226f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 351f, 958f, global1.x), vec4<f32>(global1.x, global1.x, global0.x, global0.x)))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 19569u, var_0, 1u), vec4<u32>(0u, var_0, 67090u, var_0)), vec4<u32>(28521u, global2[_wgslsmith_index_u32(u_input.d.x, 9u)], 1u, var_0), true), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1509f, -289f, global0.x, -411f) + vec4<f32>(182f, 445f, global0.x, global1.x))))));
    var var_2 = Struct_4(~vec4<u32>(u_input.e.x, 1u >> (1u % 32u), ~0u, 1u) | vec4<u32>(~countOneBits(1u), 4294967295u, var_1.a.c.c.x, _wgslsmith_clamp_u32(4294967295u, var_1.a.e.c.x, var_1.b.c.c.x) ^ ~0u), Struct_3(var_1.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(1349f - global0.x), var_1.a.c.b, global3[_wgslsmith_index_u32(var_0, 12u)], true, _wgslsmith_f_op_vec4_f32(abs(var_1.b.c.e))), true, Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(-var_1.b.a.e), global4[_wgslsmith_index_u32(countOneBits(4294967295u), 18u)], false, vec4<f32>(global1.x, 713f, -483f, var_1.a.c.e.x)), vec2<i32>(min(0i, u_input.a.x), -1i), var_1.b.c)), var_1.a);
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(max(0i, -1i), abs(-2147483647i), -57027i) | vec3<i32>(1i, select(u_input.a.x, u_input.b.x, false), firstTrailingBit(var_2.b.a.d.x)), _wgslsmith_clamp_vec3_i32(~u_input.b.xzy, _wgslsmith_clamp_vec3_i32(u_input.b.zxy, vec3<i32>(0i, var_2.b.a.d.x, 18089i), vec3<i32>(var_2.c.d.x, var_2.c.d.x, var_2.b.a.d.x)), vec3<i32>(0i, 0i, 14326i)) << (vec3<u32>(countOneBits(global2[_wgslsmith_index_u32(var_1.a.a.c.x, 9u)]), var_1.b.a.c.x, ~4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(reverseBits(countOneBits(u_input.b.wyy)), vec3<i32>(-11581i, 22288i, i32(-1i) * -62579i)));
    var var_4 = Struct_4(~select(~vec4<u32>(4294967295u, 112172u, 4294967295u, var_1.a.c.c.x), var_2.a, !vec4<bool>(true, true, var_1.a.a.d, true)), var_1, Struct_2(var_2.b.a.e, !var_2.b.a.c.d && var_1.a.a.d, Struct_1(var_1.a.e.a, vec4<f32>(_wgslsmith_f_op_f32(-global1.x), var_1.a.c.b.x, _wgslsmith_f_op_f32(step(var_1.a.a.e.x, global1.x)), _wgslsmith_f_op_f32(global0.x * global0.x)), reverseBits(abs(vec4<u32>(35107u, u_input.d.x, 32322u, 7308u))), (var_2.c.d.x <= 2147483647i) || var_1.a.b, var_1.a.c.e), _wgslsmith_add_vec2_i32(var_1.a.d, -select(u_input.b.zx, u_input.b.zz, vec2<bool>(var_2.c.e.d, true))), var_1.b.a));
    let var_5 = !(!var_1.b.a.d);
    global2 = array<u32, 9>();
    let var_6 = select(vec3<bool>(all(select(vec4<bool>(var_1.b.c.d, false, var_5, var_4.c.e.d), vec4<bool>(true, var_4.c.b, var_2.b.b.e.d, true), vec4<bool>(false, false, false, false))), true, false), select(select(!vec3<bool>(var_2.c.b, var_2.c.e.d, true), select(!vec3<bool>(var_1.a.e.d, false, true), vec3<bool>(false, var_1.b.a.d, var_1.a.b), var_1.b.d.x < var_4.c.d.x), false), select(select(!vec3<bool>(true, var_2.c.e.d, false), select(vec3<bool>(var_4.b.b.e.d, false, var_4.c.b), vec3<bool>(var_5, true, var_2.c.e.d), true), var_4.b.a.a.d & var_1.b.c.d), select(select(vec3<bool>(var_2.b.a.c.d, false, var_1.a.a.d), vec3<bool>(var_1.b.b, true, true), vec3<bool>(var_5, var_5, true)), !vec3<bool>(var_5, var_1.a.e.d, var_1.a.a.d), var_5), select(!vec3<bool>(var_4.b.b.b, var_2.c.c.d, true), !vec3<bool>(var_2.c.c.d, false, var_4.c.a.d), vec3<bool>(var_1.b.a.d, true, true))), select(select(select(vec3<bool>(var_4.b.b.a.d, var_5, var_1.a.a.d), vec3<bool>(var_2.c.a.d, false, var_5), false), select(vec3<bool>(var_1.b.b, true, false), vec3<bool>(true, false, true), var_1.a.c.d), !var_2.b.b.e.d), vec3<bool>(var_2.c.c.d, var_5, true), select(!vec3<bool>(var_2.b.b.b, true, true), !vec3<bool>(var_5, true, var_1.a.a.d), true))), select(!(!(!vec3<bool>(var_1.a.c.d, var_5, var_2.b.b.c.d))), select(select(select(vec3<bool>(var_4.b.a.a.d, false, true), vec3<bool>(var_2.b.b.e.d, false, var_5), true), vec3<bool>(var_2.b.a.c.d, false, false), !vec3<bool>(var_5, false, var_1.b.e.d)), vec3<bool>(var_5 && false, all(vec2<bool>(false, var_2.b.b.a.d)), false), !(var_4.c.e.d || true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, var_2.b.a.c.d, var_1.a.e.d), true), select(vec3<bool>(false, false, false), vec3<bool>(var_4.b.a.b, true, var_4.b.b.b), var_4.b.b.a.d), select(vec3<bool>(false, true, false), vec3<bool>(var_1.b.b, false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.e.e.x, var_2.c.a.b.x)), var_2.c.a.e.yx)), vec2<f32>(var_4.c.a.a, _wgslsmith_f_op_f32(step(-232f, -2414f)))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(-1128f)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.e.b.x)), 1443f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b.b.c.e.x, global0.x, var_4.b.a.c.b.x) + var_4.b.b.c.b.wwx))), _wgslsmith_f_op_vec3_f32(trunc(var_4.b.b.e.b.ywx))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2648f), _wgslsmith_f_op_f32(-var_2.b.b.c.a), -729f)))));
}

