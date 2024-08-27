struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(31840u, 24882u), vec2<u32>(28931u, 0u), vec2<u32>(10070u, 75907u), vec2<u32>(68519u, 4294967295u));

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, -47362i, i32(-2147483648)), vec3<i32>(1i, -42153i, 1i), vec3<i32>(-498i, 41667i, 22650i), vec3<i32>(0i, 2147483647i, 62091i), vec3<i32>(1i, 15756i, 2147483647i));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(1u, 1u), vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(vec2<u32>(22478u, 4294967295u), vec3<bool>(false, true, true), 1i), Struct_1(vec2<u32>(44327u, 48008u), vec3<bool>(true, true, false), -1i), Struct_1(vec2<u32>(27637u, 26231u), vec3<bool>(false, true, true), 0i), Struct_1(vec2<u32>(107758u, 1u), vec3<bool>(false, true, false), i32(-2147483648)), Struct_1(vec2<u32>(16080u, 4294967295u), vec3<bool>(true, false, false), -9546i), Struct_1(vec2<u32>(1u, 0u), vec3<bool>(false, false, true), 16292i), Struct_1(vec2<u32>(0u, 0u), vec3<bool>(true, true, true), 21835i), Struct_1(vec2<u32>(0u, 48711u), vec3<bool>(true, false, false), -1i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, true), 14225i), Struct_1(vec2<u32>(0u, 50391u), vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(vec2<u32>(66122u, 4131u), vec3<bool>(true, false, false), 8918i), Struct_1(vec2<u32>(4294967295u, 1u), vec3<bool>(false, true, true), -22294i), Struct_1(vec2<u32>(4294967295u, 69887u), vec3<bool>(true, true, false), 2147483647i), Struct_1(vec2<u32>(0u, 23724u), vec3<bool>(false, true, true), 68467i), Struct_1(vec2<u32>(1u, 51358u), vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec2<u32>(1u, 0u), vec3<bool>(true, false, true), 30908i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<bool>(false, true, true), 25609i), Struct_1(vec2<u32>(101451u, 2275u), vec3<bool>(true, false, true), -1i), Struct_1(vec2<u32>(109u, 4294967295u), vec3<bool>(false, false, false), -52994i), Struct_1(vec2<u32>(1u, 1u), vec3<bool>(true, false, false), -15124i), Struct_1(vec2<u32>(114165u, 2126u), vec3<bool>(true, true, true), -7254i));

var<private> global3: i32 = i32(-2147483648);

var<private> global4: i32 = -1i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global2 = array<Struct_1, 22>();
    let var_0 = arg_1.zzz;
    let var_1 = 497f;
    global3 = reverseBits(-arg_0.c);
    let var_2 = countOneBits(1u);
    return (firstTrailingBit(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(abs(13365u), 5u)], _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i), global1[_wgslsmith_index_u32(0u, 5u)]))) | 1i) << (max(1u, min(firstLeadingBit(4294967295u), _wgslsmith_div_u32(min(arg_1.x, u_input.a), 13962u))) % 32u);
}

fn func_2() -> vec4<bool> {
    global2 = array<Struct_1, 22>();
    global4 = _wgslsmith_mod_i32(2147483647i, ~func_3(Struct_1(min(global0[_wgslsmith_index_u32(u_input.a, 4u)], vec2<u32>(0u, u_input.a)), vec3<bool>(true, false, false), _wgslsmith_mult_i32(-3147i, -21418i)), vec4<u32>(firstTrailingBit(13031u), u_input.a, u_input.a, ~9300u)));
    var var_0 = min((-vec4<i32>(2147483647i, 1i, 27959i, -2147483647i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(28563u, u_input.a, u_input.a, 0u), vec4<u32>(1u, u_input.a, 27924u, u_input.a)), abs(vec4<u32>(32160u, u_input.a, 20945u, u_input.a))) % vec4<u32>(32u))) & firstLeadingBit(vec4<i32>(~34212i, 39755i, i32(-1i) * -34000i, 13908i)), -(~vec4<i32>(-9837i, 1i, abs(0i), reverseBits(2158i))));
    var var_1 = Struct_3(Struct_2(Struct_1(~(~global0[_wgslsmith_index_u32(1u, 4u)]), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), _wgslsmith_mod_i32(var_0.x, ~var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(686f * _wgslsmith_f_op_f32(f32(-1f) * -1337f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-607f)))))), select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), 53252u), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 22u)], 755f, select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), (-1i >> (u_input.a % 32u)) < var_0.x), 29961u));
    let var_2 = !select(select(!select(vec4<bool>(true, false, var_1.a.c.x, var_1.a.a.b.x), vec4<bool>(var_1.b.c.x, true, false, var_1.b.a.b.x), false), select(vec4<bool>(false, false, var_1.a.c.x, var_1.b.a.b.x), select(vec4<bool>(false, var_1.a.a.b.x, true, false), vec4<bool>(var_1.b.c.x, false, var_1.a.a.b.x, false), true), false), true), select(!select(vec4<bool>(false, true, var_1.b.c.x, var_1.a.a.b.x), vec4<bool>(var_1.b.c.x, var_1.a.a.b.x, var_1.b.c.x, var_1.a.c.x), vec4<bool>(true, true, var_1.a.a.b.x, true)), vec4<bool>(any(vec4<bool>(var_1.a.c.x, false, false, false)), false, var_1.a.a.b.x & false, all(var_1.a.a.b.yz)), true), select(!vec4<bool>(var_1.a.c.x, true, true, var_1.b.a.b.x), vec4<bool>(false, true, true, true), _wgslsmith_div_i32(var_0.x, -2147483647i) < 1i));
    return select(!(!(!(!var_2))), select(!vec4<bool>(true, var_2.x, true, false), !var_2, !select(var_1.a.a.c <= var_0.x, var_1.b.a.b.x, true)), vec4<bool>(true, var_1.b.c.x, var_1.b.c.x, !var_2.x));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = select(select(func_2(), !(!select(vec4<bool>(arg_1.a.a.b.x, true, arg_1.b.c.x, false), vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, arg_1.a.a.b.x, arg_1.a.c.x, arg_1.a.a.b.x))), select(!vec4<bool>(true, true, true, arg_1.b.a.b.x), !(!vec4<bool>(false, true, false, arg_1.b.c.x)), true)), !(!vec4<bool>(!arg_0, true, true, false)), all(vec4<bool>(arg_1.a.a.c != 21666i, !arg_0, all(!arg_1.b.a.b.zx), any(select(vec4<bool>(true, arg_1.b.c.x, true, true), vec4<bool>(false, arg_1.a.a.b.x, false, true), false)))));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(arg_2.x) ^ ~arg_2.x, firstTrailingBit(44410u)), arg_1.a.a.a.x), vec3<bool>(arg_0, all(vec2<bool>(true, true)), true), reverseBits(arg_1.b.a.c));
    global0 = array<vec2<u32>, 4>();
    var var_2 = arg_1;
    let var_3 = _wgslsmith_sub_vec2_u32(select(~_wgslsmith_mod_vec2_u32(arg_1.b.a.a, vec2<u32>(0u, 0u) >> (vec2<u32>(0u, var_1.a.x) % vec2<u32>(32u))), vec2<u32>(~firstLeadingBit(9489u), ~arg_2.x), !select(vec2<bool>(var_0.x, true), var_2.a.a.b.zx, select(vec2<bool>(true, true), vec2<bool>(var_1.b.x, true), true))), select(arg_2.yy, ~vec2<u32>(u_input.a, var_1.a.x) & ~vec2<u32>(arg_2.x, var_2.b.a.a.x), var_0.wz));
    return Struct_2(Struct_1(abs(var_3), vec3<bool>(firstTrailingBit(15872u) > 34315u, var_2.b.c.x, true), 1i >> (0u % 32u)), -1000f, !select(var_0.wxy, var_1.b, select(vec3<bool>(arg_1.a.a.b.x, var_0.x, arg_1.b.c.x), !vec3<bool>(var_2.b.a.b.x, true, false), any(var_0))), _wgslsmith_add_u32(var_1.a.x, firstTrailingBit(arg_1.a.a.a.x)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = Struct_3(func_1(true, Struct_3(arg_0.a, func_1(!arg_0.b.c.x, Struct_3(arg_0.a, Struct_2(arg_0.a.a, 1000f, vec3<bool>(true, arg_0.b.a.b.x, arg_0.b.a.b.x), 41016u)), vec3<u32>(u_input.a, 54784u, 4294967295u), firstTrailingBit(global1[_wgslsmith_index_u32(34339u, 5u)]))), ~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 55373u), vec3<u32>(arg_0.b.a.a.x, 51119u, arg_0.a.a.a.x))), _wgslsmith_clamp_vec3_i32(global1[_wgslsmith_index_u32(4294967295u, 5u)], abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.a.c, arg_0.a.a.c, 41523i), global1[_wgslsmith_index_u32(var_0, 5u)])), abs(_wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(76931u, 5u)])))), arg_0.b);
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(var_1.b.a.c, var_1.b.a.c), _wgslsmith_add_i32(i32(-1i) * -2147483647i, -var_1.a.a.c), var_1.b.a.c, 45738i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.b, -339f) + arg_0.a.b);
    var var_4 = arg_0.b.a.a.x;
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_4(Struct_3(func_1(true, Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 11479u), vec3<bool>(false, false, false), -1i), -1896f, vec3<bool>(false, true, false), 4294967295u), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 22u)], -1067f, vec3<bool>(true, true, false), 8955u)), vec3<u32>(50969u, u_input.a, 4294967295u), vec3<i32>(1i, -12878i, -2147483647i)), Struct_2(Struct_1(vec2<u32>(36373u, 4294967295u), vec3<bool>(false, true, true), -2147483647i), -329f, vec3<bool>(true, false, false), u_input.a))), -1311f, func_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 22u)], 708f, vec3<bool>(true, true, false), 35437u), Struct_2(global2[_wgslsmith_index_u32(1u, 22u)], 1060f, vec3<bool>(false, false, false), u_input.a))).b, ~u_input.a), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 22u)], 1f, vec3<bool>(true, false, false), func_1(true, Struct_3(func_1(true, Struct_3(Struct_2(global2[_wgslsmith_index_u32(2627u, 22u)], -1475f, vec3<bool>(true, false, true), u_input.a), Struct_2(Struct_1(vec2<u32>(u_input.a, 4294967295u), vec3<bool>(false, false, false), 2147483647i), -235f, vec3<bool>(false, true, true), u_input.a)), vec3<u32>(13918u, 46088u, 0u), global1[_wgslsmith_index_u32(u_input.a, 5u)]), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 22u)], 559f, vec3<bool>(false, false, false), 4294967295u)), select(vec3<u32>(u_input.a, 0u, 40572u), ~vec3<u32>(u_input.a, 40722u, 58909u), vec3<bool>(true, true, true)), ~abs(vec3<i32>(-1i, 41177i, 2147483647i))).a.a.x));
    var var_1 = max(_wgslsmith_clamp_vec2_i32((~vec2<i32>(var_0.a.a.c, 1i) >> (vec2<u32>(57099u, 73010u) % vec2<u32>(32u))) << (vec2<u32>(~u_input.a, abs(0u)) % vec2<u32>(32u)), abs(-vec2<i32>(var_0.b.a.c, 2147483647i) & vec2<i32>(2147483647i, 1i)), ~(-(vec2<i32>(-5396i, var_0.b.a.c) & vec2<i32>(var_0.a.a.c, var_0.a.a.c)))), -(~vec2<i32>(-var_0.b.a.c, var_0.b.a.c)));
    var var_2 = vec4<u32>(~u_input.a, 4294967295u << (max(var_0.a.a.a.x ^ 4294967295u, 52358u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.a), _wgslsmith_div_u32(var_0.a.d, 37726u), 0u, ~1u), _wgslsmith_div_vec4_u32(vec4<u32>(68808u, var_0.a.d, 23875u, 43710u), vec4<u32>(7865u, 98488u, var_0.b.a.a.x, 2887u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(0u, 8518u, 61109u, var_0.b.d), vec4<u32>(u_input.a, var_0.b.a.a.x, u_input.a, 44888u)) % vec4<u32>(32u))), ~11342u) ^ ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0.b.a.a.x, 8122u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))));
    let var_3 = false & var_0.a.a.b.x;
    global3 = -2147483647i >> ((_wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, var_0.a.d, 56795u) >> (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))), ~select(var_2.xwx, vec3<u32>(u_input.a, 51039u, var_2.x), var_3)) >> ((~max(12434u, 16804u) | (~2475u & var_2.x)) % 32u)) % 32u);
    var var_4 = Struct_3(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(-970f * -729f), var_0.a.c, ~(~0u)), var_0.b);
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(vec2<i32>(3726i, 0i), select(vec2<i32>(-51801i, var_4.b.a.c), vec2<i32>(0i, -1i), vec2<bool>(var_5.b.a.b.x, var_0.b.c.x)) << (~global0[_wgslsmith_index_u32(var_0.a.a.a.x, 4u)] % vec2<u32>(32u)))), var_0.a.a.c, countOneBits(_wgslsmith_mod_vec2_u32(countOneBits(var_2.yw), ~global0[_wgslsmith_index_u32(u_input.a, 4u)])), -1i, _wgslsmith_mod_vec2_i32(~(-vec2<i32>(6803i, var_5.a.a.c)), min(~_wgslsmith_sub_vec2_i32(vec2<i32>(-6819i, -31857i), vec2<i32>(-1i, var_4.b.a.c)), abs(vec2<i32>(-2147483647i, 2147483647i) >> (var_4.a.a.a % vec2<u32>(32u))))));
}

