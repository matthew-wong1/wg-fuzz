struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<bool>(true, false), 0i), Struct_1(vec2<bool>(true, true), 20889i), Struct_1(vec2<bool>(false, true), 17499i), Struct_1(vec2<bool>(false, false), 19879i), Struct_1(vec2<bool>(true, false), 40127i), Struct_1(vec2<bool>(false, false), i32(-2147483648)), Struct_1(vec2<bool>(false, true), -38774i), Struct_1(vec2<bool>(true, true), i32(-2147483648)), Struct_1(vec2<bool>(true, true), -51867i), Struct_1(vec2<bool>(true, false), 32074i), Struct_1(vec2<bool>(true, false), -5857i));

var<private> global1: vec2<f32> = vec2<f32>(3510f, 228f);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), 0i), Struct_1(vec2<bool>(false, true), 40907i), Struct_1(vec2<bool>(true, true), 2147483647i), 1u, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 11>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-845f, -1960f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-298f, -717f)))), 924f)));
    let var_1 = arg_0;
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~u_input.b.x), reverseBits(~u_input.a.xy)))), 11u)];
    var var_3 = !(global1.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + 1660f)));
    return 64228u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(34608u, ~(func_3(max(-14746i, 1i)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(19642u, arg_0.x), ~arg_0) % 32u)));
    var var_1 = !vec2<bool>(any(!select(vec3<bool>(true, global2.b.a.x, global2.b.a.x), vec3<bool>(false, false, false), true)), min(var_0 & 4294967295u, arg_0.x) > _wgslsmith_mult_u32(abs(arg_0.x), 4294967295u | u_input.a.x));
    return global0[_wgslsmith_index_u32(~4693u, 11u)];
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 11>();
    let var_0 = func_2(arg_0.wy);
    let var_1 = var_0.a.x;
    global2 = Struct_2(global0[_wgslsmith_index_u32(27090u, 11u)], Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(global2.c.b), global2.c.b, var_0.b), max(select(vec3<i32>(global2.c.b, var_0.b, 44194i), vec3<i32>(var_0.b, 0i, -19301i), vec3<bool>(true, true, false)), abs(vec3<i32>(0i, -20706i, global2.c.b))))), global2.a, 1u, !var_1);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(-2205f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-869f)))))), -488f);
    return _wgslsmith_mult_u32(u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global0[_wgslsmith_index_u32(global2.d, 11u)], global2.b, Struct_1(global2.a.a, -1i), 0u << ((u_input.a.x << (0u % 32u)) % 32u), !((func_1(vec4<u32>(1u, u_input.b.x, 17633u, global2.d)) ^ ~global2.d) == ~(~28817u)));
    var var_0 = vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(~(~_wgslsmith_mult_u32(35344u, 47522u)), min(u_input.a.x, _wgslsmith_mult_u32(2543u, firstTrailingBit(global2.d)))), global2.d, func_1(abs(abs(abs(vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x))))));
    let var_1 = select(!vec4<bool>((global2.c.b != global2.c.b) != all(vec4<bool>(false, false, global2.c.a.x, global2.b.a.x)), true, true, !global2.a.a.x), select(!vec4<bool>(global2.c.a.x, true, true, true), !select(select(vec4<bool>(true, global2.b.a.x, true, global2.c.a.x), vec4<bool>(global2.e, false, false, global2.b.a.x), vec4<bool>(false, global2.b.a.x, global2.e, global2.e)), !vec4<bool>(global2.c.a.x, false, true, false), vec4<bool>(global2.e, global2.c.a.x, global2.b.a.x, global2.c.a.x)), select(!vec4<bool>(global2.e, false, false, false), select(select(vec4<bool>(global2.c.a.x, true, true, true), vec4<bool>(global2.b.a.x, global2.e, global2.c.a.x, false), vec4<bool>(true, global2.a.a.x, true, false)), select(vec4<bool>(global2.e, global2.e, true, global2.c.a.x), vec4<bool>(false, false, global2.e, true), global2.a.a.x), vec4<bool>(true, true, true, true)), vec4<bool>(false, global2.b.a.x, global2.c.a.x, !global2.a.a.x))), any(!select(vec3<bool>(true, true, true), vec3<bool>(global2.b.a.x, global2.c.a.x, global2.a.a.x), select(vec3<bool>(true, global2.b.a.x, true), vec3<bool>(global2.a.a.x, false, true), vec3<bool>(global2.c.a.x, true, global2.a.a.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1723f, 925f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, 546f) - vec2<f32>(global1.x, global1.x))))))));
    var_0 = vec4<u32>(global2.d << (~(u_input.a.x >> (func_3(35195i) % 32u)) % 32u), u_input.b.x, 42420u, 4294967295u);
    var_0 = abs(firstLeadingBit(~firstLeadingBit(vec4<u32>(var_0.x, 11813u, u_input.b.x, 4294967295u))));
    let var_2 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(53050u, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(f32(-1f) * -1043f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f + 305f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(1257f, -478f)))), select(vec4<u32>(var_0.x, u_input.b.x, 1u, firstTrailingBit(u_input.a.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(14955u, 46014u, 0u, global2.d) ^ vec4<u32>(global2.d, u_input.b.x, global2.d, u_input.b.x), vec4<u32>(global2.d, u_input.b.x, 0u, u_input.a.x)) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b.x, global2.d, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 59727u, global2.d), vec4<u32>(0u, 45636u, 4294967295u, u_input.b.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(91214u, global2.d, 0u, 40188u), ~vec4<u32>(33874u, 0u, 14464u, 4294967295u)), var_1), true));
}

