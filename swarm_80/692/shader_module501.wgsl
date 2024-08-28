struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(0i);

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_2 {
    return Struct_2(u_input.e, ~u_input.e.zz, global0[_wgslsmith_index_u32(11296u | u_input.e.x, 6u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f + -142f)) - -1120f))), _wgslsmith_clamp_u32(u_input.e.x, ~60442u, select(62214u, u_input.a.x, false) | _wgslsmith_add_u32(67951u, u_input.e.x)) >> ((firstTrailingBit(u_input.e.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.a.x, u_input.e.x), u_input.e) % 32u)) % 32u));
}

fn func_3() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(24216u, 24u)];
    let var_1 = func_1().c;
    let var_2 = vec3<u32>(40342u, u_input.a.x, select(u_input.e.x, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 0u), true && all(vec4<bool>(false, false, false, true))) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(2538u, u_input.e.x, 1u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, ~587u, func_1().b.x)) % 32u));
    var var_3 = var_2.x;
    let var_4 = firstTrailingBit(40798u | _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x) | u_input.e.zx), u_input.e.zy));
    return func_1().c;
}

fn func_2() -> vec3<u32> {
    global2 = array<Struct_1, 24>();
    let var_0 = func_1();
    var var_1 = func_3();
    var_1 = func_3();
    var var_2 = u_input.a.x;
    return vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(18368u, var_0.b.x, 2712u, u_input.a.x)), ~((vec4<u32>(u_input.a.x, var_0.b.x, 0u, u_input.a.x) | vec4<u32>(4294967295u, 1u, 55361u, 0u)) ^ select(vec4<u32>(20358u, u_input.a.x, var_0.a.x, var_0.b.x), vec4<u32>(39553u, 16808u, var_0.e, u_input.a.x), vec4<bool>(false, false, true, true)))), u_input.a.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(0i | global1.a, ~(~u_input.b & global1.a));
    var var_1 = func_1();
    var var_2 = func_1().c;
    global0 = array<Struct_1, 6>();
    var var_3 = Struct_2(u_input.e, ~vec2<u32>(5499u, 1u), func_1().c, 326f, 0u);
    let var_4 = Struct_2(select(vec3<u32>(4294967295u ^ _wgslsmith_mod_u32(var_3.b.x, 1u), ~19376u >> (var_1.a.x % 32u), var_1.a.x), ~func_2(), false), ~(~vec2<u32>(~8543u, ~var_1.a.x)), func_1().c, _wgslsmith_f_op_f32(var_3.d - _wgslsmith_f_op_f32(max(var_1.d, _wgslsmith_f_op_f32(var_3.d - var_1.d)))), ~30852u);
    let var_5 = u_input.c;
    var var_6 = vec3<i32>(var_3.c.a, min(~(~(-1i)), ~8106i), ~12687i) << (firstLeadingBit(u_input.a) % vec3<u32>(32u));
    var var_7 = Struct_2(var_1.a, ~vec2<u32>(abs(func_1().b.x), var_1.e), var_1.c, _wgslsmith_f_op_f32(sign(var_4.d)), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_7.d, -461f, var_4.d))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(739f, 899f, 827f), vec3<f32>(var_4.d, var_1.d, var_4.d))))) - vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-446f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(376f)), _wgslsmith_f_op_f32(f32(-1f) * -1869f))))), ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(var_0.x, var_4.c.a, 1i, var_5.x) >> (vec4<u32>(19356u, 63564u, var_7.b.x, var_1.e) % vec4<u32>(32u))), -vec4<i32>(0i, -221i, 48489i, global1.a)), ~1i, _wgslsmith_div_vec3_u32(firstLeadingBit(var_3.a), u_input.e));
}

