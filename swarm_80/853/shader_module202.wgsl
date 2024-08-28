struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_2 = Struct_2(Struct_1(1i, vec2<u32>(20181u, 0u), -15639i, vec4<bool>(false, false, false, false), vec2<bool>(true, true)));

var<private> global2: array<Struct_3, 2>;

var<private> global3: bool = true;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> i32 {
    global2 = array<Struct_3, 2>();
    let var_0 = global2[_wgslsmith_index_u32(arg_2.b.x, 2u)];
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1))))))));
    let var_2 = ~select(min(vec4<i32>(-23528i, 44407i, ~(-1i), _wgslsmith_mult_i32(arg_2.a, -2147483647i)), (vec4<i32>(38449i, global1.a.c, u_input.a, var_0.a.a.a) >> (vec4<u32>(u_input.e.x, 3078u, 40551u, u_input.c) % vec4<u32>(32u))) | vec4<i32>(var_0.a.a.a, global1.a.a, 61481i, 36362i)), -max(vec4<i32>(-1i, arg_2.c, 1i, -8953i) ^ vec4<i32>(-46608i, -1i, -1i, global4.x), select(vec4<i32>(var_0.a.a.a, -16920i, u_input.a, -29288i), vec4<i32>(-19352i, var_0.a.a.c, arg_2.c, global1.a.a), vec4<bool>(arg_2.e.x, arg_2.d.x, global1.a.e.x, var_0.c.x))), (_wgslsmith_mod_i32(32394i, arg_2.a) == 1i) || (-49842i == (21311i >> (u_input.d % 32u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-393f)) * _wgslsmith_f_op_f32(var_0.b * arg_1)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-911f, 647f)))), -943f));
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global2 = array<Struct_3, 2>();
    global0 = array<Struct_1, 23>();
    global3 = false;
    var var_0 = global1.a.e.x;
    let var_1 = vec3<i32>(0i, -53778i, -1i);
    return Struct_2(Struct_1(reverseBits(1i), vec2<u32>(u_input.b.x, ~global1.a.b.x) ^ (select(vec2<u32>(arg_0.x, u_input.c), u_input.e, global1.a.d.x) ^ vec2<u32>(0u, 0u)), -(~func_3(vec2<bool>(true, true), -337f, global1.a, global1.a.d.x)), !(!vec4<bool>(true, global1.a.e.x, global1.a.e.x, global1.a.e.x)), !vec2<bool>(global1.a.d.x, 31976i <= global4.x)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec3<i32> {
    global1 = func_2(select(firstTrailingBit(arg_3.d.yzx | vec3<u32>(arg_1, 4918u, arg_0.a.b.x)), ~(~arg_3.d.xwy), select(select(vec3<bool>(global1.a.d.x, global1.a.e.x, global1.a.d.x), vec3<bool>(global1.a.e.x, true, arg_3.a.a.e.x), arg_0.a.d.xzw), vec3<bool>(true, true, true), vec3<bool>(true, arg_0.a.d.x, global1.a.d.x))) << (arg_3.d.xyx % vec3<u32>(32u)));
    var var_0 = u_input.c;
    global3 = (-arg_3.a.a.a > _wgslsmith_mod_i32(func_3(vec2<bool>(false, arg_0.a.e.x), 177f, func_2(arg_3.d.wwz).a, u_input.a < 303i), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(arg_2.yz, arg_2.zx)))) & (_wgslsmith_clamp_u32(~_wgslsmith_div_u32(0u, 39550u), arg_1, _wgslsmith_add_u32(9258u, max(global1.a.b.x, 0u))) == 0u);
    let var_1 = arg_3.e.x;
    return vec3<i32>(~abs(-_wgslsmith_sub_i32(-20886i, -2147483647i)), -53594i, _wgslsmith_div_i32(~(-23502i), 9497i));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(0i, vec2<u32>(u_input.d, u_input.e.x >> (u_input.b.x % 32u)), abs(global1.a.c >> (reverseBits(0u) % 32u)), global1.a.d, select(select(arg_1.a.e, vec2<bool>(global1.a.d.x, arg_1.a.d.x), 84016u <= arg_1.a.b.x), arg_1.a.d.zz, global1.a.e)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f * arg_2))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_2)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, -590f))))))));
    global2 = array<Struct_3, 2>();
    let var_2 = global1.a.d;
    var var_3 = arg_1.a.e;
    return firstLeadingBit(1i);
}

fn func_1(arg_0: i32) -> i32 {
    global3 = any(global1.a.d);
    global2 = array<Struct_3, 2>();
    global2 = array<Struct_3, 2>();
    let var_0 = all(vec3<bool>(!(!global1.a.d.x) && true, !select(global1.a.d.x, all(vec3<bool>(false, global1.a.e.x, false)), global1.a.c >= global4.x), ~u_input.a <= 1i));
    var var_1 = !vec3<bool>(global1.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1248f)) * _wgslsmith_f_op_f32(abs(-1460f))) >= 1000f, !(!(global1.a.e.x || false)));
    return func_5(max(~func_4(func_2(vec3<u32>(u_input.b.x, 1u, 4294967295u)), abs(u_input.d), vec4<i32>(-8139i, global1.a.a, arg_0, -26766i) >> (u_input.b % vec4<u32>(32u)), Struct_3(Struct_2(Struct_1(-1i, u_input.b.xx, 1i, global1.a.d, global1.a.d.zx)), -520f, global1.a.d, vec4<u32>(u_input.d, u_input.e.x, 5720u, global1.a.b.x), vec2<f32>(-783f, 1286f))), _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(arg_0, global4.x, 2147483647i)), vec3<i32>(firstTrailingBit(0i), global4.x, abs(u_input.a)))), Struct_2(func_2(max(vec3<u32>(34021u, global1.a.b.x, 27736u), u_input.b.ywx)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(278f)) - -2195f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 2>();
    var var_0 = vec4<u32>(~select(global1.a.b.x, global1.a.b.x, true), 1u, global1.a.b.x, _wgslsmith_mod_u32(u_input.e.x, u_input.c ^ firstLeadingBit(49820u)));
    var_0 = vec4<u32>(~u_input.e.x, 1179u, 1u >> (~(~(global1.a.b.x ^ 4294967295u)) % 32u), ~0u << (0u % 32u));
    var var_1 = var_0.x;
    let var_2 = vec3<i32>(max(_wgslsmith_add_i32(_wgslsmith_add_i32(func_1(26377i), i32(-1i) * -2147483647i), global1.a.c), -2147483647i), -u_input.a, 1i);
    var var_3 = global4.x;
    var var_4 = func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(4294967295u, 4294967295u), 0u, countOneBits(u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.b.x, var_0.x, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 71922u, var_0.x), abs(var_0.zzy)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yx, var_2.zy >> (u_input.e % vec2<u32>(32u)));
}

