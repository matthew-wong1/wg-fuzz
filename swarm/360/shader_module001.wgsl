struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<bool>(false, true, true, false), Struct_1(false, -849f, 0u, 4294967295u), 36377i, vec4<i32>(-58156i, -25854i, 18038i, 35679i), i32(-2147483648)), vec3<f32>(-2284f, 1205f, -631f), Struct_2(vec4<bool>(false, false, false, false), Struct_1(false, -1078f, 77145u, 82964u), i32(-2147483648), vec4<i32>(-44758i, -2520i, 0i, 28953i), 28412i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = -vec4<i32>(13274i, max(_wgslsmith_clamp_i32(-12987i, arg_2.c << (u_input.c.x % 32u), -1i), ~_wgslsmith_mult_i32(arg_1.x, 0i)), global1.c.d.x, _wgslsmith_dot_vec4_i32(arg_1, arg_2.d));
    global0 = array<f32, 18>();
    var var_1 = Struct_5(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.x, arg_1.x, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 34188i, -1i), _wgslsmith_div_vec3_i32(~arg_2.d.wwz, arg_2.d.wzx), vec3<i32>(global1.a.c, max(53029i, 1i), max(-2147483647i, global1.c.d.x)))), arg_2, ~1u, _wgslsmith_add_u32(global1.c.b.c, _wgslsmith_dot_vec3_u32(u_input.c.wwy, countOneBits(vec3<u32>(arg_0.d, arg_2.b.d, 1u)))) & 1u);
    let var_2 = ~17293i;
    var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, var_0.x), 1i) & (_wgslsmith_div_i32(arg_1.x, arg_1.x) << (_wgslsmith_sub_u32(var_1.c, 0u) % 32u)), -(~(~(-2147483647i))), 0i, -6672i) << (select(u_input.c, vec4<u32>(_wgslsmith_div_u32(~global1.c.b.c, abs(1u)), 4294967295u, max(~1u, 1u), ~firstLeadingBit(global1.c.b.c)), !(!(!arg_2.a))) % vec4<u32>(32u));
    return 44577i;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<f32, 18>();
    var var_0 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(24569i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b, -28567i), vec3<i32>(1i, global1.a.d.x, 1082i)))) ^ vec2<i32>(arg_1, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(-2147483647i, -28605i))), ~(-vec2<i32>(global1.a.e, -1i)));
    global1 = Struct_3(Struct_2(!(!global1.a.a), global1.c.b, ~arg_1, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-global1.c.d, ~global1.c.d), select(global1.a.d, global1.c.d, vec4<bool>(true, arg_0.x, false, false))), ~(-39078i)), global1.b, Struct_2(global1.a.a, global1.a.b, ~arg_1, global1.a.d, ~2147483647i));
    let var_1 = _wgslsmith_clamp_i32(global1.a.c, -_wgslsmith_div_i32(func_3(global1.c.b, ~global1.a.d, Struct_2(global1.c.a, Struct_1(global1.c.b.a, arg_3.x, u_input.c.x, 0u), arg_1, vec4<i32>(arg_1, 18842i, 1i, 84098i), u_input.b)), -(~0i)), max(-2147483647i, 0i));
    var var_2 = ~_wgslsmith_mult_i32(~(-(~arg_1)), 10539i);
    return Struct_2(!arg_0, Struct_1(arg_0.x, arg_3.x, global1.c.b.c, global1.c.b.c & ~(~1u)), i32(-1i) * -arg_1, vec4<i32>(~(~global1.a.c), ~1i, arg_1, _wgslsmith_dot_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(1i, 2147483647i))), global1.a.d.wx)), reverseBits(-4398i | var_0.x));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 18>();
    global1 = Struct_3(func_2(global1.c.a, firstTrailingBit(global1.a.c | 0i) & ~(global1.c.c | 22179i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1068f * -390f)) * _wgslsmith_f_op_f32(global1.b.x - global0[_wgslsmith_index_u32(2399u, 18u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(996f, global0[_wgslsmith_index_u32(global1.a.b.c, 18u)])), _wgslsmith_f_op_vec2_f32(-global1.b.yy)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.b), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 18u)] + -1819f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 18u)]))))), Struct_2(global1.c.a, func_2(global1.c.a, firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 18u)]), global1.b.xx).b, reverseBits(select(-5911i, _wgslsmith_mult_i32(u_input.b, global1.c.d.x), any(vec2<bool>(global1.a.a.x, false)))), ~firstTrailingBit(vec4<i32>(-5216i, u_input.b, -2147483647i, global1.a.c) ^ vec4<i32>(global1.c.c, global1.a.c, global1.a.d.x, 2147483647i)), 12928i));
    let var_0 = global1.a;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1011f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34283u, 18u)] * -726f), _wgslsmith_f_op_f32(f32(-1f) * -1333f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a.b.b, global1.c.b.b))) - global0[_wgslsmith_index_u32(11946u, 18u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x * global0[_wgslsmith_index_u32(global1.c.b.d, 18u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - 1733f), _wgslsmith_f_op_f32(round(var_0.b.b)))));
    global0 = array<f32, 18>();
    return Struct_3(func_2(global1.c.a, i32(-1i) * -48061i, _wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_f_op_f32(trunc(var_0.b.b))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(global1.b.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1716f, global0[_wgslsmith_index_u32(1u, 18u)])))), var_1.xy))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1306f, 1058f, _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(global1.b, global1.b)), vec3<f32>(-1000f, var_1.x, 237f)))))), func_2(select(!func_2(var_0.a, var_0.c, var_0.b.b, var_1.zx).a, select(var_0.a, func_2(vec4<bool>(var_0.b.a, true, global1.c.a.x, true), 0i, global1.b.x, var_1.xy).a, select(global1.c.a, vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.b.a, false, true, var_0.b.a))), global1.c.a), i32(-1i) * -1i, 1571f, vec2<f32>(global0[_wgslsmith_index_u32(abs(~59303u), 18u)], _wgslsmith_f_op_f32(496f - -544f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(global1.c.a.x && global1.a.a.x), !(!(global1.c.b.b > global0[_wgslsmith_index_u32(global1.a.b.c, 18u)])));
    let var_1 = global1.c.b;
    global0 = array<f32, 18>();
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(func_2(vec4<bool>(false, var_0.x, global1.c.b.a, global1.a.b.a), -2147483647i, global0[_wgslsmith_index_u32(global1.a.b.c, 18u)], _wgslsmith_f_op_vec2_f32(step(global1.b.zy, vec2<f32>(global0[_wgslsmith_index_u32(1u, 18u)], global1.b.x)))).b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - 1000f)), func_1().a.b.a)), 114f, var_1.b, global0[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, 1u, global1.a.b.c, 24397u)), 62743u), 18u)]), ~u_input.c, select(~max(_wgslsmith_mult_vec3_i32(global1.a.d.zyy, global1.c.d.ywx), -global1.c.d.xzx), global1.a.d.xyy, !(!(u_input.a.x < global1.a.b.d))), ~(-(global1.a.d & vec4<i32>(global1.c.d.x, u_input.b, u_input.b, u_input.b)) & abs(abs(vec4<i32>(u_input.b, 60982i, -1i, global1.c.e)))));
}

