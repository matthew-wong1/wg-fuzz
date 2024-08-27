struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(false, vec2<i32>(0i, 2147483647i), -99259i));

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: array<f32, 14>;

var<private> global3: u32 = 49971u;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    global2 = array<f32, 14>();
    let var_0 = Struct_1(1795f, 50407u, !arg_3.c);
    global2 = array<f32, 14>();
    let var_1 = countOneBits(arg_0.b);
    var var_2 = Struct_2(false, select(_wgslsmith_sub_vec2_i32(min(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, 48609i), var_1), _wgslsmith_mod_vec2_i32(arg_0.b, vec2<i32>(-1i, 0i))), max(-vec2<i32>(arg_0.c, arg_0.c), arg_1.b)), _wgslsmith_mod_vec2_i32(arg_0.b, (vec2<i32>(15958i, arg_0.b.x) & arg_1.b) | ~arg_0.b), any(!vec3<bool>(arg_3.c.x, false, false))), 0i);
    return countOneBits(4294967295u);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(46491u, 14u)];
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f + _wgslsmith_f_op_f32(min(-582f, 557f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9662u, 14u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 14u)] - global2[_wgslsmith_index_u32(u_input.a, 14u)]))) - 1000f))));
    var var_1 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0, u_input.a, func_3(global0[_wgslsmith_index_u32(~u_input.a, 1u)], global0[_wgslsmith_index_u32(26922u, 1u)], ~(-1i), Struct_1(834f, arg_0, vec2<bool>(false, true)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 10339u, 10169u, 1u), max(vec4<u32>(56980u, 19630u, 17014u, 20546u), vec4<u32>(u_input.a, 1u, 0u, arg_0))) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0, 32286u, arg_0, 2854u)), ~vec4<u32>(u_input.a, 35673u, 26068u, 0u)) % 32u)), vec2<bool>(true, false));
    let var_2 = Struct_1(3656f, var_1.b, var_1.c);
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, _wgslsmith_div_u32(~4294967295u, abs(var_1.b))), ~vec3<u32>(1u | u_input.a, countOneBits(8370u), var_2.b)) | _wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(13353u, var_1.b, 1u), vec3<u32>(0u, var_2.b, 0u) ^ vec3<u32>(arg_0, 41066u, arg_0))), var_2.b);
    return vec4<u32>(~4294967295u, var_2.b, 8719u, _wgslsmith_sub_u32(var_2.b, 0u));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    global3 = ~firstTrailingBit(arg_3.x);
    var var_0 = abs(arg_3) ^ arg_3;
    var var_1 = global0[_wgslsmith_index_u32(abs(4294967295u), 1u)];
    var_0 = arg_3;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))))), 1086f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1365f), arg_0)))));
    return arg_1;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(true, vec2<i32>(_wgslsmith_mult_i32(~(-94508i), _wgslsmith_sub_i32(-10078i, 0i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-2147483647i, 27877i))) >> (vec2<u32>(~max(u_input.a, 27105u), reverseBits(8896u)) % vec2<u32>(32u)), 1i);
    var var_1 = func_4(-1990f, var_0, _wgslsmith_f_op_f32(max(520f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 7452u)), 14u)]))))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 238u, u_input.a, 0u) & ~func_2(u_input.a), reverseBits(reverseBits(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 42690u)))));
    let var_2 = ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 29858u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, 0u, 4294967295u)), select(vec3<u32>(15960u, 17340u, u_input.a), vec3<u32>(32283u, 4294967295u, 1u), true))) << (max(4294967295u, u_input.a ^ u_input.a) % 32u));
    let var_3 = -858f;
    global2 = array<f32, 14>();
    return ~(~_wgslsmith_div_vec4_i32(max(vec4<i32>(-9573i, var_0.c, 0i, -1i), vec4<i32>(0i, 23524i, 7929i, 0i)) & vec4<i32>(0i, -1i, 6088i, -17910i), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-8787i, -21260i, var_0.c, 0i)), vec4<i32>(-2553i, var_0.c, 2147483647i, 812i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    let var_0 = Struct_2(false, vec2<i32>(-_wgslsmith_div_i32(1i, firstLeadingBit(-1i)), ~_wgslsmith_dot_vec4_i32(func_1(), ~vec4<i32>(9023i, 1i, 45749i, 1i))), func_1().x);
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-1i, min(var_0.c, 20995i), var_0.b.x)) & abs(vec3<i32>(~var_0.b.x, 2147483647i, var_0.b.x | var_0.b.x)), -(~(-vec3<i32>(17517i, var_0.c, -73349i) >> (~vec3<u32>(u_input.a, 1u, 17189u) % vec3<u32>(32u)))));
    var_2 = select(min(vec3<i32>(var_2.x, -99712i, firstTrailingBit(-1i)), _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(22531i, var_0.b.x, 28869i), vec3<i32>(var_0.b.x, -14961i, 1081i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.x, var_2.x, var_2.x), vec3<i32>(var_0.c, var_2.x, var_2.x) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_2.x, var_2.x, var_2.x)) ^ ~vec3<i32>(var_0.c, -1407i, var_2.x), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.b.x, var_2.x), firstTrailingBit(vec3<i32>(var_0.b.x, -1i, -29326i)))) ^ func_1().zxy, select(select(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), true), !select(vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, false)), all(!vec4<bool>(false, true, true, var_0.a))), select(!vec3<bool>(var_0.a, false, true), vec3<bool>(any(vec2<bool>(var_0.a, var_0.a)), all(vec3<bool>(var_0.a, true, true)), !var_0.a), all(vec3<bool>(true, var_0.a, var_0.a))), select(!vec3<bool>(true, true, var_0.a), vec3<bool>(!var_0.a, true, all(vec3<bool>(false, var_0.a, false))), var_0.a)));
    global2 = array<f32, 14>();
    let var_3 = -1696f;
    var var_4 = var_0.a & true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(18154i)));
}

