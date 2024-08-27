struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -462f;

var<private> global1: bool;

var<private> global2: array<f32, 21> = array<f32, 21>(-1329f, 1000f, 901f, 1000f, 255f, 790f, -739f, -1000f, 340f, -409f, 1437f, 960f, -797f, 1748f, -1217f, -1284f, -803f, 1000f, 2013f, -329f, 1578f);

var<private> global3: array<Struct_3, 26>;

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    global2 = array<f32, 21>();
    var var_0 = -702f;
    global1 = true;
    global0 = global2[_wgslsmith_index_u32(~(~u_input.d), 21u)];
    let var_1 = select(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(19624i, 36455i)), vec2<i32>(~(-41094i), select(2147483647i, 2147483647i, false))), _wgslsmith_mult_i32(_wgslsmith_div_i32(~1i, -2147483647i), ~firstLeadingBit(-14501i) << (firstTrailingBit(59161u) % 32u)), true || all(vec3<bool>(any(vec2<bool>(false, false)), true, true)));
    return ~(~(~(arg_0 | 1u)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x << ((~45393u | func_3(u_input.d)) % 32u), 21u)], _wgslsmith_f_op_f32(abs(-1108f))));
    var var_1 = global3[_wgslsmith_index_u32(u_input.d, 26u)];
    var var_2 = firstLeadingBit(1u);
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_mod_u32(50546u, var_1.a.x), 13043u), 21u)];
    let var_3 = ~27592u;
    return Struct_3(abs(vec2<u32>(_wgslsmith_sub_u32(var_3, 11480u), 20470u)));
}

fn func_1() -> bool {
    let var_0 = u_input.c.xx;
    var var_1 = func_2();
    var_1 = global3[_wgslsmith_index_u32(u_input.d, 26u)];
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_clamp_i32((i32(-1i) * -2147483647i) >> (~4294967295u % 32u), 2147483647i, ~(i32(-1i) * -1i));
    return any(vec3<bool>(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!func_1(), any(vec4<bool>(true, true, true, u_input.a.x < u_input.c.x)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 21u)], -1589f, -441f, -695f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], -237f, global2[_wgslsmith_index_u32(71149u, 21u)], global2[_wgslsmith_index_u32(u_input.d, 21u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(19983u, 21u)], global2[_wgslsmith_index_u32(u_input.d, 21u)], global2[_wgslsmith_index_u32(u_input.b, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)]) * vec4<f32>(-1093f, 1086f, global2[_wgslsmith_index_u32(u_input.c.x, 21u)], -217f)))), false, any(!vec2<bool>(func_1(), all(vec4<bool>(true, false, false, false)))), -2147483647i);
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(203f - -154f);
    global1 = select(true, var_0.d, true);
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-843f, -979f)), _wgslsmith_f_op_f32(step(var_0.b.x, 602f)), _wgslsmith_f_op_f32(347f + 458f), 478f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-154f, global2[_wgslsmith_index_u32(0u, 21u)], 825f, var_0.b.x))))), var_0.c, false, var_0.e);
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit((vec4<i32>(var_0.e, var_3.e, 19304i, -3974i) | vec4<i32>(var_3.e, var_3.e, 1i, var_3.e)) | vec4<i32>(var_0.e, var_3.e, var_0.e, 2147483647i)), ~(select(vec4<i32>(0i, var_3.e, 0i, var_3.e), vec4<i32>(2147483647i, var_3.e, var_3.e, -41157i), vec4<bool>(false, var_3.d, false, var_0.d)) >> (~vec4<u32>(7668u, u_input.c.x, 1u, u_input.a.x) % vec4<u32>(32u)))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.e, -1i, 1i), vec3<i32>(5170i, 1047i, var_3.e), vec3<i32>(var_3.e, var_0.e, -2219i)) ^ vec3<i32>(var_3.e, 4425i, var_0.e), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.e, -63699i, -17257i), vec3<i32>(var_3.e, -1i, var_3.e)), ~vec3<i32>(-2147483647i, 2147483647i, var_0.e))));
    let var_5 = global4[_wgslsmith_index_u32(u_input.c.x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1714f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(trunc(948f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + var_3.b.x))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2645f)), var_0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_5.d.b.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(7297u, 21u)] + 1101f))), 898f)), 1286f, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), _wgslsmith_add_i32(firstLeadingBit(max(max(-1i, var_5.d.e), var_3.e << (1u % 32u))), ~(i32(-1i) * -var_4)), ((reverseBits(vec3<i32>(var_4, -1i, 2147483647i)) ^ -vec3<i32>(var_5.c.e, -11054i, var_3.e)) << (min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 0u, 54949u), u_input.c), u_input.c) % vec3<u32>(32u))) >> (max(~(~u_input.c), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x), func_3(u_input.d), 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(var_5.c.b, vec4<f32>(-236f, 130f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 21u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1945f + var_3.b.x), _wgslsmith_f_op_f32(-620f - -205f))), var_0.d)));
}

