struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, true, true, true, true, true, false, true, false, false, false, true, false, true, false, false, false, true, true, false, false, false, false, false, false, true, false, false, true, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(true, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-global1.b, -2147483647i), -reverseBits(min(1i, -2147483647i)), ~1i), _wgslsmith_clamp_vec4_u32(abs(firstTrailingBit(global1.c)), ~vec4<u32>(_wgslsmith_div_u32(u_input.b, 47299u), _wgslsmith_dot_vec2_u32(global1.c.wx, global1.c.yx), ~global1.c.x, 7721u), ~(~_wgslsmith_mult_vec4_u32(global1.c, global1.c))), -46207i);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(483f, 467f)) - 2156f), -768f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1094f, -458f) * -1307f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f + _wgslsmith_f_op_f32(208f - 974f)) - _wgslsmith_f_op_f32(f32(-1f) * -2335f)));
    let var_2 = Struct_1(any(!select(vec2<bool>(true, true), vec2<bool>(global0.x, true), true)), var_0.d, ~min(select(~global1.c, vec4<u32>(var_0.c.x, u_input.b, 35562u, 39807u), false || global0.x), firstTrailingBit(~vec4<u32>(31072u, global1.c.x, var_0.c.x, 23807u))), var_0.b);
    var var_3 = Struct_1(true, u_input.a.x, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(max(select(vec4<u32>(u_input.b, 4294967295u, var_2.c.x, 0u), var_2.c, vec4<bool>(global1.a, var_0.a, true, var_2.a)), vec4<u32>(1u, var_2.c.x, 4294967295u, 69777u)), var_0.c), vec4<u32>(_wgslsmith_mult_u32(0u, global1.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.c.xz, var_2.c.wz), _wgslsmith_div_u32(20607u, 4294967295u)), u_input.b, _wgslsmith_sub_u32(global1.c.x, 3151u) ^ ~4392u)), firstLeadingBit(2147483647i));
    let var_4 = select(vec4<bool>(false, any(!global0.zy), false, var_2.c.x >= 1924u), select(!select(vec4<bool>(false, var_3.a, true, false), !vec4<bool>(global2[_wgslsmith_index_u32(var_3.c.x, 32u)], global1.a, true, var_3.a), vec4<bool>(var_1, var_0.a, global2[_wgslsmith_index_u32(u_input.b, 32u)], true)), select(vec4<bool>(true, var_0.a, any(vec4<bool>(false, true, global1.a, var_3.a)), var_0.a), select(vec4<bool>(var_3.a, true, var_0.a, var_1), !vec4<bool>(var_2.a, var_3.a, false, global2[_wgslsmith_index_u32(global1.c.x, 32u)]), select(vec4<bool>(false, var_2.a, global0.x, false), vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 32u)], var_0.a, true, global1.a), vec4<bool>(true, global1.a, true, false))), global0.x), (firstLeadingBit(23616u) < var_2.c.x) | any(select(global0.xyz, vec3<bool>(true, false, global1.a), vec3<bool>(true, true, var_0.a)))), !select(!(!vec4<bool>(true, var_2.a, var_1, true)), vec4<bool>(true, true, var_2.a, !global2[_wgslsmith_index_u32(var_0.c.x, 32u)]), vec4<bool>(true, true, global1.a, var_3.a)));
    return all(global0.wyw);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> vec3<i32> {
    global1 = Struct_1(true, ~(-46137i) | _wgslsmith_sub_i32(i32(-1i) * -13910i, (global1.d << (68264u % 32u)) | -1i), abs(global1.c), -2147483647i);
    var var_0 = Struct_1(func_3(), ~1i, reverseBits(vec4<u32>(abs(u_input.b), 1u, ~(~arg_2), ~arg_0)), firstTrailingBit(_wgslsmith_dot_vec3_i32(-abs(vec3<i32>(global1.b, -2147483647i, 11067i)), vec3<i32>(~u_input.a.x, _wgslsmith_add_i32(global1.b, -14747i), 0i))));
    let var_1 = vec4<i32>(16690i, -2147483647i, -2147483647i, var_0.b);
    let var_2 = global1.a;
    var var_3 = 737i;
    return firstTrailingBit(-select(-max(var_1.wxy, var_1.zyz), -_wgslsmith_add_vec3_i32(var_1.yzx, vec3<i32>(42526i, u_input.a.x, -2793i)), !(!var_0.a)));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = vec4<i32>(min(_wgslsmith_mult_i32(-2147483647i, (arg_0.d & 6698i) & arg_0.d), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(u_input.a.x, 2147483647i), u_input.a)), -2147483647i, countOneBits(~reverseBits(_wgslsmith_mod_i32(arg_0.b, u_input.a.x))), u_input.a.x);
    global2 = array<bool, 32>();
    var var_1 = func_2(~(~4294967295u), ~firstLeadingBit(_wgslsmith_clamp_i32(-global1.b, -11942i, u_input.a.x >> (global1.c.x % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(firstTrailingBit(5628u), _wgslsmith_mod_u32(4294967295u, u_input.b)), ~(~0u)), arg_0.c.xx));
    let var_2 = global0.xz;
    var_0 = select(vec4<i32>(0i, var_0.x, -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global1.b, arg_0.b, -2147483647i, 1579i)), -vec4<i32>(var_1.x, arg_0.d, var_1.x, global1.b)), _wgslsmith_mod_i32(_wgslsmith_div_i32(4556i, ~global1.b), -var_0.x)), ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(var_1.x, var_1.x, var_1.x, global1.b) | vec4<i32>(-2147483647i, arg_0.b, var_0.x, 25109i)), (vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x) | vec4<i32>(var_1.x, 18514i, var_0.x, -2147483647i)) ^ (vec4<i32>(36691i, var_0.x, var_1.x, u_input.a.x) | vec4<i32>(var_1.x, -1i, 0i, global1.b))), _wgslsmith_mod_u32(21331u, u_input.b) == (abs(_wgslsmith_mod_u32(u_input.b, 0u)) | _wgslsmith_mult_u32(u_input.b, arg_0.c.x)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1051f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-472f, -184f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1058f + _wgslsmith_f_op_f32(-241f * 348f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-921f)) + -730f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1397f, -1478f), vec3<f32>(-515f, 1530f, 440f))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(823f + -477f) + -228f), -671f, -2460f), any(global0.zyz))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -vec3<i32>(-15071i, -176i, 0i);
    global2 = array<bool, 32>();
    var_0 = abs(-(~vec3<i32>(9438i, arg_1.d, arg_1.b) | _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, -2147483647i, 1i)), -vec3<i32>(31809i, global1.b, 2147483647i))));
    var var_1 = arg_1;
    return Struct_1((~(global1.c.x ^ 79391u) >> (_wgslsmith_add_u32(~var_1.c.x, ~1u) % 32u)) < u_input.b, (_wgslsmith_sub_i32(select(u_input.a.x, global1.b, var_1.a), abs(global1.b)) & var_1.b) & -(~_wgslsmith_sub_i32(global1.b, -5122i)), global1.c, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(370f, _wgslsmith_f_op_f32(-1f), 1000f)));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(!(34661i <= global1.b), 47427i, ~(~vec4<u32>(4294967295u, 4294967295u, u_input.b, global1.c.x)), i32(-1i) * -55523i))), Struct_1(global0.x, u_input.a.x, select(vec4<u32>(abs(u_input.b), global1.c.x ^ u_input.b, max(4324u, 0u), ~u_input.b), abs(_wgslsmith_add_vec4_u32(global1.c, global1.c)), all(!global0.zwy)), -2147483647i));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, -1848f), vec3<f32>(var_0.x, var_0.x, 339f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1363f, -1024f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))));
    global2 = array<bool, 32>();
    let var_2 = vec3<f32>(_wgslsmith_div_f32(1808f, var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(310f, var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x))) * 407f));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x, vec2<i32>(firstTrailingBit(-3072i), firstTrailingBit(4422i)), -(~(~(-vec3<i32>(106164i, var_1.b, 0i)))), abs(u_input.a.x));
}

