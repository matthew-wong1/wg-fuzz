struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: array<u32, 5>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b.zyy) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.b.x, -1351f, 682f))) * _wgslsmith_f_op_vec3_f32(arg_2.a.zzy + arg_2.a.yzz))))));
    return _wgslsmith_div_vec2_f32(var_0.a.xy, _wgslsmith_f_op_vec2_f32(-arg_3.b.yw));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    global1 = array<vec3<bool>, 26>();
    global1 = array<vec3<bool>, 26>();
    global1 = array<vec3<bool>, 26>();
    global1 = array<vec3<bool>, 26>();
    global1 = array<vec3<bool>, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> bool {
    global2 = array<u32, 5>();
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(abs(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 5u)]), _wgslsmith_div_u32(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_0, 59190u, u_input.b), vec4<u32>(62659u, global2[_wgslsmith_index_u32(4294967295u, 5u)], 55384u, arg_1)))), _wgslsmith_mod_u32(22271u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 76403u, u_input.b, 33440u), ~vec4<u32>(arg_0, arg_0, u_input.d, 4294967295u)) | ~(~arg_1)), arg_1);
    var var_1 = ~_wgslsmith_mod_vec2_u32(var_0.xy, ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.xy, vec2<u32>(4294967295u, 0u)), ~var_0.zx));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, u_input.c.x, 1i, -2147483647i), vec4<i32>(u_input.e, -28780i, 0i, u_input.c.x)), vec3<u32>(0u, firstTrailingBit(18422u), reverseBits(arg_1)), Struct_2(vec4<f32>(435f, -1083f, arg_2, arg_2), true, 1i), Struct_4(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-371f, arg_2, -691f, arg_2)), Struct_3(Struct_2(vec4<f32>(308f, arg_2, 219f, -1000f), false, 2147483647i), arg_0, 651f, vec2<u32>(4294967295u, 4294967295u)), u_input.e, Struct_2(vec4<f32>(623f, arg_2, arg_2, arg_2), true, -30257i)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -756f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 1502f, arg_2)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1657f, 323f, 372f, arg_2), vec4<f32>(-470f, arg_2, arg_2, 974f), vec4<bool>(false, global0.x, global0.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, -265f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1000f, 568f, arg_2)))), Struct_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 451f, -925f, arg_2), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, arg_2, arg_2, arg_2)))), global0.x, ~(i32(-1i) * -328i)), 29921u, _wgslsmith_f_op_f32(select(arg_2, 1000f, false)), ~(~(~vec2<u32>(0u, 0u)))), ~(-(~u_input.c.x)), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1462f, 801f, arg_2) * vec4<f32>(arg_2, -1063f, -1000f, -762f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, arg_2, arg_2, arg_2) + vec4<f32>(-150f, arg_2, 155f, 1390f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1251f, arg_2, arg_2)), select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.x, false, false, global0.x), arg_1 >= u_input.d))), false, u_input.c.x << (_wgslsmith_sub_u32(abs(arg_0), firstTrailingBit(0u)) % 32u)));
    global0 = vec4<bool>(false, global0.x, (-1i >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, 61352u), _wgslsmith_dot_vec4_u32(vec4<u32>(10149u, u_input.b, 28571u, 1u), vec4<u32>(0u, 1198u, 0u, 2669u))) % 32u)) >= _wgslsmith_add_i32(~(~u_input.e), 2147483647i), var_2.c.a.b);
    return !all(vec4<bool>(any(vec2<bool>(var_2.e.b, true)), !var_2.c.a.b, (var_2.b.x < arg_2) != any(global0.yyx), true));
}

fn func_1() -> vec4<i32> {
    var var_0 = vec4<bool>(false, true & (global0.x & global0.x), func_2(u_input.d, 26487u, _wgslsmith_f_op_f32(973f - _wgslsmith_f_op_f32(select(903f, _wgslsmith_f_op_f32(1000f * -476f), true)))), 7472u <= ~countOneBits(abs(global2[_wgslsmith_index_u32(4294967295u, 5u)])));
    let var_1 = any(!select(select(global0.zy, select(vec2<bool>(global0.x, var_0.x), global0.xz, global0.xz), vec2<bool>(var_0.x, global0.x)), var_0.yx, global0.yy));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(-1i) * -(vec4<i32>(-12551i, u_input.e, -1i, u_input.c.x) >> (vec4<u32>(global2[_wgslsmith_index_u32(59783u, 5u)], u_input.d, global2[_wgslsmith_index_u32(415u, 5u)], u_input.b) % vec4<u32>(32u))), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], 0u, u_input.d), reverseBits(vec3<u32>(31498u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 5u)])))), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-403f, -1000f, -1000f, 3231f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1015f, -1030f, 1143f, -1613f))), true, abs(_wgslsmith_div_i32(u_input.c.x, u_input.e))), Struct_4(1657f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1513f, -544f, -752f, -905f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1739f, 1252f, -892f, 266f)))), Struct_3(Struct_2(vec4<f32>(637f, 1315f, 234f, -488f), var_0.x, 2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(41110u, global2[_wgslsmith_index_u32(4294967295u, 5u)]), 5u)], _wgslsmith_f_op_f32(582f + 101f), vec2<u32>(u_input.b, 54496u) >> (vec2<u32>(16225u, global2[_wgslsmith_index_u32(101789u, 5u)]) % vec2<u32>(32u))), u_input.a, Struct_2(vec4<f32>(213f, -517f, 292f, -108f), false, 0i)))).x, _wgslsmith_div_f32(-950f, -625f));
    let var_3 = _wgslsmith_div_i32(-2147483647i, u_input.a);
    let var_4 = select(vec3<i32>(u_input.e, firstLeadingBit(-var_3), 1i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 22013i, var_3), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.e, var_3), vec3<i32>(u_input.e, var_3, 1i))), var_1 || true) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(53385u << (u_input.d % 32u), select(global2[_wgslsmith_index_u32(u_input.b, 5u)], 62915u, var_0.x), reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 5u)], 5u)])), ~(vec3<u32>(u_input.d, 29360u, global2[_wgslsmith_index_u32(35843u, 5u)]) ^ vec3<u32>(global2[_wgslsmith_index_u32(0u, 5u)], 1u, global2[_wgslsmith_index_u32(u_input.b, 5u)]))) % vec3<u32>(32u));
    return (vec4<i32>(-1i) * -abs(vec4<i32>(0i, u_input.e, -11084i, var_3))) >> ((~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d, 5u)], 4294967295u, global2[_wgslsmith_index_u32(17540u, 5u)], u_input.b)), vec4<u32>(u_input.d, 0u, global2[_wgslsmith_index_u32(u_input.d, 5u)], u_input.b) >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28618u, 5u)], 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 5u)], 5u)], 35434u, 12510u) % vec4<u32>(32u))) ^ (vec4<u32>(1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 5u)], 5u)], 4294967295u, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b, 5u)])) | vec4<u32>(4294967295u, ~40542u, 76240u, ~u_input.d))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    global2 = array<u32, 5>();
    let var_0 = arg_2.c;
    var var_1 = Struct_3(Struct_2(arg_2.a, arg_2.b || arg_2.b, ~(~abs(arg_1.x))), 4294967295u ^ global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50839u, 268u, global2[_wgslsmith_index_u32(u_input.b, 5u)]), select(vec3<u32>(0u, 44961u, u_input.d), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 5u)], 33904u), global1[_wgslsmith_index_u32(u_input.b, 26u)])), 5u)], 5u)], 1451f, ~select(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.d, 5u)], 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], u_input.d))), vec2<u32>(u_input.b, 0u & global2[_wgslsmith_index_u32(u_input.b, 5u)]), vec2<bool>(true, func_2(global2[_wgslsmith_index_u32(u_input.b, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], 187f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.a.x, arg_3.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1473f)))), _wgslsmith_f_op_f32(exp2(arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1621f));
    let var_3 = Struct_4(1780f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - var_1.a.a.x), _wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a.x)))), var_2.x), Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(var_2.x * 1654f), arg_2.a.x), all(vec4<bool>(false, false, var_1.a.b, arg_2.b)), 2147483647i), ~min(1u, global2[_wgslsmith_index_u32(select(0u, global2[_wgslsmith_index_u32(4294967295u, 5u)], var_1.a.b), 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(max(var_2.x, 1461f))))), ~(select(vec2<u32>(var_1.b, u_input.d), var_1.d, global0.zy) << (select(vec2<u32>(global2[_wgslsmith_index_u32(var_1.b, 5u)], var_1.b), var_1.d, false) % vec2<u32>(32u)))), arg_2.c, var_1.a);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-363f - var_2.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.x * -1313f))))), _wgslsmith_f_op_vec4_f32(-var_1.a.a), var_3.c, -arg_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(round(arg_2.a)), global0.x, 72814i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(-(vec4<i32>(u_input.e, 0i, 61112i, -2147483647i) | -vec4<i32>(-19508i, 0i, u_input.a, u_input.c.x))), firstTrailingBit((func_1() ^ func_1()) & abs(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.e))), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, -1000f, 1122f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1043f, -1692f, -352f) + vec4<f32>(1373f, 679f, -591f, 883f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 157f, 421f, -1281f)))), false, ~0i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1497f, -668f, 349f))))));
    var var_1 = var_0.c.d;
    var var_2 = 1u;
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.c.d.x, _wgslsmith_add_u32(u_input.d, 0u)), ~max(max(3490u, 4294967295u), ~1u) << (firstTrailingBit(_wgslsmith_add_u32(32571u, u_input.b)) % 32u));
    global1 = array<vec3<bool>, 26>();
    let var_4 = var_0.c.a.c;
    var_1 = ~(~vec2<u32>(var_0.c.d.x, _wgslsmith_div_u32(~var_0.c.b, 4294967295u)));
    var var_5 = abs(countOneBits(-var_4));
    let var_6 = 215f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(32015u, 5u)], 47658u, 0u) | vec3<u32>(var_0.c.d.x, global2[_wgslsmith_index_u32(var_1.x, 5u)], 16205u), vec3<u32>(global2[_wgslsmith_index_u32(1444u, 5u)], 0u, u_input.b) << (vec3<u32>(u_input.b, u_input.d, 15255u) % vec3<u32>(32u)))), min(vec3<u32>(1u, var_1.x, 1u), abs(abs(abs(vec3<u32>(82030u, var_1.x, 1u))))), var_0.c.d << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), 1063f, 0u);
}

