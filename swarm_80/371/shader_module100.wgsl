struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<bool, 12>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    global1 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1566f), arg_0, -1529f, arg_1.d));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 542f) * arg_0), arg_1.c, 1000f));
    global0 = array<vec2<i32>, 11>();
    var var_1 = ~(~(~abs(~u_input.a)));
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~countOneBits(67616u), 4294967295u, _wgslsmith_add_u32(4294967295u, select(var_1.x, _wgslsmith_sub_u32(u_input.a.x, 117245u), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 86450u), 12u)]))), countOneBits(countOneBits(4294967295u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = countOneBits(firstLeadingBit(_wgslsmith_div_i32(-(~(-24598i)), firstTrailingBit(reverseBits(-35015i)))));
    var var_1 = Struct_3(var_0, vec4<i32>(5001i, 89185i, _wgslsmith_mult_i32(var_0, -2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(arg_1.a.a.x, 11u)], global0[_wgslsmith_index_u32(~4294967295u, 11u)]), firstLeadingBit(i32(-1i) * -19185i))), arg_1.a);
    let var_2 = Struct_1(countOneBits(vec4<u32>(firstLeadingBit(27006u), ~_wgslsmith_add_u32(67878u, u_input.a.x), ~abs(u_input.a.x), firstTrailingBit(1u))));
    var var_3 = Struct_5(Struct_2(Struct_1(~countOneBits(vec4<u32>(var_1.c.a.x, arg_1.b.a.a.x, 1u, 73935u))), var_1.c, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(select(349f, arg_0.x, arg_1.c.x)), arg_1.b.a), _wgslsmith_sub_u32(~(~arg_1.b.b.a.x), _wgslsmith_sub_u32(var_2.a.x, _wgslsmith_clamp_u32(0u, 6089u, u_input.a.x))) ^ ((var_2.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a.x, u_input.a.x, u_input.a.x, 0u), u_input.a)) & max(~var_2.a.x, u_input.a.x)));
    return vec4<u32>(func_3(-2237f, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), firstLeadingBit(_wgslsmith_dot_vec3_u32(var_3.a.e.a.ywy, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.a.x, 35741u, 11653u) & vec3<u32>(arg_1.a.a.x, 7746u, u_input.a.x), vec3<u32>(var_3.a.e.a.x, var_1.c.a.x, 4294967295u), u_input.a.xzw))), var_3.a.b.a.x, ~u_input.a.x);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(-(~787i), -(vec4<i32>(~(-49422i), 9401i << (arg_0 % 32u), -6101i, 1i) | -abs(vec4<i32>(30558i, -2147483647i, -54921i, -14274i))), Struct_1(abs(max(func_2(vec4<f32>(1000f, 458f, 757f, -958f), Struct_4(Struct_1(u_input.a), global1[_wgslsmith_index_u32(arg_0, 30u)], vec2<bool>(false, global2[_wgslsmith_index_u32(35039u, 12u)]))), ~vec4<u32>(24988u, 41099u, 79762u, 13411u)))));
    global0 = array<vec2<i32>, 11>();
    global2 = array<bool, 12>();
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mult_i32(min(2147483647i, 0i), var_0.b.x)), 15818i), var_0.b.x);
    var var_2 = !global2[_wgslsmith_index_u32(1u, 12u)];
    return Struct_3(_wgslsmith_add_i32(var_1.x, ~(-39327i >> (abs(arg_0) % 32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, var_0.a, 87046i, var_1.x), vec4<i32>(0i, 1i, 869i, 38185i))), ~(-var_0.b)), ~(var_0.b >> (var_0.c.a % vec4<u32>(32u))) | var_0.b), Struct_1(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(~u_input.a.zw, vec2<u32>(arg_0, 38282u) | vec2<u32>(arg_0, 66696u)), u_input.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> StorageBuffer {
    let var_0 = vec4<bool>(!select(true && global2[_wgslsmith_index_u32(4294967295u, 12u)], !arg_1.c.x, !(-316i <= arg_0.b.x)), !global2[_wgslsmith_index_u32(4294967295u | u_input.a.x, 12u)], global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.d, arg_1.b.c, 636f, -1677f) + vec4<f32>(-1000f, arg_1.b.d, 584f, arg_1.b.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(364f, arg_1.b.d, arg_1.b.c, arg_1.b.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2149f, arg_1.b.d, -145f, arg_1.b.d))), select(select(vec4<bool>(true, arg_1.c.x, global2[_wgslsmith_index_u32(33821u, 12u)], true), vec4<bool>(false, arg_1.c.x, false, false), arg_1.c.x), select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.c.a.x, 12u)], global2[_wgslsmith_index_u32(arg_0.c.a.x, 12u)], false), vec4<bool>(false, arg_1.c.x, arg_1.c.x, false), arg_1.c.x), select(vec4<bool>(false, arg_1.c.x, true, true), vec4<bool>(arg_1.c.x, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 12u)], arg_1.c.x, arg_1.c.x, false))))), arg_1).x, 12u)], !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(533f - -138f), arg_1.b.d, arg_1.c.x)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.d)))));
    let var_1 = arg_0.b.x;
    global2 = array<bool, 12>();
    global1 = array<Struct_2, 30>();
    let var_2 = min(_wgslsmith_sub_i32(~min(-arg_0.a, firstLeadingBit(arg_0.b.x)), (~1i >> (func_3(arg_1.b.c, Struct_2(arg_1.a, arg_1.a, 888f, -548f, Struct_1(vec4<u32>(arg_1.b.b.a.x, arg_0.c.a.x, arg_0.c.a.x, 83486u)))) % 32u)) << (37455u % 32u)), -26398i);
    return StorageBuffer(502f, _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(arg_0.c.a >> (u_input.a % vec4<u32>(32u)), ~arg_0.c.a), ~(~(~vec4<u32>(4294967295u, 0u, u_input.a.x, arg_0.c.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    var var_0 = abs(~vec2<u32>(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x & u_input.a.x, abs(u_input.a.x)), ~24576u));
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(~var_0.x, 30u)], 2536u);
    let var_2 = var_0.x >> (var_0.x % 32u);
    global1 = array<Struct_2, 30>();
    let var_3 = ~(~(-_wgslsmith_mod_i32(-11552i, 1i << (0u % 32u))));
    let x = u_input.a;
    s_output = func_4(func_1(~49052u), Struct_4(Struct_1(u_input.a), Struct_2(func_1(var_0.x).c, var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(986f)))), Struct_1(u_input.a << (vec4<u32>(55153u, var_0.x, var_0.x, var_2) % vec4<u32>(32u)))), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)])))));
}

