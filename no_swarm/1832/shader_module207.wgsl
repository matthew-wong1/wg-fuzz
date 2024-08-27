struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<bool, 7>;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 15979i, -1i, 1i);

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    var var_0 = vec2<i32>(10871i, _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec4_i32(select(vec4<i32>(28777i, arg_0, arg_0, global3.x), vec4<i32>(arg_0, -1958i, global3.x, global3.x), global2[_wgslsmith_index_u32(1u, 7u)]) << (vec4<u32>(4294967295u, 1u, 3652u, 11730u) % vec4<u32>(32u)), vec4<i32>(~global3.x, _wgslsmith_clamp_i32(global3.x, -28721i, -24003i), countOneBits(global3.x), arg_0)), -32869i >> (u_input.a.x % 32u)));
    global2 = array<bool, 7>();
    let var_1 = Struct_1(reverseBits(~_wgslsmith_clamp_u32(u_input.a.x, global0.b.x, global0.b.x)) != 7426u, _wgslsmith_add_vec2_u32(vec2<u32>(0u, abs(global1.b.x)) >> (~u_input.a % vec2<u32>(32u)), min(vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(global1.b.x, 5167u))), (vec2<u32>(global1.b.x, global0.b.x) ^ vec2<u32>(4294967295u, 9722u)) >> (vec2<u32>(0u, 9163u) % vec2<u32>(32u)))));
    var var_2 = vec2<i32>(var_0.x, 2147483647i) << (u_input.a % vec2<u32>(32u));
    var var_3 = -22617i;
    return var_2.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = min(i32(-1i) * -23260i, i32(-1i) * -_wgslsmith_div_i32(~0i, func_3(-1i, false, global0.b)));
    var var_1 = ~vec3<i32>(global3.x, global3.x, min(28171i, -6151i));
    var_1 = ~global3.xxx;
    let var_2 = global3.wwy;
    var var_3 = 4294967295u;
    return _wgslsmith_sub_vec4_i32(-(vec4<i32>(-1i) * -(~vec4<i32>(1i, -43704i, 2147483647i, global3.x))), -(~(~firstLeadingBit(vec4<i32>(var_1.x, var_2.x, 74187i, -1i)))));
}

fn func_1() -> Struct_1 {
    var var_0 = 247f;
    global1 = Struct_1(true, abs(~(~vec2<u32>(global0.b.x, global0.b.x))));
    global2 = array<bool, 7>();
    global3 = _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 1i, -(~global3.x), firstLeadingBit(10542i)) << (~_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.b.x, 16411u, u_input.a.x, 4738u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.x, 46475u, 54985u, global1.b.x), vec4<u32>(u_input.a.x, global0.b.x, 39975u, global0.b.x), vec4<u32>(global0.b.x, global1.b.x, 7810u, 802u))) % vec4<u32>(32u)), func_2());
    let var_1 = ~vec4<i32>(0i, global3.x, -1i, _wgslsmith_mod_i32(global3.x, -2147483647i));
    return Struct_1(true, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global0.b.x), global1.b) & firstLeadingBit(vec2<u32>(global0.b.x, 37892u) ^ global0.b), _wgslsmith_sub_vec2_u32(max(u_input.a << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), global1.b), _wgslsmith_mod_vec2_u32(~global0.b, u_input.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> bool {
    global1 = func_1();
    var var_0 = arg_1;
    global4 = !(!vec3<bool>(func_1().a, any(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.b.x, 7u)], arg_1.a)), true));
    global2 = array<bool, 7>();
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(~abs(global3.zy), select(_wgslsmith_mult_vec2_i32(global3.zy, vec2<i32>(-1i, -2147483647i)), countOneBits(global3.wz), select(global4.yx, global4.yy, vec2<bool>(global1.a, global4.x))));
    return any(!vec3<bool>(!all(global4.yy), false, !any(global4.xx)));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global4.x, vec2<u32>(_wgslsmith_mult_u32(~(~global1.b.x), ~(~1u)), 4294967295u));
    let var_1 = 1f;
    global4 = vec3<bool>(global4.x, global4.x, true);
    let var_2 = global3.x;
    global4 = !vec3<bool>(false, any(vec3<bool>(all(vec3<bool>(false, global0.a, arg_0)), global1.a, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-848f - arg_1.x), global2[_wgslsmith_index_u32(~1u, 7u)])) != arg_1.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(!func_4(true, func_1(), -14116i, _wgslsmith_mod_vec2_u32(global0.b & u_input.a, _wgslsmith_mult_vec2_u32(vec2<u32>(29858u, global1.b.x), global1.b))), vec4<f32>(1420f, 102f, _wgslsmith_div_f32(-1396f, 181f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(387f, -225f)))), _wgslsmith_f_op_f32(233f + _wgslsmith_f_op_f32(-1000f * 473f)), !(false | global4.x)))), Struct_1(false, u_input.a));
    var var_0 = func_1().b | (global1.b >> (~vec2<u32>(select(17764u, 33391u, true), u_input.a.x) % vec2<u32>(32u)));
    var var_1 = global4.x;
    global2 = array<bool, 7>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(176f, 564f, 158f, -308f), vec4<f32>(-1183f, 1417f, 204f, 857f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, -393f, 1000f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(((vec4<u32>(0u, 31186u, global0.b.x, global1.b.x) | vec4<u32>(0u, 55222u, 4847u, global0.b.x)) ^ ~vec4<u32>(var_0.x, 4294967295u, 71039u, 30567u)) << (reverseBits(abs(vec4<u32>(global1.b.x, global1.b.x, 0u, u_input.a.x))) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(21996u, global1.b.x, 50414u, 22445u) ^ vec4<u32>(14844u, global1.b.x, 52485u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f) + _wgslsmith_div_f32(var_2.x, var_2.x))) + 347f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f + var_2.x)))));
}

