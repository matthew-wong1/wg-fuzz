struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(63415u, 1u, 7533u, 4294967295u, 58866u, 92919u, 18946u, 1u, 1u, 4294967295u, 29133u, 0u, 12671u, 0u, 1u, 20614u, 90830u, 56779u, 1u, 74987u, 8115u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> u32 {
    global0 = array<u32, 21>();
    var var_0 = Struct_2(arg_2.a, arg_2.b);
    var var_1 = arg_1 && arg_1;
    var_0 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(~arg_2.a.a, ~(~vec4<u32>(4294967295u, 0u, arg_2.a.a.x, var_0.a.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b) + var_0.b));
    global0 = array<u32, 21>();
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = arg_2;
    let var_1 = arg_2;
    let var_2 = firstTrailingBit(var_0.a.a.xyy);
    var var_3 = abs(var_2.zz) & (var_2.zz | vec2<u32>(~abs(arg_1.a.x), _wgslsmith_mult_u32(func_3(Struct_1(vec4<u32>(1u, 3814u, 4294967295u, 0u)), arg_3.x, var_1, 1u), _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(9686u, global0[_wgslsmith_index_u32(1u, 21u)], 123508u, 19498u)))));
    let var_4 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(~var_2.x, abs(var_2.x)), arg_2.a.a.zx));
    return arg_0.wyy;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = max(_wgslsmith_add_u32(_wgslsmith_add_u32(10983u >> (global0[_wgslsmith_index_u32(7835u, 21u)] % 32u), func_3(Struct_1(vec4<u32>(1u, 55938u, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)])), !arg_1.x, Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40131u, 21u)], 21u)], 38330u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2448u, 21u)], 21u)], 35636u)), vec2<f32>(-1000f, 257f)), 0u >> (0u % 32u))), _wgslsmith_add_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34432u, 21u)], 21u)]), global0[_wgslsmith_index_u32(1524u, 21u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~max(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)] ^ ~global0[_wgslsmith_index_u32(1u, 21u)], ~4294967295u), 21u)], 21u)], 21u)]);
    var var_1 = ~(~(-u_input.a));
    var_1 = u_input.a;
    global0 = array<u32, 21>();
    var_1 = 843i;
    return Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~_wgslsmith_div_u32(4294967295u, 105403u), var_0), 21u)], min(1u, _wgslsmith_div_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 21u)], 21u)], 21u)], 21u)]), 964u)), ~(~abs(91493u)), select(_wgslsmith_sub_u32(4294967295u, var_0), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(56703u, 21u)], var_0), 21u)], true) | ~_wgslsmith_clamp_u32(var_0, global0[_wgslsmith_index_u32(var_0, 21u)], 38977u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = Struct_2(func_4(select(select(func_2(vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(1u, 21038u, 0u, 11532u)), Struct_2(Struct_1(arg_0), vec2<f32>(153f, 584f)), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false))), true), vec2<bool>(false, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1194f, -1112f), vec2<f32>(-596f, -805f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(249f, -199f) * vec2<f32>(-1408f, 386f)))))));
    let var_1 = 1000f;
    var var_2 = Struct_1(var_0.a.a >> (min(countOneBits(_wgslsmith_div_vec4_u32(var_0.a.a, vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(1u, 21u)], arg_0.x))), select(arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(102167u, global0[_wgslsmith_index_u32(0u, 21u)], 4294967295u, 7200u), vec4<u32>(4294967295u, arg_0.x, arg_1, var_0.a.a.x)), true)) % vec4<u32>(32u)));
    var_0 = Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -822f))), -706f));
    let var_3 = firstLeadingBit(~0i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1006f)))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec2<i32> {
    global0 = array<u32, 21>();
    var var_0 = vec4<bool>(arg_1, true, arg_2.x > 1454f, !(_wgslsmith_f_op_f32(arg_2.x + -235f) < arg_2.x));
    var var_1 = ~(~(~min(u_input.a, -1i)) >> (reverseBits(global0[_wgslsmith_index_u32(4294967295u, 21u)]) % 32u));
    global0 = array<u32, 21>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), -1153f, _wgslsmith_f_op_f32(step(578f, -1154f))))), false));
    return -(~(-vec2<i32>(1i, -46750i) | countOneBits(select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(1i, u_input.a), var_0.zw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-179f, _wgslsmith_f_op_f32(trunc(716f)))))) == -1489f, (u_input.a <= u_input.a) == !(all(vec4<bool>(true, true, true, true)) && all(vec3<bool>(false, false, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(19044u, 63763u, 24962u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 4294967295u) % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(1u, 21u)]))), 554f, -552f), vec4<u32>(~(~4294967295u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)] & 48710u, 21u)]), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(877u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60408u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71523u, 21u)], 21u)], 21u)], 4294967295u)), vec4<u32>(1u, 4294967295u, 51133u, 4294967295u) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13355u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55544u, 21u)], 21u)], global0[_wgslsmith_index_u32(21472u, 21u)])), 21u)], _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 5866u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18334u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(15330u, 21u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u, 0u)), global0[_wgslsmith_index_u32(~630u, 21u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)] & global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4u, 21u)], 21u)], 21u)]));
    var var_1 = vec3<bool>(true, any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), !(!select(any(vec2<bool>(true, true)), true, true)));
    global0 = array<u32, 21>();
    var var_2 = global0[_wgslsmith_index_u32(func_3(Struct_1(firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(91908u, 21u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)]), vec4<u32>(11073u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], global0[_wgslsmith_index_u32(1u, 21u)])))), true, Struct_2(func_4(!vec3<bool>(true, var_1.x, false), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(-2131f - -362f)))), 1u), 21u)];
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1239f))), _wgslsmith_f_op_f32(step(417f, _wgslsmith_f_op_f32(abs(152f)))));
}

