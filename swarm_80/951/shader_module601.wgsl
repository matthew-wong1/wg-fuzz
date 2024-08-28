struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(12326u, 45183u, 0u, 4294967295u, 4294967295u, 24334u, 16377u, 4294967295u, 37364u, 50474u, 84945u, 123831u, 4294967295u, 1u, 440u, 114860u, 45069u, 68351u, 90870u, 26292u, 42153u, 52521u, 58939u, 88943u, 0u);

var<private> global1: array<u32, 23>;

var<private> global2: array<bool, 32>;

var<private> global3: array<f32, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = 1u;
    global3 = array<f32, 6>();
    global3 = array<f32, 6>();
    var_0 = global1[_wgslsmith_index_u32(51604u, 23u)];
    global1 = array<u32, 23>();
    return _wgslsmith_dot_vec2_u32(u_input.a.yy, ~(~(u_input.c ^ vec2<u32>(u_input.c.x, u_input.e)) ^ ~u_input.a.yy));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(-907f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_3(-370f, -select(vec4<i32>(u_input.d, u_input.b.x, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, -41124i, -13514i), arg_0)), 25u)], 6u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 6u)])) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 6u)] + _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_clamp_vec3_i32(-((vec3<i32>(u_input.b.x, -2147483647i, 11875i) ^ vec3<i32>(0i, u_input.b.x, -16382i)) & vec3<i32>(u_input.d, 1i, u_input.b.x)), ~vec3<i32>(u_input.d & u_input.b.x, 1i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)] % 32u), ~u_input.b.x), ~vec3<i32>(u_input.b.x, 0i, u_input.b.x)), u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1446f, 1243f, var_0.b) - vec3<f32>(1000f, var_0.a, -215f)) * vec3<f32>(-313f, 1554f, var_0.b))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -1000f, _wgslsmith_mult_vec3_i32(var_0.c, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.c, _wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.b.x), var_0.c)), reverseBits(select(vec3<i32>(var_0.c.x, var_0.c.x, -1i), vec3<i32>(-1i, 61946i, var_0.c.x), true)))), var_0.d);
    var var_3 = abs(~0u);
    let var_4 = _wgslsmith_sub_i32(u_input.d, 55005i);
    return 567f;
}

fn func_1() -> f32 {
    global0 = array<u32, 25>();
    var var_0 = !(!(!vec2<bool>(true, any(vec3<bool>(global2[_wgslsmith_index_u32(9707u, 32u)], true, global2[_wgslsmith_index_u32(24471u, 32u)])))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 32u)], var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-759f, 1332f)))), true))), _wgslsmith_f_op_f32(-275f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 32u)], true))))), vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.d, 5241i, u_input.b.x))), ~vec3<i32>(-2420i, u_input.d, u_input.d)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.d, u_input.d), vec3<i32>(u_input.b.x, u_input.b.x, u_input.d))), reverseBits(firstLeadingBit(-8045i))), ~(~_wgslsmith_add_vec2_u32(min(u_input.c, vec2<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 23u)], 0u)), abs(vec2<u32>(4294967295u, 0u)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_1.d.x), ~global0[_wgslsmith_index_u32(u_input.c.x, 25u)]) >> (abs(countOneBits(8675u)) % 32u), 6u)]), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u)), _wgslsmith_mult_u32(countOneBits(var_1.d.x), u_input.a.x)), 6u)], var_1.c, ~abs(_wgslsmith_mod_vec2_u32(var_1.d, min(u_input.c, u_input.a.zy))));
    let var_2 = all(select(select(vec3<bool>(true, u_input.b.x >= u_input.d, all(vec3<bool>(false, false, false))), !vec3<bool>(true, var_0.x, true), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 32u)], false, global2[_wgslsmith_index_u32(var_1.d.x, 32u)]), vec3<bool>(true, var_0.x, false), var_0.x)), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], var_0.x, false))), any(select(!vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]))))));
    return -1449f;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global2 = array<bool, 32>();
    var var_1 = false;
    global3 = array<f32, 6>();
    var var_2 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), 25u)], u_input.c.x), 6u)], _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(trunc(233f)), vec3<i32>(-abs(u_input.d), abs(abs(2147483647i)), firstTrailingBit(1998i)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(38391u, 23u)], global0[_wgslsmith_index_u32(1u, 25u)]), countOneBits(u_input.c)))), u_input.b.x, Struct_1(global3[_wgslsmith_index_u32(max(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x, 25u)] >> (_wgslsmith_mult_u32(1u, 53394u) % 32u), 23u)]), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1597f)))), vec3<i32>(-1i, -(i32(-1i) * -15388i), -max(0i, u_input.d)), vec2<u32>(u_input.c.x, 4294967295u)));
    var_0 = Struct_1(-1989f, global3[_wgslsmith_index_u32(~50004u, 6u)], var_0.c, reverseBits(vec2<u32>(9004u, ~59311u)));
    global2 = array<bool, 32>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1056f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)), var_0.c, ~_wgslsmith_clamp_vec2_u32((vec2<u32>(global1[_wgslsmith_index_u32(31u, 23u)], 37118u) >> (vec2<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 102816u) % vec2<u32>(32u))) >> (u_input.c % vec2<u32>(32u)), min(_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, var_0.d.x)), select(vec2<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 25u)], 23u)], u_input.e), vec2<u32>(global0[_wgslsmith_index_u32(39914u, 25u)], 10612u), global2[_wgslsmith_index_u32(29652u, 32u)])), min(func_4(Struct_1(326f, 314f, var_0.c, u_input.a.zw), -2147483647i, Struct_1(-1306f, global3[_wgslsmith_index_u32(var_0.d.x, 6u)], vec3<i32>(var_0.c.x, 23375i, -12759i), vec2<u32>(u_input.c.x, 1u))).d, u_input.a.yy >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_mod_u32(~(select(global0[_wgslsmith_index_u32(u_input.e, 25u)], var_1.d.x, true) | min(u_input.c.x, 58512u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~max(vec4<u32>(0u, 9041u, 27860u, u_input.e), u_input.a)), 25u)]) << (0u % 32u);
    let var_3 = Struct_1(-1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(137f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(var_1.d.x, 10235u, false), 1u), 6u)]))), vec3<i32>((func_4(Struct_1(-1372f, global3[_wgslsmith_index_u32(2662u, 6u)], vec3<i32>(var_1.c.x, -48873i, var_1.c.x), vec2<u32>(4294967295u, var_1.d.x)), u_input.b.x, Struct_1(var_1.a, global3[_wgslsmith_index_u32(11132u, 6u)], vec3<i32>(u_input.b.x, var_0.c.x, 37994i), vec2<u32>(1u, u_input.c.x))).c.x ^ -var_0.c.x) & ~0i, max(firstLeadingBit(_wgslsmith_sub_i32(-1i, var_1.c.x)), -9675i), -(~(~(-2807i)))), _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_clamp_u32(var_0.d.x, global1[_wgslsmith_index_u32(5729u, 23u)], 44490u), 0u) & var_0.d, vec2<u32>(var_2, global0[_wgslsmith_index_u32(4294967295u, 25u)])));
    let var_4 = var_3;
    var_0 = Struct_1(_wgslsmith_f_op_f32(628f + -998f), _wgslsmith_f_op_f32(exp2(var_1.a)), vec3<i32>(2147483647i, 32765i, 2147483647i & max(10723i, u_input.b.x >> (1u % 32u))), ~u_input.c);
    var var_5 = !vec3<bool>(-(~var_4.c.x) == var_4.c.x, !(!global2[_wgslsmith_index_u32(var_1.d.x, 32u)]), all(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], true, global2[_wgslsmith_index_u32(42176u, 32u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(var_4.d.x, 32u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.xy, select(var_1.c.yy, var_0.c.xx, vec2<bool>(var_1.a < var_1.a, any(vec2<bool>(true, var_5.x)))), max(vec4<i32>(i32(-1i) * -24978i, var_4.c.x, ~var_1.c.x >> (_wgslsmith_mod_u32(var_4.d.x, var_0.d.x) % 32u), reverseBits(_wgslsmith_add_i32(var_4.c.x, var_0.c.x))), _wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.d, -51757i, -45179i, -36501i)), vec4<i32>(reverseBits(var_1.c.x), ~var_1.c.x, firstTrailingBit(44606i), var_3.c.x))));
}

