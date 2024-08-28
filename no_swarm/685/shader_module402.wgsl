struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = arg_0;
    var var_2 = !all(!select(select(vec4<bool>(true, true, var_1.d.x, false), vec4<bool>(true, true, arg_0.d.x, arg_0.d.x), var_1.d.x), select(vec4<bool>(var_1.d.x, arg_0.d.x, arg_0.d.x, false), vec4<bool>(true, true, true, arg_0.d.x), vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x)), !vec4<bool>(true, true, var_1.d.x, false)));
    var var_3 = _wgslsmith_clamp_i32(~1i, max(arg_0.a.x, -6389i), 1i);
    var_3 = arg_0.a.x;
    return false;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = vec3<bool>(arg_2.x, -351f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(203f - 359f))))), arg_2.x);
    var var_1 = true;
    var var_2 = !arg_2.x;
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.c, ~(~abs(1u)), arg_1.c), ~81885u);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = ~(-vec2<i32>(max(arg_0.a.x, arg_0.a.x), -arg_0.a.x));
    var var_1 = Struct_1(~(arg_0.a ^ -vec4<i32>(arg_0.a.x, var_0.x, -28518i, -1i)), arg_0.b, u_input.c, vec3<bool>(true, true, true));
    var_0 = -vec2<i32>(min(var_0.x, -13401i), -23476i);
    let var_2 = func_4(var_0.x, arg_0, vec3<bool>(!func_3(Struct_1(var_1.a, vec2<u32>(arg_0.b.x, u_input.b), arg_0.b.x, vec3<bool>(true, false, false))), true, arg_0.d.x));
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-873f - -511f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) - _wgslsmith_f_op_f32(sign(264f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -755f), -215f, any(vec3<bool>(arg_0.d.x, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-890f)) - 1f)), -1019f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<i32>(-5895i, u_input.a, u_input.e.x, 6504i), vec2<u32>(70296u, u_input.b), 0u, vec3<bool>(false, true, true)))))), vec4<f32>(-339f, 509f, _wgslsmith_f_op_f32(-1248f + -1025f), _wgslsmith_f_op_f32(f32(-1f) * -285f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1721f, _wgslsmith_f_op_f32(sign(1697f)), _wgslsmith_f_op_f32(-132f * -770f), _wgslsmith_f_op_f32(f32(-1f) * -215f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(1203f * 1121f)))));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(38306u, ~u_input.c, select(abs(u_input.c), _wgslsmith_sub_u32(1u, u_input.c), true) & 1u), 4u)];
    var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 75516u, 4294967295u), vec3<u32>(u_input.c, var_2.b.x, 83513u)), var_2.c ^ u_input.b, all(vec3<bool>(false, var_2.d.x, false))), reverseBits(u_input.c))), 4u)];
    return Struct_1(vec4<i32>(-31071i, u_input.a, min(-u_input.e.x, 22045i), u_input.e.x), var_2.b, 8350u, !var_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = countOneBits(u_input.e);
    let var_1 = firstTrailingBit(arg_2.c);
    var var_2 = Struct_1(vec4<i32>(-14011i, select(3996i, 26891i << (func_4(arg_0.a.x, arg_2, vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)) % 32u), true), -_wgslsmith_sub_i32(arg_1 ^ arg_2.a.x, ~u_input.d.x), ~1i), countOneBits(~(~arg_2.b | arg_0.b)), ~arg_3.x, arg_0.d);
    let var_3 = arg_2;
    let var_4 = arg_3.x;
    return ~firstTrailingBit(~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(min(79806u, 4294967295u), ~(u_input.b & 4294967295u) ^ func_5(func_1(), abs(u_input.e.x), global0[_wgslsmith_index_u32(4294967295u, 4u)], select(vec4<u32>(4671u, 0u, u_input.c, 62019u), vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.b), vec4<bool>(true, false, false, true)))), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, u_input.b, 0u)), select(vec3<u32>(u_input.c, 4294967295u, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 24017u), vec3<u32>(u_input.b, u_input.c, 62729u)), func_1().d)));
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(782f, -498f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-692f, 795f, 1902f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(198f + -1032f))) * _wgslsmith_f_op_f32(select(799f, var_1.x, u_input.d.x > u_input.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, any(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(982f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.zz), var_1.zy)) + _wgslsmith_f_op_vec2_f32(select(var_1.xz, _wgslsmith_f_op_vec2_f32(ceil(var_1.yx)), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xx * var_1.yy)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 144f) - _wgslsmith_f_op_f32(-var_1.x))), var_1.x);
}

