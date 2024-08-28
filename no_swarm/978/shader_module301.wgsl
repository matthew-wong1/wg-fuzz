struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1957i, vec3<bool>(false, false, true));

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1529f, 957f, -1000f, -720f), vec4<f32>(-393f, 2599f, 168f, -383f), vec4<f32>(-774f, -549f, 639f, -633f), vec4<f32>(500f, -1157f, 1026f, 2534f), vec4<f32>(-803f, 489f, 178f, 1590f), vec4<f32>(-1562f, 466f, -1477f, 2128f), vec4<f32>(1130f, -207f, 1000f, -1970f), vec4<f32>(366f, 944f, -1353f, -143f), vec4<f32>(1491f, -1905f, 241f, 311f), vec4<f32>(-1000f, 797f, -302f, 179f), vec4<f32>(-1000f, -433f, 821f, -1000f), vec4<f32>(1770f, 708f, -232f, 134f), vec4<f32>(-384f, -547f, 904f, -554f), vec4<f32>(-198f, -1036f, 282f, -1218f), vec4<f32>(1876f, 417f, 1438f, 1448f), vec4<f32>(-1000f, 401f, 233f, 481f), vec4<f32>(541f, -223f, 1000f, 990f), vec4<f32>(-574f, -1097f, -180f, 975f), vec4<f32>(1218f, -371f, -1000f, -260f));

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, true, false, true, true, false, true, true, true, true, true, true, false, true, true, true, true, false, true, true, false, true);

var<private> global3: array<i32, 24> = array<i32, 24>(0i, 2752i, 29147i, -63526i, 10929i, i32(-2147483648), -1i, 50326i, i32(-2147483648), 1i, 288i, 21528i, 1i, 7013i, 2147483647i, 2147483647i, -16729i, 1i, -1i, -22875i, -28684i, i32(-2147483648), -34647i, 7972i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.a.x;
    global3 = array<i32, 24>();
    global3 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1104f);
    global1 = array<vec4<f32>, 19>();
    return 486f;
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = vec4<u32>(~3246u, u_input.a.x & ((37637u | (u_input.a.x >> (1u % 32u))) & _wgslsmith_dot_vec4_u32(~vec4<u32>(45051u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 95747u, 0u, 1u))), min(_wgslsmith_div_u32(4294967295u, abs(~u_input.a.x)), u_input.a.x), u_input.a.x);
    global1 = array<vec4<f32>, 19>();
    global3 = array<i32, 24>();
    var var_2 = Struct_1(~vec4<u32>(~var_1.x & ~var_1.x, _wgslsmith_clamp_u32(var_1.x, var_1.x, 18486u) << (0u % 32u), firstLeadingBit(var_1.x), u_input.a.x), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yz | var_1.wy, u_input.a.xy) | var_1.yy, _wgslsmith_add_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(9378u, 1u), vec2<u32>(u_input.a.x, 105904u)), ~vec2<u32>(7549u, u_input.a.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], true)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.a.x, 19371u)), select(vec2<u32>(var_1.x, u_input.a.x), u_input.a.xx, var_0.b.x), ~var_1.xw))), vec3<i32>(global0.a | global0.a, var_0.a, -arg_0.a), vec4<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(91292u, 23u)] & arg_0.b.x, false, arg_0.b.x)), false, true));
    return var_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    let var_0 = !select(vec3<bool>(true, true, all(!vec2<bool>(true, global0.b.x))), !global0.b, !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 43970u), 23u)]);
    global1 = array<vec4<f32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(546f, -1263f) - _wgslsmith_f_op_f32(func_2(0u, 1i, Struct_2(-2147483647i, vec3<bool>(global2[_wgslsmith_index_u32(23831u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global0.b.x)), Struct_1(vec4<u32>(1u, u_input.a.x, arg_0.x, 0u), u_input.a.yx, vec3<i32>(1i, arg_1, -1i), vec4<bool>(true, false, true, false))))) - _wgslsmith_f_op_f32(f32(-1f) * -882f))) - _wgslsmith_f_op_f32(-1f));
    global1 = array<vec4<f32>, 19>();
    let var_2 = Struct_1(select(~select(vec4<u32>(0u, u_input.a.x, 1u, 0u) & vec4<u32>(u_input.a.x, arg_0.x, 1u, 72675u), vec4<u32>(1u, 4294967295u, 0u, 1u), select(vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(global0.b.x, false, false, true))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, 44291u, arg_0.x), countOneBits(vec4<u32>(4294967295u, arg_0.x, 0u, 12022u))), 1u & ~u_input.a.x, _wgslsmith_dot_vec4_u32(func_3(Struct_2(global3[_wgslsmith_index_u32(1u, 24u)], vec3<bool>(false, false, var_0.x))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec3_u32(u_input.a, ~arg_0)), all(!vec3<bool>(global0.b.x, global2[_wgslsmith_index_u32(arg_0.x, 23u)], true))), abs(~vec2<u32>(~arg_0.x, firstLeadingBit(u_input.a.x))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(global0.a, arg_1, global3[_wgslsmith_index_u32(u_input.a.x, 24u)]), ~(-2147483647i), _wgslsmith_sub_i32(arg_1, -1i))), vec3<i32>(~(-1i), global0.a, firstLeadingBit(~(-2147483647i)))), select(vec4<bool>(any(vec4<bool>(true, global0.b.x, false, true)), false, var_0.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, global0.b.x, any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])))));
    return min(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.x & 11912u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(138118u, arg_0.x, arg_0.x, 1u), vec4<u32>(arg_0.x, 45612u, var_2.b.x, 82848u))) & ~(~1u), (var_2.b.x ^ 84127u) << (_wgslsmith_mult_u32(var_2.a.x | arg_0.x, arg_0.x) % 32u), arg_0.x), _wgslsmith_dot_vec3_u32(u_input.a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 39178u), vec3<u32>(16895u, u_input.a.x, 39515u))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_clamp_i32(-19651i, firstLeadingBit(-global0.a), global0.a), vec3<bool>(all(vec3<bool>(!global0.b.x, true, true)), _wgslsmith_div_i32(_wgslsmith_div_i32(global0.a, global0.a), 41615i) >= (-arg_0.c.x ^ min(-78145i, 36198i)), false));
    let var_1 = vec3<i32>(-1i, -22898i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, ~(-arg_0.c.x), ~_wgslsmith_div_i32(1i, -26107i)), -global0.a));
    let var_2 = ~var_1.x;
    global2 = array<bool, 23>();
    var var_3 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(max(~arg_0.a, (vec4<u32>(u_input.a.x, 4294967295u, 81862u, 104335u) & arg_0.a) >> ((vec4<u32>(0u, u_input.a.x, arg_0.a.x, 1u) << (arg_0.a % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_0.b.x, 67770u, abs(arg_0.a.x), ~50964u), vec4<u32>(4294967295u, u_input.a.x, arg_0.b.x, u_input.a.x) & ~arg_0.a)), ~(~(~arg_0.b.x << (arg_0.b.x % 32u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 48438u, u_input.a.x, 71283u) | ~vec4<u32>(33030u, u_input.a.x, u_input.a.x, u_input.a.x), ~(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x) >> (vec4<u32>(37665u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), ~(~vec2<u32>(78591u, 4294967295u)), reverseBits(vec3<i32>(-7335i | global0.a, global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-37191i, -43097i, global3[_wgslsmith_index_u32(61907u, 24u)], -2147483647i), vec4<i32>(global0.a, global3[_wgslsmith_index_u32(19795u, 24u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)], 2147483647i)))), vec4<bool>(!(!global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), global2[_wgslsmith_index_u32(max(~4294967295u, func_1(vec3<u32>(0u, u_input.a.x, 4294967295u), global3[_wgslsmith_index_u32(44845u, 24u)])), 23u)], any(global0.b.yx) || all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 23u)], false, false)), _wgslsmith_f_op_f32(249f * 201f) == _wgslsmith_f_op_f32(select(819f, 603f, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])))));
    var var_1 = !(!all(!(!global0.b.zz)));
    let var_2 = u_input.a.x;
    let var_3 = var_0;
    var_1 = global0.b.x;
    let var_4 = Struct_1(~(~firstLeadingBit(min(vec4<u32>(69274u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 48655u, u_input.a.x, 65546u)))), u_input.a.yx, vec3<i32>(global3[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_sub_i32(-(-2147483647i ^ global0.a), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, var_0.a, var_0.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-37682i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], 1i), vec3<i32>(global0.a, global3[_wgslsmith_index_u32(4294967295u, 24u)], 0i)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(67244u, countOneBits(func_1(vec3<u32>(17142u, 0u, 1u), 26537i))), 24u)]), !vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a.x, 23u)], true, !var_0.b.x, true));
    var var_5 = -21479i;
    var var_6 = Struct_2(~(i32(-1i) * -1i), vec3<bool>(true, true, all(!var_4.d)));
    global2 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x);
}

