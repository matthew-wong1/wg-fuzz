struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(19686i, 2147483647i, 2147483647i, 0i, 0i, 2147483647i, -13779i, 13422i, -59067i, 2147483647i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_5, arg_3: f32) -> bool {
    global0 = array<i32, 10>();
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_i32(max(-2147483647i, -53760i), 41624i, ~0i), all(vec3<bool>(false, arg_2.a.x, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, 647f, -294f)) + vec3<f32>(arg_3, arg_1, 683f)), vec3<bool>(u_input.b != 0u, true, true), vec2<i32>(1i ^ global0[_wgslsmith_index_u32(41089u, 10u)], i32(-1i) * -2147483647i)), ~abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -708f, arg_3, arg_1) - vec4<f32>(arg_3, 483f, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, 378f)), _wgslsmith_f_op_f32(1243f + arg_1), _wgslsmith_f_op_f32(min(1105f, 152f)), 723f), arg_2.a.x))), any(!select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))) || (arg_2.a.x != true));
    var var_1 = select(!vec4<bool>(all(!var_0.a.a.d), any(vec3<bool>(arg_2.a.x, true, true)), arg_2.a.x, any(!vec3<bool>(arg_2.a.x, false, var_0.a.a.d.x))), vec4<bool>(var_0.c, !var_0.c, false, any(select(select(vec4<bool>(true, true, var_0.c, var_0.a.a.b), vec4<bool>(true, var_0.c, false, false), var_0.a.a.b), vec4<bool>(true, true, true, arg_2.a.x), vec4<bool>(var_0.c, true, arg_2.a.x, false)))), select(!vec4<bool>(true, u_input.b > 20560u, any(var_0.a.a.d), all(vec2<bool>(var_0.a.a.b, var_0.c))), select(!vec4<bool>(true, var_0.c, var_0.a.a.b, arg_2.a.x), select(vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), vec4<bool>(var_0.c, var_0.c, var_0.c, arg_2.a.x), -2147483647i == u_input.d), u_input.d > select(u_input.a, arg_0.x, var_0.a.a.b)), _wgslsmith_mult_i32(abs(1i), reverseBits(arg_0.x)) > -(~u_input.d)));
    return !all(!(!select(vec4<bool>(false, true, false, arg_2.a.x), vec4<bool>(var_0.c, arg_2.a.x, true, var_0.a.a.b), vec4<bool>(true, var_1.x, var_1.x, var_1.x))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global0 = array<i32, 10>();
    var var_0 = Struct_4(2147483647i, Struct_1(~26016i, !select(true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -775f), arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1496f, 2182f, arg_0))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(func_3(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 10u)], -1i, global0[_wgslsmith_index_u32(u_input.b, 10u)]), arg_0, Struct_5(vec2<bool>(false, false)), 1000f), true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)))), abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, 2147483647i)), reverseBits(vec2<i32>(-19636i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))))), vec2<i32>(-u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b ^ u_input.c.x, abs(35841u), u_input.b, _wgslsmith_sub_u32(u_input.c.x, 48666u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 13003u, 16830u), vec4<u32>(u_input.c.x, u_input.c.x, 44836u, u_input.c.x)), vec4<u32>(u_input.b, u_input.c.x, 0u, 18691u), vec4<bool>(true, false, false, false))), 10u)]));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~(~abs(vec4<u32>(0u, 0u, u_input.b, u_input.b))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 1u) & vec4<u32>(u_input.b, u_input.c.x, 0u, 47074u), firstLeadingBit(vec4<u32>(61335u, 29374u, u_input.c.x, u_input.b)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.b)) & ~(~vec4<u32>(4294967295u, u_input.b, u_input.c.x, u_input.c.x))), firstLeadingBit(~(~vec4<u32>(76858u, 4294967295u, u_input.c.x, 70358u)) >> (vec4<u32>(1u, u_input.b, u_input.b, u_input.c.x) % vec4<u32>(32u))));
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(6235i, min(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 47449i, -2147483647i), reverseBits(-8131i) & _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 40049i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(9804u, 10u)], 0i))), countOneBits(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 4294967295u), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), 10u)])), vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), 10u)] << (4294967295u % 32u), 1i >> (u_input.c.x % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(24539i, global0[_wgslsmith_index_u32(1u, 10u)], -11658i, global0[_wgslsmith_index_u32(42490u, 10u)])), vec4<i32>(u_input.d, 17815i, u_input.a, -53136i)), -firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], 2147483647i, 0i, u_input.d))), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1i, u_input.d)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(268f, -1111f, 1000f, 1259f), vec4<f32>(-184f, 650f, 672f, -1193f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2134f, -1000f, 1712f, 1852f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-282f, -153f, 356f, 1371f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(266f, -1260f, -643f, 1000f) * vec4<f32>(-136f, -2147f, 2283f, -114f))))));
    global0 = array<i32, 10>();
    var var_2 = func_2(1530f);
    var_0 = -select(min(-vec3<i32>(1i, global0[_wgslsmith_index_u32(var_2.x, 10u)], 0i), firstTrailingBit(vec3<i32>(1i, -1i, u_input.a))), select((vec3<i32>(var_0.x, -1i, -1i) >> (var_2.yzx % vec3<u32>(32u))) ^ select(vec3<i32>(u_input.d, 11916i, u_input.d), vec3<i32>(67559i, 0i, -11056i), true), vec3<i32>(abs(-7173i), firstTrailingBit(0i), ~0i), all(vec3<bool>(true, true, true))), true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.xxx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.yzz, var_1.yzw, vec3<bool>(true, true, false))) * var_1.zyz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_1 = Struct_2(Struct_1(~firstTrailingBit(u_input.d) >> (~36919u % 32u), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1242f, var_0.x)) - vec3<f32>(-735f, -1050f, 1061f))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !all(vec3<bool>(true, false, true)), true), vec2<i32>(global0[_wgslsmith_index_u32(14935u, 10u)], -2147483647i)), select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 0i, u_input.a), ~vec4<i32>(u_input.d, -1i, 0i, -5682i) << (~vec4<u32>(30599u, u_input.c.x, u_input.c.x, 48342u) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], 52179i), vec4<i32>(0i, u_input.d, -1i, -1i)), countOneBits(vec4<i32>(2147483647i, u_input.d, 35320i, -70809i)), func_3(vec4<i32>(-41403i, global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(34717u, 10u)], global0[_wgslsmith_index_u32(17171u, 10u)]), -1000f, Struct_5(vec2<bool>(false, false)), var_0.x))), abs(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.b, 10u)], -33153i, 0i)) << (~firstTrailingBit(vec4<u32>(0u, 1u, u_input.b, 4294967295u)) % vec4<u32>(32u)), false));
    let var_2 = -285f;
    var var_3 = Struct_4(-23404i, Struct_1(-1i, true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(864f - 1149f)), 244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2)))), var_1.a.d, vec2<i32>(-_wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), reverseBits(-2147483647i))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.x, 8628i, 7060i, -2147483647i), vec4<i32>(u_input.d & -2147483647i, _wgslsmith_add_i32(-23519i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_mult_i32(1234i, var_1.b.x), ~9187i)), _wgslsmith_clamp_i32(-1i ^ ~u_input.a, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], ~(-1i)), -firstTrailingBit(13348i))));
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, -282f, 1738f, 1032f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.c.x, 1141f, var_0.x, -383f) + vec4<f32>(1226f, 211f, -832f, -593f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(663f, var_3.b.c.x, -1152f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.x, -1000f, -1916f, var_1.a.c.x))))))))));
    var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.x, -1736f, var_4.x, 176f), vec4<f32>(-1125f, var_1.a.c.x, 1000f, 487f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.c.x, var_4.x, var_3.b.c.x, 726f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, -2316f, var_1.a.c.x, 844f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, var_3.b.c.x, var_4.x, var_4.x))), !any(var_1.a.d.xy)))));
    var var_5 = _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(~vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.b))) ^ ~(~vec4<u32>(82956u, u_input.c.x, 1u, 0u)), ~(~(~firstLeadingBit(vec4<u32>(u_input.c.x, 43144u, 78115u, 80612u)))));
    var_5 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(min(~vec4<u32>(var_5.x, 4294967295u, 0u, u_input.b), ~(~vec4<u32>(21863u, 1u, var_5.x, u_input.b))), countOneBits(vec4<u32>(8442u, 39981u, var_5.x, 6810u)) << (vec4<u32>(~var_5.x, 25998u, 67338u, 0u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(~var_5.x, ~1u), ~var_5.x, 26851u, abs(u_input.c.x ^ firstTrailingBit(u_input.c.x))));
    var var_6 = _wgslsmith_f_op_f32(var_0.x - var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(_wgslsmith_div_u32(var_5.x, 0u), 1u, u_input.b, 0u)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_5.x, 22946u, 12237u, u_input.b) ^ vec4<u32>(0u, 18154u, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.b, var_5.x, var_5.x, u_input.c.x) & (vec4<u32>(38955u, u_input.c.x, u_input.b, u_input.c.x) | vec4<u32>(1999u, u_input.c.x, 21875u, 1u)))), vec3<i32>(firstTrailingBit(-var_1.a.a), global0[_wgslsmith_index_u32(~min(u_input.c.x, 2744u), 10u)], 2147483647i) ^ var_1.b.wxw, var_1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, var_2, 839f, 797f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.c.x, -1481f, -1578f, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1252f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.c.x))));
}

