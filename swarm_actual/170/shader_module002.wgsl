struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(59517u, 1u), -995f, 14097i);

var<private> global2: vec4<f32> = vec4<f32>(-307f, 1090f, 1642f, 1263f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    let var_0 = (select(~firstLeadingBit(vec3<i32>(u_input.e, arg_2, u_input.e)), firstLeadingBit(vec3<i32>(global1.c, 1i, -22012i) >> (vec3<u32>(u_input.a, 0u, 39614u) % vec3<u32>(32u))), vec3<bool>(true, true, true)) | ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, arg_2, u_input.c.x), vec3<i32>(arg_2, 2147483647i, u_input.e)))) ^ -_wgslsmith_sub_vec3_i32(vec3<i32>(~(-27035i), i32(-1i) * -2147483647i, ~1i), vec3<i32>(arg_2, u_input.b, 1i) ^ (vec3<i32>(global1.c, u_input.e, u_input.b) << (vec3<u32>(global1.a.x, u_input.d.x, global1.a.x) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-876f)), 1000f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1906f)) - _wgslsmith_f_op_f32(step(-649f, global2.x))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * global1.b));
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(1000f + global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(20373u, vec2<bool>(true, select(true, true, false)), ~10789i ^ ~global1.c)) * 641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-597f - -372f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global2.x, -1863f)), _wgslsmith_f_op_f32(ceil(-1199f)))) * _wgslsmith_f_op_f32(-1000f * 967f)))));
    var var_0 = select(!vec3<bool>(select(all(vec4<bool>(false, false, true, true)), 1593f > global2.x, false), false, all(vec2<bool>(true, true))), vec3<bool>((global1.a.x >> (u_input.d.x % 32u)) >= firstTrailingBit(~59710u), !all(vec4<bool>(false, false, true, false)), !any(vec2<bool>(true, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), !all(vec2<bool>(true, true)))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 575f, global2.x, global1.b)) + vec4<f32>(global2.x, -779f, -934f, global1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, 236f, global1.b)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, -602f, global2.x)))))) - vec4<f32>(546f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.b, 1137f)), global1.b), global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -969f))) + _wgslsmith_f_op_f32(select(970f, -2085f, false))), 609f));
    var var_1 = arg_0;
    var_0 = select(select(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, true), arg_0.a >= -2147483647i), !(!vec3<bool>(var_0.x, false, var_0.x)), !select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, true), vec3<bool>(false, var_0.x, false)), !vec3<bool>(false, var_0.x, true), u_input.a < 1u)), vec3<bool>(all(!(!vec3<bool>(var_0.x, true, true))), !(_wgslsmith_add_u32(global1.a.x, 19426u) == u_input.a), var_0.x), true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_f_op_f32(round(global1.b))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_1(~(~global1.a), _wgslsmith_f_op_f32(global2.x * -1822f), 4965i);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, global2.x, 1492f, global1.b) + _wgslsmith_f_op_vec4_f32(func_2(Struct_2(global1.c)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, global2.x, global1.b, global1.b)))) - vec4<f32>(global2.x, global2.x, -1088f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b, global1.b)))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global1.a.x), 9u)];
    return Struct_3(~global1.a, ~max(_wgslsmith_clamp_i32(var_0.c, 1i, 1i), _wgslsmith_mult_i32(countOneBits(var_0.c), _wgslsmith_add_i32(-1i, u_input.c.x))), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1.a, firstTrailingBit(-u_input.e), _wgslsmith_f_op_f32(max(global2.x, global1.b)));
    var var_1 = Struct_3(max(vec2<u32>(global1.a.x, _wgslsmith_add_u32(35376u, u_input.a)) | u_input.d.ww, vec2<u32>(1u, ~global1.a.x)), firstTrailingBit(0i), var_0.c);
    var_1 = func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_div_i32(12024i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-37935i, 1i, var_0.b, var_0.b), vec4<i32>(-2147483647i, u_input.c.x, -16152i, 1i)), ~(-1i)), countOneBits(min(vec4<i32>(17503i, var_1.b, var_1.b, var_0.b), vec4<i32>(global1.c, -5636i, var_1.b, var_0.b)))) & var_1.b, 4776u);
    let var_2 = vec4<i32>(935i, ~0i, ~1i, global1.c);
    var var_3 = vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(u_input.a, u_input.a) ^ (u_input.a | var_1.a.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), u_input.b))));
    let var_4 = var_2;
    var_0 = func_1(~(reverseBits(_wgslsmith_dot_vec2_i32(var_4.xx, vec2<i32>(u_input.b, -38674i))) >> (firstLeadingBit(var_1.a.x) % 32u)), abs(var_1.a.x) << (~var_0.a.x % 32u));
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.b, global1.b, any(vec3<bool>(true, true, false)))), -592f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global1.b)), vec3<i32>(-1i) * -var_4.xzz, select(u_input.d.x, _wgslsmith_sub_u32(59076u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), ~global1.a)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false), any(vec4<bool>(true, true, true, false))))));
}

