struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), 566f);

var<private> global1: array<i32, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global0 = arg_2;
    let var_0 = arg_2.b;
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    let var_1 = Struct_1(vec2<bool>(arg_0.a.x, true), arg_2.b);
    return 1204f;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> bool {
    let var_0 = vec3<i32>(u_input.a, _wgslsmith_mult_i32(abs(abs(global1[_wgslsmith_index_u32(~31996u, 26u)])), 1i), 1i);
    let var_1 = any(vec3<bool>(false, all(arg_1), global0.a.x));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(852f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, global0.b), -474f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(arg_1.x, true), arg_0.x), vec2<bool>(true, true), Struct_1(vec2<bool>(arg_1.x, true), -1778f)))))) < _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(floor(-1067f)));
    var var_3 = Struct_1(arg_1.zx, arg_0.x);
    return any(vec4<bool>(arg_1.x, !all(arg_1), all(!select(vec4<bool>(global0.a.x, true, var_1, global0.a.x), vec4<bool>(true, true, var_3.a.x, var_1), vec4<bool>(true, var_1, false, global0.a.x))), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = vec4<bool>(any(!vec3<bool>(true, global0.a.x != global0.a.x, global0.a.x)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) * 112f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global0.a, -1536f), vec2<bool>(false, global0.a.x), Struct_1(global0.a, arg_1.x))) + arg_1.x)) < arg_1.x, global0.a.x);
    global0 = Struct_1(global0.a, global0.b);
    var var_1 = Struct_1(!select(select(var_0.wx, select(vec2<bool>(false, true), vec2<bool>(var_0.x, false), global0.a.x), !var_0.yz), select(vec2<bool>(true, global0.a.x), var_0.yy, func_3(vec4<f32>(global0.b, 1323f, arg_1.x, -479f), vec3<bool>(true, var_0.x, global0.a.x))), any(!vec3<bool>(global0.a.x, true, var_0.x))), _wgslsmith_f_op_f32(func_2(Struct_1(select(!var_0.wy, vec2<bool>(true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -930f)), !(!global0.a), Struct_1(select(!global0.a, !vec2<bool>(false, global0.a.x), global0.a.x), -629f))));
    let var_2 = select(!vec4<bool>(false, any(select(var_0, var_0, var_0)), select(arg_3, 11672u, false) < ~4294967295u, true), !vec4<bool>(any(vec4<bool>(false, true, false, true)), !all(vec4<bool>(true, true, false, global0.a.x)), false, true), select(var_0, var_0, var_0));
    var var_3 = arg_2.zy;
    return 4294967295u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b, global0.b, global0.b))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-global0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.b, global0.b, global0.b))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b, global0.b, global0.b), vec3<f32>(444f, 927f, global0.b)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-452f, 847f, arg_2.b))))) + vec3<f32>(arg_2.b, arg_2.b, 1400f)));
    global0 = arg_2;
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 26u)];
    var var_2 = arg_2;
    var_2 = arg_2;
    return ~_wgslsmith_sub_i32(0i, ~_wgslsmith_mod_i32(u_input.a & global1[_wgslsmith_index_u32(14378u, 26u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(29108u, 26u)], u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_4(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8996u, 25307u, 4294967295u), vec3<u32>(0u, 49386u, 4294967295u)), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u)), func_1(vec2<i32>(-13254i, -28744i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1702f, global0.b, global0.b) * vec3<f32>(global0.b, global0.b, global0.b)), vec3<i32>(-2147483647i, 29978i, global1[_wgslsmith_index_u32(27536u, 26u)]), ~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(47765u, 39365u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~vec2<u32>(1u, abs(23829u)), Struct_1(vec2<bool>(global0.a.x, any(vec3<bool>(true, global0.a.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b)) + global0.b)));
    let var_1 = Struct_1(vec2<bool>(false, global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2199f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_f_op_f32(270f + global0.b))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) * global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b, var_1.b)) + _wgslsmith_f_op_f32(-710f * var_1.b)))))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(min(-342f, var_1.b)));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(~select(u_input.a, var_0, false), _wgslsmith_mult_i32(-var_0, 1618i << (1u % 32u))), firstTrailingBit(max(vec2<i32>(var_0, -2147483647i), vec2<i32>(-10620i, -6031i)) & (vec2<i32>(-32105i, global1[_wgslsmith_index_u32(0u, 26u)]) & vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], var_0)))), vec3<i32>(_wgslsmith_clamp_i32(var_0, var_0, _wgslsmith_clamp_i32(2147483647i, var_0, -16005i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(29073i, global1[_wgslsmith_index_u32(1u, 26u)]), vec2<i32>(1i, 1i)), _wgslsmith_clamp_i32(u_input.a, global1[_wgslsmith_index_u32(reverseBits(4294967295u), 26u)], global1[_wgslsmith_index_u32(69717u, 26u)] & -1i)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(67137u, 1u, 1918u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(48734u, 4178u, 1u)), ~vec3<u32>(23150u, 4294967295u, 1u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec4<u32>(~reverseBits(0u), firstTrailingBit(1u) >> (1u % 32u), 1u, ~4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.b, var_3.b, var_3.b), vec4<f32>(637f, global0.b, var_1.b, -637f))) + vec4<f32>(_wgslsmith_div_f32(global0.b, var_3.b), _wgslsmith_f_op_f32(-2008f * global0.b), var_1.b, 540f))));
}

