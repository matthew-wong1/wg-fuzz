struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(1u, vec2<bool>(true, true), 3407u, 24515u), Struct_1(19743u, vec2<bool>(false, true), 121729u, 90673u), vec2<i32>(-34272i, 2147483647i), vec2<u32>(61797u, 1u)), Struct_2(Struct_1(0u, vec2<bool>(false, false), 4294967295u, 52091u), Struct_1(23950u, vec2<bool>(false, false), 27107u, 63741u), vec2<i32>(63643i, -8772i), vec2<u32>(50067u, 28878u)), Struct_2(Struct_1(86218u, vec2<bool>(true, true), 47847u, 45145u), Struct_1(1u, vec2<bool>(false, false), 93204u, 1u), vec2<i32>(-46390i, 0i), vec2<u32>(35148u, 4294967295u)), Struct_2(Struct_1(0u, vec2<bool>(false, true), 4294967295u, 27541u), Struct_1(4294967295u, vec2<bool>(false, true), 4294967295u, 37991u), vec2<i32>(0i, 30421i), vec2<u32>(64186u, 81881u)), Struct_2(Struct_1(1u, vec2<bool>(true, false), 1u, 4294967295u), Struct_1(1u, vec2<bool>(true, false), 1u, 4294967295u), vec2<i32>(1i, 0i), vec2<u32>(13430u, 1u)), Struct_2(Struct_1(10773u, vec2<bool>(false, false), 4294967295u, 15778u), Struct_1(4294967295u, vec2<bool>(true, true), 20599u, 1u), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(0u, 1u)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), 0u, 0u), Struct_1(62718u, vec2<bool>(true, false), 0u, 81753u), vec2<i32>(2147483647i, -1i), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(0u, vec2<bool>(true, true), 4294967295u, 1u), Struct_1(4294967295u, vec2<bool>(false, false), 48756u, 33954u), vec2<i32>(49253i, 1i), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(1u, vec2<bool>(true, false), 23871u, 0u), Struct_1(1u, vec2<bool>(false, true), 4294967295u, 61694u), vec2<i32>(0i, 2147483647i), vec2<u32>(23618u, 1u)), Struct_2(Struct_1(62068u, vec2<bool>(false, false), 24152u, 1746u), Struct_1(1u, vec2<bool>(true, true), 4294967295u, 4294967295u), vec2<i32>(1i, -6856i), vec2<u32>(46488u, 0u)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, true), 88264u, 0u), Struct_1(8272u, vec2<bool>(false, true), 0u, 1u), vec2<i32>(i32(-2147483648), 2067i), vec2<u32>(1u, 58473u)));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(4294967295u, vec2<bool>(false, false), 1u, 45649u), Struct_1(13187u, vec2<bool>(false, true), 4294967295u, 0u), Struct_1(0u, vec2<bool>(false, true), 45379u, 39471u), Struct_1(1u, vec2<bool>(false, false), 4294967295u, 33567u), Struct_1(55892u, vec2<bool>(true, false), 7863u, 70589u), Struct_1(0u, vec2<bool>(false, true), 0u, 4294967295u), Struct_1(34312u, vec2<bool>(false, true), 407u, 1u), Struct_1(1u, vec2<bool>(true, true), 1u, 12241u), Struct_1(0u, vec2<bool>(true, false), 8722u, 8847u), Struct_1(74509u, vec2<bool>(true, false), 29284u, 4294967295u), Struct_1(4294967295u, vec2<bool>(false, false), 1u, 4294967295u), Struct_1(4294967295u, vec2<bool>(true, true), 30550u, 4294967295u), Struct_1(0u, vec2<bool>(false, false), 35652u, 76821u), Struct_1(4294967295u, vec2<bool>(true, false), 49509u, 0u), Struct_1(4085u, vec2<bool>(false, true), 0u, 66665u), Struct_1(1u, vec2<bool>(true, false), 69703u, 20699u), Struct_1(15138u, vec2<bool>(true, true), 2101u, 0u), Struct_1(51136u, vec2<bool>(true, false), 72059u, 1u), Struct_1(31611u, vec2<bool>(false, true), 65638u, 1u), Struct_1(1u, vec2<bool>(true, false), 0u, 52830u), Struct_1(1u, vec2<bool>(false, false), 89604u, 4294967295u));

var<private> global3: array<f32, 31> = array<f32, 31>(-1000f, 195f, 1007f, -740f, 996f, 2787f, -1640f, 715f, 2090f, 1000f, 1680f, 1260f, 1111f, -1000f, 170f, 1925f, -880f, -795f, 606f, 1000f, -1022f, -467f, -867f, -1000f, -566f, -1053f, -2075f, -1013f, -1732f, -898f, 587f);

var<private> global4: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = global1.a;
    global0 = array<Struct_2, 11>();
    var var_2 = countOneBits(global1.c.x);
    global0 = array<Struct_2, 11>();
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global1 = Struct_2(global2[_wgslsmith_index_u32(global1.b.c, 21u)], Struct_1(u_input.c.x, select(vec2<bool>(arg_0.b.x && global4.b.b.x, !arg_0.b.x), func_2(~vec2<i32>(2147483647i, global1.c.x), global0[_wgslsmith_index_u32(29372u, 11u)], ~15909u).b, global1.a.b.x), ~arg_1.a.a, global4.b.a ^ firstTrailingBit(41640u)), max(abs(u_input.e.xx) << (~(~vec2<u32>(1u, arg_0.d)) % vec2<u32>(32u)), ~vec2<i32>(u_input.d.x, arg_1.c.x)), _wgslsmith_clamp_vec2_u32(global1.d, vec2<u32>(~95955u, 4294967295u), reverseBits(firstTrailingBit(vec2<u32>(global4.b.a, 0u)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1078f, 474f) + vec2<f32>(450f, -2041f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global1.a.c, 31u)], -616f) + vec2<f32>(244f, -403f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, global3[_wgslsmith_index_u32(0u, 31u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, global3[_wgslsmith_index_u32(8516u, 31u)])))), vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(11577u, u_input.c.x), 31u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(57479u, 31u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(func_2(vec2<i32>(0i, arg_1.c.x), Struct_2(Struct_1(1u, global4.b.b, 5099u, global4.a.a), arg_0, arg_1.c, u_input.a.zy), arg_0.d).c, 31u)])), 1036f)));
    global2 = array<Struct_1, 21>();
    var var_1 = Struct_2(func_2(~(vec2<i32>(global1.c.x, 1i) ^ ~vec2<i32>(arg_1.c.x, -77446i)), arg_1, 47209u), func_2(arg_1.c, global0[_wgslsmith_index_u32(arg_1.d.x, 11u)], ~u_input.a.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global1.c, vec2<i32>(-17042i, global1.c.x)), vec2<i32>(-1i) * -u_input.d.yy, global4.c) ^ vec2<i32>(global4.c.x, ~(-u_input.e.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(global1.b.a), ~func_2(vec2<i32>(0i, global1.c.x), Struct_2(global2[_wgslsmith_index_u32(0u, 21u)], Struct_1(0u, vec2<bool>(true, arg_1.b.b.x), arg_0.d, arg_0.d), global1.c, vec2<u32>(1u, global1.a.d)), global1.a.d).a), ~global1.d));
    let var_2 = -1125f;
    return countOneBits(0u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_2 {
    global3 = array<f32, 31>();
    var var_0 = false;
    return Struct_2(Struct_1(96432u, select(!global1.a.b, !(!global4.b.b), vec2<bool>(true, !arg_0)), global4.d.x << (1u % 32u), 0u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(global1.a, Struct_2(func_2(vec2<i32>(-54775i, 30031i), Struct_2(Struct_1(arg_3.x, global4.b.b, global4.b.c, u_input.a.x), global1.b, vec2<i32>(u_input.e.x, arg_2.x), vec2<u32>(0u, 0u)), 1u), func_2(vec2<i32>(-46233i, global4.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 11u)], arg_3.x), -vec2<i32>(arg_2.x, global4.c.x), vec2<u32>(0u, arg_1))), ~(~_wgslsmith_mod_u32(27023u, 23333u))), 21u)], _wgslsmith_mult_vec2_i32(vec2<i32>((2147483647i ^ global4.c.x) ^ ~(-30450i), ~global1.c.x), -abs(select(global4.c, vec2<i32>(arg_2.x, u_input.e.x), global1.b.b))), _wgslsmith_sub_vec2_u32(~vec2<u32>(17005u << (u_input.b % 32u), ~global1.b.a), global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, ~min(_wgslsmith_add_u32(~global4.d.x, 1u), firstTrailingBit(0u) >> (~global1.a.c % 32u)), vec2<i32>(i32(-1i) * -2147483647i, global4.c.x), vec4<u32>(abs(global4.a.a), ~u_input.a.x, 61480u, global1.b.c));
    var var_1 = vec4<i32>(-2147483647i, -1i | abs(u_input.e.x), ~global1.c.x, abs(countOneBits(reverseBits(var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_clamp_vec2_i32(~var_0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), var_1.xz), select(var_1.xx, vec2<i32>(1030i, global4.c.x), vec2<bool>(global4.a.b.x, global1.a.b.x)))), (vec2<i32>(i32(-1i) * -2147483647i, -global1.c.x) | _wgslsmith_add_vec2_i32(var_1.ww, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global4.c.x), vec2<i32>(-15703i, global1.c.x), var_1.yx))) ^ vec2<i32>(var_1.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, global1.c.x), _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-2147483647i, global4.c.x, var_0.c.x)))));
}

