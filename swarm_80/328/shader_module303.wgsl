struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(1000f, -616f, 707f), 69471u), Struct_1(vec3<f32>(1380f, -1563f, -739f), 4294967295u), Struct_1(vec3<f32>(227f, 2382f, -1140f), 4294967295u), Struct_1(vec3<f32>(-136f, -707f, 704f), 4294967295u), Struct_1(vec3<f32>(-224f, -367f, 1816f), 80628u), Struct_1(vec3<f32>(-1719f, -350f, -302f), 4294967295u), Struct_1(vec3<f32>(-1194f, -742f, 1011f), 0u), Struct_1(vec3<f32>(634f, -189f, -838f), 18980u), Struct_1(vec3<f32>(-222f, -1403f, 729f), 93996u), Struct_1(vec3<f32>(103f, -532f, 380f), 77362u), Struct_1(vec3<f32>(434f, -114f, 1354f), 18351u), Struct_1(vec3<f32>(1654f, 591f, 698f), 13288u), Struct_1(vec3<f32>(-1951f, -2202f, -615f), 94982u), Struct_1(vec3<f32>(1193f, -732f, 792f), 37030u));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(542f, -1079f, 290f), 67411u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, -1000f) + vec2<f32>(arg_1.a.x, 1000f)) * _wgslsmith_f_op_vec2_f32(exp2(arg_2.a.zy))) - _wgslsmith_f_op_vec2_f32(select(global3.a.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, -1382f)), vec2<bool>(true, true)))))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, arg_2.b), vec3<u32>(1u, 1u, global3.b)), vec3<u32>(42124u, 40249u, arg_2.b), vec3<bool>(true, true, true)), vec3<u32>(global3.b, global1.b, global1.b ^ 0u)), _wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 1u, global1.b, u_input.b), vec4<u32>(24788u, 21080u, arg_2.b, u_input.b))), ~select(1u, global3.b, true)), global1.b) << (vec3<u32>(98159u, u_input.b, select(1u, global1.b, true)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_mult_i32(36734i, ~firstTrailingBit(~1i));
    let var_3 = vec3<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true || any(vec2<bool>(false, true)))), all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), 0u >= ~(global3.b >> (global3.b % 32u)));
    global2 = array<Struct_1, 14>();
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(908f * 1810f), -1068f, arg_3.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.b, reverseBits(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, arg_2)))), ~arg_2));
    global3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.yww, var_0.a) * vec3<f32>(411f, -1000f, -120f)), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_3.x)), 1504f, _wgslsmith_f_op_f32(round(-989f))))), var_0.a), 4294967295u);
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    let var_1 = Struct_1(arg_1.b.a, _wgslsmith_div_u32(global3.b, func_3(898f, arg_1.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, -1761f, 1000f)), _wgslsmith_sub_u32(global3.b, 4073u)))));
    return vec3<i32>(firstTrailingBit(-2530i), abs(_wgslsmith_add_i32(reverseBits(1i), arg_0)), 1i);
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_div_i32(arg_0.c, arg_0.c);
    let var_1 = ~func_2(4806i, arg_0, countOneBits(arg_0.b.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1727f, 707f, arg_0.d, global1.a.x))));
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a), vec3<f32>(-1590f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global3.a.x))), ~max(42526u, 4294967295u));
    var var_2 = global3.a.xy;
    var var_3 = any(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), true), false));
    return ~u_input.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = -1i;
    var_0 = (i32(-1i) * -_wgslsmith_clamp_i32(arg_0.c, firstLeadingBit(-1i), countOneBits(arg_0.c))) << (_wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(global3.b, global3.b)), 4294967295u) % 32u);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(316f - -984f), _wgslsmith_f_op_f32(trunc(arg_0.b.a.x))))), 4294967295u);
    var var_1 = Struct_1(arg_2.a, global3.b);
    var_1 = global2[_wgslsmith_index_u32(u_input.b, 14u)];
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<i32>(firstTrailingBit(-2147483647i), -1i));
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(func_1(Struct_2(vec2<u32>(1u, 19496u), Struct_1(global1.a, 4294967295u), 1i, global3.a.x)), global2[_wgslsmith_index_u32(global3.b, 14u)], _wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647i), _wgslsmith_f_op_f32(global3.a.x * 1756f)), _wgslsmith_mult_vec3_u32(~vec3<u32>(10972u, u_input.b, u_input.a.x), vec3<u32>(u_input.b, global1.b, u_input.a.x) ^ vec3<u32>(global3.b, global1.b, u_input.b)), global2[_wgslsmith_index_u32(~global1.b & _wgslsmith_mod_u32(3217u, global3.b), 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1579f + global1.a.x)))), -155f), 97623u);
    let var_1 = Struct_2(abs(countOneBits(u_input.a ^ vec2<u32>(global3.b, 20661u))) << (abs(min(u_input.a ^ vec2<u32>(4294967295u, global1.b), vec2<u32>(global1.b, 1u) & u_input.a)) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(22421u, 14u)], select(var_0.x, -1i, true), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(select(global1.a.x, 1640f, select(all(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, false, true, true)))))));
    let var_2 = Struct_2(vec2<u32>(func_1(var_1).x, 8746u), var_1.b, ~(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 1i, var_1.c, var_0.x)), firstLeadingBit(vec4<i32>(var_1.c, -1i, -22727i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1348f, global3.a.x, true)))) + global1.a.x) - global1.a.x));
    var var_3 = select(vec4<bool>(!select(true, true, any(vec3<bool>(false, false, true))), true, true, false), select(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, !any(vec3<bool>(false, true, false))), vec4<bool>(true, false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_mod_i32(-59240i, 8240i) > _wgslsmith_div_i32(var_2.c, var_1.c)), all(vec2<bool>(true, true))), !vec4<bool>(true, true && select(false, false, false), true, true));
    var var_4 = _wgslsmith_mult_vec3_i32(~(-vec3<i32>(var_0.x, 1i, var_2.c) >> ((vec3<u32>(0u, 27309u, var_2.a.x) >> (vec3<u32>(global3.b, 76721u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))), firstLeadingBit(-reverseBits(vec3<i32>(-33874i, var_0.x, -8731i)))) & ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c, var_2.c, -27505i), vec3<i32>(0i, 9037i, -15167i)), vec3<i32>(var_0.x, 2147483647i, -2147483647i) & vec3<i32>(var_1.c, var_2.c, -2147483647i)), func_2(~(-3032i), var_2, 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, global1.a.x, var_2.b.a.x, 1281f))));
    let x = u_input.a;
    s_output = StorageBuffer(54506u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.a) * vec3<f32>(var_2.b.a.x, -340f, -158f)), vec3<bool>(all(vec2<bool>(false, false)), true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(var_1.b.a, vec3<f32>(global1.a.x, global1.a.x, 660f))), vec3<f32>(-1001f, global1.a.x, global1.a.x), all(vec4<bool>(false, false, var_3.x, var_3.x)))))), -1i);
}

