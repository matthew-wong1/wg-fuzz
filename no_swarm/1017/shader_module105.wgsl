struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1000f, -1533f, 301f, 803f, 1923f, -176f, 905f, -525f, 1129f, -844f, -669f, -703f, 153f, 1675f, -1002f, 606f, -741f, 758f, 198f, 519f, 1163f, 239f, -414f, -1685f, 436f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, global0[_wgslsmith_index_u32(u_input.c, 25u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 25u)]))))), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), 1371f, u_input.b, vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.c, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.b.x)), ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, u_input.a.x, u_input.c)), _wgslsmith_clamp_u32(u_input.a.x, firstTrailingBit(u_input.b.x), ~11867u), 85310u), ~1u));
    let var_1 = select(vec3<bool>(false, var_0.b.a, var_0.b.a), !select(!vec3<bool>(false, var_0.b.a, var_0.b.a), vec3<bool>(true, true, !var_0.b.a), any(vec2<bool>(var_0.b.a, var_0.b.a))), select(select(vec3<bool>(true, var_0.b.a || var_0.b.a, false), select(vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), vec3<bool>(true, var_0.b.a, var_0.b.a), select(vec3<bool>(false, var_0.b.a, var_0.b.a), vec3<bool>(var_0.b.a, false, var_0.b.a), vec3<bool>(false, var_0.b.a, false))), var_0.b.a), select(select(vec3<bool>(var_0.b.a, var_0.b.a, false), !vec3<bool>(false, var_0.b.a, var_0.b.a), select(vec3<bool>(true, var_0.b.a, false), vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), false)), !vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), select(any(vec3<bool>(true, false, false)), any(vec2<bool>(var_0.b.a, false)), var_0.b.a)), (_wgslsmith_dot_vec2_i32(vec2<i32>(-38217i, 27628i), vec2<i32>(-64953i, -5164i)) == _wgslsmith_add_i32(27406i, 32543i)) & any(vec3<bool>(true, var_0.b.a, true))));
    global0 = array<f32, 25>();
    var var_2 = vec4<bool>(true, true && any(!vec4<bool>(false, var_0.b.a, var_1.x, false)), true || any(vec4<bool>(true, var_1.x & true, !var_1.x, var_0.b.a)), var_0.b.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), 906f, -834f)));
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 25>();
    var var_0 = -12113i;
    let var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(max(-489f, -1102f)) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 25u)]), true));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x & ~u_input.b.x, 25u)] * _wgslsmith_f_op_f32(func_3(vec2<f32>(-833f, global0[_wgslsmith_index_u32(0u, 25u)]))))), vec3<u32>(~(~0u), _wgslsmith_sub_u32(min(_wgslsmith_mod_u32(u_input.c, u_input.a.x), reverseBits(u_input.c)), ~12534u | ~u_input.a.x), u_input.b.x), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(37664u, u_input.a.x, 0u, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.c, u_input.c), vec4<u32>(70267u, u_input.c, 4294967295u, 0u))), ~(countOneBits(vec4<u32>(u_input.a.x, 0u, 1u, u_input.b.x)) << (~vec4<u32>(u_input.c, 110819u, u_input.b.x, u_input.a.x) % vec4<u32>(32u)))), select(abs(~20479u), ~4294967295u, var_1.x));
    return Struct_1(!(!(!(var_2.a || var_2.a))), global0[_wgslsmith_index_u32(var_2.d.x | ~abs(~u_input.b.x), 25u)], vec3<u32>(0u, 45357u, _wgslsmith_add_u32(_wgslsmith_div_u32(select(var_2.e, 10476u, true), firstTrailingBit(1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, u_input.a), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), select(var_2.d << ((reverseBits(vec4<u32>(37766u, 4294967295u, u_input.c, 25496u)) >> (vec4<u32>(u_input.b.x, 0u, 18856u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(0u, countOneBits(var_2.c.x), ~(~var_2.c.x), 12635u), select(vec4<bool>(all(var_1), 1728f == var_2.b, any(vec4<bool>(var_2.a, true, var_1.x, false)), all(vec4<bool>(true, var_1.x, true, true))), vec4<bool>(global0[_wgslsmith_index_u32(30539u, 25u)] >= 1650f, true, var_1.x, var_2.a), !select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_2.a, false, false, var_2.a), vec4<bool>(false, var_1.x, false, var_1.x)))), var_2.e);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    var var_0 = func_2();
    var var_1 = -(2147483647i << ((firstLeadingBit(max(1u, var_0.e)) << (~u_input.b.x % 32u)) % 32u));
    return global0[_wgslsmith_index_u32(arg_1.d.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-11683i, 1i);
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, _wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), 1u, _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), _wgslsmith_add_u32(u_input.a.x, ~15402u), 14920u), ~(~(~(~vec4<u32>(1u, 39838u, 24252u, 26286u)))));
    var var_2 = vec2<u32>(26218u, _wgslsmith_dot_vec2_u32(reverseBits(firstTrailingBit(abs(vec2<u32>(13921u, var_1)))), countOneBits(~vec2<u32>(45967u, var_1))));
    let var_3 = Struct_2(vec3<f32>(1349f, global0[_wgslsmith_index_u32(var_2.x, 25u)], _wgslsmith_f_op_f32(-978f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_0.x, Struct_1(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], vec3<u32>(var_1, 4294967295u, var_1), vec4<u32>(u_input.c, 0u, 0u, 17672u), 30828u), Struct_2(vec3<f32>(-961f, 1615f, global0[_wgslsmith_index_u32(var_1, 25u)]), Struct_1(true, 1000f, u_input.a, vec4<u32>(0u, 43199u, 0u, var_1), 16984u)))), -527f))), func_2());
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(select(57439u, var_4.b.c.x, select(var_4.b.a, true, false)), 4294967295u, u_input.b.x, 0u), var_3.b.d), var_3.a.zy, var_3.a.zz, max(_wgslsmith_add_i32(min(-7634i, var_0.x), -3909i), _wgslsmith_dot_vec4_i32((vec4<i32>(var_0.x, 9813i, var_0.x, var_0.x) | vec4<i32>(29616i, var_0.x, 23318i, var_0.x)) | ~vec4<i32>(var_0.x, -30016i, var_0.x, var_0.x), -select(vec4<i32>(var_0.x, -14312i, -13543i, -4383i), vec4<i32>(0i, -939i, var_0.x, var_0.x), vec4<bool>(true, var_4.b.a, false, false)))));
}

