struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 15>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    return global1.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(67054u, u_input.a.x, firstTrailingBit(4294967295u)));
    global0 = array<Struct_4, 3>();
    global2 = array<i32, 15>();
    let var_1 = vec4<u32>(~((~1u | _wgslsmith_add_u32(11711u, u_input.a.x)) & ~1u), 4139u, u_input.b, ~(~(3245u >> (var_0.a % 32u))));
    var var_2 = -1243f;
    return _wgslsmith_f_op_f32(func_2(Struct_4(true, -vec3<i32>(~(-28603i), min(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], -26493i), ~(-2147483647i)), ~(~select(vec3<u32>(var_1.x, u_input.b, var_0.a), vec3<u32>(3397u, var_0.a, 4294967295u), vec3<bool>(false, false, false))), Struct_1(var_0.a))));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = select(vec4<i32>(-11889i, -2147483647i, global2[_wgslsmith_index_u32(~u_input.a.x, 15u)], ~42230i), -vec4<i32>(_wgslsmith_mult_i32(0i, 1i), global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 16510u), 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)] ^ global2[_wgslsmith_index_u32(0u, 15u)]) >> (firstTrailingBit(vec4<u32>(countOneBits(u_input.b), 33336u, ~75003u, 47360u)) % vec4<u32>(32u)), !all(!(!vec3<bool>(arg_0, arg_0, false))));
    global0 = array<Struct_4, 3>();
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(-var_0.zw, ~vec2<i32>(var_0.x, global2[_wgslsmith_index_u32(u_input.b, 15u)])), _wgslsmith_mod_vec2_i32(var_0.xx, vec2<i32>(0i, 25673i) >> (vec2<u32>(5083u, u_input.b) % vec2<u32>(32u))), !select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0))), firstTrailingBit(firstTrailingBit(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)]))))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u, all(vec4<bool>(true, arg_0, arg_0, true))), u_input.b), 15u)], _wgslsmith_div_i32(var_0.x, global2[_wgslsmith_index_u32(0u, 15u)]));
    global2 = array<i32, 15>();
    let var_2 = u_input.a.x;
    return ~_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(var_2, 4294967295u, u_input.b), u_input.a.x >> (u_input.a.x % 32u), u_input.b), max(vec3<u32>(var_2, ~var_2, 6964u), ~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, var_2, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -740f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(455f, global1.x, global1.x), vec3<f32>(-482f, global1.x, -1400f)), global2[_wgslsmith_index_u32(~u_input.b, 15u)])))), 148f);
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(func_3(false), firstLeadingBit(u_input.a)), ~u_input.a, u_input.a));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(332f, global1.x)))))));
    let var_2 = -_wgslsmith_div_i32(abs(-2147483647i) ^ global2[_wgslsmith_index_u32(u_input.b ^ u_input.a.x, 15u)], firstLeadingBit(1i));
    let var_3 = Struct_2(Struct_1(var_1.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstTrailingBit(0i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(1u, 15u)], -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 15u)])), vec3<i32>(13214i, 18782i, -56173i) | vec3<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 15u)], 53609i))), reverseBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(1u, 15u)]), 29795i))), u_input.a.yx);
    var var_4 = vec4<bool>(all(vec3<bool>(true, !any(vec3<bool>(false, true, false)), true)), false, !(65477u <= (_wgslsmith_sub_u32(u_input.b, 46558u) >> (~0u % 32u))), _wgslsmith_div_i32(i32(-1i) * -8205i, var_2) != global2[_wgslsmith_index_u32(countOneBits(u_input.a.x << (1u % 32u)), 15u)]);
    var_1 = select(u_input.a, vec3<u32>(36134u, abs(45513u), _wgslsmith_div_u32(max(u_input.b, 4294967295u), abs(4294967295u))), vec3<bool>(true, false, all(vec2<bool>(true, var_4.x))));
    var_1 = ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(_wgslsmith_mod_u32(0u, var_1.x), var_3.a.a, 0u), vec3<u32>(39124u, 4294967295u, 49477u) & ~vec3<u32>(4294967295u, var_3.c.x, var_3.a.a)), vec3<u32>(var_3.a.a | var_1.x, ~u_input.b, _wgslsmith_sub_u32(u_input.a.x, var_3.a.a)) >> (select(~vec3<u32>(0u, var_3.a.a, 4294967295u), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a), select(var_4.zyw, vec3<bool>(var_4.x, true, var_4.x), var_4.zzz)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, vec2<u32>(5240u, var_1.x), firstTrailingBit(select(vec4<i32>(var_2, var_3.b, -5934i, -17205i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_2, -1i, global2[_wgslsmith_index_u32(67215u, 15u)], var_3.b), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 15u)], var_2, -2147483647i)), vec4<i32>(var_3.b, -3123i, 0i, select(global2[_wgslsmith_index_u32(0u, 15u)], -25796i, var_4.x)), any(var_4.wy))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -602f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 467f) + vec2<f32>(1073f, 830f)))), select(select(select(var_4.zw, var_4.xw, var_4.x), select(vec2<bool>(true, var_4.x), var_4.xz, var_4.x), true), !(!vec2<bool>(false, var_4.x)), select(vec2<bool>(var_4.x, true), var_4.xx, !vec2<bool>(var_4.x, true))))));
}

