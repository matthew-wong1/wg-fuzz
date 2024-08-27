struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(0u, 8885u, 0u, 875u, 101292u, 0u, 10093u, 0u, 15166u, 0u, 13221u, 0u, 0u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(988f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(117f)), _wgslsmith_f_op_f32(sign(265f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(795f))))))));
    return 1u;
}

fn func_4(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_2(-_wgslsmith_clamp_i32(u_input.b.x, 0i, _wgslsmith_sub_i32(-39856i, ~(-49542i))), !vec3<bool>(false, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))));
    return ~(~u_input.b.zwx);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<u32, 14>();
    var var_0 = func_4(func_3(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), false, u_input.b.x > (u_input.b.x >> (4294967295u % 32u)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), u_input.b));
    let var_1 = Struct_2(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(u_input.b.wwx, vec3<i32>(2147483647i, u_input.b.x, -1i), true), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), firstLeadingBit(~u_input.b.x))), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(any(vec4<bool>(false, false, false, false)), true, all(vec2<bool>(true, true)))), (u_input.b.x >> (u_input.a % 32u)) < u_input.b.x));
    let var_2 = select(!(!vec4<bool>(var_1.b.x, !var_1.b.x, false, var_1.b.x)), vec4<bool>(var_1.b.x, true, var_1.b.x, any(vec2<bool>(var_1.b.x, !var_1.b.x))), select(select(!select(vec4<bool>(false, var_1.b.x, false, var_1.b.x), vec4<bool>(false, var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, true, false, var_1.b.x)), vec4<bool>(!var_1.b.x, var_1.b.x, !var_1.b.x, false), var_1.b.x), !select(select(vec4<bool>(false, var_1.b.x, true, false), vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), var_1.b.x), select(vec4<bool>(false, var_1.b.x, var_1.b.x, true), vec4<bool>(false, var_1.b.x, true, false), true), true), true));
    var_0 = max(min(vec3<i32>(_wgslsmith_add_i32(abs(-861i), var_0.x), 1i, u_input.b.x), -u_input.b.zwx), select(u_input.b.xzz, vec3<i32>(~u_input.b.x, ~26143i, reverseBits(0i)), vec3<bool>(true, false, var_2.x)) << ((abs(vec3<u32>(0u, 17474u, arg_0.x)) << (~(~vec3<u32>(global0[_wgslsmith_index_u32(3724u, 14u)], 1u, u_input.c)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_1(all(select(!var_1.b.zx, var_2.yw, !(!var_2.wx))), arg_0.x, ~0u);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - _wgslsmith_f_op_f32(round(1000f)))))));
    var var_1 = Struct_1(true, abs(~10972u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<u32>(u_input.c, u_input.c, 76035u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40254u, 14u)], 14u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(arg_1.b, 14u)], u_input.a, arg_1.c, 42334u) % vec4<u32>(32u))), vec4<u32>(arg_1.c, arg_1.c, global0[_wgslsmith_index_u32(select(0u, 1u, true), 14u)], ~1u)), vec4<u32>(~arg_1.b, countOneBits(10698u), ~arg_1.c, 1u) | (firstTrailingBit(vec4<u32>(u_input.a, 11599u, global0[_wgslsmith_index_u32(arg_1.b, 14u)], u_input.c)) ^ max(vec4<u32>(global0[_wgslsmith_index_u32(5560u, 14u)], 0u, u_input.a, 0u), vec4<u32>(75331u, 4294967295u, arg_1.b, 1u)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 709f);
    var var_2 = arg_1;
    var var_3 = Struct_1(select(var_2.a, var_2.a, func_2(vec2<u32>(2715u, 19816u)).a), 1u, (~reverseBits(global0[_wgslsmith_index_u32(var_1.c, 14u)]) << (~min(arg_1.c, 4294967295u) % 32u)) << (10939u % 32u));
    return func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b, firstLeadingBit(~88385u)), select(reverseBits(abs(vec2<u32>(54648u, var_1.c))), vec2<u32>(max(19354u, var_2.b), global0[_wgslsmith_index_u32(var_3.c, 14u)]), select(!vec2<bool>(arg_1.a, false), !vec2<bool>(arg_1.a, false), true)), reverseBits(~(~vec2<u32>(0u, 1946u))))).a;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    let var_0 = 1u;
    let var_1 = Struct_3(vec2<i32>(12320i, u_input.b.x), arg_0.b, arg_0.c);
    global0 = array<u32, 14>();
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, 11744i), u_input.b.zww), u_input.b.x), arg_0.b, func_5(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f) * _wgslsmith_div_f32(-289f, -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1871f * -2054f))), func_2(arg_1.zy)));
    let var_3 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), -14094i, var_1.a.x)), vec3<i32>(-max(~u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, arg_2)), firstLeadingBit(u_input.b.x), var_1.a.x));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    var var_0 = !(!any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)));
    var var_1 = Struct_1(any(select(vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), false)), u_input.a, min((~4294967295u & reverseBits(global0[_wgslsmith_index_u32(54930u, 14u)])) | ~(~global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_div_u32(func_1(Struct_3(vec2<i32>(u_input.b.x, u_input.b.x), true, false), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 3867u, global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(21702u, 9711u, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(52743u, 14u)])), -30250i), ~(global0[_wgslsmith_index_u32(u_input.a, 14u)] >> (u_input.a % 32u)))));
    global0 = array<u32, 14>();
    let var_2 = Struct_1(var_1.a, 1u, reverseBits(max(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 0u, var_1.b), reverseBits(vec3<u32>(90094u, 43275u, var_1.b))))));
    var var_3 = Struct_2(-36716i, vec3<bool>(var_1.a, (8771u > _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 58288u), vec3<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(var_1.b, 14u)]))) == true, !var_1.a));
    global0 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<u32>(firstLeadingBit(75027u ^ u_input.c), 36111u, _wgslsmith_sub_u32(~1u, u_input.a)));
}

