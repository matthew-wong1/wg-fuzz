struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec3<i32>(60601i, 1i, 12202i), -947f)), Struct_2(Struct_1(vec3<i32>(12467i, i32(-2147483648), -3181i), 850f)), Struct_2(Struct_1(vec3<i32>(-1i, 18130i, -1i), 450f)), Struct_2(Struct_1(vec3<i32>(-23828i, i32(-2147483648), -33145i), 328f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), -779f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 14258i, i32(-2147483648)), 754f)), Struct_2(Struct_1(vec3<i32>(-6534i, -587i, 2147483647i), 913f)), Struct_2(Struct_1(vec3<i32>(-24035i, -15299i, 28680i), 700f)), Struct_2(Struct_1(vec3<i32>(21532i, -18401i, 10188i), 1138f)), Struct_2(Struct_1(vec3<i32>(1i, -11734i, -46887i), 237f)), Struct_2(Struct_1(vec3<i32>(33186i, 1986i, 31651i), -188f)), Struct_2(Struct_1(vec3<i32>(0i, -24784i, i32(-2147483648)), -690f)), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, -31680i), -1154f)), Struct_2(Struct_1(vec3<i32>(12820i, 1i, 1i), -502f)), Struct_2(Struct_1(vec3<i32>(33857i, -784i, -20376i), 1000f)), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, 1i), -2025f)), Struct_2(Struct_1(vec3<i32>(-28274i, -34333i, 3076i), -179f)), Struct_2(Struct_1(vec3<i32>(-27665i, i32(-2147483648), 1i), 246f)), Struct_2(Struct_1(vec3<i32>(45775i, 1i, 1i), -957f)), Struct_2(Struct_1(vec3<i32>(-1i, -1i, 2147483647i), 584f)), Struct_2(Struct_1(vec3<i32>(2147483647i, -55377i, -847i), -115f)));

var<private> global4: vec2<i32> = vec2<i32>(78282i, -50807i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec4<f32>(global1.b, 2323f, -911f, -1112f);
    global0 = array<vec3<bool>, 4>();
    let var_1 = 1i;
    var var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 0u)), ~1u), 1u)) >> (countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(11038u, 1u), vec2<u32>(1u, 46099u)) << ((vec2<u32>(1u, 1u) >> (select(vec2<u32>(20527u, 1u), vec2<u32>(36106u, 65029u), vec2<bool>(false, true)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1068f - global1.b), 529f, _wgslsmith_f_op_f32(abs(1295f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(893f, 1683f, -1075f), vec3<f32>(global1.b, 750f, global1.b), true)))), var_2.x != reverseBits(4294967295u)))));
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, 0u, var_2.x, var_2.x)), ~(~vec4<u32>(119393u, 83009u, var_2.x, 4294967295u))), vec4<u32>(var_2.x, 4294967295u >> (firstLeadingBit(1u) % 32u), 0u, 3148u));
}

fn func_2() -> u32 {
    global2 = !(!any(vec2<bool>(false, true)));
    let var_0 = Struct_2(Struct_1(~(-select(vec3<i32>(u_input.a, u_input.b.x, global1.a.x), vec3<i32>(-62069i, global4.x, -16935i), false)), global1.b));
    global1 = Struct_1(~global1.a, 190f);
    let var_1 = _wgslsmith_div_vec4_u32(func_3() ^ ~select(vec4<u32>(1u, 11847u, 49370u, 42646u), ~vec4<u32>(0u, 25711u, 46768u, 4294967295u), vec4<bool>(true, true, true, true)), ~vec4<u32>(1u, ~func_3().x, func_3().x, ~0u >> (1u % 32u)));
    var var_2 = -global4.x;
    return var_1.x;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(func_2(), 21u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-598f, _wgslsmith_f_op_f32(select(var_0.a.b, arg_0.a.b, false)), 1000f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -430f, var_0.a.b) + vec3<f32>(-1000f, global1.b, arg_0.a.b)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), false)))));
    let var_2 = arg_0.a;
    let var_3 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, abs(5187u)), ~vec2<u32>(1u, 1u)));
    global3 = array<Struct_2, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(abs(-264f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - -726f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(353f - global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -383f))) - 376f));
    var var_1 = global1.b;
    global0 = array<vec3<bool>, 4>();
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1574f, 328f, global1.b, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global1.a, global1.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.b)), global1.b, 526f, -1000f))));
    let var_3 = Struct_1(-u_input.b.xzy, _wgslsmith_f_op_f32(-var_2.x));
    let var_4 = global3[_wgslsmith_index_u32(0u, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_2());
}

