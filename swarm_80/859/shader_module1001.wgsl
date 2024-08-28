struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: i32;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<i32>(0i, 4214i, 2147483647i), Struct_1(0u), 4294967295u, 10473u, 8129i), Struct_2(vec3<i32>(8411i, i32(-2147483648), 2147483647i), Struct_1(44126u), 1u, 19472u, 12042i), Struct_2(vec3<i32>(-13621i, 0i, i32(-2147483648)), Struct_1(1u), 4294967295u, 4294967295u, i32(-2147483648)), Struct_2(vec3<i32>(0i, 2147483647i, 32300i), Struct_1(5306u), 4294967295u, 1u, 14168i), Struct_2(vec3<i32>(22605i, -12282i, i32(-2147483648)), Struct_1(4294967295u), 33338u, 73195u, 0i), Struct_2(vec3<i32>(1i, 61657i, 3716i), Struct_1(10738u), 0u, 6115u, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global0 = arg_0.a.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1066f));
    let var_1 = global2[_wgslsmith_index_u32(32081u, 6u)];
    global2 = array<Struct_2, 6>();
    global2 = array<Struct_2, 6>();
    return 42853u;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    global1 = _wgslsmith_mod_i32(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(76081i, arg_2, _wgslsmith_div_i32(arg_2, firstTrailingBit(arg_2))), ~(-(vec3<i32>(1i, arg_2, 1i) | vec3<i32>(arg_1, arg_1, -2147483647i)))));
    let var_0 = vec4<u32>(_wgslsmith_add_u32(func_3(Struct_2(vec3<i32>(1i, arg_1, arg_2) | vec3<i32>(1340i, -13009i, 29429i), Struct_1(10026u), abs(arg_0), ~1u, ~arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(608f, 758f)), 1754f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(36599u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(arg_0, arg_0, u_input.c.x))), 6u)], Struct_1(select(0u, 127834u, arg_3.x))), arg_0), arg_0 | 0u, 0u, arg_0);
    let var_1 = vec4<bool>(true, any(!arg_3), select(all(select(arg_3, select(vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), arg_3.x), true)), !any(select(vec2<bool>(arg_3.x, false), vec2<bool>(arg_3.x, false), arg_3.xx)), firstLeadingBit(0i) > arg_1), arg_3.x);
    var var_2 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(1i, arg_2, -5181i), vec3<i32>(arg_1, 1i, arg_2)), vec3<i32>(-31173i, -25464i, 63747i), vec3<i32>(arg_1, -21012i, arg_1)), select(vec3<i32>(1544i, 0i, arg_1), vec3<i32>(arg_1, 0i, -48426i) >> (vec3<u32>(arg_0, var_0.x, var_0.x) % vec3<u32>(32u)), !var_1.x)), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(11373i, -1i), arg_1), 27297i, -2147483647i);
    let var_3 = -25215i;
    return 64i;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = arg_3.x;
    return (vec3<u32>(29836u, firstTrailingBit(~u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.c & u_input.b, u_input.b)) << (~vec3<u32>(u_input.d.x, 85088u, _wgslsmith_add_u32(u_input.b.x, u_input.d.x)) % vec3<u32>(32u))) | ~vec3<u32>(~39155u, 0u, 4294967295u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = abs(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(28386i, 1i, 3728i, 1i) >> (vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(select(vec4<i32>(0i, 1i, 2147483647i, 2147483647i), vec4<i32>(7522i, -1i, -58897i, -12344i), vec4<bool>(false, false, false, true)), abs(vec4<i32>(-2147483647i, 5028i, 1i, -1i)))));
    let var_1 = u_input.a.x;
    var var_2 = 245f;
    var var_3 = vec3<f32>(1f, 1f, 1f);
    let var_4 = func_4(true, vec2<bool>(any(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true))), -482f, vec4<i32>(~var_0, _wgslsmith_mult_i32(var_0, 48165i), ~func_2(4294967295u, var_0, var_0, vec3<bool>(false, false, true)), -abs(1i))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(var_1, arg_0.a, var_1) | reverseBits(u_input.a)), ~vec3<u32>(max(34394u, 0u), arg_0.a, var_1 << (arg_0.a % 32u))) % vec3<u32>(32u));
    return firstLeadingBit(-var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ((-func_1(Struct_1(u_input.b.x)) << (countOneBits(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(23291u, 4294967295u))) % 32u)) << (~4294967295u % 32u)) & 28094i;
    let var_0 = select(vec2<bool>(!(true | (11892u <= u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(984f))) == _wgslsmith_f_op_f32(1709f * _wgslsmith_f_op_f32(trunc(915f)))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(48400u, u_input.b.x, u_input.d.x))) < u_input.a.x);
    let var_1 = true;
    let var_2 = Struct_1(4294967295u);
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, ~firstTrailingBit(~1u)), vec3<u32>(u_input.a.x, var_2.a ^ _wgslsmith_mod_u32(34470u, var_2.a), 43671u));
    let var_4 = -(firstTrailingBit(1i) ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(-25355i, 1i, -10532i, 2147483647i), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(2784i, 1i, -1i, 23966i), vec4<i32>(0i, -2438i, 1i, 2147483647i), vec4<i32>(7051i, -22740i, 0i, -2147483647i)), vec4<i32>(0i, -27081i, 5923i, 35408i))));
    global1 = var_4;
    global0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, var_2.a), var_3.xx | var_3.xy), 77089u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(437f, 679f))) - -1566f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1251f + -269f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2099f))), select(all(vec4<bool>(var_1, var_1, var_1, true)), true, any(vec3<bool>(true, var_0.x, true)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2077f * 943f), -964f, 1130f)), ~var_4, _wgslsmith_add_vec3_u32(select(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, 1u, u_input.b.x)), select(var_3, var_3, vec3<bool>(false, var_1, var_0.x)), _wgslsmith_add_vec3_u32(var_3, vec3<u32>(var_3.x, 1u, var_3.x))), var_3, !var_0.x != any(vec2<bool>(true, var_0.x))), vec3<u32>(var_2.a, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 39535u, u_input.b.x, var_2.a), vec4<u32>(95035u, 4294967295u, 4294967295u, 1u)) | ~32100u)));
}

