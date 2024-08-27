struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<bool, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = ~firstTrailingBit(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, 25134i, u_input.b, 23193i), vec4<i32>(-11921i, 0i, 48622i, global1.b), global2[_wgslsmith_index_u32(0u, 14u)]), vec4<i32>(global1.b, 17155i, -11493i, u_input.b)));
    global0 = 1u;
    var var_1 = Struct_4(vec3<u32>(_wgslsmith_mod_u32(~(~u_input.a.x), 1u), u_input.a.x, 0u), global2[_wgslsmith_index_u32(~u_input.a.x, 14u)]);
    global1 = Struct_3(Struct_2(_wgslsmith_mult_u32(var_1.a.x, select(~u_input.a.x, ~78540u, any(vec2<bool>(global2[_wgslsmith_index_u32(21367u, 14u)], true))))), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(599f)));
    return 17934u;
}

fn func_4(arg_0: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1981f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(664f, -1220f, true)), -322f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-441f, 810f)) * 258f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f)))))));
    var var_1 = vec2<i32>(56230i, u_input.b) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_3 = -32739i;
    var var_4 = !vec2<bool>(true, !global2[_wgslsmith_index_u32(global1.a.a, 14u)] == true);
    return ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, ~u_input.b, 1i, 42620i), _wgslsmith_sub_vec4_i32(vec4<i32>(-25171i, 38168i, abs(var_1.x), global1.b), vec4<i32>(reverseBits(u_input.b), 73833i, global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, var_1.x, var_1.x), vec4<i32>(global1.b, var_1.x, u_input.b, var_1.x)))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(min(vec4<i32>(var_1.x, global1.b, var_1.x, global1.b), vec4<i32>(global1.b, u_input.b, -2147483647i, global1.b))), min(vec4<i32>(u_input.b, 25232i, 11300i, 25989i), vec4<i32>(-1i, u_input.b, -36693i, var_1.x)) >> (~vec4<u32>(0u, u_input.a.x, 44070u, arg_0) % vec4<u32>(32u)), vec4<i32>(var_3, abs(var_1.x), global1.b, 0i)));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = global1.a;
    global1 = Struct_3(Struct_2(~88436u), firstTrailingBit(i32(-1i) * -(~u_input.b)));
    global1 = Struct_3(global1.a, u_input.b);
    let var_1 = !select(!vec3<bool>(arg_0, arg_1.b, !global2[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(any(select(vec4<bool>(global2[_wgslsmith_index_u32(12685u, 14u)], true, false, false), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(arg_0, false, false, global2[_wgslsmith_index_u32(var_0.a, 14u)]))), global2[_wgslsmith_index_u32(u_input.a.x, 14u)], true), !(!vec3<bool>(global2[_wgslsmith_index_u32(global1.a.a, 14u)], arg_0, arg_1.b)));
    global2 = array<bool, 14>();
    return _wgslsmith_div_vec4_i32(countOneBits(func_4(func_3())), vec4<i32>(_wgslsmith_sub_i32(global1.b, ~select(u_input.b, 75851i, false)), func_4(reverseBits(28809u)).x, -(~u_input.b), _wgslsmith_mult_i32(1i, func_4(1u).x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = -(-_wgslsmith_add_vec3_i32(arg_1.xxx, vec3<i32>(global1.b, 1i, u_input.b)) << (_wgslsmith_mod_vec3_u32(u_input.a.xwy, u_input.a.yxz) % vec3<u32>(32u)));
    var_0 = select(_wgslsmith_mod_vec3_i32(arg_1.wzy, max(abs(arg_1.wyx), _wgslsmith_sub_vec3_i32(arg_1.xww, vec3<i32>(-2147483647i, 35769i, arg_1.x)))) | vec3<i32>(0i, ~_wgslsmith_div_i32(global1.b, var_0.x), ~19249i), abs(countOneBits(arg_1.wzy) << ((vec3<u32>(45978u, 0u, 22757u) & u_input.a.xxz) % vec3<u32>(32u))) | firstLeadingBit(vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(37290i, arg_1.x, 27659i, -8227i)), _wgslsmith_mod_i32(u_input.b, -1i))), true);
    var var_1 = Struct_4(u_input.a.xzz, !any(vec4<bool>(true, any(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(1u, 14u)])), true, global2[_wgslsmith_index_u32(global1.a.a, 14u)])));
    var var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_3 = Struct_4(u_input.a.xyw, var_1.b);
    return ~(-arg_1.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> StorageBuffer {
    let var_0 = 1i;
    global2 = array<bool, 14>();
    var var_1 = func_5(arg_0, ~(select(countOneBits(vec4<i32>(1i, -5645i, u_input.b, -11210i)), func_2(arg_2, Struct_4(arg_0.yxw, global2[_wgslsmith_index_u32(6926u, 14u)])), !vec4<bool>(false, arg_2, false, false)) << (vec4<u32>(~u_input.a.x, ~arg_1, 0u, ~43366u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2106f, 279f), vec2<f32>(-1253f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2339f, 286f) * vec2<f32>(-211f, 1100f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1364f, -655f)))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-609f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-122f - -1062f)), -1150f)));
    let var_3 = -(select(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(global1.b, -1i))), vec2<i32>(u_input.b & var_0, var_0), any(!vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(9375u, 14u)]))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(114851u, arg_0.x), vec2<u32>(arg_1, 4294967295u)), vec2<u32>(arg_1, global1.a.a)), ~(arg_0.x | 0u)) % vec2<u32>(32u)));
    return StorageBuffer(u_input.b, global1.a.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.zx))), abs(vec2<i32>(-95127i, ~var_0)), countOneBits(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, u_input.a.x, ~1u), ~(u_input.a ^ u_input.a))), _wgslsmith_mult_u32(1u, 7012u), true);
}

