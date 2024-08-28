struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<u32>(1u, 55732u, 1u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 13801u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), -399f, vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(0u, 12079u, 33640u), vec3<u32>(1u, 1u, 30677u), -1276f, vec4<bool>(false, false, false, false)), vec3<u32>(842u, 1u, 2490u)), Struct_2(vec4<u32>(1u, 1u, 4294967295u, 60413u), Struct_1(vec3<u32>(0u, 4294967295u, 94857u), vec3<u32>(11354u, 77626u, 82925u), 696f, vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(28665u, 1u, 1u), vec3<u32>(4294967295u, 0u, 46014u), -1717f, vec4<bool>(true, false, false, true)), vec3<u32>(68620u, 19400u, 40812u)), Struct_2(vec4<u32>(4681u, 78147u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 68170u), vec3<u32>(3565u, 33235u, 8529u), 730f, vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 79944u), vec3<u32>(1u, 1u, 4294967295u), 1097f, vec4<bool>(false, false, true, true)), vec3<u32>(0u, 0u, 53254u)), Struct_2(vec4<u32>(12248u, 15800u, 9234u, 41403u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(70075u, 1u, 4294967295u), -238f, vec4<bool>(false, false, true, true)), Struct_1(vec3<u32>(1u, 2443u, 24131u), vec3<u32>(4294967295u, 0u, 1u), 979f, vec4<bool>(true, false, false, false)), vec3<u32>(25402u, 42579u, 0u)), Struct_2(vec4<u32>(1u, 56959u, 0u, 0u), Struct_1(vec3<u32>(30045u, 45010u, 26345u), vec3<u32>(0u, 0u, 4294967295u), 395f, vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(64093u, 4294967295u, 4294967295u), vec3<u32>(3573u, 2862u, 1u), -346f, vec4<bool>(false, true, true, true)), vec3<u32>(4294967295u, 51958u, 0u)), Struct_2(vec4<u32>(1u, 41373u, 1948u, 4294967295u), Struct_1(vec3<u32>(64419u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), -1071f, vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 41927u, 0u), -997f, vec4<bool>(true, true, true, false)), vec3<u32>(13895u, 5060u, 4294967295u)), Struct_2(vec4<u32>(0u, 7870u, 0u, 0u), Struct_1(vec3<u32>(24887u, 4294967295u, 11661u), vec3<u32>(0u, 0u, 4294967295u), 208f, vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(0u, 22169u, 108530u), vec3<u32>(1u, 55401u, 54257u), -1210f, vec4<bool>(true, false, true, true)), vec3<u32>(2497u, 45136u, 43030u)), Struct_2(vec4<u32>(33296u, 0u, 1u, 19795u), Struct_1(vec3<u32>(32127u, 7902u, 1u), vec3<u32>(4294967295u, 1u, 6844u), -811f, vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(54064u, 0u, 76496u), vec3<u32>(0u, 6670u, 4197u), 428f, vec4<bool>(true, true, true, true)), vec3<u32>(2193u, 4294967295u, 0u)), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 108578u), Struct_1(vec3<u32>(4294967295u, 6259u, 0u), vec3<u32>(51910u, 0u, 4294967295u), -515f, vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(19516u, 70437u, 1855u), vec3<u32>(28u, 1u, 5601u), -1044f, vec4<bool>(false, true, false, true)), vec3<u32>(1u, 61879u, 13582u)), Struct_2(vec4<u32>(27811u, 41031u, 23474u, 0u), Struct_1(vec3<u32>(1u, 1u, 70351u), vec3<u32>(1u, 5112u, 77424u), -1580f, vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(1u, 82967u, 26712u), vec3<u32>(2886u, 38249u, 24740u), -633f, vec4<bool>(false, true, true, true)), vec3<u32>(0u, 1u, 27713u)), Struct_2(vec4<u32>(1u, 30128u, 1u, 0u), Struct_1(vec3<u32>(4294967295u, 38841u, 47791u), vec3<u32>(8011u, 105u, 0u), 159f, vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(4294967295u, 41354u, 41654u), vec3<u32>(3996u, 36109u, 66914u), 888f, vec4<bool>(true, false, true, false)), vec3<u32>(4294967295u, 0u, 1u)), Struct_2(vec4<u32>(1u, 26140u, 11283u, 35597u), Struct_1(vec3<u32>(10854u, 73768u, 1u), vec3<u32>(1u, 1u, 43694u), -865f, vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(0u, 14381u, 38883u), vec3<u32>(58915u, 4294967295u, 0u), -1293f, vec4<bool>(true, true, true, true)), vec3<u32>(0u, 1u, 1u)));

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global2: array<i32, 32>;

var<private> global3: array<bool, 1>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_2, 12>();
    let var_0 = vec2<bool>(all(!(!(!vec4<bool>(true, global3[_wgslsmith_index_u32(59693u, 1u)], true, false)))), !(global3[_wgslsmith_index_u32(~0u, 1u)] & false));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(52277u << (1u % 32u), 73654u), 12u)];
    var var_2 = 14929u;
    global3 = array<bool, 1>();
    return vec4<u32>(min(81084u, var_1.c.b.x), var_1.b.b.x, 84053u, _wgslsmith_mod_u32(var_1.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(var_1.b.a.yz)), _wgslsmith_add_vec2_u32(max(var_1.d.yx, var_1.c.a.yy), vec2<u32>(var_1.d.x, 0u)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = ~arg_0;
    let var_1 = Struct_5(~func_3(), arg_1.c, arg_1.c.d.x);
    global1 = array<vec3<bool>, 5>();
    var var_2 = Struct_3(vec3<f32>(-1733f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.c * -1356f))), var_1.b.c), arg_1.b);
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.c * _wgslsmith_f_op_f32(sign(arg_1.c.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.c)) - 1401f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -125f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.c) - 626f)))), arg_1.b.c));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    var var_0 = !select(vec2<bool>(global3[_wgslsmith_index_u32(5107u, 1u)] && false, global4.x), vec2<bool>(_wgslsmith_f_op_f32(arg_0 + 1369f) > _wgslsmith_div_f32(368f, arg_0), any(!vec3<bool>(global4.x, arg_1.b.d.x, true))), select(arg_1.b.d.ww, vec2<bool>(arg_1.b.d.x, global4.x), 20450i >= ~global2[_wgslsmith_index_u32(arg_2, 32u)]));
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, 16783u, arg_2, arg_1.b.b.x), Struct_2(vec4<u32>(arg_1.b.b.x, 4294967295u, arg_2, 67059u), arg_1.b, Struct_1(vec3<u32>(4294967295u, arg_2, 89696u), arg_1.b.a, arg_1.a.x, vec4<bool>(global4.x, false, global3[_wgslsmith_index_u32(1u, 1u)], false)), vec3<u32>(arg_2, 72314u, arg_1.b.a.x)))) - arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_1.a.x, var_0.x)) - -1306f))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-164f, 1329f))))), global4.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-404f - 334f))), 1223f, 2696f) - vec3<f32>(arg_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -1710f))));
    var var_2 = arg_2;
    let var_3 = !any(arg_1.b.d.xx);
    return Struct_4(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 32>();
    var var_0 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)))), Struct_3(vec3<f32>(289f, -807f, 151f), Struct_1(vec3<u32>(0u, max(1u, 21213u), ~1u), _wgslsmith_mod_vec3_u32(~vec3<u32>(37387u, 4294967295u, 1u), select(vec3<u32>(27554u, 29500u, 4294967295u), vec3<u32>(47433u, 1u, 1u), global4.x)), 961f, select(!vec4<bool>(global3[_wgslsmith_index_u32(22875u, 1u)], false, global3[_wgslsmith_index_u32(0u, 1u)], global4.x), select(vec4<bool>(global4.x, false, global3[_wgslsmith_index_u32(1u, 1u)], global4.x), vec4<bool>(false, false, global3[_wgslsmith_index_u32(1u, 1u)], false), global3[_wgslsmith_index_u32(66319u, 1u)]), select(vec4<bool>(true, false, true, false), vec4<bool>(global4.x, global3[_wgslsmith_index_u32(36035u, 1u)], global4.x, global3[_wgslsmith_index_u32(89777u, 1u)]), global3[_wgslsmith_index_u32(17737u, 1u)])))), 1u);
    let var_1 = u_input.a.zyz;
    var var_2 = _wgslsmith_mod_i32(18535i, -_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(select(u_input.a, u_input.a, var_0.a), vec4<i32>(global2[_wgslsmith_index_u32(13466u, 32u)], 98777i, global2[_wgslsmith_index_u32(0u, 32u)], -2147483647i), vec4<i32>(-44062i, var_1.x, 1i, var_1.x))));
    var var_3 = global0[_wgslsmith_index_u32(0u, 12u)];
    global4 = var_3.b.d.yw;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.c);
}

