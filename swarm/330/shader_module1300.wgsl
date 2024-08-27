struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: vec2<u32> = vec2<u32>(2799u, 113297u);

var<private> global2: bool = true;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> u32 {
    global1 = vec2<u32>(~(~u_input.b.x), 1u);
    let var_0 = -274f;
    var var_1 = arg_2;
    let var_2 = !(!(!(!select(vec4<bool>(true, true, false, var_1.c.x), vec4<bool>(var_1.c.x, true, false, true), vec4<bool>(true, var_1.c.x, true, false)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))))))));
    return ~(~(~var_1.b.a.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> vec2<u32> {
    let var_0 = (~vec4<u32>(21234u, countOneBits(61317u), 0u, 0u) >> (vec4<u32>(reverseBits(u_input.a & 1u), _wgslsmith_mod_u32(~22752u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, arg_3, u_input.a), vec4<u32>(arg_3, u_input.a, arg_3, arg_3))), ~(~u_input.a), 514u) % vec4<u32>(32u))) & vec4<u32>(abs(4294967295u) | (0u >> (~u_input.b.x % 32u)), 4294967295u, ~func_3(Struct_1(vec2<u32>(global1.x, 27874u), vec4<i32>(-2147483647i, arg_2, 2147483647i, 17057i)), arg_2, Struct_2(vec3<i32>(-12594i, 14402i, -1i), Struct_1(u_input.b.xx, vec4<i32>(30764i, 0i, -1i, 1i)), vec2<bool>(arg_0.x, arg_0.x))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(11697u, arg_3, global1.x), u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1451f, arg_1.x, arg_1.x, arg_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), arg_1.x, 1489f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))))));
    global1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~global1.x), ~_wgslsmith_mult_vec2_u32(var_0.yz, ~vec2<u32>(1u, arg_3))), ~vec2<u32>(~(~1u), firstLeadingBit(reverseBits(1u))), max(var_0.yy, u_input.b.xz));
    var var_2 = u_input.b.x;
    return countOneBits(~vec2<u32>(select(~var_0.x, max(global1.x, 0u), arg_0.x), 9788u));
}

fn func_1() -> StorageBuffer {
    var var_0 = firstTrailingBit(max(16671i, global0[_wgslsmith_index_u32(~firstTrailingBit(47124u), 1u)]));
    global1 = vec2<u32>(_wgslsmith_mod_u32(u_input.a, ~firstTrailingBit(global1.x)), global1.x | 4294967295u) ^ (_wgslsmith_add_vec2_u32(u_input.b.yy, ~u_input.b.yy) << (firstLeadingBit(abs(func_2(vec2<bool>(true, false), vec3<f32>(282f, 108f, 1865f), global0[_wgslsmith_index_u32(9155u, 1u)], 4294967295u))) % vec2<u32>(32u)));
    global1 = select(_wgslsmith_add_vec2_u32(countOneBits(abs(vec2<u32>(0u, u_input.b.x))) ^ u_input.b.xz, min(u_input.b.yz, vec2<u32>(33396u, _wgslsmith_sub_u32(global1.x, 1u)))), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, global1.x)), u_input.b.xx), 1u), vec2<bool>(true, true));
    let var_1 = Struct_2(vec3<i32>(-firstTrailingBit(global0[_wgslsmith_index_u32(max(0u, global1.x), 1u)]), 2628i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, global1.x, 2256u), vec4<u32>(1845u, global1.x, u_input.b.x, global1.x)), firstLeadingBit(vec4<u32>(global1.x, global1.x, 63566u, u_input.a))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, 5879u, 0u, u_input.a), vec4<u32>(global1.x, 21700u, u_input.a, u_input.b.x) >> (vec4<u32>(34898u, 1u, u_input.a, u_input.b.x) % vec4<u32>(32u)))), 1u)]), Struct_1(~vec2<u32>(2680u, u_input.a) << (vec2<u32>(4960u, 49404u) % vec2<u32>(32u)), -vec4<i32>(global0[_wgslsmith_index_u32(global1.x, 1u)], countOneBits(0i), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 1u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(57303u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]))), select(!vec2<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(false, false))), vec2<bool>(!select(false, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(all(vec3<bool>(true, false, true)), true)));
    let var_2 = var_1;
    return StorageBuffer(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(213f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -329f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

