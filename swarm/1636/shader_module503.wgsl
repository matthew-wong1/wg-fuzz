struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 2>;

var<private> global2: array<vec2<u32>, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.b))))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b * _wgslsmith_f_op_f32(-var_0.x)) - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - 956f)))), false & select(all(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, true, global0.x), global0.x)), global0.x, true)));
    global0 = select(select(!select(vec2<bool>(global0.x, true), vec2<bool>(true, false), select(vec2<bool>(global0.x, false), vec2<bool>(true, false), true)), !(!vec2<bool>(global0.x, true)), vec2<bool>(all(vec2<bool>(true, global0.x)), true)), !select(select(vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true)), vec2<bool>(true, true)), vec2<bool>(true, true), false), !(!vec2<bool>(!global0.x, any(vec3<bool>(global0.x, global0.x, true)))));
    return select(!(!(!vec2<bool>(global0.x, false))), vec2<bool>(true, !global0.x), true);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    global0 = vec2<bool>(true, any(!vec2<bool>(select(arg_0, global0.x, arg_1.x), arg_0)));
    global0 = select(arg_1.xz, vec2<bool>(arg_0, true || !(!arg_0)), !(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 2u)]) >= -53093i));
    global2 = array<vec2<u32>, 16>();
    global0 = select(arg_1.xz, select(vec2<bool>(any(arg_1.yy) | any(vec4<bool>(global0.x, arg_1.x, arg_1.x, true)), _wgslsmith_mod_i32(-20054i, -26191i) < _wgslsmith_sub_i32(arg_2.a.c, 1i)), arg_1.zx, func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, -1103f, -272f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.a.b, -382f)), arg_1.x)), Struct_2(Struct_1(34394u, arg_2.a.b, global1[_wgslsmith_index_u32(4294967295u, 2u)])))), (true || any(!vec3<bool>(arg_0, arg_0, arg_1.x))) || global0.x);
    let var_0 = true;
    return u_input.a.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_3.a.b)))));
    var var_1 = true;
    global1 = array<i32, 2>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, true))))));
    var var_3 = Struct_3(arg_3.a, _wgslsmith_f_op_vec2_f32(arg_2.yz + arg_2.xx));
    return var_3.a;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(arg_2.a.c);
    let var_1 = vec4<i32>(1i, 1i, _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(0i, 2147483647i)), ~arg_2.a.c);
    let var_2 = func_4(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.b - 2340f), _wgslsmith_f_op_f32(round(-1361f)))))), max(35647u, _wgslsmith_sub_u32(func_2(true, vec3<bool>(false, global0.x, true), Struct_3(Struct_1(arg_3.a, arg_2.b.x, 1i), vec2<f32>(arg_2.a.b, -1000f))), 1829u)) != ~(1u >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-161f, -228f, arg_2.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b, arg_3.b, arg_3.b) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-521f, 1815f, arg_3.b))))))), Struct_2(Struct_1(u_input.a.x, arg_2.a.b, -12312i)));
    var var_3 = Struct_2(arg_3);
    var_3 = Struct_2(Struct_1(~arg_2.a.a, _wgslsmith_f_op_f32(sign(-153f)), func_4(-227f, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-829f, arg_3.b, var_2.b, 964f) * vec4<f32>(-542f, 157f, arg_2.a.b, arg_2.b.x)), Struct_2(Struct_1(arg_2.a.a, -927f, global1[_wgslsmith_index_u32(4294967295u, 2u)]))).x, vec3<f32>(var_3.a.b, _wgslsmith_div_f32(arg_3.b, 330f), _wgslsmith_f_op_f32(floor(var_2.b))), Struct_2(Struct_1(var_2.a, arg_2.b.x, -54116i))).c));
    return arg_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = ~5955u;
    return vec2<f32>(_wgslsmith_f_op_f32(-1284f - _wgslsmith_f_op_f32(trunc(501f))), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -394f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 2u)]), Struct_3(Struct_1(27974u, 1181f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<f32>(1000f, -1106f)), Struct_1(u_input.a.x, 1551f, -33028i)), Struct_2(Struct_1(4294967295u, 2716f, 54945i)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-410f)), _wgslsmith_f_op_f32(f32(-1f) * -1152f)))));
    global2 = array<vec2<u32>, 16>();
    let var_1 = Struct_3(func_1(50307i, _wgslsmith_add_vec2_i32(abs(vec2<i32>(2147483647i, -37277i)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], -2147483647i)) | (-vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]) >> (u_input.a.yx % vec2<u32>(32u))), Struct_3(Struct_1(45295u, var_0.x, 52466i), vec2<f32>(984f, _wgslsmith_f_op_f32(581f - -880f))), func_1(abs(~(-22997i)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(1u, 2u)], -4440i)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 28307i)), Struct_3(func_4(var_0.x, true, vec3<f32>(var_0.x, var_0.x, 328f), Struct_2(Struct_1(75972u, 537f, 3300i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1247f, var_0.x))), Struct_1(0u, _wgslsmith_f_op_f32(f32(-1f) * -797f), 18403i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.x) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(497f, 199f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + vec2<f32>(-1534f, -632f)))));
    let var_2 = _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-25307i, var_1.a.c), vec2<i32>(-15103i, 1i) >> (vec2<u32>(52168u, var_1.a.a) % vec2<u32>(32u))), firstLeadingBit((vec2<i32>(-18420i, global1[_wgslsmith_index_u32(var_1.a.a, 2u)]) ^ vec2<i32>(-27327i, -2147483647i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.c, -28437i), vec2<i32>(15995i, var_1.a.c)))) & _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-3685i), -1i), vec2<i32>(-(i32(-1i) * -1i), func_1(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(-30853i, var_1.a.c), Struct_3(var_1.a, var_1.b), func_4(var_0.x, false, vec3<f32>(-112f, var_1.a.b, 1014f), Struct_2(Struct_1(u_input.a.x, var_0.x, global1[_wgslsmith_index_u32(51434u, 2u)])))).c));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(var_1.a, Struct_2(Struct_1(u_input.a.x, -377f, 46803i)))).x));
}

