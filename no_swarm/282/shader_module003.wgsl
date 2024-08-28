struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 1u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 28410u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 3834u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 33369u, 1109u, 34565u)), Struct_1(vec4<u32>(43805u, 1552u, 4294967295u, 20492u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u)), Struct_1(vec4<u32>(45444u, 0u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 26319u, 52219u, 0u)), Struct_1(vec4<u32>(22777u, 48982u, 4294967295u, 19682u)), Struct_1(vec4<u32>(0u, 0u, 0u, 34140u)));

var<private> global1: array<f32, 23> = array<f32, 23>(1388f, -1297f, -1021f, 1000f, 612f, 1486f, -988f, -519f, 700f, 139f, 203f, 131f, 482f, 152f, -443f, 471f, 1153f, -175f, 1554f, 142f, -1490f, -267f, 180f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, 0u)), _wgslsmith_dot_vec3_u32(arg_0.a.zwx, arg_0.a.yww), _wgslsmith_mod_u32(~arg_0.a.x, _wgslsmith_mult_u32(0u, 1u)), 4294967295u), abs(abs(select(vec4<u32>(u_input.c, arg_0.a.x, u_input.c, 5036u), arg_0.a, vec4<bool>(false, false, true, false))))));
    global0 = array<Struct_1, 12>();
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(~var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, u_input.c, 45219u) | vec4<u32>(arg_0.a.x, 0u, 20919u, 17888u), ~var_0.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(49933u, 0u), ~60691u), ~vec2<u32>(arg_0.a.x, 0u)), var_0.a.x, 0u));
    let var_2 = Struct_1(~(vec4<u32>(var_1.a.x, var_0.a.x, _wgslsmith_div_u32(2212u, var_1.a.x), _wgslsmith_div_u32(11584u, var_1.a.x)) & var_1.a));
    global1 = array<f32, 23>();
    return vec3<bool>(select(arg_1.x, arg_2 << (select(arg_0.a.x, 20577u, false) % 32u), all(vec2<bool>(false, false))) == (min(arg_2, -416i) | 0i), true, any(vec4<bool>(true, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.a.x, 23u)] - 950f) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.x, 23u)]), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), false)));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = false;
    let var_1 = !func_3(Struct_1(arg_0.a), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b.x, 73263i)), vec2<i32>(5507i, -2147483647i)), abs(u_input.b.x));
    let var_2 = Struct_2(arg_0, _wgslsmith_div_vec4_u32(arg_0.a, abs(~(~vec4<u32>(1u, u_input.c, 70223u, arg_0.a.x)))), select(u_input.a.x, -31513i, false), global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], Struct_1(vec4<u32>(arg_0.a.x, ~(~62026u), arg_0.a.x, max(4294967295u, ~u_input.c))));
    return ~abs(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, u_input.c, 4294967295u), vec4<u32>(var_2.a.a.x, 1u, u_input.c, 0u))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(~min(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 31439u), vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(func_2(global0[_wgslsmith_index_u32(u_input.c, 12u)]), func_2(global0[_wgslsmith_index_u32(1u, 12u)]))));
    global1 = array<f32, 23>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return Struct_1(select(vec4<u32>(abs(var_0.a.x), reverseBits(abs(u_input.c)), ~1u, firstTrailingBit(1u)), ~(~var_0.a | select(var_0.a, vec4<u32>(u_input.c, u_input.c, 4294967295u, var_0.a.x), true)), vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), !(global1[_wgslsmith_index_u32(u_input.c, 23u)] <= 322f), any(vec4<bool>(false, true, false, false)), false)));
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 23u)];
    return ~(~(~(~(~vec2<u32>(u_input.c, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    global0 = array<Struct_1, 12>();
    let var_0 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(456f, global1[_wgslsmith_index_u32(u_input.c, 23u)])) - -463f))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x | ~countOneBits(firstLeadingBit(0i)));
}

