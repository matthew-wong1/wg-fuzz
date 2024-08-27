struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 17> = array<bool, 17>(false, false, true, true, true, true, false, false, false, false, true, true, true, false, false, false, true);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(32181i, 1i), vec2<i32>(-1413i, i32(-2147483648)), vec2<i32>(21368i, -12148i), vec2<f32>(385f, 1132f), true), Struct_1(vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 142i), vec2<i32>(27838i, -26889i), vec2<f32>(994f, 1107f), false), Struct_1(vec2<i32>(5329i, 1i), vec2<i32>(0i, 5709i), vec2<i32>(1i, 0i), vec2<f32>(177f, 811f), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(11275i, -52150i), vec2<i32>(-1i, -31822i), vec2<f32>(685f, -1431f), true), Struct_1(vec2<i32>(-26732i, 1i), vec2<i32>(21449i, 20975i), vec2<i32>(1i, 1i), vec2<f32>(313f, -1233f), true), Struct_1(vec2<i32>(-18538i, 2147483647i), vec2<i32>(39691i, 8184i), vec2<i32>(26728i, 2147483647i), vec2<f32>(-808f, -758f), true), Struct_1(vec2<i32>(48624i, -13095i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2217i, 63767i), vec2<f32>(348f, 373f), true), Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(-35438i, i32(-2147483648)), vec2<i32>(-19258i, i32(-2147483648)), vec2<f32>(-223f, -1105f), false), Struct_1(vec2<i32>(-33799i, 21691i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -37160i), vec2<f32>(1392f, -1224f), true), Struct_1(vec2<i32>(0i, -5772i), vec2<i32>(-81201i, i32(-2147483648)), vec2<i32>(-1i, 19902i), vec2<f32>(-1033f, -227f), false), Struct_1(vec2<i32>(1i, 1i), vec2<i32>(-1i, 18294i), vec2<i32>(-19439i, -6427i), vec2<f32>(-2715f, -911f), false), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -30933i), vec2<i32>(-18215i, -52449i), vec2<f32>(1000f, 854f), true), Struct_1(vec2<i32>(10324i, -10477i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(4817i, i32(-2147483648)), vec2<f32>(-1319f, -947f), true), Struct_1(vec2<i32>(1i, 22656i), vec2<i32>(2147483647i, 1i), vec2<i32>(-3236i, -1i), vec2<f32>(-794f, -224f), true), Struct_1(vec2<i32>(-48684i, 20350i), vec2<i32>(1i, 37974i), vec2<i32>(0i, -40223i), vec2<f32>(-1000f, -325f), false), Struct_1(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 30091i), vec2<i32>(-18891i, 32695i), vec2<f32>(-532f, 891f), false), Struct_1(vec2<i32>(-2502i, -1i), vec2<i32>(-1i, 9029i), vec2<i32>(-1i, 1i), vec2<f32>(-1665f, -1000f), true), Struct_1(vec2<i32>(1i, -7459i), vec2<i32>(-14411i, 34308i), vec2<i32>(43275i, 0i), vec2<f32>(-1328f, -629f), true), Struct_1(vec2<i32>(-58061i, 0i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 1i), vec2<f32>(-300f, -1000f), true), Struct_1(vec2<i32>(-40442i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(39613i, -1i), vec2<f32>(1179f, 952f), true), Struct_1(vec2<i32>(1i, 51525i), vec2<i32>(-9388i, 16370i), vec2<i32>(-9533i, -1i), vec2<f32>(848f, -262f), true), Struct_1(vec2<i32>(1i, 22237i), vec2<i32>(1i, 1i), vec2<i32>(-34974i, 0i), vec2<f32>(449f, 193f), true), Struct_1(vec2<i32>(-40721i, 4576i), vec2<i32>(29103i, 2147483647i), vec2<i32>(-1i, -50960i), vec2<f32>(-325f, 914f), true), Struct_1(vec2<i32>(i32(-2147483648), -15981i), vec2<i32>(i32(-2147483648), -41654i), vec2<i32>(-12807i, 1i), vec2<f32>(505f, 754f), true), Struct_1(vec2<i32>(1i, -1i), vec2<i32>(0i, -8807i), vec2<i32>(35960i, 0i), vec2<f32>(1418f, -183f), false), Struct_1(vec2<i32>(-9475i, 26531i), vec2<i32>(56033i, -1i), vec2<i32>(22480i, -1i), vec2<f32>(681f, 1726f), true), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(1i, -1687i), vec2<f32>(-177f, -141f), true), Struct_1(vec2<i32>(-12825i, -20377i), vec2<i32>(48141i, i32(-2147483648)), vec2<i32>(-9690i, -1i), vec2<f32>(-903f, -203f), true), Struct_1(vec2<i32>(39120i, 33438i), vec2<i32>(2147483647i, 15856i), vec2<i32>(19489i, 2147483647i), vec2<f32>(1104f, -327f), true), Struct_1(vec2<i32>(1i, 12632i), vec2<i32>(1626i, 25143i), vec2<i32>(i32(-2147483648), 19935i), vec2<f32>(489f, -1772f), true), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<i32>(-17688i, i32(-2147483648)), vec2<i32>(-7047i, i32(-2147483648)), vec2<f32>(458f, -723f), false), Struct_1(vec2<i32>(0i, 11003i), vec2<i32>(-1i, 0i), vec2<i32>(4338i, 90995i), vec2<f32>(-546f, 291f), true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1() -> vec2<i32> {
    global1 = array<bool, 17>();
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(u_input.a.x) | ~u_input.a.x, 32u)];
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~(~u_input.a.x))), u_input.a.x), 32u)];
    var var_1 = ~u_input.a.x;
    var_1 = ~0u;
    return global2.wx & vec2<i32>(-33057i, ~firstLeadingBit(var_0.b.x));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(-603f + global0.x)), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * -599f), _wgslsmith_f_op_f32(trunc(-103f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) * -2076f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 123f, -350f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2184f, global0.x, global0.x, -141f)), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, global1[_wgslsmith_index_u32(20989u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * -1172f), global0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-459f, global0.x), _wgslsmith_f_op_f32(abs(-923f))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-512f, global0.x, arg_0)), _wgslsmith_f_op_f32(-304f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(-439f * -502f)))), false & ((u_input.a.x << (~u_input.a.x % 32u)) <= u_input.a.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -819f) - _wgslsmith_f_op_f32(-var_0.x)), global0.x)) - 868f), _wgslsmith_f_op_f32(-var_0.x), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = select(min(vec4<i32>(-2147483647i, 1i, 1i, _wgslsmith_add_i32(firstTrailingBit(-7063i), -35999i)), vec4<i32>(~_wgslsmith_dot_vec3_i32(global2.ywz, global2.zzx), ~u_input.b, -7006i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, 16451i, u_input.c, u_input.c)), select(vec4<i32>(-2147483647i, 9002i, global2.x, -36707i), vec4<i32>(1i, global2.x, 1223i, global2.x), vec4<bool>(arg_0, arg_0, arg_0, true))))), -_wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.b, arg_1, arg_1, -2147483647i)), firstLeadingBit(vec4<i32>(u_input.c, 2147483647i, u_input.c, -34755i) ^ vec4<i32>(-2147483647i, -6611i, -2147483647i, arg_1)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_1, u_input.b) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 50991u) % vec4<u32>(32u)), -vec4<i32>(arg_1, u_input.c, 6933i, arg_1))), false);
    global0 = var_0.xx;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec4_f32(-var_1)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(568f, global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)])))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yz * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-349f, 111f))))))), arg_1 == 1i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(true, u_input.c)), _wgslsmith_f_op_vec2_f32(min(arg_0.d, vec2<f32>(arg_3.d.x, global0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -1569f)), vec2<bool>(all(select(vec4<bool>(false, arg_2, false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 17u)], false, false), arg_3.e)), true))));
    let var_1 = Struct_1(vec2<i32>(-1i) * -(vec2<i32>(arg_0.c.x, global2.x) >> (vec2<u32>(arg_1.x, 0u) % vec2<u32>(32u))), firstTrailingBit(abs(-vec2<i32>(-63163i, 0i) | (arg_3.c >> (u_input.a.yy % vec2<u32>(32u))))), arg_3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, arg_0.d.x))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.d))), vec2<f32>(436f, 298f)))), false);
    var var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(~u_input.a.zz | ~vec2<u32>(arg_1.x, 30085u), u_input.a.zy)), ~abs(max(vec2<u32>(8030u, arg_1.x), arg_1) | u_input.a.xz));
    var var_3 = Struct_1(vec2<i32>(-firstLeadingBit(_wgslsmith_mult_i32(global2.x, global2.x)), _wgslsmith_add_i32(-(~u_input.b), max(2147483647i, 1i) ^ _wgslsmith_mod_i32(-1i, var_1.a.x))), abs(reverseBits(var_1.a) >> (vec2<u32>(227u, u_input.a.x) % vec2<u32>(32u))), abs(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 68753i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c.x, 0i), vec2<i32>(arg_0.b.x, var_1.b.x))))), _wgslsmith_f_op_vec2_f32(var_1.d + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1669f, global0.x))) * _wgslsmith_f_op_vec2_f32(round(arg_3.d))))), _wgslsmith_f_op_f32(global0.x - arg_0.d.x) <= _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), -1000f))));
    var var_4 = Struct_1(firstTrailingBit(vec2<i32>(-(arg_3.a.x & 25826i), 2147483647i)), global2.wx, -vec2<i32>(arg_0.c.x, func_1().x) >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(arg_1), firstTrailingBit(vec2<u32>(arg_1.x, 42764u)) << (~vec2<u32>(var_2.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<f32>(1003f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + var_0.x) - var_0.x) - _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false, true));
    return StorageBuffer(vec4<u32>(~(~4294967295u), ~arg_1.x, firstTrailingBit(countOneBits(1u)), _wgslsmith_sub_u32(4294967295u, ~13022u)), _wgslsmith_f_op_f32(round(-2336f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(11836i >> (u_input.a.x % 32u), firstLeadingBit(0i)), global2.xx), global2.xy, func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) * vec2<f32>(global0.x, -570f)))))), global1[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    let x = u_input.a;
    s_output = func_2(global3[_wgslsmith_index_u32(u_input.a.x & 0u, 32u)], countOneBits(~vec2<u32>(u_input.a.x, u_input.a.x) >> (reverseBits(min(vec2<u32>(53124u, u_input.a.x), vec2<u32>(1u, u_input.a.x))) % vec2<u32>(32u))), true, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]);
}

