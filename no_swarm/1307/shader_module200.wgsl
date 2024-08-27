struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(70653u, vec3<i32>(1i, -30092i, 2147483647i), vec4<f32>(-281f, 241f, 426f, -726f), vec3<i32>(59762i, -1i, 1i), vec3<f32>(1000f, -1620f, 1315f));

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = 2344f <= global1.e.x;
    var var_1 = select(vec2<bool>(u_input.a < u_input.b.x, false), select(select(!vec2<bool>(var_0, true), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), var_0), true), vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), false))), select(select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(true, true)), vec2<bool>(var_0, false), u_input.c.x == global1.d.x), !(!vec2<bool>(false, var_0)), vec2<bool>(true, all(vec4<bool>(false, false, var_0, var_0)))), !select(vec2<bool>(false, var_0), !vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)), true));
    let var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 10u)];
    var var_3 = Struct_1(abs(11695u), ~(~u_input.c.ywz), var_2.c, var_2.b, var_2.e);
    let var_4 = true;
    return global1.a;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = 1u;
    let var_1 = Struct_1(_wgslsmith_sub_u32(27534u << (u_input.a % 32u), func_3()), vec3<i32>(global1.b.x, _wgslsmith_add_i32(-32532i << (u_input.a % 32u), -global1.d.x) | -abs(global1.b.x), _wgslsmith_add_i32(u_input.c.x, global1.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(global1.e.x + 957f)), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, -132f) * _wgslsmith_f_op_vec4_f32(-global1.c)), -u_input.c.zww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, -1000f, -625f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-3836f)), arg_1.x, _wgslsmith_div_f32(-1916f, -975f)))));
    global1 = Struct_1(func_3(), select(_wgslsmith_add_vec3_i32(u_input.c.wyz, max(u_input.c.www, vec3<i32>(global1.b.x, 1i, 32742i) ^ vec3<i32>(-1i, global1.d.x, -1i))), global1.d, select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, var_1.a != 4294967295u), !select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), true))), arg_2, ~(~(~vec3<i32>(4092i, 0i, -31595i) & var_1.b)), _wgslsmith_f_op_vec3_f32(-arg_2.yxw));
    var var_2 = Struct_1(12346u, _wgslsmith_div_vec3_i32(~(-u_input.c.ywy ^ -vec3<i32>(u_input.c.x, -24230i, u_input.c.x)), var_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x + var_1.c.x)), _wgslsmith_f_op_f32(-arg_1.x), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))) - vec4<f32>(-758f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + global1.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)))))), -(var_1.d | max(vec3<i32>(56079i, -2147483647i, var_1.d.x) >> (vec3<u32>(1u, 14339u, 13346u) % vec3<u32>(32u)), var_1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, global1.e.x, arg_2.x), var_1.e)))));
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: f32) -> vec4<bool> {
    global2 = array<Struct_1, 10>();
    var var_0 = ~_wgslsmith_div_i32(~arg_0.d.x, 33400i);
    let var_1 = _wgslsmith_f_op_f32(func_2(true | (all(vec4<bool>(false, true, true, false)) & (1i > ~global1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.e.x, 840f, global1.c.x), global1.c.zxz)) - _wgslsmith_f_op_vec3_f32(-global1.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-732f, global1.c.x, _wgslsmith_div_f32(arg_3, -909f), 1f))))));
    global1 = global2[_wgslsmith_index_u32(arg_0.a, 10u)];
    var var_2 = global1.e.x;
    return !select(!vec4<bool>(false, arg_1.x > global1.a, all(vec4<bool>(false, true, false, false)), any(vec4<bool>(false, false, false, true))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(any(vec3<bool>(false, false, false)), select(true, true, all(vec4<bool>(false, false, true, true))), true, any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~99281u, vec3<i32>(global1.b.x, global1.b.x, -(global1.b.x >> (156007u % 32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global1.c.x, -146f, 128f) + vec4<f32>(global1.c.x, -877f, global1.c.x, -873f))))), vec4<f32>(-825f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1374f, 767f) - global1.e.x), global1.c.x, global1.e.x), !(!func_1(Struct_1(4294967295u, u_input.c.zyz, vec4<f32>(global1.e.x, global1.e.x, global1.c.x, 219f), u_input.c.zzy, global1.e), u_input.b, vec4<i32>(global1.b.x, 11005i, 20654i, u_input.c.x), global1.c.x)))), u_input.c.zxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, _wgslsmith_f_op_f32(1856f + global1.c.x), _wgslsmith_f_op_f32(global1.c.x - global1.c.x)))));
    global0 = abs(u_input.c.x ^ -u_input.c.x);
    var var_0 = Struct_1(max(_wgslsmith_sub_u32(u_input.b.x, global1.a), max(45188u, ~15660u) >> (u_input.b.x % 32u)), select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, global1.d.x), vec3<i32>(global1.d.x, global1.b.x, 63975i)) | vec3<i32>(global1.b.x, 2147483647i, 15241i), abs(vec3<i32>(26617i, 20520i, 2147483647i)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true)) & u_input.c.xww, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(440f, 732f, -749f, global1.e.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-422f, -990f, 324f, global1.c.x) + vec4<f32>(-1424f, 1000f, global1.e.x, global1.e.x)) - vec4<f32>(_wgslsmith_f_op_f32(392f * -1945f), global1.e.x, 330f, _wgslsmith_f_op_f32(min(-152f, global1.e.x))))), global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e)));
    global1 = Struct_1(global1.a, -(~u_input.c.zxz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.c.x, -844f, -209f, var_0.c.x))) * vec4<f32>(2023f, var_0.e.x, var_0.e.x, 1000f))))), -_wgslsmith_mod_vec3_i32(~global1.b, select(firstLeadingBit(u_input.c.www), u_input.c.yww | vec3<i32>(-2147483647i, 24801i, u_input.c.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), global1.e);
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_u32(u_input.a, func_3())), u_input.c.ywy, vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -260f)), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e.x - 1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -454f))), 510f), reverseBits(firstTrailingBit(-vec3<i32>(u_input.c.x, 1i, 2147483647i))) << (select(~u_input.b.xxz, u_input.b.www >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a, u_input.b.x, 91787u), u_input.b.wxx) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), func_1(global2[_wgslsmith_index_u32(u_input.a, 10u)], u_input.b, u_input.c, -987f).www, vec3<bool>(true, true, true))) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e)), _wgslsmith_f_op_vec3_f32(global1.e * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.e.x, var_0.c.x, -179f))))))));
    let var_2 = !(!(_wgslsmith_mod_u32(4294967295u, 22433u) <= var_0.a));
    global1 = Struct_1(reverseBits(global1.a), vec3<i32>(global1.d.x, var_0.b.x, 32824i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(737f - global1.c.x)), global1.e.x, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(var_0.e.x)))), -1726f)), _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(~var_0.d.x), 6007i, -5803i), u_input.c.yyz), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1110f, _wgslsmith_f_op_f32(global1.e.x * var_0.e.x), -654f))))));
    global0 = 14872i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(-var_0.b.x, -2147483647i), abs(abs(u_input.c.x & var_1.b.x))));
}

