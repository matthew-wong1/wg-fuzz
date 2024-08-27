struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: array<vec3<i32>, 25>;

var<private> global2: array<f32, 23> = array<f32, 23>(2498f, -1631f, 615f, -1213f, 340f, 825f, -908f, 471f, -989f, -1158f, -1531f, -1182f, -665f, -1249f, -1671f, -1147f, -1605f, 1088f, -1629f, -393f, -602f, 1659f, 471f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = 0u;
    global0 = array<vec3<i32>, 29>();
    let var_1 = 167f;
    let var_2 = u_input.a.xy;
    global2 = array<f32, 23>();
    return global2[_wgslsmith_index_u32(~(~(~67245u)), 23u)];
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(abs(min(4294967295u, 20928u)), 23u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(897f, 2439f, -1788f, global2[_wgslsmith_index_u32(5735u, 23u)]), vec4<f32>(1000f, global2[_wgslsmith_index_u32(32278u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(21416u, 23u)]), vec4<bool>(true, true, false, false))) * vec4<f32>(3505f, global2[_wgslsmith_index_u32(1u, 23u)], 1445f, 1000f)) - vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1630u, 19262u), 23u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(38424u, 23u)], global2[_wgslsmith_index_u32(66905u, 23u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(106210u, 23u)] + 448f), 630f))))));
    var var_1 = u_input.a.x << (89337u % 32u);
    var var_2 = select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(true, any(vec2<bool>(true, false)) | true), false), vec2<bool>(any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), all(vec3<bool>(false, true, false)))), true), select(true, all(vec2<bool>(false, false)), false) || true);
    global2 = array<f32, 23>();
    let var_3 = countOneBits(_wgslsmith_add_vec4_i32(u_input.a, ~reverseBits(vec4<i32>(u_input.a.x, 0i, 19654i, -1i)))) | u_input.a;
    return 0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_1(1000f, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b.x, 378f), var_0.b.x)), global2[_wgslsmith_index_u32(func_3(), 23u)], global2[_wgslsmith_index_u32(~max(614u, 4294967295u), 23u)], _wgslsmith_div_f32(1288f, _wgslsmith_f_op_f32(step(1152f, var_0.b.x)))))), _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(-var_0.b), select(arg_1, vec4<bool>(true, arg_1.x, true, true), false))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 2092f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1126f, var_1.b.x)))))), -u_input.a.wzw, select(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.yx, vec2<i32>(arg_0.x, arg_0.x)))), 0i | (arg_0.x & arg_0.x), true));
    let var_3 = vec2<f32>(-452f, arg_2.x);
    let var_4 = Struct_1(vec2<f32>(-364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1593f) * var_2.a.x)), ~global1[_wgslsmith_index_u32(abs(~firstTrailingBit(1u)), 25u)], arg_0.x & u_input.a.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(arg_2.zz, vec2<f32>(1000f, var_4.a.x), vec2<bool>(arg_1.x, true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.a) + var_1.b.zx) - _wgslsmith_f_op_vec2_f32(min(var_1.b.wy, vec2<f32>(424f, var_1.b.x))))), _wgslsmith_mod_vec3_i32(firstTrailingBit(-global0[_wgslsmith_index_u32(select(97843u, 18942u, arg_1.x), 29u)]), ~vec3<i32>(var_4.b.x, var_4.b.x, firstTrailingBit(u_input.a.x))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~u_input.a, select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, true))), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(660u, 23u)])), _wgslsmith_f_op_f32(func_1(524f, vec4<f32>(global2[_wgslsmith_index_u32(30560u, 23u)], global2[_wgslsmith_index_u32(24217u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], -510f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5210u, 23u)]), 985f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(round(var_0.a.x)));
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, ~0u >> (1u % 32u)), _wgslsmith_clamp_u32(1u, ~1u, 4294967295u));
    global0 = array<vec3<i32>, 29>();
    let var_3 = ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, 0i), 1i) >> ((abs(var_2) | _wgslsmith_mod_u32(var_2, var_2)) % 32u), -_wgslsmith_mult_i32(-37091i, u_input.a.x) << (~_wgslsmith_add_u32(var_2, var_2) % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, -u_input.a.x), _wgslsmith_mod_i32(-2147483647i, abs(47045i))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(min(-2147483647i, 0i), reverseBits(-8481i), !(!any(vec4<bool>(false, false, false, false)))), -1601f, -_wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), _wgslsmith_clamp_i32(var_3.x, -34719i, -2147483647i) | ~(-1i)));
}

