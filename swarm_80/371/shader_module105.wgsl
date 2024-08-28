struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<bool>, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = ~(-2147483647i & _wgslsmith_mod_i32(-7263i, abs(global0[_wgslsmith_index_u32(arg_0.x, 20u)]))) >= -28266i;
    let var_1 = any(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(select(!vec2<bool>(false, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), true), !var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0))), var_0), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0, true, var_0), false))));
    global2 = _wgslsmith_add_vec4_u32(abs(abs(global1[_wgslsmith_index_u32(arg_0.x, 22u)])), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, arg_0.x, 1u), vec3<u32>(arg_0.x, global2.x, arg_0.x)), global2.x, _wgslsmith_mod_u32(1u, 8355u), global2.x >> (1713u % 32u)));
    var var_2 = vec3<i32>(min(global0[_wgslsmith_index_u32(countOneBits(global2.x) ^ 0u, 20u)], firstLeadingBit(global0[_wgslsmith_index_u32(global2.x, 20u)] & 42524i) ^ reverseBits(countOneBits(0i))), global0[_wgslsmith_index_u32(arg_0.x | 54943u, 20u)] ^ 3434i, -10903i & (~u_input.a.x ^ 2147483647i));
    var var_3 = firstLeadingBit(u_input.a.x);
    return var_0;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = select(!vec2<bool>(false, func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(84056u, global2.x, global2.x), vec3<u32>(global2.x, 50391u, 97515u)))), select(arg_2.zx, arg_2.zx, true), vec2<bool>(true && !arg_2.x, true));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(~(global2.x >> (~15675u % 32u)) ^ 1u, 20u)], arg_2.x & true, arg_1.b, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 45531u, 4294967295u), max(vec4<u32>(15290u, global2.x, global2.x, 53454u), vec4<u32>(global2.x, global2.x, 1u, global2.x)))), ~_wgslsmith_clamp_u32(~1u, ~32159u, ~0u), firstLeadingBit(4294967295u ^ _wgslsmith_clamp_u32(4294967295u, global2.x, global2.x))));
    var var_2 = -627f;
    let var_3 = !(!(!select(!arg_2.zzx, vec3<bool>(var_0.x, true, false), !vec3<bool>(var_0.x, true, true))));
    var var_4 = global2.xw;
    return Struct_1(~arg_3.x, false, _wgslsmith_dot_vec2_i32(~abs(u_input.a), firstLeadingBit(countOneBits(vec2<i32>(1i, global0[_wgslsmith_index_u32(39438u, 20u)])))), global2.x);
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1067f)) * 1111f), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(687f, 1375f)))));
    global2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~abs(global1[_wgslsmith_index_u32(global2.x, 22u)]), ~(~global1[_wgslsmith_index_u32(4448u, 22u)])), global1[_wgslsmith_index_u32(arg_0.d, 22u)]);
    var var_1 = !vec4<bool>(reverseBits(arg_0.c) <= 2147483647i, all(select(select(vec4<bool>(false, true, false, arg_0.b), vec4<bool>(false, false, arg_0.b, false), vec4<bool>(true, arg_0.b, arg_0.b, false)), select(vec4<bool>(arg_0.b, true, true, true), vec4<bool>(true, true, false, arg_0.b), true), arg_0.b)), func_2(-2271f, Struct_2(var_0.a, global0[_wgslsmith_index_u32(global2.x, 20u)], var_0.c), !vec4<bool>(arg_0.b, false, arg_0.b, true), ~vec3<i32>(-1i, var_0.b, global0[_wgslsmith_index_u32(17107u, 20u)])).b & false, arg_0.b);
    global1 = array<vec4<u32>, 22>();
    let var_2 = 41206u ^ countOneBits(global2.x);
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(arg_0.c, arg_0, vec4<bool>(false, false, true, false), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(arg_1.x, 20u)], arg_0.b))))))), 32090i, -216f);
    var var_1 = ~vec3<i32>(-32697i, u_input.a.x, ~(-17490i));
    let var_2 = global0[_wgslsmith_index_u32(~arg_1.x << (_wgslsmith_sub_u32(1u, arg_1.x) % 32u), 20u)];
    let var_3 = any(vec3<bool>(select(false, func_2(247f, Struct_2(arg_0.a, 1i, var_0.a), vec4<bool>(false, true, true, false), vec3<i32>(-16275i, u_input.a.x, global0[_wgslsmith_index_u32(global2.x, 20u)])).b || true, !all(vec4<bool>(true, true, true, false))), all(!select(global3[_wgslsmith_index_u32(global2.x, 11u)], vec3<bool>(false, false, false), vec3<bool>(false, false, false))), !any(global3[_wgslsmith_index_u32(4294967295u, 11u)])));
    var var_4 = global3[_wgslsmith_index_u32(arg_1.x, 11u)];
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-169f)) * _wgslsmith_f_op_f32(func_1(Struct_2(1340f, 1i, -2067f), global1[_wgslsmith_index_u32(18715u, 22u)])))), _wgslsmith_f_op_f32(round(530f)), true)), 418f);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1170f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 119f), -858f))), Struct_2(var_0.x, ~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, 10796u), 20u)]), _wgslsmith_f_op_f32(sign(var_0.x))), select(vec4<bool>(all(vec4<bool>(false, false, false, true)) | true, !all(global3[_wgslsmith_index_u32(6542u, 11u)]), false, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), 4294967295u != global2.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false & func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), global2.wxx))), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, 12257u, global2.x >> (~global2.x % 32u)), 20u)], select(func_2(459f, Struct_2(var_0.x, -11733i, 1206f), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], 1i, 2147483647i)).c, u_input.a.x, all(global3[_wgslsmith_index_u32(~0u, 11u)])), global0[_wgslsmith_index_u32(global2.x, 20u)]));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 15261i, var_0.x);
    let var_3 = firstLeadingBit(vec2<u32>(0u, ~(~44415u)) >> (firstTrailingBit(~global2.xy ^ (global2.wx ^ global2.yx)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~global2.x, 22u)], global0[_wgslsmith_index_u32(~var_3.x, 20u)], _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-552f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(825f)), _wgslsmith_f_op_f32(1000f + var_2.a)))), global1[_wgslsmith_index_u32(var_1.d, 22u)] << (countOneBits((global1[_wgslsmith_index_u32(33412u, 22u)] >> (global1[_wgslsmith_index_u32(global2.x, 22u)] % vec4<u32>(32u))) & firstTrailingBit(vec4<u32>(6603u, var_1.d, 1u, 1u))) % vec4<u32>(32u)));
}

