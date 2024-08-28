struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, false, false), vec4<i32>(-40329i, -1i, -19630i, -32886i), Struct_1(-1i, true, -4683i));

var<private> global2: u32;

var<private> global3: array<Struct_2, 11>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    var var_0 = Struct_2(countOneBits(2147483647i), false);
    global3 = array<Struct_2, 11>();
    var var_1 = arg_0.x;
    global3 = array<Struct_2, 11>();
    var_0 = global3[_wgslsmith_index_u32(~35806u, 11u)];
    return ~var_0.a;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    global2 = ~_wgslsmith_mod_u32(106495u, _wgslsmith_clamp_u32(firstLeadingBit(arg_0), ~_wgslsmith_mult_u32(1u, 0u), ~_wgslsmith_sub_u32(arg_0, arg_0)));
    let var_0 = !(!arg_1.b);
    var var_1 = u_input.c.xy;
    global2 = arg_0;
    let var_2 = Struct_1(arg_1.c, true, -(func_1(!global1.a.xx, global1.a.x) ^ 0i));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-986f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-287f)), -868f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1485f, -485f) + _wgslsmith_f_op_f32(select(-1000f, 986f, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1106f, 1415f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-755f, 394f), _wgslsmith_f_op_f32(ceil(2272f))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1708f, -1000f)), 918f)))));
}

fn func_2() -> i32 {
    var var_0 = ~(global0[_wgslsmith_index_u32(0u, 32u)] << (u_input.a % 32u)) >> (_wgslsmith_add_u32(~22577u, 0u) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, 481f, 240f, 374f) + vec4<f32>(-1200f, 709f, -328f, -1453f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, -749f, 1137f, 277f)), vec4<f32>(-1517f, 554f, 378f, -822f)))) * _wgslsmith_f_op_vec4_f32(func_3(u_input.c.x, global1.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-295f)) - _wgslsmith_f_op_f32(round(-356f))), _wgslsmith_f_op_f32(-1070f + _wgslsmith_f_op_f32(min(-734f, -132f))), _wgslsmith_f_op_f32(-1827f * _wgslsmith_f_op_f32(step(-1420f, -171f))), _wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(0u), global1.c)).x) - _wgslsmith_f_op_vec4_f32(func_3(abs(countOneBits(0u)), global1.c))));
    let var_2 = ~firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(u_input.a, abs(4294967295u)), _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(u_input.c, u_input.c)), 45843u, u_input.c.x));
    var_0 = 1i;
    var var_3 = global3[_wgslsmith_index_u32(0u, 11u)];
    return min(_wgslsmith_dot_vec4_i32(global1.b, _wgslsmith_add_vec4_i32(vec4<i32>(-34554i, 1582i, var_3.a, u_input.b), -vec4<i32>(0i, u_input.d.x, 33963i, global0[_wgslsmith_index_u32(var_2.x, 32u)]))) >> (2231u % 32u), 61588i);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = 1902f;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-189f, var_0, var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, 1289f, var_0)) * _wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_1(-1i, false, global0[_wgslsmith_index_u32(u_input.a, 32u)]))).wwx), all(!vec2<bool>(true, global1.a.x))))))));
    global0 = array<i32, 32>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x));
    let var_3 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-u_input.d.xz, vec2<i32>(1i, -1i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(29611i, -14229i)), ~u_input.d.zz) ^ 1i);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 11>();
    global2 = _wgslsmith_mod_u32(~(~(~u_input.c.x)) | u_input.c.x, ~func_4(Struct_2(func_1(global1.a.xz, true), all(vec4<bool>(true, global1.a.x, false, global1.c.b))), ~vec2<u32>(u_input.a, 66676u) << ((u_input.c.xx << (vec2<u32>(u_input.c.x, 14823u) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_2(func_2(), !global1.c.b)));
    global1 = Struct_3(!(!vec3<bool>(global1.c.b | false, false || global1.c.b, false)), select(vec4<i32>(_wgslsmith_clamp_i32(-global1.c.c, -1i, abs(global0[_wgslsmith_index_u32(68582u, 32u)])), i32(-1i) * -1i, -47440i, select(countOneBits(1i), 1i, !global1.a.x)), _wgslsmith_mult_vec4_i32(global1.b & global1.b, vec4<i32>(2147483647i, -35499i, global0[_wgslsmith_index_u32(1u, 32u)], 16968i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 16882i, global1.c.a) | vec4<i32>(global1.b.x, 2147483647i, global1.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), global1.b, _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(71516u, 32u)], -9310i, -22970i, 2147483647i), global1.b)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15867i, 26658i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.b.x)), 11948i) > _wgslsmith_mod_i32(~(-17389i), min(global1.b.x, 11201i))), global1.c);
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-global1.b.x, -33032i, u_input.b, abs(firstLeadingBit(-9241i))), select(global1.b, _wgslsmith_div_vec4_i32(global1.b, select(vec4<i32>(u_input.b, -2533i, u_input.b, global1.c.c), global1.b, vec4<bool>(global1.a.x, global1.a.x, false, global1.c.b))), !select(vec4<bool>(true, global1.c.b, global1.a.x, false), vec4<bool>(false, false, true, global1.c.b), false))) >> ((abs(vec4<u32>(~u_input.a, 0u, u_input.c.x, u_input.a)) & vec4<u32>(u_input.c.x, ~8412u ^ (u_input.a >> (u_input.a % 32u)), firstLeadingBit(_wgslsmith_mod_u32(1u, 36148u)), ~(~0u))) % vec4<u32>(32u));
    var var_1 = i32(-1i) * -(var_0.x ^ -2147483647i);
    var var_2 = select(select(global1.a, select(select(!global1.a, select(global1.a, global1.a, global1.a), false), !(!vec3<bool>(global1.a.x, false, false)), select(!vec3<bool>(true, true, global1.c.b), !global1.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -348f)) <= -167f), vec3<bool>(true, true, true), global1.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(12943u, _wgslsmith_div_u32(21620u, 72331u ^ u_input.a))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, 899f, 391f) - vec3<f32>(-502f, 299f, -697f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, -254f, -216f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-330f, -1232f, 1430f) * vec3<f32>(492f, 620f, -1352f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 178f, 1265f)), !global1.c.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(543f, -1139f, 1143f)), vec3<f32>(136f, 143f, 1250f))))), 837f);
}

