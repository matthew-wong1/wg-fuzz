struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(0i, -1i, 2147483647i, i32(-2147483648), 1386i, -1i, -47623i, 19251i, 991i, 20743i, -12122i, 45385i, 2147483647i, 33478i, 1i);

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: i32) -> f32 {
    global3 = u_input.a.wxx;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(global2.a)), u_input.a.yw);
    var var_1 = -(reverseBits(~abs(44934i)) >> (arg_1.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), -767f));
    var var_3 = _wgslsmith_mod_vec4_u32(firstTrailingBit(arg_1 << (arg_1 % vec4<u32>(32u))) ^ arg_1, ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, u_input.b, 0u, 4294967295u), vec4<u32>(1u, u_input.b, arg_1.x, u_input.b) | vec4<u32>(0u, arg_1.x, u_input.b, 4294967295u))) >> (~arg_1 % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f - global2.a))) - arg_2));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> vec4<f32> {
    global1 = vec3<i32>(-(global1.x >> (37579u % 32u)), countOneBits(_wgslsmith_sub_i32(-u_input.a.x, global3.x)), _wgslsmith_clamp_i32(0i, ~1i, global0[_wgslsmith_index_u32(~(~u_input.b), 15u)])) ^ _wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(i32(-1i) * -1i), select(global0[_wgslsmith_index_u32(reverseBits(4294967295u), 15u)], _wgslsmith_mult_i32(-1i, -2147483647i), true), global1.x ^ global0[_wgslsmith_index_u32(~u_input.b, 15u)]), vec3<i32>(_wgslsmith_clamp_i32(global1.x, ~arg_0.b.x, ~global1.x), select(global3.x, i32(-1i) * -45760i, false != arg_3), 0i));
    global0 = array<i32, 15>();
    global3 = abs(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 15u)] | -1i, -global0[_wgslsmith_index_u32(0u, 15u)]), vec3<i32>(-u_input.a.x, -21609i, global3.x & -4179i)));
    let var_0 = arg_3;
    global0 = array<i32, 15>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1312f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -717f)))), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, firstLeadingBit(vec2<i32>(global2.b.x, -1i))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) << (vec4<u32>(92930u, u_input.b, 67037u, u_input.b) % vec4<u32>(32u)), reverseBits(vec4<u32>(33846u, u_input.b, 4294967295u, u_input.b))), _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.x, 1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(24518u, u_input.b), 15u)])))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + arg_0.a) + arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1520f), 1549f, _wgslsmith_f_op_f32(max(global2.a, global2.a))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 108f, -166f, -1066f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(global2.a, vec2<i32>(1i, 2147483647i)), u_input.a, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a, global2.a, 599f, 528f))))))) * vec4<f32>(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(-1072f, vec2<i32>(13732i, 39702i)), u_input.a ^ u_input.a, true, true)).x), global2.a, 1048f));
    let var_1 = firstLeadingBit(firstTrailingBit(vec4<u32>(arg_0, firstLeadingBit(4294967295u), arg_1, ~_wgslsmith_add_u32(arg_0, 47250u))));
    var var_2 = max(vec3<i32>(reverseBits(arg_3), -_wgslsmith_sub_i32(-1i, global0[_wgslsmith_index_u32(13809u, 15u)]), _wgslsmith_add_i32(global1.x ^ -2147483647i, 0i)), (~vec3<i32>(arg_2, global3.x, global3.x) >> (~vec3<u32>(arg_1, u_input.b, var_1.x) % vec3<u32>(32u))) | u_input.a.xxz) & firstTrailingBit(u_input.a.zxz);
    let var_3 = _wgslsmith_f_op_vec4_f32(func_2(Struct_1(-1632f, ~global2.b), -u_input.a, select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_0.x, vec2<i32>(-1i, global2.b.x)), u_input.a, true, true)).x * var_0.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + 247f)), any(vec4<bool>(true, true, true, true))), true & !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))).x;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(1541f, global1.yy), firstTrailingBit(vec4<i32>(-2147483647i, global3.x, var_2.x, 10146i)), true, true)).x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-1000f * 161f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_div_f32(132f, 330f))))), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(var_2.xx, global1.yz), -1i) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(55704i, -2147483647i, -2147483647i, global1.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i)), _wgslsmith_mult_i32(arg_2, 0i))));
    return reverseBits(-17867i) >> (~var_1.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(u_input.a.wwz, vec3<i32>(func_1(u_input.b, 3931u, 1i, -global3.x), -2147483647i, global0[_wgslsmith_index_u32(12227u, 15u)]));
    global2 = Struct_1(836f, vec2<i32>(select(u_input.a.x, -_wgslsmith_mult_i32(global1.x, 1i), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), global1.x));
    var var_0 = Struct_1(628f, vec2<i32>(39437i, global3.x));
    var var_1 = Struct_1(373f, global3.yx);
    global0 = array<i32, 15>();
    global1 = vec3<i32>(-1i, global2.b.x, (2147483647i ^ -var_1.b.x) >> (~(1551u & u_input.b) % 32u));
    let var_2 = Struct_1(-924f, vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, _wgslsmith_mod_i32(global1.x, global2.b.x)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global1.x, 0i, 16656i), min(1i, 1i))) >> (vec2<u32>(select(_wgslsmith_add_u32(u_input.b, u_input.b), firstTrailingBit(4294967295u), true), ~0u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(0u, ~5190u)), min(firstTrailingBit(u_input.a.wzz), countOneBits(u_input.a.wwz | _wgslsmith_add_vec3_i32(u_input.a.zxw, vec3<i32>(-5901i, 2147483647i, u_input.a.x)))), ~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 57171u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<u32>(8141u, u_input.b, u_input.b, u_input.b), true)), _wgslsmith_div_vec3_u32(~(~abs(vec3<u32>(u_input.b, u_input.b, 1u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(103822u, u_input.b, 0u), firstTrailingBit(vec3<u32>(46317u, u_input.b, 14526u)))));
}

