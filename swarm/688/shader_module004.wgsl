struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 17>;

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = -(global3.x & 1i);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(272f, global1.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-717f, global0.x, global1.x), vec3<f32>(global1.x, global1.x, 940f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(114f, -1489f, _wgslsmith_f_op_f32(1000f - global1.x)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global1.x, global0.x), vec3<f32>(global1.x, -145f, 188f))))), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(440f, 1153f, 369f)))))));
    var var_2 = select(0i, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(global3.zxx, global3.yyw)), min(-vec3<i32>(52185i, 21476i, -24090i), global3.zww)), true) ^ reverseBits(arg_0.x);
    let var_3 = global3.zxz;
    return global0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))) * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(578f, var_1.x, true)) * -1381f)));
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(global3.x, -global3.x);
    let var_1 = Struct_1(!all(vec4<bool>(true, func_2(global3.xy), false, true)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global1.x) * _wgslsmith_f_op_f32(trunc(global1.x))))), 164f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f), global1.x))));
    global3 = vec4<i32>(-var_0.x, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-31924i, global3.x), global3.yw)), 0i) << (vec4<u32>(1u, 4294967295u, max(_wgslsmith_mult_u32(abs(48266u), 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 9705u), vec3<u32>(41962u, 14408u, 20916u)) << (4294967295u % 32u))) % vec4<u32>(32u));
    let var_2 = var_1.a;
    var var_3 = ~(~(~vec3<u32>(~9266u, _wgslsmith_dot_vec4_u32(vec4<u32>(2646u, 17019u, 1u, 40241u), vec4<u32>(1u, 0u, 24476u, 9849u)), ~9226u)));
    return _wgslsmith_f_op_f32(select(290f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-var_1.b.x))))))), !(!(!(!var_1.a)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(all(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true), select(func_2(vec2<i32>(-2931i, global3.x)), true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * -1155f), 637f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -525f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-122f, global0.x, false)) - _wgslsmith_f_op_f32(global0.x * -1000f)), _wgslsmith_f_op_f32(abs(-449f))) * vec4<f32>(_wgslsmith_f_op_f32(step(1212f, global1.x)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global0.x + global1.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(global1.x))), 314f)));
    let var_1 = !(func_2(~(~global3.yx)) & (true & any(!vec4<bool>(var_0.a, var_0.a, var_0.a, true))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(629f, _wgslsmith_f_op_f32(round(-1967f)))));
    let var_2 = -710f;
    var var_3 = ~(~(~1u) ^ ((_wgslsmith_clamp_u32(1u, 98031u, 30146u) ^ 0u) ^ ~(~0u)));
    return -(countOneBits(firstTrailingBit(0i)) | u_input.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_div_f32(global0.x, 382f), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -1412f), vec3<f32>(-489f, -434f, -1683f), vec3<bool>(arg_0.x, false, false))) - vec3<f32>(global0.x, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, global1.x))));
    var var_0 = Struct_1(all(!select(vec2<bool>(false, false), !arg_0.zz, select(vec2<bool>(arg_0.x, false), arg_0.yx, arg_0.yz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(466f, _wgslsmith_f_op_f32(f32(-1f) * -158f), -1000f, _wgslsmith_f_op_f32(func_1()))));
    let var_1 = 1i;
    var var_2 = func_3();
    global2 = array<Struct_1, 17>();
    return firstLeadingBit(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(max(max(7094u, 140159u), ~1u)), 17u)];
    var var_1 = 0u;
    let var_2 = 1u;
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(global1.x - global1.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(round(var_0.b.x)))))));
    var var_5 = ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, -14023i), vec4<i32>(u_input.a, u_input.a, global3.x, 18584i)), global3.x), u_input.a);
    var_5 = ~_wgslsmith_clamp_i32(~(-2147483647i), ~(~max(-1i, global3.x)), 36118i);
    var_3 = global2[_wgslsmith_index_u32(func_4(!select(!select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, true, var_3.a), vec3<bool>(false, false, true)), vec3<bool>(false, all(vec3<bool>(var_3.a, var_3.a, true)), false), vec3<bool>(1256f > global1.x, !var_3.a, func_2(global3.zx))), ((~vec4<i32>(-30690i, global3.x, -2147483647i, 10864i) << (countOneBits(vec4<u32>(4294967295u, var_2, var_2, 1u)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, global3.x, u_input.a, global3.x), select(vec4<i32>(global3.x, 1i, -2147483647i, -28552i), vec4<i32>(u_input.a, 75208i, u_input.a, -1i), vec4<bool>(true, false, false, false)), ~vec4<i32>(-12594i, 14879i, u_input.a, global3.x))) | (vec4<i32>(-31339i, ~u_input.a, countOneBits(-1i), func_3()) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_2, 24012u, var_2, 3288u)), countOneBits(vec4<u32>(24180u, 4294967295u, 53976u, 59842u))) % vec4<u32>(32u))), ~(~1u), ~(~firstTrailingBit(vec4<i32>(-10310i, global3.x, u_input.a, -45398i)))), 17u)];
    var var_6 = Struct_1(true, _wgslsmith_f_op_vec4_f32(var_3.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b + _wgslsmith_f_op_vec4_f32(floor(var_3.b))) + _wgslsmith_f_op_vec4_f32(abs(var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, var_6.b.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.b.x) - 681f)) + _wgslsmith_f_op_vec4_f32(round(var_6.b))));
}

