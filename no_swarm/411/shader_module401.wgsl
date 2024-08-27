struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true));

var<private> global1: f32 = 232f;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2645i, 9681i, -1i, 2147483647i));

var<private> global3: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = u_input.a << (~max(~1u, 13547u) % 32u);
    global1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(72465i, _wgslsmith_mod_i32(arg_0.a.x, u_input.c), global2.a.x, 38747i), vec4<i32>(-(~(-19057i)), -586i, global2.a.x, _wgslsmith_dot_vec3_i32(arg_0.a.wzw, ~vec3<i32>(25663i, 2147483647i, 2147483647i)))));
    var var_2 = -1160f;
    var var_3 = vec4<f32>(603f, 408f, -1121f, -1442f);
    return ~select(~select(7252u, u_input.d, true), ~(~33056u), true);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(0u <= arg_2.x, true, false, any(!(!(!global0[_wgslsmith_index_u32(1u, 10u)]))));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global2.a.x, 6139i)), vec2<i32>(u_input.c, global2.a.x) << (~arg_3 % vec2<u32>(32u))), u_input.c, _wgslsmith_mult_i32(abs(global2.a.x), ~(global2.a.x >> (1u % 32u))), global2.a.x));
    var_0 = !select(!(!select(vec4<bool>(var_0.x, false, var_0.x, false), global0[_wgslsmith_index_u32(1u, 10u)], vec4<bool>(var_0.x, var_0.x, var_0.x, false))), select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), all(var_0.xx)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(arg_2.yy, arg_3), arg_3), 10u)], any(global0[_wgslsmith_index_u32(reverseBits(1u), 10u)])), !global0[_wgslsmith_index_u32(~arg_2.x, 10u)]);
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 449f) + _wgslsmith_f_op_f32(arg_0.x - 1078f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_f_op_f32(exp2(arg_0.x))));
    var var_2 = Struct_1(min(-var_1.a, var_1.a));
    return Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 13658i, var_2.a.x), _wgslsmith_sub_vec3_i32(~vec3<i32>(-38937i, 2147483647i, global2.a.x), reverseBits(global2.a.yzx))), -2147483647i, _wgslsmith_mod_i32(-abs(global2.a.x), firstTrailingBit(global2.a.x)), var_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a >> (~_wgslsmith_mult_vec4_u32(~vec4<u32>(36163u, 4294967295u, 4294967295u, u_input.a), reverseBits(vec4<u32>(1u, 7912u, u_input.a, 0u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(759f, -602f)), _wgslsmith_f_op_f32(select(-300f, -894f, true))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(2230f + -384f)), 1000f, _wgslsmith_f_op_f32(trunc(-1803f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-735f, -852f, -769f, -199f))), vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1375f + 678f), _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(985f * 137f), _wgslsmith_f_op_f32(min(344f, 1000f)))))));
    var var_2 = select(select(vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), any(vec2<bool>(true, true))), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(u_input.a < 4294967295u, false)));
    var var_3 = func_3(_wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1)))), ~u_input.d, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(51491u, 94352u, u_input.a), vec3<u32>(u_input.d, 15416u, 1u))), ~_wgslsmith_clamp_vec2_u32(abs(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.d, u_input.d))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 107954u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 30806u))), vec2<u32>(u_input.d, ~u_input.a)));
    var var_4 = arg_0;
    return Struct_1(arg_1.a);
}

fn func_1() -> f32 {
    var var_0 = func_4(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(491f, 241f, 1020f, 1664f) + vec4<f32>(-1236f, -1755f, -166f, -155f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, -1460f, -882f, -310f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, 881f, 2121f, 305f))), ~29843u, ~vec3<u32>(_wgslsmith_mult_u32(u_input.d, 0u), 4294967295u >> (u_input.a % 32u), func_2(Struct_1(global2.a), vec4<f32>(-1973f, -485f, 1406f, 346f))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.d, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(7320u, u_input.d))), ~vec2<u32>(u_input.a, u_input.d))), Struct_1(select(~countOneBits(global2.a), -_wgslsmith_clamp_vec4_i32(global2.a, vec4<i32>(global2.a.x, u_input.b.x, u_input.b.x, -1i), global2.a), vec4<bool>(true, true, any(vec2<bool>(true, true)), true))), vec3<i32>(abs(u_input.c) << (~(~u_input.d) % 32u), -1i, global2.a.x));
    let var_1 = 1891f;
    global1 = var_1;
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-41094i >> (u_input.d % 32u), var_0.a.x >> (u_input.d % 32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(global2.a.x, 29874i, var_0.a.x))), -max(min(2147483647i, var_0.a.x), _wgslsmith_dot_vec2_i32(global2.a.wz, global2.a.wz)), ~u_input.b.x, global2.a.x));
    global0 = array<vec4<bool>, 10>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)) - var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_1()), -1455f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, 1008f))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, -109f) + vec2<f32>(2769f, -1144f))), vec2<f32>(_wgslsmith_f_op_f32(1718f + 134f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-317f)))))), _wgslsmith_f_op_f32(func_1())), any(!vec4<bool>(any(global0[_wgslsmith_index_u32(1u, 10u)]), true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(firstTrailingBit(vec2<u32>(100061u, 4294967295u))), global2.a.x << (firstTrailingBit(u_input.d) % 32u), u_input.d);
}

