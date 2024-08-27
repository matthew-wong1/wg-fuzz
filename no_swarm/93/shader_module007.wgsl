struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
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

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, true, true, true, false, false, true, false, true, true, true, false, false, true, true, false, false, false);

var<private> global1: vec4<bool>;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = ~arg_3;
    var var_1 = arg_1.a;
    let var_2 = any(select(select(global1.zwx, global1.xyz, vec3<bool>(all(global1.yy), !global1.x, true)), global1.xwx, global1.wxy));
    let var_3 = arg_1;
    global2 = ~(vec4<u32>(var_3.a.x, arg_1.a.x, reverseBits(~1u), abs(~u_input.a.x)) & ~(~arg_1.a));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1321f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<bool, 20>();
    let var_0 = u_input.b.x;
    var var_1 = -2147483647i;
    global2 = ~arg_0.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-345f, 335f, -330f), vec3<f32>(-751f, 860f, -144f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, -378f, 371f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, u_input.b.x, u_input.b.x), Struct_1(arg_3.a), global1.x, arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -313f), 488f))), vec3<f32>(-196f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1031f, -449f), _wgslsmith_div_f32(-3080f, 2046f)), _wgslsmith_f_op_f32(-1647f * _wgslsmith_f_op_f32(-522f + -2079f))))));
    return vec4<bool>(!global1.x, !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, ~(~1u), ~_wgslsmith_sub_u32(arg_3.a.x, 4294967295u)), 20u)], all(!select(select(global1.ww, global1.zw, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global1.x, global0[_wgslsmith_index_u32(arg_2, 20u)])), false)), !(_wgslsmith_f_op_f32(ceil(-216f)) < _wgslsmith_div_f32(659f, _wgslsmith_f_op_f32(-235f - var_2.x))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_1(~select(~(~vec4<u32>(arg_1, 4294967295u, 0u, arg_0.a.x)), _wgslsmith_add_vec4_u32(arg_0.a, ~arg_0.a), select(select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, true, global1.x, global0[_wgslsmith_index_u32(arg_1, 20u)]), true), func_2(arg_0, arg_0, global2.x, arg_0), !vec4<bool>(false, true, global1.x, true))));
    global2 = _wgslsmith_sub_vec4_u32(~abs(countOneBits(arg_0.a << (arg_0.a % vec4<u32>(32u)))), abs(arg_0.a));
    global2 = firstTrailingBit(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, reverseBits(global2.wxw)), global2.x, 29302u, arg_1));
    var var_1 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, -1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec3<i32>(-52180i, -1i, 2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, global1.x, false))), -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<i32>(u_input.b.x, -33047i, 0i) >> ((u_input.a & vec3<u32>(var_0.a.x, 28140u, global2.x)) % vec3<u32>(32u)))), vec3<i32>(-1i, u_input.b.x, max(_wgslsmith_div_i32(_wgslsmith_sub_i32(-11558i, u_input.b.x), u_input.b.x | u_input.b.x), 1i)));
    var_0 = Struct_1(arg_0.a);
    return !(!(!func_2(arg_0, Struct_1(vec4<u32>(4294967295u, var_0.a.x, 1u, arg_0.a.x)), 41686u | arg_1, Struct_1(vec4<u32>(1u, arg_1, var_0.a.x, 87939u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(~(-1i), 2147483647i, 17570i | -u_input.b.x, -1i) & ((abs(vec4<i32>(2147483647i, -1i, u_input.b.x, u_input.b.x)) << (countOneBits(vec4<u32>(0u, 45192u, u_input.a.x, global2.x) >> (vec4<u32>(6126u, u_input.a.x, global2.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(global2.x, 42616u ^ u_input.a.x, 1357u, _wgslsmith_mod_u32(81018u, 30913u)) % vec4<u32>(32u)));
    var var_1 = ~u_input.a.zz;
    var_1 = (firstLeadingBit(_wgslsmith_clamp_vec2_u32(global2.yw >> (vec2<u32>(58522u, u_input.a.x) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 16082u), global2.xw << (vec2<u32>(1u, var_1.x) % vec2<u32>(32u)))) >> (global2.zz % vec2<u32>(32u))) << (vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.zy, global2.wx) ^ select(u_input.a.x, abs(4294967295u), false), ~_wgslsmith_div_u32(select(var_1.x, 2453u, global1.x), 4294967295u)) % vec2<u32>(32u));
    global1 = select(func_1(Struct_1(vec4<u32>(_wgslsmith_div_u32(46982u, var_1.x), ~63705u, 1546u, 37406u)), ~113708u), !vec4<bool>(var_0.x != _wgslsmith_mod_i32(-2147483647i, -2615i), true, true, any(global1.zzx)), global1.x);
    let var_2 = true;
    let var_3 = Struct_1(reverseBits(~(~(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x) | vec4<u32>(32530u, var_1.x, global2.x, u_input.a.x)))));
    var var_4 = vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(43872u, 20u)]), global1.xw, func_1(var_3, 33909u).ww), global1.yw)), global1.x, !var_2, true);
    var_1 = reverseBits((var_3.a.zw << (u_input.a.yx % vec2<u32>(32u))) | vec2<u32>(firstTrailingBit(~1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_3.a, var_3.a), u_input.a.x)));
    let var_5 = !vec3<bool>(!var_4.x, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, -118f, 960f, -1228f) + vec4<f32>(-974f, 148f, -1176f, 683f)))))));
}

