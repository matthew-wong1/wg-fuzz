struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(-1i, -44693i, i32(-2147483648)), 265f, 1u);

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(8403u, 0u, 3067u, 1u), vec4<u32>(0u, 0u, 4706u, 4294967295u), vec4<u32>(1u, 0u, 51037u, 4294967295u), vec4<u32>(29867u, 50469u, 16197u, 32073u), vec4<u32>(1u, 14198u, 1u, 0u), vec4<u32>(0u, 0u, 701u, 0u), vec4<u32>(4294967295u, 26241u, 0u, 4294967295u), vec4<u32>(4294967295u, 117676u, 41330u, 70917u), vec4<u32>(121933u, 1u, 32028u, 2285u), vec4<u32>(1u, 1u, 4294967295u, 15582u));

var<private> global4: array<vec3<u32>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    let var_0 = global0.a.x;
    global3 = array<vec4<u32>, 10>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32((~u_input.b | u_input.b) >> (_wgslsmith_mult_u32(129640u, _wgslsmith_sub_u32(global0.c, 4294967295u)) % 32u), 10u)], _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 58986u), 18715u, 100454u, 1u), global3[_wgslsmith_index_u32(~16150u, 10u)])), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) && any(global2[_wgslsmith_index_u32(global0.c, 29u)]));
    global0 = Struct_3(~_wgslsmith_div_vec3_i32(global1.a, abs(firstTrailingBit(vec3<i32>(1i, global0.a.x, global1.a.x)))), 1000f, 0u);
    global2 = array<vec2<bool>, 29>();
    return abs(global1.a.x) <= firstTrailingBit(max(-2191i, u_input.a.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !global2[_wgslsmith_index_u32(u_input.b, 29u)]), !select(global2[_wgslsmith_index_u32(global1.c, 29u)], global2[_wgslsmith_index_u32(global0.c, 29u)], global2[_wgslsmith_index_u32(global0.c, 29u)]), func_3()), global2[_wgslsmith_index_u32(0u, 29u)], !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(global0.c, 5385u))), 29u)]);
    global0 = Struct_3(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 44661u);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global0.b + -1000f), -1143f, -2644f, 691f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(140f, -818f, global0.b, global1.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-133f, global0.b, global1.b, 1921f))), vec4<bool>(var_0.x, true, true, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global0.b, 361f, global0.b), vec4<f32>(global0.b, 1000f, global1.b, global1.b), var_0.x))))))));
    var var_2 = _wgslsmith_clamp_vec4_i32(-u_input.a, u_input.a, _wgslsmith_div_vec4_i32(~abs(u_input.a), vec4<i32>(firstLeadingBit(arg_0 ^ -44802i), ~0i, ~_wgslsmith_dot_vec3_i32(u_input.a.xxx, global1.a), firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, arg_0, global1.a.x, 0i))))));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, _wgslsmith_dot_vec3_u32(~global4[_wgslsmith_index_u32(28633u, 16u)], global4[_wgslsmith_index_u32(~0u, 16u)]), _wgslsmith_clamp_u32(~(45349u ^ global0.c), u_input.b, 18877u), ~firstTrailingBit(1u)), global3[_wgslsmith_index_u32(u_input.b, 10u)]);
    return Struct_1(reverseBits(abs(99790u)), false);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    global1 = arg_3;
    global1 = Struct_3(countOneBits(_wgslsmith_add_vec3_i32(min(max(vec3<i32>(-2147483647i, global1.a.x, 1i), vec3<i32>(u_input.a.x, global1.a.x, -1i)), global1.a), vec3<i32>(-1i) * -global0.a)), _wgslsmith_f_op_f32(exp2(global1.b)), max(0u, 13721u));
    let var_0 = vec4<bool>(func_3(), arg_0.b, true, arg_0.b);
    var var_1 = _wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(func_2(i32(-1i) * -global0.a.x, 40775u, firstTrailingBit(vec3<i32>(select(6390i, global0.a.x, true), 2147483647i, 32462i))).a, 10u)], global3[_wgslsmith_index_u32(~arg_1, 10u)], countOneBits(global3[_wgslsmith_index_u32(abs(40201u), 10u)]));
    var var_2 = true;
    return Struct_3(abs(vec3<i32>(firstTrailingBit(-1i), max(global1.a.x, 1853i), abs(-1i))) << (~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(4294967295u), ~0u), 16u)] % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f))), global1.c);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_4(func_2(~(-42008i), 1u, global1.a ^ (-global0.a >> (select(global4[_wgslsmith_index_u32(10049u, 16u)], vec3<u32>(u_input.b, u_input.b, 59012u), vec3<bool>(true, false, true)) % vec3<u32>(32u)))), ~_wgslsmith_mod_u32(global0.c, global1.c), -528f, Struct_3(-vec3<i32>(35559i, global1.a.x, -1i) & select(min(global1.a, vec3<i32>(u_input.a.x, 0i, 41754i)), vec3<i32>(0i, global0.a.x, u_input.a.x), true), arg_0, _wgslsmith_mod_u32(min(4294967295u, 1u) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1.c), vec2<u32>(u_input.b, 4043u)), 4294967295u)));
    var var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(132f, -112f)))));
    let var_3 = vec2<u32>(4294967295u, ~abs(~_wgslsmith_clamp_u32(0u, 0u, 64514u)));
    global0 = Struct_3(u_input.a.yzx, _wgslsmith_f_op_f32(f32(-1f) * -294f), ~var_3.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 29>();
    global2 = array<vec2<bool>, 29>();
    var var_0 = vec2<f32>(-731f, _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(748f * -186f) - global0.b) + -794f))));
    let var_1 = func_1(-348f);
    var var_2 = ~68810u;
    let var_3 = 5567u;
    var var_4 = func_1(765f);
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1085f, -860f, 568f)))))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), global1.b, global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.a.x, var_0.x)), var_1.a.x, func_4(Struct_1(var_3, true), global0.c, -793f, Struct_3(vec3<i32>(-1i, -1i, 0i), -685f, var_3)).b)))));
    var_2 = 4375u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * -715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)), var_0.x, func_4(func_2(0i, 30547u, global0.a), global1.c | 31081u, _wgslsmith_f_op_f32(646f * global1.b), func_4(Struct_1(5959u, true), 31670u, -845f, Struct_3(vec3<i32>(-1i, -2147483647i, global0.a.x), var_4.a.x, 49663u))).b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 147f, -420f, global1.b)), vec4<f32>(-108f, _wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(-var_1.a.x), global0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -674f));
}

