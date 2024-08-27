struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1348f, -736f, 994f);

var<private> global1: array<vec4<bool>, 25>;

var<private> global2: array<bool, 2>;

var<private> global3: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-295f, -1216f), vec2<f32>(1331f, -1000f), vec2<f32>(523f, -572f), vec2<f32>(-1103f, 178f), vec2<f32>(322f, 1000f), vec2<f32>(-980f, 941f));

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<u32>(0u, 36720u), vec4<i32>(2147483647i, 2147483647i, 3287i, -1i), false, -34085i, 36815i), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 2229i), true, 15061i, 1i), Struct_1(vec2<u32>(23036u, 4294967295u), vec4<i32>(9368i, 2147483647i, -78414i, 24915i), false, i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(56096u, 3688u), vec4<i32>(-1i, 15631i, i32(-2147483648), -48392i), true, 0i, 43203i), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(1i, 0i, -1i, 1i), false, 65695i, 17658i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(2147483647i, -1i, 1i, -35562i), true, -41468i, 23545i), Struct_1(vec2<u32>(4816u, 4294967295u), vec4<i32>(-17476i, -1i, 1i, -1i), true, -1i, 17725i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~48500u, _wgslsmith_add_u32(reverseBits(u_input.a), u_input.a)), 1u) | u_input.a, 2u)];
    let var_1 = global0.x;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u) & _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), false), vec3<u32>(u_input.a, 1u, u_input.a) & vec3<u32>(47833u, 10616u, 0u))), 7u)];
    let var_3 = any(vec2<bool>(true, var_2.c)) && all(select(select(!vec3<bool>(true, var_2.c, var_2.c), vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.a.x, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)]), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], true))), vec3<bool>(var_2.c, true, var_2.c), !var_2.c));
    var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(var_2.a.x), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, var_2.a.x, 1u)) | ~_wgslsmith_clamp_u32(0u, 1u, u_input.a)), 20329u, ~u_input.a), 7u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(15763u, 4294967295u, u_input.a) ^ vec3<u32>(u_input.a, 0u, 35846u), countOneBits(vec3<u32>(var_2.a.x, 11176u, 13632u)), true != var_2.c), ~(~vec3<u32>(var_2.a.x, var_2.a.x, 0u))) ^ vec3<u32>(~(~3407u), 12280u, ~countOneBits(var_2.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, 82914u, 58276u), vec3<u32>(4294967295u, var_2.a.x, u_input.a)) << (vec3<u32>(38057u, var_2.a.x, var_2.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.a, var_2.a.x, 36700u) >> (countOneBits(vec3<u32>(4294967295u, var_2.a.x, u_input.a)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_div_u32(reverseBits(4294967295u), firstLeadingBit(var_2.a.x)), ~u_input.a, ~var_2.a.x) % vec3<u32>(32u))), 2u)];
}

fn func_2() -> vec4<u32> {
    var var_0 = !select(vec2<bool>(true, false), vec2<bool>(func_3(), true), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(true, true), vec2<bool>(global0.x != global0.x, !global2[_wgslsmith_index_u32(u_input.a, 2u)])));
    global1 = array<vec4<bool>, 25>();
    let var_1 = global4[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_2 = 4294967295u;
    var_0 = select(!select(vec2<bool>(true, true), select(!vec2<bool>(var_1.c, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], true), select(vec2<bool>(true, var_1.c), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], var_0.x))), var_0.x), select(!select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_1.c, true), any(vec3<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 2u)], var_0.x, true))), vec2<bool>(!(true && var_0.x), all(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 2u)]))), select(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.a.x, 2u)])), select(select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_1.c), vec2<bool>(var_1.c, true)), select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, global2[_wgslsmith_index_u32(var_1.a.x, 2u)]), vec2<bool>(true, true)), vec2<bool>(var_1.c, true)), true)), true);
    return vec4<u32>(_wgslsmith_mult_u32(~max(abs(var_1.a.x), firstLeadingBit(u_input.a)), ~(var_1.a.x ^ _wgslsmith_sub_u32(32019u, var_1.a.x))), ~1u, ~var_1.a.x, _wgslsmith_add_u32(firstLeadingBit(var_1.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 37618u) << (var_1.a.x % 32u), u_input.a)));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, -1863f, 541f, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, global0.x, -955f, -796f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, global0.x, global0.x, global0.x))))));
    let var_2 = global4[_wgslsmith_index_u32(1u, 7u)];
    let var_3 = -abs(_wgslsmith_div_i32(-744i, -48376i));
    let var_4 = Struct_1(countOneBits(var_2.a), ~vec4<i32>(~_wgslsmith_add_i32(-1i, var_3), var_3, 0i, var_2.e), !(any(global1[_wgslsmith_index_u32(~48958u, 25u)]) | func_3()), -24830i, var_2.b.x);
    return 11086u << (firstLeadingBit(~(~u_input.a)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(44375u, u_input.a, 14206u, u_input.a), ~vec4<u32>(45952u, 37236u, u_input.a, 70941u)), ~(~select(vec4<u32>(30575u, 4370u, 70431u, 19411u), vec4<u32>(78184u, u_input.a, 4294967295u, 13982u), global1[_wgslsmith_index_u32(0u, 25u)]))), vec4<u32>(u_input.a, 920u, u_input.a, ~0u >> (_wgslsmith_sub_u32(~u_input.a, _wgslsmith_mult_u32(0u, u_input.a)) % 32u)), vec4<u32>(u_input.a, ~u_input.a, ~func_1(), reverseBits(1u)));
    var var_1 = global0.x;
    var var_2 = global0.x;
    global1 = array<vec4<bool>, 25>();
    let var_3 = ~(~firstTrailingBit(select(vec4<i32>(0i, 2147483647i, 18537i, 0i), vec4<i32>(-2147483647i, -1i, 32522i, 0i), true))) ^ vec4<i32>(1i, 1i, 1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 620f, 1173f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -1829f, 467f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x - global0.x))) - global0.x)), vec2<i32>(20683i, abs(var_3.x)), ~var_0, _wgslsmith_mult_vec4_i32(~vec4<i32>(-17248i, var_3.x, var_3.x, var_3.x), -(~vec4<i32>(var_3.x, var_3.x, -2147483647i, -1i))));
}

