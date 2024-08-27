struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-495f, 1453f, 1322f);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    global2 = array<Struct_1, 16>();
    var var_0 = ~(~select(vec2<i32>(u_input.b.x << (u_input.c % 32u), 2502i), vec2<i32>(arg_0.x, u_input.b.x) ^ countOneBits(arg_0.zx), !vec2<bool>(arg_1, true)));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~(u_input.a.x & 0u), 16u)], u_input.c, false);
    global2 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1598f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1.x, 936f)))))))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = vec2<u32>(u_input.c, u_input.a.x);
    global1 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global1.x), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), true, 743f, global1.zxy))) * 656f));
    var var_1 = u_input.a.x;
    global0 = vec3<f32>(106f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-18673i, u_input.b.x, u_input.b.x, -52005i), true, 1166f, vec3<f32>(-1544f, global1.x, global1.x))), -554f), global0.x), 590f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(796f)) + _wgslsmith_f_op_f32(-2600f - 1000f))))));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~arg_0.x, 16u)], _wgslsmith_dot_vec2_u32(~countOneBits(var_0), u_input.a.xx), false);
    return global0.x;
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-202f, arg_0.x, true)))))), -2390f, _wgslsmith_f_op_f32(1f * -427f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, arg_0.x), _wgslsmith_f_op_f32(1309f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_f_op_f32(ceil(194f)))))));
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(1u, u_input.c, 4294967295u)) ^ u_input.a.x, 16u)], _wgslsmith_add_u32(reverseBits(~44315u), u_input.a.x) & ~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + global0.x)) > global1.x);
    let var_1 = !select(vec4<bool>(var_0.c, true, false, false), !(!vec4<bool>(var_0.c, var_0.c, true, false)), true);
    let var_2 = Struct_2(Struct_1(~min(u_input.a.zy, vec2<u32>(var_0.a.a.x, 0u) ^ vec2<u32>(1823u, var_0.a.a.x))), var_0.b & 4294967295u, var_1.x);
    var var_3 = !var_0.c;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))))) + -359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1526f + arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + 325f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_0.x)), -468f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xz)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -578f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1311f, 2239f))))));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.xzy - global1.xyy)))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(~3626u << (u_input.a.x % 32u), u_input.c, u_input.c >> (_wgslsmith_sub_u32(1u, 0u) % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(trunc(var_1.x)));
    let var_2 = max(_wgslsmith_add_vec3_u32(u_input.a, firstLeadingBit(u_input.a << (u_input.a % vec3<u32>(32u)))), vec3<u32>(0u, u_input.c, 44118u) << (~(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(35921u, u_input.a.x, 0u)) << (vec3<u32>(u_input.a.x, 43239u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - global0.x))) >= _wgslsmith_div_f32(722f, 349f);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(-u_input.b.x, 2147483647i, -2147483647i) | 19580i, -min(u_input.b.x, min(-2147483647i, u_input.b.x))), reverseBits(~var_2.zy), global1.x, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 634f)))), 215f), vec4<u32>(var_4.x, _wgslsmith_add_u32((1u ^ u_input.c) | ~35235u, _wgslsmith_add_u32(~58069u, 18515u << (var_4.x % 32u))), (~1u | _wgslsmith_clamp_u32(4294967295u, var_4.x, var_2.x)) >> (u_input.a.x % 32u), 1u));
}

