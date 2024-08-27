struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(0i, -25411i, -1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> bool {
    var var_0 = Struct_1(max(237u, firstTrailingBit(~u_input.a.x)) != 0u, !vec2<bool>(true, !arg_1.x));
    global0 = Struct_1(var_0.b.x, vec2<bool>(!(_wgslsmith_f_op_f32(-698f + -1498f) < _wgslsmith_f_op_f32(trunc(1000f))), arg_0.a));
    global0 = arg_0;
    return arg_0.a;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(select(true, true, !global0.a), !(!vec2<bool>(false & global0.b.x, true)));
    var var_0 = Struct_1(true, select(select(global0.b, !(!global0.b), select(global0.b, vec2<bool>(global0.a, global0.a), !global0.b)), global0.b, select(global0.b, !(!global0.b), any(!vec3<bool>(global0.b.x, true, global0.b.x)))));
    global1 = array<vec3<i32>, 1>();
    var_0 = Struct_1(global0.a, !var_0.b);
    let var_1 = !(!vec2<bool>(all(var_0.b), all(vec3<bool>(false, var_0.a, false))));
    return Struct_1(func_3(Struct_1(!(!global0.a), !global0.b), !var_0.b, ~(-1i), _wgslsmith_clamp_i32(0i, -12612i, ~(-202i))), var_0.b);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = max(reverseBits(vec2<i32>(1i, 1i)) >> (vec2<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 47282u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 9126u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 4480u, u_input.a.x))) % vec2<u32>(32u)), -abs(vec2<i32>(i32(-1i) * -27245i, i32(-1i) * -20705i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(586f, -517f, 647f, 1000f), vec4<f32>(770f, 1000f, 1000f, 504f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, -630f, 658f, -1066f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(500f, -427f, 301f, 1230f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, -2137f, -333f, 1657f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-615f, 408f, 135f, -961f), vec4<f32>(-951f, -621f, 1520f, -653f))))), global0.a)))));
    global1 = array<vec3<i32>, 1>();
    var var_2 = false;
    let var_3 = func_2();
    return vec4<bool>(select(false, true, all(select(select(vec4<bool>(false, true, false, global0.b.x), vec4<bool>(arg_0.b.x, false, true, var_3.b.x), vec4<bool>(global0.b.x, arg_0.b.x, false, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, false, arg_0.a, var_3.b.x)))), arg_0.a, any(vec3<bool>(true, any(vec4<bool>(true, global0.a, global0.b.x, var_3.a)), ~(-52131i) == ~var_0.x)), false);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(select(!vec4<bool>(all(vec3<bool>(false, true, arg_0.b.x)), select(arg_0.a, global0.b.x, true), !arg_0.b.x, global0.a), func_4(func_2()), func_4(arg_0)), !(!vec4<bool>(any(vec4<bool>(true, false, global0.a, true)), global0.a, true, true)), select(vec4<bool>(arg_0.b.x && arg_0.a, true, false, true), vec4<bool>(func_4(Struct_1(true, vec2<bool>(arg_0.a, global0.a))).x, func_4(Struct_1(global0.a, arg_0.b)).x | !arg_0.a, global0.b.x, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), abs(u_input.a.xz)) > ~(~75348u)));
    global0 = Struct_1(!all(var_0.wzz), func_4(arg_0).yx);
    var var_1 = Struct_1(true, vec2<bool>(all(vec4<bool>(u_input.a.x != u_input.a.x, func_2().a, false, true)), true));
    var_1 = func_2();
    let var_2 = select(124i, 0i, false);
    return vec4<bool>(any(!select(select(global0.b, vec2<bool>(true, true), true), !vec2<bool>(var_1.a, var_0.x), select(var_1.b, vec2<bool>(arg_0.b.x, true), arg_0.b.x))), (var_2 != 1i) && var_0.x, any(select(vec2<bool>(any(vec3<bool>(false, arg_0.b.x, true)), var_0.x), vec2<bool>(true, var_1.b.x), global0.b.x)), any(!vec4<bool>(arg_0.b.x & var_0.x, true, false, u_input.a.x != u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~min(reverseBits(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) & 10511u) ^ 1u;
    global0 = Struct_1(global0.b.x, vec2<bool>(!(!all(vec2<bool>(global0.b.x, true))), true));
    var var_1 = Struct_1(!global0.b.x, global0.b);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -665f);
    global0 = Struct_1(true, vec2<bool>(any(vec3<bool>(var_1.a, var_1.a, false)) & true, false));
    let var_3 = _wgslsmith_f_op_f32(379f - _wgslsmith_f_op_f32(-438f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(621f, -470f)))) + -1475f)));
    let var_4 = !select(func_1(Struct_1(all(var_1.b), vec2<bool>(true, var_1.b.x))), func_1(Struct_1(global0.a && true, vec2<bool>(false, false))), !(!(!vec4<bool>(false, global0.b.x, true, true))));
    var var_5 = !(1155f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-124f, var_3)), var_3)), -342f)));
    let var_6 = _wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 1u)], countOneBits(-(vec3<i32>(-1i) * -vec3<i32>(-3435i, -12100i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(~u_input.a, firstLeadingBit(~u_input.a)), global1[_wgslsmith_index_u32(1891u, 1u)] << (firstLeadingBit(~countOneBits(vec3<u32>(u_input.a.x, 0u, 4294967295u))) % vec3<u32>(32u)));
}

