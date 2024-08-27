struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 22>;

var<private> global2: array<i32, 15> = array<i32, 15>(6583i, -1i, -54434i, 2147483647i, i32(-2147483648), -2173i, 19508i, 2147483647i, -33755i, -56415i, 2147483647i, i32(-2147483648), -50329i, 0i, 27369i);

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(false, vec2<u32>(0u, 0u), 1000f, Struct_1(vec2<i32>(15392i, 34317i), -1048f, vec3<f32>(927f, 357f, 656f)), 2147483647i), Struct_2(true, vec2<u32>(4294967295u, 0u), 1600f, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 2025f, vec3<f32>(1000f, -963f, -415f)), -2933i), Struct_2(true, vec2<u32>(0u, 49955u), -210f, Struct_1(vec2<i32>(11785i, 23389i), -1500f, vec3<f32>(-1329f, -1181f, -1578f)), -24004i), Struct_2(true, vec2<u32>(81u, 23098u), 1754f, Struct_1(vec2<i32>(-42151i, -76965i), 667f, vec3<f32>(279f, 1274f, 653f)), 2147483647i), Struct_2(false, vec2<u32>(4294967295u, 27254u), -1294f, Struct_1(vec2<i32>(39017i, 54570i), -244f, vec3<f32>(-1292f, 1347f, -158f)), 4555i), Struct_2(false, vec2<u32>(1u, 92724u), 336f, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -998f, vec3<f32>(957f, -1101f, -1697f)), 0i), Struct_2(false, vec2<u32>(0u, 36842u), -633f, Struct_1(vec2<i32>(1i, 2147483647i), 133f, vec3<f32>(324f, -906f, 859f)), 2147483647i), Struct_2(true, vec2<u32>(22869u, 0u), 167f, Struct_1(vec2<i32>(0i, -11618i), 300f, vec3<f32>(2355f, -2601f, -629f)), 1i), Struct_2(true, vec2<u32>(23165u, 44950u), 629f, Struct_1(vec2<i32>(2147483647i, 12037i), -959f, vec3<f32>(1505f, -968f, 517f)), 1i), Struct_2(true, vec2<u32>(62959u, 104411u), -2205f, Struct_1(vec2<i32>(-1i, 27971i), -607f, vec3<f32>(-308f, 529f, -397f)), 400i), Struct_2(true, vec2<u32>(90132u, 43758u), 647f, Struct_1(vec2<i32>(2147483647i, 20840i), 313f, vec3<f32>(-1210f, 1211f, -1202f)), -14954i), Struct_2(true, vec2<u32>(0u, 1u), -2326f, Struct_1(vec2<i32>(257i, -1i), 1549f, vec3<f32>(722f, 1626f, 117f)), i32(-2147483648)), Struct_2(false, vec2<u32>(4294967295u, 1u), -742f, Struct_1(vec2<i32>(0i, i32(-2147483648)), -207f, vec3<f32>(192f, -108f, 786f)), -49520i), Struct_2(false, vec2<u32>(102902u, 4294967295u), -438f, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -327f, vec3<f32>(-587f, -1000f, 2905f)), 1i), Struct_2(false, vec2<u32>(63363u, 18251u), 656f, Struct_1(vec2<i32>(i32(-2147483648), -11790i), -842f, vec3<f32>(-1000f, -196f, 478f)), 44960i), Struct_2(true, vec2<u32>(1u, 4294967295u), -1980f, Struct_1(vec2<i32>(-9667i, i32(-2147483648)), 247f, vec3<f32>(-925f, 578f, -1000f)), 8104i), Struct_2(false, vec2<u32>(1u, 24174u), -1044f, Struct_1(vec2<i32>(-24550i, 38884i), 193f, vec3<f32>(155f, -346f, -559f)), 1i), Struct_2(false, vec2<u32>(0u, 33471u), 1379f, Struct_1(vec2<i32>(-1i, 52515i), 1656f, vec3<f32>(-117f, -111f, -1616f)), i32(-2147483648)), Struct_2(true, vec2<u32>(4294967295u, 76282u), -1489f, Struct_1(vec2<i32>(-1i, -1i), 1000f, vec3<f32>(919f, 1236f, -1322f)), -4044i), Struct_2(true, vec2<u32>(39152u, 4294967295u), 672f, Struct_1(vec2<i32>(5769i, 2147483647i), 916f, vec3<f32>(-851f, 222f, 463f)), 27926i), Struct_2(false, vec2<u32>(49274u, 0u), -1292f, Struct_1(vec2<i32>(-1i, -26461i), -971f, vec3<f32>(339f, 1276f, 1842f)), -39606i), Struct_2(false, vec2<u32>(34872u, 4294967295u), 1890f, Struct_1(vec2<i32>(7969i, -54608i), -433f, vec3<f32>(1000f, 126f, -1154f)), -1i), Struct_2(false, vec2<u32>(69920u, 6483u), -1599f, Struct_1(vec2<i32>(1i, -30812i), -499f, vec3<f32>(2662f, -752f, -650f)), 2039i), Struct_2(false, vec2<u32>(22475u, 33014u), 512f, Struct_1(vec2<i32>(0i, 7201i), 2196f, vec3<f32>(145f, -405f, 103f)), -20507i), Struct_2(true, vec2<u32>(1213u, 5804u), -1880f, Struct_1(vec2<i32>(44301i, i32(-2147483648)), -556f, vec3<f32>(877f, 1015f, 118f)), 1i), Struct_2(true, vec2<u32>(1u, 13290u), 1899f, Struct_1(vec2<i32>(-4438i, 18776i), 682f, vec3<f32>(-1802f, -320f, 1000f)), 3821i), Struct_2(false, vec2<u32>(0u, 5617u), -319f, Struct_1(vec2<i32>(2147483647i, 25590i), -1022f, vec3<f32>(-1579f, 1407f, 714f)), -38570i), Struct_2(false, vec2<u32>(1u, 5396u), 1000f, Struct_1(vec2<i32>(1i, 4422i), -379f, vec3<f32>(400f, 570f, -200f)), i32(-2147483648)));

var<private> global4: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = true;
    var_0 = true;
    let var_1 = true;
    global1 = array<vec3<f32>, 22>();
    let var_2 = arg_0;
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    return _wgslsmith_add_vec2_u32(vec2<u32>(11876u, global0.b.x), vec2<u32>(~(~(~0u)), firstLeadingBit(_wgslsmith_mult_u32(reverseBits(global0.b.x), func_3(vec4<i32>(42034i, u_input.a.x, 48438i, -9350i), global0.d, global0.c, vec3<u32>(0u, 61256u, global0.b.x))))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    global0 = Struct_2(true, max(select(vec2<u32>(global0.b.x, global0.b.x), global0.b, vec2<bool>(0u >= global0.b.x, false)), func_2(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(floor(741f)), global0.d, global2[_wgslsmith_index_u32(func_2(select(vec3<bool>(global0.a, global0.a, false), !vec3<bool>(global0.a, global0.a, global0.a), all(vec2<bool>(global0.a, true)))).x, 15u)] >> (~abs(firstTrailingBit(global0.b.x)) % 32u));
    let var_0 = Struct_3(Struct_1(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 15u)]), global0.d.c.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1589f, 223f, 1919f) - global0.d.c))))), Struct_1(~(vec2<i32>(arg_1.x, global0.d.a.x) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) << (vec2<u32>(firstLeadingBit(arg_0), min(18274u, 0u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.c.x + global0.d.c.x)))), global1[_wgslsmith_index_u32(global0.b.x, 22u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + _wgslsmith_f_op_f32(sign(-411f))), _wgslsmith_f_op_f32(global0.c + 1f), -1000f)), u_input.a, all(vec4<bool>(any(select(vec4<bool>(true, true, global0.a, true), vec4<bool>(global0.a, false, global0.a, true), true)), global0.a, any(!vec4<bool>(global0.a, false, true, global0.a)), true)));
    global0 = global3[_wgslsmith_index_u32(global0.b.x, 28u)];
    var var_1 = ~(~vec4<u32>(arg_0, global0.b.x, 0u, ~countOneBits(global0.b.x)));
    let var_2 = var_0;
    return Struct_1(-_wgslsmith_mod_vec2_i32(max(~u_input.a.zz, global0.d.a), _wgslsmith_clamp_vec2_i32(var_2.a.a, var_2.d.xx, arg_1)), -921f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 22u)] - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(27365u, 22u)]))), vec3<f32>(_wgslsmith_f_op_f32(-455f - _wgslsmith_f_op_f32(f32(-1f) * -1673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-283f, 451f))), var_2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_add_u32(abs(global0.b.x), 47832u & ~global0.b.x), ~firstLeadingBit(-_wgslsmith_clamp_vec2_i32(global0.d.a, vec2<i32>(-8246i, 3888i), vec2<i32>(u_input.a.x, 103334i))), -2990i);
    global1 = array<vec3<f32>, 22>();
    var var_1 = ~75736u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(952f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-global0.d.c.x)))), 136f);
    global2 = array<i32, 15>();
    let var_3 = select(vec2<bool>(true, global0.e < 1i), select(vec2<bool>(true, true), vec2<bool>(global0.a, true), !vec2<bool>(global0.a, global0.a)), any(!select(select(vec3<bool>(false, global0.a, true), vec3<bool>(global0.a, false, true), true), !vec3<bool>(false, true, global0.a), false)));
    let var_4 = global0.d.a.x;
    global2 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d.c.xx * var_0.c.xx) + func_1(countOneBits(global0.b.x), vec2<i32>(global2[_wgslsmith_index_u32(global0.b.x, 15u)], u_input.a.x), i32(-1i) * -40591i).c.xy))), vec3<u32>(min(func_2(!vec3<bool>(true, var_3.x, var_3.x)).x, global0.b.x), ~(~global0.b.x), select(global0.b.x, 4294967295u, true)), vec3<i32>(~0i, -2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(global0.b.x), 77555u), 15u)] ^ _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(56385u, 15u)], var_0.a.x, var_0.a.x), max(4440i, 0i))), vec4<f32>(global0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 673f, var_0.b));
}

