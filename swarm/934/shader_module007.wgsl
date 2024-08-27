struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(97303u, 4294967295u, 7833u, 1u), vec4<f32>(731f, -288f, 222f, -916f)), vec2<bool>(true, true), Struct_1(vec4<u32>(23000u, 0u, 1u, 39870u), vec4<f32>(1451f, -644f, 346f, -564f)), true, 64176i);

var<private> global1: vec4<i32> = vec4<i32>(-1i, 1i, 0i, 0i);

var<private> global2: vec3<u32>;

var<private> global3: Struct_4;

var<private> global4: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    return vec4<f32>(154f, _wgslsmith_f_op_f32(abs(global3.b.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1415f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1458f - -976f), _wgslsmith_f_op_f32(global0.a.b.x - global0.c.b.x))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = global0.a.b.x;
    global3 = Struct_4(_wgslsmith_sub_vec2_i32(global3.a, select(vec2<i32>(min(arg_2.x, -2147483647i), min(u_input.a, 2147483647i)), vec2<i32>(-1i, ~25426i), any(!vec2<bool>(global0.b.x, true)))), Struct_2(global0.c, vec2<bool>(true, !(!global0.b.x)), Struct_1(~(~global3.b.a.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global3.b.a.b, global0.a.b), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(1438f, 359f, global0.a.b.x, global3.b.a.b.x))))), select(true, !all(global4[_wgslsmith_index_u32(53278u, 6u)]), global3.c), global1.x >> (global2.x % 32u)), all(vec3<bool>(true, global0.b.x, select(global0.b.x, true, arg_0.b <= 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-1192f * arg_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) * _wgslsmith_f_op_f32(-1391f - global3.d.x))), -906f));
    global2 = vec3<u32>(global3.b.a.a.x, min(1u, min(~global2.x, _wgslsmith_div_u32(global0.c.a.x, global2.x | arg_1))), 94566u);
    let var_1 = Struct_2(global0.c, !global3.b.b, Struct_1(vec4<u32>(~(~arg_1), ~firstLeadingBit(22557u), countOneBits(~global3.b.c.a.x), global2.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(999f, -946f, 398f, arg_0.a), vec4<f32>(arg_0.d.x, -1727f, 3015f, global3.b.a.b.x), vec4<bool>(global0.d, global3.c, true, false))), global3.b.a.b))))), true, 0i);
    var var_2 = abs(_wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(arg_2.x << (global0.c.a.x % 32u), 22245i << (1u % 32u)))) ^ 2147483647i;
    return Struct_4(-global1.wy, global3.b, global0.d, vec2<f32>(_wgslsmith_f_op_f32(-1920f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1958f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(282f + _wgslsmith_f_op_f32(round(306f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.a.b.wzy * vec3<f32>(-569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.b.x, global3.d.x))), _wgslsmith_f_op_f32(select(-2183f, _wgslsmith_f_op_f32(-523f + 694f), global1.x != global3.a.x))))));
    var var_2 = global0.d == any(select(select(global4[_wgslsmith_index_u32(0u, 6u)], !vec4<bool>(false, false, global3.b.b.x, true), vec4<bool>(true, global0.b.x, true, true)), global4[_wgslsmith_index_u32(min(global0.c.a.x, _wgslsmith_add_u32(8839u, global0.a.a.x)), 6u)], !global4[_wgslsmith_index_u32(global0.c.a.x, 6u)]));
    global4 = array<vec4<bool>, 6>();
    let var_3 = func_2(Struct_3(var_1.x, ~3334u, 58623i | global3.a.x, vec3<f32>(_wgslsmith_f_op_f32(floor(-715f)), _wgslsmith_f_op_f32(round(764f)), global0.c.b.x)), ~(~((global3.b.a.a.x >> (global2.x % 32u)) >> (global3.b.c.a.x % 32u))), ~select(-vec4<i32>(global3.b.e, u_input.a, u_input.a, 39484i), firstLeadingBit(vec4<i32>(1i, 4194i, global0.e, global0.e)), !vec4<bool>(false, false, global0.d, global3.b.b.x)) & vec4<i32>(max(1i, _wgslsmith_mod_i32(46648i, global0.e)), 1i, ~global1.x, -56437i ^ -global3.a.x));
    return func_2(Struct_3(-549f, ~1u, _wgslsmith_add_i32(2147483647i, global0.e), global0.c.b.zxx), 30180u, vec4<i32>(global1.x, firstLeadingBit(min(global0.e, -2147483647i)), ~(i32(-1i) * -u_input.a), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-10976i, global1.x), ~(-2147483647i)))).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.x;
    var var_1 = global1.x;
    var var_2 = Struct_2(func_1(), !vec2<bool>(global3.c | true, 10481i > global0.e), Struct_1(global0.a.a, _wgslsmith_f_op_vec4_f32(-global3.b.a.b)), func_2(Struct_3(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_clamp_u32(79421u, 93638u, 29109u) ^ global0.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, global1.x, global0.e) >> (vec4<u32>(0u, global3.b.c.a.x, var_0, global3.b.c.a.x) % vec4<u32>(32u)), -vec4<i32>(-21950i, global0.e, -36361i, -30432i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.b.c.b.zyz), global3.b.a.b.xwx))), ~(~0u), ~countOneBits(~vec4<i32>(2147483647i, global3.b.e, -14165i, u_input.a))).b.b.x, _wgslsmith_add_i32(1192i, u_input.a));
    var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), var_0, countOneBits(0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, global3.b.c.b.x, -2656f)))), var_2.c.a.x, -vec4<i32>(45293i, firstTrailingBit(global1.x), 9920i, -1i)).b;
    global1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, 0i, var_2.e, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-54958i, -1i, var_2.e, -12804i), vec4<i32>(global0.e, global1.x, global1.x, global3.b.e)), -vec4<i32>(35637i, 2147483647i, global1.x, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(7226i, u_input.a, global0.e, 50964i), vec4<i32>(-3851i, 7212i, global3.b.e, u_input.a))), -(~(-30101i))), -47310i, select(global0.e, -44363i, true), 42742i);
    var_1 = global3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(global1.xxw, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -22538i), global3.a), -1i, 0i)), vec2<i32>(i32(-1i) * -1i, global1.x >> (global0.a.a.x % 32u)), _wgslsmith_div_i32(min(firstTrailingBit(~2147483647i), 1i), 44743i));
}

