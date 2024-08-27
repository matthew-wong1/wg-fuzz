struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(48967u, 1u, 40054u, 15138u);

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(false, !global1.b.x, !(~(~global2.x) != firstLeadingBit(1u >> (global3.d % 32u))), true | (~_wgslsmith_dot_vec2_u32(vec2<u32>(59633u, 0u), vec2<u32>(global2.x, u_input.e.x)) < ~_wgslsmith_dot_vec2_u32(global2.xz, vec2<u32>(0u, 34394u))));
    global2 = vec4<u32>(~(~abs(0u)), ~firstTrailingBit(abs(~1u)), _wgslsmith_sub_u32(76562u << (~global2.x % 32u), _wgslsmith_mod_u32(57104u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.d, global3.d), ~vec2<u32>(1u, 8230u)))), (global3.d & _wgslsmith_dot_vec3_u32(u_input.e >> (vec3<u32>(u_input.c.x, 4294967295u, 1847u) % vec3<u32>(32u)), select(vec3<u32>(global2.x, u_input.b.x, global3.d), vec3<u32>(u_input.e.x, global2.x, 97047u), global3.a.wzz))) ^ abs(~(~global3.d)));
    var_0 = global3.a;
    global2 = vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 32340u, 90480u), vec3<u32>(global2.x, 1514u, 37383u)), _wgslsmith_clamp_vec3_u32(global2.wxz, vec3<u32>(4294967295u, u_input.e.x, global2.x), vec3<u32>(35003u, 1340u, global3.d))), ~min(global3.d, _wgslsmith_mult_u32(4202u, global3.d)), global2.x) | ~firstTrailingBit(vec4<u32>(countOneBits(7231u), _wgslsmith_add_u32(61060u, global2.x), _wgslsmith_mult_u32(4294967295u, global2.x), _wgslsmith_mult_u32(global3.d, 1u)));
    var var_1 = select(select(vec2<bool>(true, true), var_0.yz, true), global1.b.xx, var_0.x);
    return global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.a.x - 989f);
    let var_1 = vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global2.x, 21u)], 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1144f + _wgslsmith_f_op_f32(-arg_0.a.x)))), global3.c.a.x);
    var_0 = -622f;
    var var_2 = var_1.zy;
    let var_3 = global1.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * global1.a.x), 1f)))));
    return func_3() & 0u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    global0 = array<f32, 21>();
    var var_0 = Struct_2(arg_0.a, arg_0.b, global3.b, ~(~arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u >> (firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(global3.d, arg_0.d), func_2(Struct_1(vec2<f32>(1264f, -1000f), var_0.a.zzy, 2131i), vec2<i32>(-2829i, u_input.d.x), vec3<bool>(global3.c.b.x, true, true)))) % 32u), 21u)] + _wgslsmith_f_op_f32(max(-319f, _wgslsmith_f_op_f32(max(403f, arg_2.a.x)))));
    var_1 = _wgslsmith_f_op_f32(ceil(1731f));
    let var_2 = true || arg_2.b.x;
    return 39126u & _wgslsmith_sub_u32(103595u, countOneBits(arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(10727u, func_1(Struct_2(global3.a, global3.c, Struct_1(vec2<f32>(global3.b.a.x, -578f), global3.b.b, -10737i), 0u), firstLeadingBit(u_input.e), Struct_1(vec2<f32>(global3.b.a.x, -700f), vec3<bool>(global3.a.x, global3.b.b.x, global1.b.x), global3.c.c)))), _wgslsmith_div_vec2_u32(global2.ww, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, abs(global2.x)), abs(global2.xz))), min(_wgslsmith_mult_vec2_u32(global2.xy, ~(~global2.xz)), global2.ww));
    var var_1 = Struct_2(!global3.a, global3.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * global1.a))), vec3<bool>(any(select(vec4<bool>(global3.a.x, true, global3.b.b.x, true), vec4<bool>(true, false, global1.b.x, global3.a.x), vec4<bool>(false, global3.c.b.x, false, global3.a.x))), true, true), ~(-22251i)), abs(~1u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.c.a.x)), -138f)), global1.a.x, _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(global3.c.a.x * _wgslsmith_f_op_f32(f32(-1f) * -570f)), !(!var_1.a.x && !global3.c.b.x))));
    var var_3 = Struct_1(var_2.xx, select(var_1.c.b, global1.b, !select(var_1.c.b, vec3<bool>(false, true, true), global1.b)), global3.b.c);
    global2 = ~(~vec4<u32>(var_0.x, u_input.c.x, var_0.x, global2.x >> ((0u & var_1.d) % 32u)));
    global3 = Struct_2(!var_1.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(695f, -1005f), vec2<f32>(-572f, -727f), true))))), var_3.b, u_input.d.x), global3.c, func_2(global3.b, ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.b.c, var_1.c.c, 32813i), vec4<i32>(global3.c.c, u_input.d.x, -24942i, -18332i)), 2147483647i), var_3.b));
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, abs(_wgslsmith_mod_u32(global2.x, ~global2.x))), _wgslsmith_mult_u32(u_input.a, var_0.x & _wgslsmith_sub_u32(var_0.x, 7950u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(784f, 479f, -842f)), global3.b.a, _wgslsmith_dot_vec3_i32(-u_input.d, u_input.d), global2.wxx, global3.c.a.x);
}

