struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 20746u, 0u, 0u), vec4<u32>(1u, 21635u, 4696u, 4294967295u), vec4<u32>(0u, 0u, 1u, 84053u), vec4<u32>(78922u, 13734u, 4294967295u, 0u), vec4<u32>(24856u, 0u, 4294967295u, 39044u), vec4<u32>(68998u, 1u, 21916u, 8985u), vec4<u32>(4294967295u, 12741u, 19768u, 0u), vec4<u32>(4294967295u, 98004u, 9195u, 3626u), vec4<u32>(1u, 1u, 49857u, 0u), vec4<u32>(0u, 54213u, 98975u, 0u), vec4<u32>(1u, 0u, 36569u, 0u));

var<private> global3: array<bool, 1> = array<bool, 1>(false);

var<private> global4: array<i32, 2> = array<i32, 2>(16772i, 1i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = select(vec2<bool>(any(vec3<bool>(any(vec2<bool>(true, true)), !global3[_wgslsmith_index_u32(1u, 1u)], !arg_0.a)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(65879u, u_input.a), vec2<u32>(8394u, 21629u))) != u_input.a), vec2<bool>(true, (-global4[_wgslsmith_index_u32(0u, 2u)] << (_wgslsmith_mult_u32(14591u, u_input.a) % 32u)) <= firstTrailingBit(0i)), global3[_wgslsmith_index_u32(u_input.a, 1u)]);
    global3 = array<bool, 1>();
    let var_1 = Struct_3(any(vec4<bool>(arg_0.a, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(3692u, 42482u), 1u)], any(vec2<bool>(false, false)), arg_0.a)), arg_0.b, 1i);
    global2 = array<vec4<u32>, 11>();
    var_0 = !select(vec2<bool>((var_1.a || true) | (u_input.a == 21017u), any(!vec3<bool>(arg_0.b.d, arg_0.b.d, global3[_wgslsmith_index_u32(u_input.a, 1u)]))), !select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(97105u, 1u)]), vec2<bool>(false, var_0.x), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], var_1.a)), !vec2<bool>(false, var_1.a), true == arg_0.b.c), !(!select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), false)));
    return !(!select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 1u)], false, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, global3[_wgslsmith_index_u32(131817u, 1u)], var_1.b.d)), vec4<bool>(false, var_0.x, false, var_0.x), true), !select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(false, false, true, var_1.b.c), vec4<bool>(var_0.x, var_1.b.d, var_0.x, arg_0.a)), arg_0.b.c));
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_2(false, func_3(global0[_wgslsmith_index_u32(~4294967295u, 29u)]), ~global4[_wgslsmith_index_u32(min(min(abs(u_input.a), u_input.a), ~18120u), 2u)]);
    global4 = array<i32, 2>();
    var var_1 = vec3<u32>(~(_wgslsmith_mult_u32(17116u, u_input.a) >> (_wgslsmith_clamp_u32(21622u, u_input.a | u_input.a, abs(1291u)) % 32u)), u_input.a, ~u_input.a);
    let var_2 = _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(~(~1u), 11u)], vec4<u32>(min(13138u, var_1.x), _wgslsmith_mod_u32(var_1.x, 34632u), u_input.a >> (8926u % 32u), ~0u))) >> (_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(20688u, 1u, ~u_input.a, 4294967295u)), countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8954u, u_input.a, 56757u), vec4<u32>(48865u, 6918u, var_1.x, 1u)), max(20214u, 1u)), 11u)])) % vec4<u32>(32u));
    let var_3 = Struct_4(global2[_wgslsmith_index_u32(~(~max(var_1.x & u_input.a, var_2.x)), 11u)], Struct_2(var_0.b.x, var_0.b, _wgslsmith_add_i32(var_0.c, min(-31730i, var_0.c & var_0.c))), Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_2.x, var_2.x), 2u)] > arg_0.x, Struct_1(-2147483647i, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_div_i32(global4[_wgslsmith_index_u32(17791u, 2u)], 0i)), false || (1436u <= var_2.x), all(vec3<bool>(var_0.b.x, false, var_0.a)) | true), global4[_wgslsmith_index_u32(var_2.x, 2u)]));
    return var_3;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 29u)];
    let var_1 = vec3<u32>(5413u, u_input.a, reverseBits((abs(u_input.a) | reverseBits(77360u)) << (81053u % 32u)));
    let var_2 = func_2(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-1i) * -vec4<i32>(arg_1, arg_1, -33332i, -1i)), abs(vec4<i32>(-global4[_wgslsmith_index_u32(var_1.x, 2u)], 1i, global4[_wgslsmith_index_u32(firstTrailingBit(37133u), 2u)], ~global4[_wgslsmith_index_u32(u_input.a, 2u)]))));
    let var_3 = 600f;
    global0 = array<Struct_3, 29>();
    return func_2(select(max(vec4<i32>(i32(-1i) * -23416i, 0i ^ var_2.c.b.a, firstLeadingBit(-22076i), i32(-1i) * -2147483647i), countOneBits(abs(vec4<i32>(1i, 0i, var_2.b.c, var_2.c.c)))), ~vec4<i32>(1i, var_0.c, _wgslsmith_sub_i32(23629i, var_2.c.c), _wgslsmith_sub_i32(var_0.c, -1i)), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c.b.a, global4[_wgslsmith_index_u32(72211u, 2u)], arg_1, -20558i), vec4<i32>(34373i, -64168i, -2147483647i, var_0.b.a)) >> (vec4<u32>(u_input.a, 44184u, 47398u, u_input.a) % vec4<u32>(32u))).b.b)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 1165f), -1027f))) * -1162f), _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(44898i, global4[_wgslsmith_index_u32(95818u, 2u)]), 1i), select(vec2<i32>(_wgslsmith_sub_i32(-16355i, -16812i), ~global4[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<i32>(0i, global4[_wgslsmith_index_u32(~u_input.a, 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 1u)], true))));
    var var_1 = vec2<bool>(var_0.a, var_0.b.x);
    var var_2 = Struct_2(!func_3(func_2(countOneBits(vec4<i32>(var_0.c, global4[_wgslsmith_index_u32(u_input.a, 2u)], 46031i, var_0.c))).c).x, vec4<bool>(!all(select(var_0.b.wzw, vec3<bool>(var_1.x, var_1.x, var_1.x), var_0.a)), true, var_0.c >= global4[_wgslsmith_index_u32(u_input.a, 2u)], ~(-var_0.c) == 77334i), -var_0.c);
    global4 = array<i32, 2>();
    global2 = array<vec4<u32>, 11>();
    let var_3 = func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 2u)], 39269i, var_0.c, 1i), vec4<i32>(-15425i, 1i, var_2.c, global4[_wgslsmith_index_u32(0u, 2u)])), min(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 2u)], -79635i, global4[_wgslsmith_index_u32(u_input.a, 2u)], var_0.c), vec4<i32>(var_0.c, global4[_wgslsmith_index_u32(4294967295u, 2u)], var_2.c, var_0.c)), ~vec4<i32>(var_2.c, var_2.c, 2147483647i, -23539i)), abs(vec4<i32>(var_2.c, var_0.c, global4[_wgslsmith_index_u32(u_input.a, 2u)], var_2.c) & vec4<i32>(12009i, global4[_wgslsmith_index_u32(u_input.a, 2u)], -1i, var_0.c))), -29530i, var_2.c, -1i)).b;
    global4 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(vec2<i32>(-2147483647i, 2147483647i) | vec2<i32>(-1i, var_0.c)) | ~vec2<i32>(-31773i, var_0.c)), ~(~_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 391f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1869f * -2090f), _wgslsmith_f_op_f32(-871f * 1561f)) + vec2<f32>(-782f, -736f))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~u_input.a) | _wgslsmith_div_vec2_u32(~vec2<u32>(54723u, u_input.a), ~vec2<u32>(21113u, 0u)), ~(vec2<u32>(1u, 1u) & vec2<u32>(u_input.a, 4294967295u))), ~1u);
}

