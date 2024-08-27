struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 6084i, i32(-2147483648), -1i);

var<private> global2: Struct_5 = Struct_5(Struct_2(Struct_1(4294967295u), 31791i), vec3<bool>(true, true, true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = global2.a.a;
    var var_1 = ~min(_wgslsmith_div_u32(8767u, 2382u), var_0.a);
    global1 = vec4<i32>(-1i) * -vec4<i32>(-23830i, ~abs(-17907i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.b, arg_1.b), vec2<i32>(global1.x, 0i)), _wgslsmith_mult_i32(28788i, 1i) << (~global2.a.a.a % 32u));
    var var_2 = max(1u, arg_0.a.a >> (4294967295u % 32u));
    global0 = array<bool, 12>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1052f * 1139f), _wgslsmith_f_op_f32(trunc(-619f)), _wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(f32(-1f) * -678f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), 475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f + 648f)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    global0 = array<bool, 12>();
    let var_0 = Struct_3(Struct_1(8616u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 538f, _wgslsmith_f_op_f32(floor(-554f))), arg_0.wyx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.yyz))))));
    let var_1 = var_0.a;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(min(arg_1, arg_1)), arg_1) | ~1u, 12u)];
    var var_3 = u_input.b.x;
    return 1i;
}

fn func_1(arg_0: Struct_3) -> u32 {
    global1 = select(_wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.x, 51978i, global1.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-27232i, global1.x, global1.x, global2.a.b), u_input.b), u_input.b)), vec4<i32>(0i, global1.x, func_3(_wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_1(24231u)), global2.a)), vec2<u32>(0u, 1u), arg_0.b.x), -15079i >> ((4252u ^ arg_0.a.a) % 32u))), vec4<i32>(firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(16151i, global1.x, -33984i), global1.zwz))), _wgslsmith_clamp_i32(global1.x, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1686f, 1308f, arg_0.b.x)), vec2<u32>(4294967295u, arg_0.a.a) & vec2<u32>(31149u, global2.a.a.a), -501f), -36087i), 1i, 1i), vec4<bool>(true, !global0[_wgslsmith_index_u32(26588u, 12u)], true, true));
    var var_0 = Struct_2(arg_0.a, _wgslsmith_div_i32(-32690i, u_input.a));
    let var_1 = vec2<bool>(!global0[_wgslsmith_index_u32(0u, 12u)], true);
    return ~(min(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a.a.a, var_0.a.a), var_0.a.a)) & ~var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~(4294967295u ^ ~global2.a.a.a), func_1(Struct_3(Struct_1(global2.a.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(361f, -250f, 1000f) * vec3<f32>(171f, 1113f, -631f))))), ~(~(reverseBits(vec3<u32>(1u, 1u, 4294967295u)) & ~vec3<u32>(4294967295u, 1u, global2.a.a.a))));
    global2 = Struct_5(Struct_2(Struct_1(~_wgslsmith_clamp_u32(global2.a.a.a, 44214u, global2.a.a.a)), -2147483647i), global2.b);
    global0 = array<bool, 12>();
    global1 = ~vec4<i32>(_wgslsmith_mult_i32(u_input.a, global1.x), min(_wgslsmith_sub_i32(global2.a.b, -18633i), _wgslsmith_mod_i32(18282i << (var_0.x % 32u), global2.a.b >> (4294967295u % 32u))), global2.a.b, u_input.a);
    var var_1 = Struct_2(global2.a.a, i32(-1i) * -(~global1.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1311f, -519f)), _wgslsmith_f_op_f32(-2474f - -597f)) * _wgslsmith_f_op_f32(ceil(-700f))), -785f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1099f, -1609f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(130f, 1652f)) - -540f))), -1000f, _wgslsmith_f_op_f32(select(-636f, -1181f, all(global2.b))));
    var var_3 = Struct_5(global2.a, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.x)), 120f)))));
}

