struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(11258i, -1i, -7862i), -36726i, vec4<i32>(0i, 2147483647i, 11207i, -7172i), vec2<f32>(1348f, -319f)), Struct_1(vec3<i32>(-30781i, i32(-2147483648), i32(-2147483648)), -1i, vec4<i32>(1i, -24i, 5935i, -14734i), vec2<f32>(-889f, 214f)), Struct_1(vec3<i32>(0i, 28283i, 2147483647i), 1i, vec4<i32>(72115i, 2147483647i, 10223i, -1i), vec2<f32>(-1308f, 120f)), Struct_1(vec3<i32>(-23868i, 0i, -4374i), i32(-2147483648), vec4<i32>(29744i, 2147483647i, -4761i, 19632i), vec2<f32>(1000f, 434f)), Struct_1(vec3<i32>(9675i, 2147483647i, i32(-2147483648)), 1i, vec4<i32>(12297i, 8420i, -5327i, 0i), vec2<f32>(2121f, -1000f)), Struct_1(vec3<i32>(-31357i, 25574i, 2147483647i), -19430i, vec4<i32>(-9538i, 1i, 1i, i32(-2147483648)), vec2<f32>(-785f, -514f)), Struct_1(vec3<i32>(-1i, 18625i, 43010i), 25818i, vec4<i32>(32262i, 44911i, i32(-2147483648), 1i), vec2<f32>(-826f, -101f)), Struct_1(vec3<i32>(-11797i, 54132i, 37029i), i32(-2147483648), vec4<i32>(0i, 15847i, i32(-2147483648), -6232i), vec2<f32>(145f, -1199f)), Struct_1(vec3<i32>(57978i, 54113i, 0i), -12529i, vec4<i32>(i32(-2147483648), i32(-2147483648), -4465i, 43962i), vec2<f32>(-1323f, -289f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -22927i), -3449i, vec4<i32>(i32(-2147483648), 19487i, 5642i, 48890i), vec2<f32>(168f, 1515f)), Struct_1(vec3<i32>(51457i, -41248i, 1i), 2147483647i, vec4<i32>(2147483647i, i32(-2147483648), -4059i, -53349i), vec2<f32>(501f, 1000f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 29853i), i32(-2147483648), vec4<i32>(2147483647i, -28592i, 28592i, -1i), vec2<f32>(-667f, -1000f)), Struct_1(vec3<i32>(-13082i, -13404i, 26533i), 1i, vec4<i32>(-41104i, i32(-2147483648), 1081i, -80001i), vec2<f32>(952f, 650f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i), 33995i, vec4<i32>(-6746i, -33777i, -25615i, 29228i), vec2<f32>(513f, -356f)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), 60435i, vec4<i32>(-6897i, 11157i, -25262i, -1i), vec2<f32>(107f, -1480f)), Struct_1(vec3<i32>(-33735i, 0i, 1i), -14702i, vec4<i32>(0i, 0i, -1i, 246i), vec2<f32>(-342f, -922f)), Struct_1(vec3<i32>(-16117i, 2147483647i, -2821i), i32(-2147483648), vec4<i32>(-33353i, 31692i, 1i, 0i), vec2<f32>(773f, 794f)), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), -15533i, vec4<i32>(-1i, 1i, -42338i, -5206i), vec2<f32>(-750f, 298f)), Struct_1(vec3<i32>(-11785i, 5651i, -1i), i32(-2147483648), vec4<i32>(i32(-2147483648), 2147483647i, -31877i, 0i), vec2<f32>(-277f, -530f)), Struct_1(vec3<i32>(4656i, -18007i, 19848i), i32(-2147483648), vec4<i32>(-23246i, 5120i, -829i, 25324i), vec2<f32>(1613f, -105f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 29328i), -1i, vec4<i32>(-9231i, 7482i, 49215i, 2147483647i), vec2<f32>(775f, -1000f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 16414i), 2147483647i, vec4<i32>(54868i, 0i, i32(-2147483648), -31061i), vec2<f32>(1037f, 1249f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 45300i), -1i, vec4<i32>(0i, -22797i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-154f, -1056f)), Struct_1(vec3<i32>(-12110i, 35940i, -1i), 1i, vec4<i32>(i32(-2147483648), -1i, -1i, 0i), vec2<f32>(-828f, 346f)), Struct_1(vec3<i32>(2147483647i, 0i, -26507i), 0i, vec4<i32>(-40660i, 25375i, 6811i, -11374i), vec2<f32>(-209f, -358f)), Struct_1(vec3<i32>(62059i, 39673i, 0i), -38290i, vec4<i32>(57516i, -33838i, 0i, 25969i), vec2<f32>(1021f, -1000f)), Struct_1(vec3<i32>(2147483647i, -43781i, -1i), -30761i, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<f32>(-1000f, 581f)), Struct_1(vec3<i32>(i32(-2147483648), -10959i, 2147483647i), 1i, vec4<i32>(0i, -23558i, -32626i, 2147483647i), vec2<f32>(290f, -415f)), Struct_1(vec3<i32>(40345i, -1i, -1i), 1i, vec4<i32>(0i, -13186i, i32(-2147483648), -233i), vec2<f32>(2099f, 2310f)));

var<private> global3: array<bool, 16> = array<bool, 16>(true, true, false, false, true, false, false, true, false, true, true, false, false, true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<u32>(~select(_wgslsmith_div_u32(~6432u, 1u), 43435u, true), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31507u), vec2<u32>(145609u, 1u)) << (~0u % 32u), 1u));
    let var_1 = countOneBits(vec2<i32>(269i, -(i32(-1i) * -arg_0.c.x)));
    var var_2 = var_0.x;
    var var_3 = select(vec2<bool>(global3[_wgslsmith_index_u32(~(~countOneBits(var_0.x)), 16u)], global3[_wgslsmith_index_u32(0u & _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 48990u), ~var_0.x), 16u)]), !(!select(vec2<bool>(false, true), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(9694u, 16u)]), false), true)), any(!vec3<bool>(true, true, false && global3[_wgslsmith_index_u32(68267u, 16u)])));
    let var_4 = global0[_wgslsmith_index_u32(~var_0.x, 6u)];
    return 31754u;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>) -> f32 {
    global1 = _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.c.x), u_input.a & u_input.b.x), ~24325i)) > -2147483647i;
    global2 = array<Struct_1, 29>();
    var var_0 = Struct_1(vec3<i32>(2147483647i, 0i, u_input.d), u_input.d, vec4<i32>(_wgslsmith_div_i32(u_input.d, reverseBits(_wgslsmith_div_i32(u_input.d, -2147483647i))), 2147483647i, ~_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.c.x, -35062i, u_input.c.x)), ~(_wgslsmith_mod_i32(21166i, -2147483647i) ^ _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1450f) + _wgslsmith_f_op_f32(min(-1185f, 988f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)))));
    var var_1 = any(vec3<bool>(!global0[_wgslsmith_index_u32(min(min(arg_1.x, arg_1.x), arg_1.x), 6u)], select(true, (var_0.c.x >= u_input.c.x) || all(vec4<bool>(false, global3[_wgslsmith_index_u32(5739u, 16u)], true, global3[_wgslsmith_index_u32(arg_1.x, 16u)])), !global0[_wgslsmith_index_u32(24373u, 6u)]), true));
    global1 = true;
    return _wgslsmith_div_f32(-153f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) - _wgslsmith_f_op_f32(f32(-1f) * -695f)))), 183f)));
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(vec2<u32>(29722u, ~32520u), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~1u, func_2(global2[_wgslsmith_index_u32(0u, 29u)])), select(vec2<u32>(arg_1, 0u), vec2<u32>(0u, 1u), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 6u)], true)) >> (vec2<u32>(26229u, 0u) % vec2<u32>(32u))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f * 1748f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1138f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-220f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(f32(-1f) * -548f), global3[_wgslsmith_index_u32(16250u, 16u)])))));
    let var_1 = countOneBits(vec2<u32>(2216u, arg_0));
    let var_2 = vec4<bool>(any(select(vec2<bool>(!global0[_wgslsmith_index_u32(49563u, 6u)], true), select(select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(43743u, 6u)]), global0[_wgslsmith_index_u32(0u, 6u)]), !vec2<bool>(global3[_wgslsmith_index_u32(arg_0, 16u)], true), false), any(select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(arg_1, 16u)]), vec3<bool>(global3[_wgslsmith_index_u32(12011u, 16u)], false, true), global0[_wgslsmith_index_u32(1u, 6u)])))), global0[_wgslsmith_index_u32(abs(8770u ^ arg_0), 6u)] != any(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 16u)]), !vec3<bool>(false, global3[_wgslsmith_index_u32(arg_0, 16u)], global3[_wgslsmith_index_u32(arg_0, 16u)]), false & global0[_wgslsmith_index_u32(1u, 6u)])), all(vec3<bool>(!global3[_wgslsmith_index_u32(42957u, 16u)], all(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(arg_0, 16u)])), select(global0[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(arg_0, 16u)], false))) && true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36806u, ~97613u, func_2(Struct_1(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), 71202i, vec4<i32>(-38842i, -15651i, 2147483647i, -3421i), vec2<f32>(-113f, -1038f)))), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, arg_1), abs(~vec3<u32>(arg_0, var_1.x, arg_0)))), 16u)]);
    var var_3 = Struct_1(u_input.c, firstLeadingBit(-1i >> (func_2(global2[_wgslsmith_index_u32(68171u, 29u)]) % 32u)), ~vec4<i32>(-2147483647i, abs(u_input.d), u_input.b.x, min(min(u_input.b.x, -1i), 1i)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(593f)), _wgslsmith_f_op_f32(f32(-1f) * -1174f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1351f + -869f), -947f))));
    return firstTrailingBit(_wgslsmith_mod_u32(max(_wgslsmith_div_u32(var_1.x, arg_1), _wgslsmith_div_u32(arg_0, arg_0)), _wgslsmith_add_u32(~1u, arg_1))) | ~var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 16>();
    var var_0 = func_1(29429u, 15831u) >> (reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(61894u, 71096u) << (select(vec2<u32>(23633u, 18332u), vec2<u32>(59732u, 0u), vec2<bool>(global3[_wgslsmith_index_u32(40080u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)])) % vec2<u32>(32u)), vec2<u32>(1u, 1u))) % 32u);
    let var_1 = Struct_1(vec3<i32>(firstTrailingBit(u_input.b.x), countOneBits(-39359i), -2147483647i), u_input.c.x, vec4<i32>(u_input.a, _wgslsmith_add_i32(-u_input.c.x >> (func_1(11735u, 20175u) % 32u), 2147483647i), ~(~(-1i)), _wgslsmith_sub_i32(u_input.a, reverseBits(u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1638f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1460f)), _wgslsmith_f_op_f32(f32(-1f) * -878f)))));
    var var_2 = var_1;
    let var_3 = !(!select(vec4<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(30703u, 6u)], false, false)), all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(51660u, 6u)])), all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], false))), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(59502u, 6u)], true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(66886u, 6u)], false, global0[_wgslsmith_index_u32(1u, 6u)]), true), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 6u)], true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(global3[_wgslsmith_index_u32(2242u, 16u)], global0[_wgslsmith_index_u32(93092u, 6u)], false, false)), true), all(!vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 6u)]))));
    let var_4 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~firstLeadingBit(vec3<u32>(0u, 26346u, 4294967295u))), 1u));
    var_2 = Struct_1(var_1.c.xyw, ~42172i, countOneBits(firstLeadingBit(abs(-var_2.c))), var_1.d);
    global1 = all(select(var_3, vec4<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(var_4, 16u)], false, false, global0[_wgslsmith_index_u32(0u, 6u)])), all(select(vec2<bool>(global0[_wgslsmith_index_u32(var_4, 6u)], var_3.x), vec2<bool>(global3[_wgslsmith_index_u32(39483u, 16u)], true), global0[_wgslsmith_index_u32(var_4, 6u)])), ~var_4 > 1u, !all(var_3.yxy)), !select(!vec4<bool>(global3[_wgslsmith_index_u32(63532u, 16u)], false, global0[_wgslsmith_index_u32(var_4, 6u)], global3[_wgslsmith_index_u32(0u, 16u)]), select(vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(var_4, 16u)], true), vec4<bool>(true, false, global3[_wgslsmith_index_u32(var_4, 16u)], true), global0[_wgslsmith_index_u32(37186u, 6u)]), all(vec2<bool>(global3[_wgslsmith_index_u32(var_4, 16u)], true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-u_input.a, -var_2.c.x & abs(u_input.a), ~(60406i << (1u % 32u))), ~(~var_4));
}

