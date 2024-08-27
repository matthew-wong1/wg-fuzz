struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(6146u, 11u, 37622u, 79u, 36631u, 47395u, 11107u, 4294967295u, 1u, 88089u, 29906u, 38736u, 4294967295u, 1u, 10947u, 12103u, 1u, 8371u, 4200u, 43057u, 40158u, 0u, 39153u, 35644u);

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<Struct_3, 32>;

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<i32>(-1i, -35466i, -1i)), Struct_3(vec3<i32>(0i, 2147483647i, -41710i)), Struct_3(vec3<i32>(39313i, i32(-2147483648), i32(-2147483648))), Struct_3(vec3<i32>(-54281i, -78731i, 0i)), Struct_3(vec3<i32>(-1i, -19027i, 8562i)), Struct_3(vec3<i32>(-1i, 2147483647i, 2147483647i)), Struct_3(vec3<i32>(11599i, 2147483647i, -47563i)), Struct_3(vec3<i32>(-41741i, 1i, -1i)), Struct_3(vec3<i32>(1i, 2147483647i, -18088i)), Struct_3(vec3<i32>(0i, 2059i, 2147483647i)), Struct_3(vec3<i32>(0i, -1i, 11956i)), Struct_3(vec3<i32>(0i, -34190i, -16133i)), Struct_3(vec3<i32>(i32(-2147483648), -44866i, 19956i)), Struct_3(vec3<i32>(3274i, 7916i, 1i)), Struct_3(vec3<i32>(0i, -34387i, 1i)), Struct_3(vec3<i32>(12170i, 0i, 2147483647i)), Struct_3(vec3<i32>(0i, 0i, 1i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = i32(-1i) * -reverseBits(~countOneBits(u_input.d));
    var var_1 = vec2<i32>(1i & _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-35189i, 0i), vec2<i32>(27416i, 12266i))), -30465i, -(~u_input.d)), firstTrailingBit(17130i));
    let var_2 = arg_0.b;
    var var_3 = 1u;
    let var_4 = ((global3.x << (u_input.b.x % 32u)) << (var_2.d.x % 32u)) < _wgslsmith_mod_u32(~46293u, (var_2.d.x << (arg_0.b.d.x % 32u)) & reverseBits(38508u));
    return vec3<i32>(u_input.d, ~u_input.d, -1i);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    global4 = array<Struct_3, 17>();
    return firstLeadingBit(~_wgslsmith_dot_vec3_i32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.d.x, 32744u), 2u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -1505f, arg_2.a, arg_2.c) + vec4<f32>(-1000f, arg_2.c, -2246f, arg_2.c))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, u_input.d), vec3<i32>(u_input.d, u_input.d, arg_0.x)), vec3<i32>(arg_0.x, u_input.d, -2147483647i) >> (u_input.b.wxx % vec3<u32>(32u)), -vec3<i32>(arg_0.x, -1i, arg_0.x))));
}

fn func_4(arg_0: u32, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(2450f)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, any(vec2<bool>(true, true)), select(false, false, false)), all(vec3<bool>(true, true, true))), true && all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1132f)))))), u_input.b);
    global1 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) * _wgslsmith_f_op_f32(-var_0.a)))), -1286f, 348f));
    global2 = array<Struct_3, 32>();
    var var_2 = var_0.b.x;
    return !select(select(vec3<bool>(true, any(vec2<bool>(false, true)), false), select(select(var_0.b, vec3<bool>(var_0.b.x, false, true), var_0.b), var_0.b, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), true), var_0.b, all(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)) & (firstTrailingBit(arg_0) > 1u));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> u32 {
    let var_0 = Struct_1(-152f, func_4(u_input.a, arg_0 | ~func_2(vec2<i32>(2147483647i, 2147483647i), arg_1, Struct_1(-1000f, vec3<bool>(true, false, false), 230f, vec4<u32>(22980u, 1748u, 61502u, 62248u)))), 151f, ~(u_input.b << (~vec4<u32>(18263u, 70236u, global0[_wgslsmith_index_u32(global3.x, 24u)], global0[_wgslsmith_index_u32(20134u, 24u)]) % vec4<u32>(32u))));
    var var_1 = !(!arg_1) || !all(!(!var_0.b));
    var var_2 = 4294967295u;
    global2 = array<Struct_3, 32>();
    var var_3 = vec4<u32>(global3.x, ~u_input.a, global0[_wgslsmith_index_u32(54719u, 24u)] | global3.x, var_0.d.x);
    return _wgslsmith_mod_u32(0u, countOneBits(~countOneBits(29595u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 2>();
    global3 = ~vec2<u32>(func_1(u_input.d, true, firstTrailingBit(-1i)), 0u) << (vec2<u32>(7327u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(3009u, 24u)] | global0[_wgslsmith_index_u32(7455u, 24u)], ~global0[_wgslsmith_index_u32(global3.x, 24u)], 1u >> (u_input.b.x % 32u)) & _wgslsmith_clamp_u32(4294967295u, reverseBits(66843u), 0u), 24u)]) % vec2<u32>(32u));
    var var_0 = Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(17932i, abs(u_input.d)), vec2<i32>(u_input.d ^ u_input.d, u_input.d)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1563f))), vec3<bool>(true, false, !any(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1154f)))))), abs(u_input.b)), Struct_1(_wgslsmith_f_op_f32(370f - 1f), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), 364f, _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, _wgslsmith_clamp_u32(global3.x, 35367u, u_input.b.x), countOneBits(3552u), global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.a, global0[_wgslsmith_index_u32(0u, 24u)], 1u)))));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_1 = ~(~min(41658u, _wgslsmith_mod_u32(_wgslsmith_add_u32(39048u, global3.x), var_0.b.d.x)));
    var var_2 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1409f, _wgslsmith_f_op_f32(exp2(var_0.c.c)))))), vec3<bool>(var_0.c.b.x, any(!vec4<bool>(true, var_0.c.b.x, var_0.b.b.x, true)), true), var_0.c.c, select(abs(var_0.c.d) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.c.d.x, 24u)], 4611u, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 0u, global3.x, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(90456u, global0[_wgslsmith_index_u32(var_1, 24u)], u_input.b.x, 0u) << (u_input.b % vec4<u32>(32u)), vec4<bool>(false, true, true, func_4(1u, var_0.a).x))), var_0.b);
    var var_3 = Struct_1(var_2.c.c, var_0.b.b, -1363f, ~var_0.c.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.b.d.x), vec4<i32>(2147483647i, var_2.a, -2147483647i, var_0.a), var_2.c.d, _wgslsmith_f_op_f32(abs(751f)), global3.x);
}

