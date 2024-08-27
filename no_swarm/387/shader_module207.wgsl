struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(13332u, 112434u, 39069u)), Struct_1(vec3<u32>(1u, 4294967295u, 72540u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 20094u, 1u)), Struct_1(vec3<u32>(4294967295u, 54546u, 48610u)), Struct_1(vec3<u32>(3790u, 19053u, 12501u)), Struct_1(vec3<u32>(0u, 26031u, 31429u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 20628u)), Struct_1(vec3<u32>(1u, 17715u, 39373u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec3<bool>(true, !(4294967295u <= _wgslsmith_clamp_u32(u_input.c ^ 8401u, 4294967295u | global1.a.x, min(1u, global1.a.x))), 0i <= max(~u_input.a, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -751f);
    var var_2 = global2[_wgslsmith_index_u32(global1.a.x, 11u)];
    var var_3 = -21092i;
    var var_4 = Struct_1(select(min(~global1.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 38575u) << (vec3<u32>(var_2.a.x, 1u, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.c, 0u, global1.a.x), select(global1.a, var_2.a, true))), vec3<u32>(~u_input.d.x, reverseBits(~1u), ~firstTrailingBit(24333u)), vec3<bool>(true, false, var_0.x)));
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(66184u, u_input.b, var_4.a.x, 86989u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 4675u, 52561u), vec4<u32>(22108u, 1u, u_input.d.x, 0u)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(0u), 1u, ~var_4.a.x, 4783u), abs(vec4<u32>(global1.a.x, 0u, global1.a.x, 35005u)) >> (vec4<u32>(global1.a.x, global1.a.x, 2442u, 4294967295u) % vec4<u32>(32u))), select(~abs(vec4<u32>(var_2.a.x, var_4.a.x, var_2.a.x, 4294967295u)), ~vec4<u32>(var_2.a.x, 34443u, var_2.a.x, 0u), true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(vec3<u32>(1u, 81805u, 4294967295u));
    var var_1 = true && (1048f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = ~func_3();
    global0 = _wgslsmith_add_u32(4294967295u, 0u | arg_3.a.x);
    var var_3 = 16759u;
    return arg_0.x;
}

fn func_1() -> i32 {
    global0 = global1.a.x;
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(148f * 1825f), -1538f)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2040f * -673f), _wgslsmith_f_op_f32(func_2(vec3<f32>(180f, -164f, 154f), global1.a.x, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(global1.a.x, 11u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1230f - -1201f), any(vec3<bool>(true, false, false)))))));
    global2 = array<Struct_1, 11>();
    global0 = ~u_input.b;
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(1i, ~(~u_input.a), u_input.a), -u_input.a);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.a, -1i);
    var var_1 = 780f;
    var_0 = func_1();
    var var_2 = 1055f;
    var var_3 = ~1u;
    let var_4 = u_input.d.x >= ~_wgslsmith_dot_vec2_u32(vec2<u32>(42463u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), global1.a.xy >> (firstLeadingBit(vec2<u32>(global1.a.x, 4293u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(global1.a.x ^ 10657u), vec3<i32>(max(2147483647i, _wgslsmith_mod_i32(~u_input.a, 12725i)), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-21973i, u_input.a))), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i)) << (~vec2<u32>(u_input.b, global1.a.x) % vec2<u32>(32u))), u_input.a >> (_wgslsmith_dot_vec2_u32(func_3().xw, _wgslsmith_clamp_vec2_u32(global1.a.yz, u_input.d.xz, vec2<u32>(0u, 1u))) % 32u)));
}

