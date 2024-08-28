struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<u32>(11860u, 1u, 65418u), 4384i), Struct_1(vec3<u32>(0u, 0u, 25493u), 1i), Struct_1(vec3<u32>(1u, 0u, 25326u), 20008i), Struct_1(vec3<u32>(40282u, 0u, 1u), 17427i), Struct_1(vec3<u32>(0u, 22794u, 1u), 35665i), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 1i), Struct_1(vec3<u32>(22823u, 104u, 14965u), 1i), Struct_1(vec3<u32>(4294967295u, 6417u, 19716u), -1i), Struct_1(vec3<u32>(30568u, 4294967295u, 12u), -1i), Struct_1(vec3<u32>(1u, 1u, 4294967295u), -1i), Struct_1(vec3<u32>(21970u, 0u, 1u), 0i), Struct_1(vec3<u32>(61914u, 4294967295u, 1u), 30659i), Struct_1(vec3<u32>(4294967295u, 36293u, 4294967295u), 26347i), Struct_1(vec3<u32>(0u, 21368u, 1u), 17999i), Struct_1(vec3<u32>(23316u, 0u, 27463u), -32101i), Struct_1(vec3<u32>(4294967295u, 73782u, 4661u), -54692i), Struct_1(vec3<u32>(0u, 2845u, 0u), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 0u, 1585u), -16105i), Struct_1(vec3<u32>(27866u, 0u, 1u), 0i), Struct_1(vec3<u32>(1u, 1u, 35271u), 0i), Struct_1(vec3<u32>(49097u, 4294967295u, 9403u), 0i), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 2147483647i), Struct_1(vec3<u32>(0u, 32071u, 38205u), 43326i));

var<private> global2: array<vec4<f32>, 11>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec2<i32> {
    let var_0 = !select(vec3<bool>(!(global3.x | false), all(select(vec4<bool>(true, false, true, false), vec4<bool>(global3.x, global3.x, true, false), false)), select(global3.x, true, false) | any(vec2<bool>(global3.x, global3.x))), select(select(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, global3.x, global3.x), false), !vec3<bool>(global3.x, true, true), global3.x), vec3<bool>(global3.x | global3.x, !global3.x, global3.x), select(global3.x, !global3.x, any(global3.xz))), !select(!vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x), false));
    global0 = array<vec2<bool>, 21>();
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(min(u_input.a & u_input.a, 4294967295u & u_input.a), 20905u, _wgslsmith_div_u32(min(u_input.a, u_input.a), 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 24725u), countOneBits(vec3<u32>(0u, u_input.a, 0u))) & ~_wgslsmith_div_vec3_u32(vec3<u32>(30271u, 20252u, u_input.a), vec3<u32>(u_input.a, u_input.a, 5302u))), -2147483647i);
    return -vec2<i32>(59956i & -u_input.c.x, _wgslsmith_sub_i32(arg_1, 1i));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global2 = array<vec4<f32>, 11>();
    var var_0 = global1[_wgslsmith_index_u32(arg_0, 23u)];
    let var_1 = Struct_1(vec3<u32>(select(39344u, ~1u, true), ~_wgslsmith_dot_vec3_u32(var_0.a, var_0.a), 66582u) ^ (firstLeadingBit(~var_0.a) << (~(~var_0.a) % vec3<u32>(32u))), select(-u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(19378i, u_input.d)), _wgslsmith_div_vec2_i32(u_input.b.yx, vec2<i32>(u_input.d, 2147483647i))), _wgslsmith_div_vec2_i32(func_3(u_input.b, -24307i), u_input.b.zx)), all(global3.zx)));
    let var_2 = 45187i;
    let var_3 = true;
    return vec2<bool>(var_3, all(vec3<bool>(any(select(vec2<bool>(true, true), global3.zz, var_3)), var_3, global3.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(vec3<u32>(70347u, ~86943u, ~0u ^ u_input.a)), -abs((u_input.b.x | u_input.b.x) ^ 0i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-630f * -1070f) + -676f), -1025f)), _wgslsmith_f_op_f32(sign(780f)), _wgslsmith_div_f32(348f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -959f)))));
    var var_2 = select(!select(global3.xy, !func_2(8150u), true), vec2<bool>(global3.x, !global3.x), u_input.a < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, _wgslsmith_add_u32(1u, u_input.a), var_0.a.x, abs(4294967295u)), vec4<u32>(4294967295u, var_0.a.x, u_input.a, 121579u) ^ ~vec4<u32>(var_0.a.x, 79895u, 0u, u_input.a)));
    var var_3 = select(vec4<bool>(var_2.x, all(select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, global3.x, var_2.x), global3.x), select(vec3<bool>(false, false, var_2.x), vec3<bool>(false, false, var_2.x), vec3<bool>(global3.x, var_2.x, true)), select(vec3<bool>(true, false, global3.x), vec3<bool>(false, var_2.x, false), vec3<bool>(global3.x, var_2.x, global3.x)))), 0u == u_input.a, _wgslsmith_mult_u32(~var_0.a.x, u_input.a) < 25819u), !(!vec4<bool>(true, !global3.x, true, var_2.x)), true);
    var var_4 = func_3(abs(reverseBits(~(~u_input.b))), ~_wgslsmith_mod_i32(2147483647i, i32(-1i) * -1i)).x;
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~(~var_0.a.yz), vec2<u32>(7795u, var_0.a.x) << (var_0.a.yy % vec2<u32>(32u))), reverseBits(var_0.a.x), 4294967295u), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = true;
    global3 = !select(vec3<bool>(true, true, true), vec3<bool>(select(!var_1, all(vec4<bool>(var_1, true, false, global3.x)), any(vec2<bool>(false, global3.x))), !(!global3.x), true == global3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(111f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-631f, -244f))));
    global1 = array<Struct_1, 23>();
    var var_2 = global1[_wgslsmith_index_u32(~(~u_input.a), 23u)];
    let var_3 = 32941u;
    let var_4 = func_1();
    let var_5 = max(firstLeadingBit(u_input.b), _wgslsmith_div_vec3_i32(~(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b) >> ((var_4.a | var_2.a) % vec3<u32>(32u))), vec3<i32>(-2147483647i, _wgslsmith_mult_i32(func_1().b, ~0i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_4.b, 1i, -2147483647i)) << (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c, ~abs(vec2<i32>(var_2.b, 30828i))), vec2<i32>(var_4.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-17925i, -1i), -2147483647i))), firstLeadingBit(vec4<i32>(-var_4.b, var_0, var_5.x, 2147483647i)), vec4<i32>(abs(reverseBits(_wgslsmith_add_i32(var_5.x, -1i))), -(~var_2.b) << ((_wgslsmith_mult_u32(31406u, 1u) & ~var_2.a.x) % 32u), -func_1().b, -20664i), ~var_4.b, (firstTrailingBit(~u_input.b.xz) << (((var_2.a.yz | var_2.a.xz) ^ vec2<u32>(var_4.a.x, var_3)) % vec2<u32>(32u))) ^ (~_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.b, var_2.b), var_5.zy) | ((var_5.xy | u_input.c) << ((vec2<u32>(0u, 33746u) | var_4.a.xx) % vec2<u32>(32u)))));
}

