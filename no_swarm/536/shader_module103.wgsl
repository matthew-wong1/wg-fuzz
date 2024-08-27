struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(4760i, vec3<i32>(0i, -5433i, 47665i), Struct_3(Struct_1(false, vec3<i32>(58437i, 0i, 10559i), -163f, vec4<i32>(-22627i, 0i, 2147483647i, 2147483647i), vec2<i32>(1i, i32(-2147483648)))), Struct_1(false, vec3<i32>(i32(-2147483648), -38804i, i32(-2147483648)), -324f, vec4<i32>(2869i, 5086i, -19557i, 0i), vec2<i32>(-3334i, 9622i)), Struct_1(true, vec3<i32>(10265i, -1i, 9937i), 767f, vec4<i32>(2147483647i, 7769i, 0i, 13508i), vec2<i32>(i32(-2147483648), 2147483647i)));

var<private> global1: vec2<f32> = vec2<f32>(1094f, -1601f);

var<private> global2: vec3<i32> = vec3<i32>(0i, 24763i, -27771i);

var<private> global3: array<vec4<f32>, 6>;

var<private> global4: array<bool, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(-4150i, -2147483647i, abs(2147483647i), -1i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-422f, -1328f))) - 939f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f - 1f)) - global0.c.a.c), global1.x);
    global3 = array<vec4<f32>, 6>();
    global0 = Struct_4(_wgslsmith_add_i32(_wgslsmith_clamp_i32(firstTrailingBit(2147483647i), global2.x, -40973i), ((-9419i ^ var_0.x) ^ global0.b.x) | -2147483647i), var_0.wyz, Struct_3(Struct_1(all(!vec3<bool>(global0.d.a, true, true)), -global0.e.b, _wgslsmith_f_op_f32(-1f), global0.e.d, var_0.xw)), Struct_1(all(!vec3<bool>(false, global0.c.a.a, global4[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(-2176i), global0.c.a.e.x >> (u_input.a % 32u), global0.b.x & 1i), var_0.yyy, ~(-var_0.zyy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))), -global0.e.d, _wgslsmith_clamp_vec2_i32(select(global0.c.a.e, vec2<i32>(global2.x, global0.d.d.x), vec2<bool>(global0.d.a, global4[_wgslsmith_index_u32(u_input.a, 23u)])), vec2<i32>(1i, 1i), select(var_0.zy, vec2<i32>(-1i, 56557i), vec2<bool>(true, global0.d.a))) & _wgslsmith_add_vec2_i32(vec2<i32>(14998i, var_0.x), vec2<i32>(-1i, global0.d.d.x))), Struct_1(true, global0.c.a.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1232f, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(301f, global1.x) * _wgslsmith_div_f32(702f, 1000f)))), (-vec4<i32>(25799i, -2147483647i, global0.d.b.x, 1i) << (~vec4<u32>(31719u, 4294967295u, 103268u, 9955u) % vec4<u32>(32u))) << (~(~vec4<u32>(33197u, u_input.a, 0u, 0u)) % vec4<u32>(32u)), global2.zz));
    global0 = Struct_4(global0.e.e.x, _wgslsmith_mod_vec3_i32(~var_0.zxz, _wgslsmith_sub_vec3_i32(var_0.zxw, _wgslsmith_mod_vec3_i32(global0.d.b ^ vec3<i32>(12455i, global0.b.x, var_0.x), global0.d.d.yzy))), Struct_3(Struct_1((1i < var_0.x) & (global0.c.a.a & global0.e.a), -vec3<i32>(global2.x, 32494i, global2.x), global0.c.a.c, global0.c.a.d, vec2<i32>(var_0.x, select(-2147483647i, -32986i, true)))), global0.e, Struct_1(global4[_wgslsmith_index_u32(11974u, 23u)], ~vec3<i32>(1i, -30591i, 8612i) | vec3<i32>(firstTrailingBit(global0.a), ~global2.x, abs(2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1103f))), vec4<i32>(reverseBits(-3759i), ~global0.c.a.e.x, 0i, 5395i), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.d.b.x, var_0.x), vec2<i32>(global2.x, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global0.a), vec2<i32>(var_0.x, 2147483647i))), -(~vec2<i32>(global0.d.e.x, global2.x)))));
    return !(!all(!select(vec3<bool>(false, global0.c.a.a, true), vec3<bool>(global0.d.a, false, global4[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(false, global0.d.a, false))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = all(vec3<bool>(true, !(!func_3()), all(vec2<bool>(any(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 23u)], global4[_wgslsmith_index_u32(u_input.a, 23u)], false)), true))));
    return Struct_1(all(!select(select(vec2<bool>(false, global0.d.a), vec2<bool>(global0.d.a, global4[_wgslsmith_index_u32(arg_0, 23u)]), vec2<bool>(global0.d.a, var_0)), select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 23u)], var_0), vec2<bool>(global0.d.a, var_0), global0.d.a), global4[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(abs(max(global0.c.a.b, global0.c.a.d.yyw)), ~abs(global0.d.b)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 2147483647i, 1431i), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global0.d.d, vec4<i32>(-1i, 21690i, -54308i, 43900i)), global2.x), 12025i ^ global2.x, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global0.e.c + 2433f))))), firstLeadingBit(-vec4<i32>(global0.b.x, 1i, global2.x, global2.x) | select(global0.c.a.d, global0.e.d, true)) & vec4<i32>(firstLeadingBit(~(-2147483647i)), global0.d.b.x, select(_wgslsmith_mod_i32(-2147483647i, global2.x), _wgslsmith_add_i32(global2.x, -1i), select(false, false, true)), abs(max(-54634i, global2.x))), global2.xz);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    global0 = Struct_4(~1i, ~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0.x, arg_0.x), vec3<i32>(866i, 1i, -2147483647i))), global0.c, global0.d, func_2(abs(1u)));
    global2 = ~((_wgslsmith_sub_vec3_i32(-global0.d.b, vec3<i32>(1162i, arg_0.x, arg_0.x)) ^ firstLeadingBit(arg_0 & vec3<i32>(arg_0.x, arg_0.x, -1i))) | arg_0);
    global3 = array<vec4<f32>, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global0.c.a.c)))));
    global2 = select(_wgslsmith_clamp_vec3_i32(global0.c.a.b, -_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, arg_0.x, global2.x) ^ arg_0, arg_0 << (vec3<u32>(1u, 76611u, 57534u) % vec3<u32>(32u)), arg_0), countOneBits(global0.d.b)), firstLeadingBit(-global0.e.b) & _wgslsmith_sub_vec3_i32(~vec3<i32>(-42090i, arg_0.x, global0.a), ~vec3<i32>(-2147483647i, -43505i, global2.x)), !(global4[_wgslsmith_index_u32(min(~1u, arg_1.x), 23u)] || (35366u > _wgslsmith_add_u32(4294967295u, arg_1.x))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 6>();
    let var_0 = global0.e;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -1015f)))) * vec2<f32>(-184f, _wgslsmith_f_op_f32(func_1(global0.b, vec2<u32>(u_input.a, 47369u))))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1346f + 2004f), global1.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, global1.x) - vec2<f32>(var_0.c, -1370f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)))))));
    var var_1 = Struct_3(global0.d);
    global3 = array<vec4<f32>, 6>();
    var var_2 = Struct_4(-40749i, var_0.b, Struct_3(var_1.a), Struct_1(true, vec3<i32>(var_0.d.x, abs(reverseBits(global2.x)), var_1.a.d.x & -var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) - global1.x), vec4<i32>(-1i) * -var_1.a.d, vec2<i32>(var_1.a.d.x, _wgslsmith_div_i32(var_1.a.e.x, var_0.d.x))), func_2(countOneBits(u_input.a)));
    let var_3 = 2147483647i > global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, var_0.c, -2835f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, -1346f, 626f) - vec3<f32>(var_1.a.c, 361f, var_0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.c.a.c, 1000f, 1000f))) * vec3<f32>(-1462f, func_2(u_input.a).c, global1.x)), !vec3<bool>(global0.d.a, func_3(), -468f <= var_2.e.c))), ~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a, 61200u, u_input.a)), vec3<u32>(firstLeadingBit(u_input.a), 1u, u_input.a)), vec4<i32>(-54594i, max(i32(-1i) * -global0.d.e.x, -2147483647i), ~1i, -2147483647i));
}

