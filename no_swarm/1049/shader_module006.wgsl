struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-940f, 337f, 209f, 1000f, -941f, 950f, -1727f, -244f, 905f, -610f);

var<private> global1: array<i32, 20>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<u32>(1u, 2951u), i32(-2147483648)), Struct_2(vec2<u32>(0u, 62548u), 1i), Struct_2(vec2<u32>(0u, 102457u), -11757i), Struct_2(vec2<u32>(78601u, 95629u), i32(-2147483648)), Struct_2(vec2<u32>(0u, 1u), -24865i), Struct_2(vec2<u32>(0u, 4294967295u), -38370i), Struct_2(vec2<u32>(10548u, 0u), 1i), Struct_2(vec2<u32>(42728u, 1u), 2147483647i), Struct_2(vec2<u32>(1u, 4294967295u), -29769i), Struct_2(vec2<u32>(30494u, 4294967295u), -39782i), Struct_2(vec2<u32>(63329u, 12338u), 2147483647i), Struct_2(vec2<u32>(54573u, 10119u), -28601i), Struct_2(vec2<u32>(4294967295u, 1u), 1i), Struct_2(vec2<u32>(0u, 62242u), -34771i), Struct_2(vec2<u32>(11253u, 31838u), 63875i), Struct_2(vec2<u32>(45285u, 100315u), 13756i), Struct_2(vec2<u32>(25594u, 1u), 0i), Struct_2(vec2<u32>(5958u, 62506u), 20473i), Struct_2(vec2<u32>(86279u, 10536u), -13353i), Struct_2(vec2<u32>(43565u, 15801u), 1i), Struct_2(vec2<u32>(4748u, 1u), 4571i), Struct_2(vec2<u32>(35676u, 1u), -39637i), Struct_2(vec2<u32>(14507u, 41551u), i32(-2147483648)), Struct_2(vec2<u32>(0u, 4294967295u), -1i), Struct_2(vec2<u32>(89892u, 28202u), -7273i), Struct_2(vec2<u32>(0u, 1u), 20118i), Struct_2(vec2<u32>(39661u, 36595u), 1762i), Struct_2(vec2<u32>(1u, 4294967295u), 1i), Struct_2(vec2<u32>(40785u, 1u), -1i), Struct_2(vec2<u32>(38444u, 1u), 10122i), Struct_2(vec2<u32>(1748u, 15734u), -1i), Struct_2(vec2<u32>(72181u, 0u), 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    global0 = array<f32, 10>();
    let var_0 = Struct_1(-arg_1);
    var var_1 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), -1i <= global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true)), vec2<bool>(true, true)), !vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true)))), vec2<bool>(true, !any(vec4<bool>(true, true, true, true))), !vec2<bool>(true, !any(vec3<bool>(false, true, false))));
    let var_2 = Struct_1(global2.a);
    var var_3 = _wgslsmith_mod_vec3_i32(~(_wgslsmith_add_vec3_i32(~vec3<i32>(global2.a, 2147483647i, var_0.a), ~arg_0.xww) & ~vec3<i32>(arg_0.x, -2147483647i, -1i)), max(_wgslsmith_clamp_vec3_i32(arg_0.wxz, -min(vec3<i32>(1i, 15677i, 10808i), arg_0.xzz), firstTrailingBit(select(vec3<i32>(-2147483647i, arg_1, arg_0.x), arg_0.xzx, var_1.x))), arg_0.xwz));
    return 4294967295u;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(u_input.b.zx, -2147483647i);
    global1 = array<i32, 20>();
    let var_1 = Struct_2(vec2<u32>(~var_0.a.x | reverseBits(_wgslsmith_div_u32(var_0.a.x, var_0.a.x)), var_0.a.x), _wgslsmith_dot_vec4_i32(min(countOneBits(vec4<i32>(global2.a, var_0.b, -1i, global2.a)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b, var_0.b, global1[_wgslsmith_index_u32(var_0.a.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<i32>(2147483647i, 42099i, var_0.b, u_input.a))), -vec4<i32>(-1i, 0i, 30316i, -3226i)) ^ 0i);
    var var_2 = vec4<i32>(var_1.b, 2561i, -(i32(-1i) * -29220i), -78113i);
    var var_3 = -vec2<i32>(reverseBits(-2147483647i << (func_3(vec4<i32>(-77807i, 2147483647i, var_1.b, 0i), var_0.b) % 32u)), u_input.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -534f);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = 31105u;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 10u)]) + -3218f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, 1u), ~0u) | (1u << (_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) % 32u)), 10u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(26890u, 10u)], _wgslsmith_f_op_f32(func_2()))));
    global2 = Struct_1(-1i);
    global3 = array<Struct_2, 32>();
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, ~(~u_input.c.x), ~(~u_input.c.x)), u_input.c << (u_input.c % vec4<u32>(32u)));
    return Struct_2(~max(var_2.zx, abs(u_input.c.yw)), 1i);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(-u_input.a);
    var var_1 = vec3<bool>(all(vec4<bool>(true, true, true, true)) && (210f >= _wgslsmith_f_op_f32(-1387f - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))), true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(countOneBits(36613u), ~u_input.b.x), arg_0.a.x), 10u)] != _wgslsmith_f_op_f32(floor(-142f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-317f, global0[_wgslsmith_index_u32(arg_0.a.x, 10u)], -2329f, global0[_wgslsmith_index_u32(arg_0.a.x, 10u)]), _wgslsmith_div_vec4_f32(vec4<f32>(553f, -1053f, -1854f, 333f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 10u)], 440f, global0[_wgslsmith_index_u32(6662u, 10u)], 1778f)), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x)))))))));
    global2 = Struct_1(8223i & u_input.a);
    let var_3 = global3[_wgslsmith_index_u32(u_input.b.x | ~_wgslsmith_sub_u32(arg_0.a.x ^ _wgslsmith_mult_u32(28110u, arg_0.a.x), 4294967295u), 32u)];
    return Struct_1(-37865i);
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = max(-select(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.a, -1i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(42099u, 20u)], global2.a), vec2<i32>(-39423i, -2147483647i), vec2<i32>(arg_0.a, 25307i)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), reverseBits(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 18064i))) << (abs(reverseBits(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), ~u_input.b.x))) % vec2<u32>(32u));
    var var_1 = Struct_1(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b.x, 20u)] >> (min(~1u, 1u) % 32u)));
    let var_2 = -978f;
    global0 = array<f32, 10>();
    var_1 = func_4(global3[_wgslsmith_index_u32(select(u_input.b.x, func_1(vec2<bool>(true, true), true).a.x, all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, false), true))), 32u)]);
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1074f - global0[_wgslsmith_index_u32(0u, 10u)]))) + global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), -1887f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, 2392f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], var_2))))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_i32(0i, -_wgslsmith_mod_i32(firstLeadingBit(global2.a), _wgslsmith_add_i32(global2.a, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    global2 = func_6(Struct_2(vec2<u32>(abs(~u_input.c.x), 58397u), global1[_wgslsmith_index_u32(~(1u & _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 7912u, u_input.c.x))), 20u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1187f, -1037f) * vec2<f32>(global0[_wgslsmith_index_u32(1u, 10u)], -1819f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1861f, global0[_wgslsmith_index_u32(23807u, 10u)]), vec2<f32>(-808f, global0[_wgslsmith_index_u32(0u, 10u)])))))) * _wgslsmith_f_op_vec2_f32(func_5(func_4(func_1(vec2<bool>(true, false), true))))));
    let var_0 = func_6(func_1(vec2<bool>(true, true), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(countOneBits(~101718u), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-313f, global0[_wgslsmith_index_u32(16500u, 10u)]))), false)), global0[_wgslsmith_index_u32(min(u_input.c.x, ~(u_input.c.x >> (u_input.c.x % 32u))), 10u)]));
    global3 = array<Struct_2, 32>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(var_0)).x));
    let var_2 = any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)] != global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false, select(false, false, true), true)));
    global2 = Struct_1(-abs(~(-24005i)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, 0i, ~u_input.c, vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(1u, 80142u)), 10u)]), _wgslsmith_f_op_f32(1459f + 1000f), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(4294967295u, 1u))), 10u)], global0[_wgslsmith_index_u32(~abs(~u_input.b.x), 10u)]), ~func_4(func_1(!vec2<bool>(false, var_2), all(vec2<bool>(var_2, false)))).a);
}

