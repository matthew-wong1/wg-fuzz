struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(22532u, 33308u), vec3<f32>(-594f, 948f, -404f));

var<private> global2: vec4<i32> = vec4<i32>(1i, -14128i, -4370i, 2147483647i);

var<private> global3: Struct_1;

var<private> global4: vec2<f32> = vec2<f32>(-1000f, -370f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(true, global1.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4.x + 1151f), _wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(sign(global4.x))) - vec3<f32>(_wgslsmith_f_op_f32(abs(277f)), _wgslsmith_f_op_f32(global4.x - -323f), global1.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x - global4.x), _wgslsmith_f_op_f32(sign(367f)), global4.x), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.c.x)), global4.x, _wgslsmith_f_op_f32(-255f * 2130f)))));
    global0 = ~abs(vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 47046u), global1.b)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, var_0.b.x), firstLeadingBit(12362u)), ~_wgslsmith_mod_u32(56973u, 4294967295u), global1.b.x));
    global3 = Struct_1(u_input.d.x < ~global3.b.x, vec2<u32>(select(1u, var_0.b.x, true), 4294967295u) & ~min(vec2<u32>(var_0.b.x, 0u) << (vec2<u32>(3318u, global3.b.x) % vec2<u32>(32u)), vec2<u32>(global3.b.x, u_input.d.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c.x, global3.c.x, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -538f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(679f + var_0.c.x)))), _wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, global3.c.x, global1.c.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, -2018f, 2152f)))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(global3.c.zz - _wgslsmith_f_op_vec2_f32(-global1.c.yx));
    let var_2 = global1.c.yz;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -149f));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec2<u32> {
    global1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, _wgslsmith_add_u32(global3.b.x, global0.x)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global3.b) >> (firstLeadingBit(vec2<u32>(6240u, 0u)) % vec2<u32>(32u))) == global3.b.x, vec2<u32>(global1.b.x, _wgslsmith_sub_u32(17457u, _wgslsmith_sub_u32(global3.b.x, 1u)) | 0u), global1.c);
    global2 = u_input.b;
    let var_0 = vec4<f32>(2881f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 1f), global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c.x), arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(442f + 340f), _wgslsmith_f_op_f32(ceil(1131f)))))));
    var var_1 = Struct_1(true, ~((global3.b & vec2<u32>(global1.b.x, 4294967295u)) << (vec2<u32>(_wgslsmith_clamp_u32(50609u, 4294967295u, 103687u), _wgslsmith_add_u32(34968u, global0.x)) % vec2<u32>(32u))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_div_f32(665f, -1226f))), _wgslsmith_div_f32(global4.x, -444f)));
    var var_2 = Struct_1(false, vec2<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, var_1.b.x), vec2<u32>(1u, var_1.b.x)), _wgslsmith_sub_vec2_u32(select(u_input.d.zx, vec2<u32>(arg_0.x, var_1.b.x), true), ~vec2<u32>(arg_0.x, u_input.d.x)))), _wgslsmith_f_op_vec3_f32(trunc(var_1.c)));
    return ~abs(global3.b);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = u_input.b;
    return Struct_1(all(!select(select(vec4<bool>(false, global3.a, true, global1.a), vec4<bool>(global3.a, false, true, false), global1.a), vec4<bool>(false, true, global3.a, global3.a), false)), ~func_2(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-128f, global4.x) - _wgslsmith_f_op_f32(min(global3.c.x, 241f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-921f, global3.c.x, global3.c.x) - vec3<f32>(global3.c.x, global1.c.x, global3.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b;
    let var_0 = func_1(-1i);
    global3 = var_0;
    global0 = countOneBits(~vec4<u32>(reverseBits(~var_0.b.x), ~4294967295u >> ((global3.b.x | var_0.b.x) % 32u), _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, global3.b.x), global1.b.x), 4294967295u));
    let var_1 = _wgslsmith_sub_vec4_u32(abs(~u_input.c), select(reverseBits(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(11404u, 1u, 17007u, 70030u), u_input.c))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(50318u, 4294967295u, 32417u, global0.x), reverseBits(vec4<u32>(global3.b.x, 25477u, var_0.b.x, 1u))), vec4<u32>(max(1u, 0u), 1u, ~global3.b.x, 1u)), any(vec3<bool>(func_1(-2147483647i).a, false, true))));
    global0 = vec4<u32>(~3494u, global3.b.x, 1u >> (~global1.b.x % 32u), ~44379u);
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(25410u), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_div_u32(var_0.b.x, 14322u), u_input.c.x, ~0u, u_input.d.x)), vec4<u32>(~0u, firstLeadingBit(54282u), _wgslsmith_mod_u32(~var_0.b.x, 25085u & global1.b.x), global3.b.x ^ ~46385u)), vec3<f32>(global4.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-272f)), _wgslsmith_f_op_f32(var_0.c.x - 707f))), var_0.c.x)), global3.c.x));
}

