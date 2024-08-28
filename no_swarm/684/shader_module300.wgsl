struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(98802u, 1u);

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

var<private> global2: Struct_1;

var<private> global3: u32;

var<private> global4: array<u32, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = Struct_1(~vec2<i32>(-19216i, u_input.a >> (firstLeadingBit(1u) % 32u)), global2.b, _wgslsmith_sub_vec3_u32(countOneBits(~select(global2.c, global2.c, global2.b.x)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(54200u, 0u, global2.c.x)), vec3<u32>(1u, global4[_wgslsmith_index_u32(11019u, 29u)], 0u) >> (max(vec3<u32>(0u, global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(global0.x, 29u)]), global2.c) % vec3<u32>(32u)), vec3<u32>(global0.x >> (4294967295u % 32u), ~4294967295u, abs(global4[_wgslsmith_index_u32(global0.x, 29u)])))));
    var var_0 = ~vec4<u32>(_wgslsmith_clamp_u32(~1u, max(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global0.x, 29u)], global4[_wgslsmith_index_u32(global0.x, 29u)]), 4294967295u << (global0.x % 32u)), _wgslsmith_div_u32(0u ^ global4[_wgslsmith_index_u32(50066u, 29u)], ~global4[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_dot_vec3_u32(~global2.c, ~_wgslsmith_add_vec3_u32(global2.c, vec3<u32>(global0.x, global0.x, global2.c.x))), global0.x, max(0u >> (0u % 32u), global4[_wgslsmith_index_u32(~110373u, 29u)]));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, -258f, 277f))))));
    global0 = vec2<u32>(~_wgslsmith_mod_u32(global2.c.x, ~(29657u ^ var_0.x)), 4294967295u);
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(global2.a, reverseBits(vec2<i32>(u_input.a, global2.a.x) ^ global2.a) >> (~reverseBits(var_0.xz) % vec2<u32>(32u))), vec2<bool>(global2.b.x, !select(true, global2.b.x, global2.b.x)), var_0.yzw);
    return global4[_wgslsmith_index_u32(var_0.x, 29u)] >> ((max(36472u << (select(var_2.c.x, global2.c.x, true) % 32u), var_0.x) << (~4294967295u % 32u)) % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(arg_0 << (~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2.c.x, 29u)], 29u)], 29u)], global4[_wgslsmith_index_u32(global2.c.x, 29u)], global0.x, global0.x), vec4<u32>(1u, 86257u, 72849u, global2.c.x))) % vec4<u32>(32u)), select(vec4<i32>(-arg_0.x, 11189i, ~(~arg_2.a.x), arg_1), reverseBits(-vec4<i32>(arg_0.x, 2147483647i, global2.a.x, arg_2.a.x)), vec4<bool>(all(select(arg_2.b, arg_2.b, true)), true && global2.b.x, !(!arg_2.b.x), global2.b.x)));
    let var_1 = Struct_1(vec2<i32>(u_input.a, select(arg_1, 4359i, arg_2.b.x)), global2.b, abs(vec3<u32>(~global0.x << (_wgslsmith_mult_u32(0u, 0u) % 32u), ~_wgslsmith_mod_u32(arg_2.c.x, global0.x), _wgslsmith_sub_u32(~arg_2.c.x, func_3()))));
    var var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -49942i, 1i, arg_1, reverseBits(arg_1)), vec4<i32>(abs(2147483647i), -2147483647i, var_0.x, 31201i)) << (~select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global2.c.x, var_1.c.x, var_1.c.x), vec4<u32>(global4[_wgslsmith_index_u32(0u, 29u)], 0u, global2.c.x, arg_2.c.x))), firstLeadingBit(vec4<u32>(var_1.c.x, global0.x, global2.c.x, 39998u)) << (vec4<u32>(global4[_wgslsmith_index_u32(global2.c.x, 29u)], 1u, global2.c.x, global2.c.x) % vec4<u32>(32u)), all(var_1.b)) % vec4<u32>(32u));
    global2 = arg_2;
    global3 = _wgslsmith_add_u32(~countOneBits(arg_2.c.x & 1u), var_1.c.x);
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(select(~vec4<i32>(u_input.a, 0i, arg_3.a.x, -1i), abs(vec4<i32>(-1i) * -vec4<i32>(1i, -1i, -2147483647i, 4572i)), !vec4<bool>(!global2.b.x, any(vec2<bool>(true, false)), all(vec4<bool>(arg_3.b.x, global2.b.x, global2.b.x, true)), global2.b.x)), _wgslsmith_sub_i32(global2.a.x, -13124i), arg_3);
    global4 = array<u32, 29>();
    global0 = ~vec2<u32>(~_wgslsmith_mod_u32(~1325u, arg_2), 4294967295u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = var_0.a;
    return Struct_1(-abs(_wgslsmith_mod_vec2_i32(arg_3.a, vec2<i32>(var_0.a.x, global2.a.x))), !var_0.b, global2.c);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = func_2(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_0.a.x, -1i, ~var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global2.a.x), global2.a)), vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, arg_0.a.x, -13358i, arg_0.a.x)), vec4<i32>(global2.a.x, 1i, arg_0.a.x, var_0.a.x >> (var_0.c.x % 32u)) | abs(vec4<i32>(13075i, -1i, -2147483647i, -1i) ^ vec4<i32>(global2.a.x, var_0.a.x, -36780i, var_0.a.x)), countOneBits(vec4<i32>(countOneBits(-5817i), arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 33682i), vec2<i32>(17108i, -103i)), _wgslsmith_clamp_i32(-36342i, u_input.a, arg_0.a.x)))), -1i, arg_0);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(129f, _wgslsmith_f_op_f32(step(1271f, 766f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1845f)), _wgslsmith_f_op_f32(trunc(-461f)));
    let var_3 = Struct_1(arg_0.a, var_0.b, _wgslsmith_add_vec3_u32(~(~global2.c) << (firstLeadingBit(abs(vec3<u32>(global0.x, 68277u, 34591u))) % vec3<u32>(32u)), vec3<u32>(abs(~4294967295u), ~global4[_wgslsmith_index_u32(var_1.c.x | 12638u, 29u)], _wgslsmith_add_u32(24172u, global2.c.x ^ 1u))));
    global2 = func_1(func_3(), 0u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.c.xy), vec2<u32>(_wgslsmith_div_u32(1u, 12465u), ~4294967295u)), func_2(~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-22272i, var_1.a.x, 0i, var_1.a.x)), -vec4<i32>(0i, var_3.a.x, 3178i, var_1.a.x)), 32291i, Struct_1(vec2<i32>(_wgslsmith_sub_i32(var_0.a.x, 14464i), var_1.a.x), var_0.b, ~(~vec3<u32>(var_0.c.x, 624u, 3776u)))));
    return func_2(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(2147483647i, -global2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 1i), vec3<i32>(-1i, -4106i, 0i)), -arg_0.a.x)), vec4<i32>(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 14837u, 51300u), vec3<u32>(4294967295u, 68125u, arg_0.c.x)), ~global0.x, var_1.c.x, var_0).a.x, ~(-30600i), -46932i, ~global2.a.x)), -arg_0.a.x, Struct_1(global2.a, !vec2<bool>(false, func_2(vec4<i32>(var_3.a.x, 38885i, var_3.a.x, var_0.a.x), 17880i, Struct_1(global2.a, vec2<bool>(var_3.b.x, true), vec3<u32>(42495u, 1u, 1u))).b.x), vec3<u32>(4294967295u, ~global4[_wgslsmith_index_u32(arg_0.c.x, 29u)], 4294967295u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, arg_2, arg_2, 249f)))))), vec4<f32>(_wgslsmith_f_op_f32(arg_2 - 150f), 1306f, arg_2, _wgslsmith_f_op_f32(-arg_2)));
    global3 = arg_0.c.x;
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-u_input.a, _wgslsmith_add_i32(-2147483647i, arg_1.a.x))), _wgslsmith_mod_vec2_i32(arg_3.wy, func_2(~arg_3, arg_3.x, func_1(global2.c.x, 4294967295u, global4[_wgslsmith_index_u32(global0.x, 29u)], Struct_1(global2.a, global2.b, arg_1.c))).a)), !vec2<bool>(!any(global1[_wgslsmith_index_u32(0u, 26u)]), arg_0.b.x), vec3<u32>(18356u, ~arg_0.c.x, 95051u));
    global1 = array<vec3<bool>, 26>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(var_0.x - 399f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1248f, arg_2, var_1.b.x))), 1478f, -1302f, var_0.x)));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, ~(~_wgslsmith_clamp_u32(countOneBits(4294967295u), 1u, _wgslsmith_mod_u32(global0.x, global0.x)))), 26u)];
    let var_1 = vec3<u32>(global2.c.x, abs(global2.c.x ^ _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.c, vec3<u32>(1u, global4[_wgslsmith_index_u32(16783u, 29u)], 0u)), 29u)], 45520u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(global2.c.x, global0.x, global0.x), func_5(Struct_1(firstTrailingBit(global2.a), vec2<bool>(true, true), vec3<u32>(global2.c.x, global2.c.x, global0.x)), func_4(func_1(0u, 1u, global2.c.x, Struct_1(global2.a, global2.b, vec3<u32>(90517u, global0.x, 966u)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -1563f), _wgslsmith_div_f32(411f, -876f), all(vec4<bool>(true, global2.b.x, var_0.x, false)))), firstTrailingBit(firstLeadingBit(vec4<i32>(global2.a.x, 42035i, u_input.a, global2.a.x))))));
    var var_2 = firstLeadingBit(abs(-vec3<i32>(-u_input.a, firstTrailingBit(global2.a.x), max(u_input.a, -2147483647i))));
    let var_3 = _wgslsmith_div_i32(~_wgslsmith_mod_i32(func_4(Struct_1(var_2.yy, vec2<bool>(global2.b.x, var_0.x), global2.c)).a.x, reverseBits(max(-95664i, global2.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, -20679i, -var_2.x, u_input.a) << (vec4<u32>(~24718u, ~0u, 1u >> (1u % 32u), ~16643u) % vec4<u32>(32u)), firstLeadingBit(firstLeadingBit(vec4<i32>(-1i, 0i, 0i, 2147483647i)) << (vec4<u32>(global2.c.x, 16000u, 37706u, global4[_wgslsmith_index_u32(16833u, 29u)]) % vec4<u32>(32u)))));
    var var_4 = Struct_1(vec2<i32>(abs(global2.a.x), var_3), var_0.yx, vec3<u32>(global4[_wgslsmith_index_u32(~select(global0.x, 2481u, global2.b.x), 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(7835u, 0u, 64929u, global0.x) << (vec4<u32>(60184u, global2.c.x, var_1.x, global2.c.x) % vec4<u32>(32u)), ~vec4<u32>(global2.c.x, 0u, var_1.x, global4[_wgslsmith_index_u32(global0.x, 29u)])), ~global4[_wgslsmith_index_u32(1u, 29u)]) >> (vec3<u32>(~global2.c.x ^ global4[_wgslsmith_index_u32(~9761u, 29u)], ~(~var_1.x), ~firstLeadingBit(0u)) % vec3<u32>(32u)));
    var_2 = firstLeadingBit(vec3<i32>(global2.a.x, _wgslsmith_add_i32(i32(-1i) * -var_2.x, max(-var_3, reverseBits(var_2.x))), func_4(func_1(_wgslsmith_div_u32(var_1.x, 1u), global4[_wgslsmith_index_u32(global0.x, 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 42470u, 35517u, global2.c.x), vec4<u32>(global4[_wgslsmith_index_u32(6002u, 29u)], 4294967295u, 1u, 0u)), Struct_1(vec2<i32>(u_input.a, 13511i), vec2<bool>(false, global2.b.x), global2.c))).a.x));
    var var_5 = var_4.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 890f, global0.x | firstTrailingBit(65911u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-865f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2558f, -444f)))) + vec2<f32>(-566f, -1846f)));
}

