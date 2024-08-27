struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true));

var<private> global3: vec2<bool>;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = global1.a.a.zw;
    let var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0.a.a.x, ~global1.a.c, _wgslsmith_div_u32(max(0u, global1.a.a.x), ~0u)), _wgslsmith_mult_vec4_u32(abs(select(global1.a.a, vec4<u32>(var_0.x, global1.a.a.x, arg_0.a.c, 0u), arg_0.a.b)), global1.a.a ^ arg_0.a.a));
    global1 = arg_0;
    global2 = array<vec4<bool>, 11>();
    global4 = var_1.x;
    return -1968f;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 455f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f), arg_2.x));
    var var_1 = Struct_2(global1.a.a.x, u_input.a.zz, arg_1, firstTrailingBit(select(~_wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.b.x), u_input.b), _wgslsmith_div_vec2_i32(-u_input.a.zz, ~vec2<i32>(u_input.a.x, u_input.a.x)), select(vec2<bool>(true, true), !vec2<bool>(true, arg_1.b), !vec2<bool>(arg_1.b, global1.a.b)))), global1.a);
    global1 = Struct_3(Struct_1(var_1.e.a, arg_0.x < (4294967295u ^ arg_0.x), arg_0.x));
    let var_2 = select(vec3<bool>(any(global2[_wgslsmith_index_u32(~1u, 11u)]), arg_1.c == arg_0.x, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(arg_0.x, 4294967295u), global1.a.a.x) != 11554u), vec3<bool>(any(!select(vec4<bool>(true, global3.x, false, arg_1.b), vec4<bool>(true, global1.a.b, global1.a.b, arg_1.b), var_1.e.b)), any(select(vec2<bool>(global3.x, global1.a.b), vec2<bool>(global3.x, false), false)) & (any(vec2<bool>(true, false)) | true), any(select(!vec3<bool>(true, arg_1.b, global3.x), select(vec3<bool>(false, arg_1.b, true), vec3<bool>(false, arg_1.b, true), vec3<bool>(false, global3.x, true)), true))), !select(vec3<bool>(true, any(global2[_wgslsmith_index_u32(arg_1.c, 11u)]), global3.x && false), select(vec3<bool>(global1.a.b, var_1.c.b, false), !vec3<bool>(global3.x, false, true), arg_1.b), any(vec3<bool>(true, true, var_1.c.b))));
    var var_3 = vec4<i32>(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -var_1.d.x, _wgslsmith_mult_i32(select(-1i, 2147483647i, false), select(u_input.a.x, var_1.b.x, var_1.e.b))), var_1.b.x), _wgslsmith_add_i32(u_input.b.x, var_1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, -28986i), u_input.a));
    return arg_2.x;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~global1.a.a, Struct_1(global1.a.a, false, arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(-927f, 773f, -939f), vec3<f32>(634f, 792f, 735f)))))) - 639f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-884f)) * _wgslsmith_f_op_f32(-338f + 869f)) * _wgslsmith_f_op_f32(max(2114f, _wgslsmith_f_op_f32(1446f * -1198f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1908f, -1386f) * 132f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -948f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 157f;
    let var_1 = reverseBits(_wgslsmith_clamp_i32(-21941i, 0i, abs(~(-20046i))));
    var var_2 = u_input.a.x;
    let var_3 = Struct_3(global1.a);
    let var_4 = _wgslsmith_dot_vec4_i32(max(reverseBits(max(vec4<i32>(1i, 32396i, u_input.b.x, u_input.b.x), vec4<i32>(34164i, var_1, var_1, u_input.b.x))) & firstLeadingBit(~vec4<i32>(u_input.b.x, u_input.b.x, -1i, var_1)), -reverseBits(vec4<i32>(0i, -73909i, 13460i, u_input.b.x)) ^ ~(-vec4<i32>(u_input.a.x, -33727i, -1i, -37053i))), vec4<i32>(u_input.a.x, ~1i, 0i, firstLeadingBit(_wgslsmith_div_i32(var_1, ~(-2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(-2444f * var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_3(global1.a)))))), var_0), ~(~global1.a.a.wx), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(var_4, var_1 ^ -49791i)), -1235i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -2357f, var_0) * vec3<f32>(600f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(func_2(var_3.a.a.x, -2147483647i))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -1412f, var_0))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -355f) * vec3<f32>(var_0, -1087f, var_0))))))));
}

