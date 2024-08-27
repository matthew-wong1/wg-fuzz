struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(2180u, 0u, 91387u, 69858u);

var<private> global1: array<vec2<u32>, 25>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<f32>(358f, -569f), -672f), true, vec3<f32>(2652f, 423f, 122f), vec3<f32>(-641f, -288f, 155f), Struct_1(vec2<f32>(-790f, -1470f), 2425f)), Struct_2(Struct_1(vec2<f32>(-222f, 552f), -748f), false, vec3<f32>(349f, 232f, 1000f), vec3<f32>(-744f, 220f, 1072f), Struct_1(vec2<f32>(-1657f, 1117f), 682f)), Struct_2(Struct_1(vec2<f32>(-947f, 212f), -1045f), true, vec3<f32>(2336f, 256f, -884f), vec3<f32>(-408f, -1196f, -1715f), Struct_1(vec2<f32>(-109f, -881f), 1093f)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    global1 = array<vec2<u32>, 25>();
    global1 = array<vec2<u32>, 25>();
    var var_0 = select(vec2<i32>(u_input.a.x, ~u_input.a.x), select(countOneBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy)), select(~vec2<i32>(-2147483647i, u_input.a.x), max(u_input.a.yx, vec2<i32>(u_input.a.x, u_input.a.x)), global0.x == (1u & global0.x)), 70387u > countOneBits(global0.x)), vec2<bool>(false, true));
    var var_1 = select(vec3<bool>(!all(vec4<bool>(true, false, arg_0.b, false)) & true, true, !arg_0.b), vec3<bool>(true, true, arg_0.b), !(!vec3<bool>(arg_0.b, arg_0.b, all(vec4<bool>(true, arg_0.b, false, false)))));
    let var_2 = 4294967295u;
    return select(!var_1.yz, select(var_1.xx, var_1.yz, vec2<bool>(true, all(!vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)))), !all(vec3<bool>(false, false, true)));
}

fn func_2() -> u32 {
    var var_0 = ~1u & global0.x;
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-global2.b));
    let var_1 = all(vec2<bool>(all(select(vec2<bool>(true, false), func_3(global3[_wgslsmith_index_u32(global0.x, 3u)], Struct_1(global2.a, global2.a.x), Struct_1(vec2<f32>(global2.a.x, -772f), global2.b), vec4<f32>(global2.a.x, -959f, global2.b, global2.a.x)), all(vec3<bool>(false, true, false)))), all(vec4<bool>(true, true, true, true))));
    global0 = ((vec4<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1841u, 11776u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), 0u, ~21278u) << (select(min(vec4<u32>(global0.x, 0u, global0.x, global0.x), vec4<u32>(1u, 4294967295u, global0.x, 1u)), vec4<u32>(global0.x, global0.x, global0.x, global0.x) & vec4<u32>(global0.x, global0.x, 53165u, 64337u), 0u == global0.x) % vec4<u32>(32u))) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 91549u, global0.x, 18452u), vec4<u32>(global0.x, 0u, 17297u, 1u)) % vec4<u32>(32u))) & vec4<u32>(firstTrailingBit(firstTrailingBit(min(67531u, 0u))), 6008u, ~global0.x, 55416u);
    let var_2 = firstLeadingBit(global0.x);
    return ~(~63771u);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    global3 = array<Struct_2, 3>();
    let var_1 = global1[_wgslsmith_index_u32(min((arg_0 & 31300u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 85257u, func_2()), ~global0.zyw) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_2, arg_2), reverseBits(arg_0))), 25u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~0u)) >> (_wgslsmith_mod_u32(~(~arg_0), 15547u) % 32u), global0.x), 3u)];
    var var_3 = _wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(~var_1.x, 25u)], select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~global1[_wgslsmith_index_u32(13398u, 25u)]), firstTrailingBit(~global0.zx)), 25u)], vec2<u32>(var_1.x, _wgslsmith_sub_u32(~1u, arg_0 << (19007u % 32u))), select(!func_3(global3[_wgslsmith_index_u32(var_1.x, 3u)], Struct_1(vec2<f32>(-2105f, -1000f), global2.b), arg_3, vec4<f32>(174f, 493f, arg_1.x, -784f)), select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(true, var_2.b), vec2<bool>(var_2.b, false), vec2<bool>(false, true))), var_2.b)));
    return _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-683f)))))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    var var_0 = ~select(global0.wzy, global0.zxy, vec3<bool>(true, true, true)) >> (global0.zzz % vec3<u32>(32u));
    var var_1 = ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, global0.x >> (~47603u % 32u)), 1u);
    var var_2 = firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32((vec2<i32>(u_input.a.x, u_input.a.x) & u_input.a.zx) >> (_wgslsmith_clamp_vec2_u32(global0.wz, vec2<u32>(global0.x, 37098u), arg_1) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 0i))));
    var_0 = vec3<u32>(firstLeadingBit(global0.x), 4294967295u, var_0.x) >> (global0.zwy % vec3<u32>(32u));
    global3 = array<Struct_2, 3>();
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(arg_1.x, ~var_0.x, reverseBits(36055u), ~arg_1.x))), ~vec4<u32>(1u, ~12677u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(3064u, 0u, 0u, var_0.x), vec4<u32>(arg_1.x, global0.x, 4294967295u, arg_1.x)), countOneBits(vec4<u32>(var_0.x, 0u, global0.x, var_0.x))), 1u));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(func_1(68750u, global2.a, 4294967295u, Struct_1(global2.a, -1111f))), global0.yw), 3u)], abs(-u_input.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -271f, global2.a.x, global2.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(490f, global2.a.x, global2.b, 229f) - vec4<f32>(-1740f, global2.a.x, global2.a.x, 1399f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(685f)), global2.b, 1274f))) - _wgslsmith_f_op_f32(-global2.a.x)));
    global3 = array<Struct_2, 3>();
    let var_1 = global0.wxx;
    var var_2 = var_0;
    let var_3 = all(vec4<bool>((global0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global0.x, 1u), global0.yzy) % 32u)) < global0.x, all(vec4<bool>(true, true, select(true, false, true), true)), true, !(u_input.a.x >= u_input.a.x) || !select(true, false, false)));
    let var_4 = global3[_wgslsmith_index_u32(7435u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(select(u_input.a, u_input.a, true) & (vec3<i32>(2147483647i, u_input.a.x, 2147483647i) ^ u_input.a), vec3<i32>(~(-61604i), -1i, -1i)), -2147483647i, 2147483647i, -2147483647i));
}

