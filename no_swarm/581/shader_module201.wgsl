struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(30834u, 0u, 8328u), vec3<u32>(4294967295u, 10280u, 1u), vec3<u32>(1u, 111968u, 30130u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 31972u, 199u), vec3<u32>(1u, 1u, 68341u), vec3<u32>(77869u, 4294967295u, 7256u), vec3<u32>(0u, 105359u, 0u), vec3<u32>(31057u, 38728u, 4294967295u), vec3<u32>(46835u, 27956u, 1u), vec3<u32>(60932u, 1u, 1u), vec3<u32>(91499u, 66402u, 40222u), vec3<u32>(43209u, 11144u, 22794u), vec3<u32>(0u, 56136u, 25274u), vec3<u32>(67098u, 13602u, 52062u), vec3<u32>(4294967295u, 35920u, 4294967295u), vec3<u32>(1u, 4294967295u, 71267u), vec3<u32>(30077u, 29385u, 0u), vec3<u32>(4294967295u, 14176u, 22952u), vec3<u32>(52846u, 1u, 101696u), vec3<u32>(76381u, 0u, 4294967295u));

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(-365f, Struct_1(vec4<i32>(-8905i, -1i, 41394i, 44423i)), vec4<u32>(1u, 84447u, 59324u, 10067u), 24146u, Struct_1(vec4<i32>(34945i, i32(-2147483648), -36301i, 0i))), Struct_2(174f, Struct_1(vec4<i32>(49681i, -47686i, 2147483647i, 1i)), vec4<u32>(15167u, 53581u, 4294967295u, 1u), 0u, Struct_1(vec4<i32>(-12350i, 16410i, -40594i, 45945i))), Struct_2(267f, Struct_1(vec4<i32>(i32(-2147483648), 1i, -55208i, i32(-2147483648))), vec4<u32>(52924u, 4294967295u, 1u, 0u), 1u, Struct_1(vec4<i32>(1i, 1i, 1i, 8609i))), Struct_2(-384f, Struct_1(vec4<i32>(-1i, 2922i, i32(-2147483648), 0i)), vec4<u32>(45629u, 0u, 6650u, 1147u), 4294967295u, Struct_1(vec4<i32>(32379i, 1i, 1i, -21740i))), Struct_2(282f, Struct_1(vec4<i32>(i32(-2147483648), 1i, 71184i, 1i)), vec4<u32>(4294967295u, 67961u, 4294967295u, 0u), 1u, Struct_1(vec4<i32>(-39328i, 28524i, 40583i, 53591i))), Struct_2(1000f, Struct_1(vec4<i32>(-9127i, 42116i, 1i, 61663i)), vec4<u32>(4294967295u, 0u, 1u, 48527u), 0u, Struct_1(vec4<i32>(-15029i, 34502i, 0i, -39410i))), Struct_2(1000f, Struct_1(vec4<i32>(43034i, -1i, 0i, -25739i)), vec4<u32>(4294967295u, 1u, 0u, 0u), 4294967295u, Struct_1(vec4<i32>(2147483647i, 2147483647i, 5047i, -49348i))), Struct_2(-1045f, Struct_1(vec4<i32>(1i, 14404i, 0i, 2147483647i)), vec4<u32>(1u, 0u, 58362u, 4294967295u), 1u, Struct_1(vec4<i32>(i32(-2147483648), 77895i, 1i, -36455i))), Struct_2(-873f, Struct_1(vec4<i32>(1i, -45194i, 24291i, -11720i)), vec4<u32>(0u, 0u, 241u, 22486u), 4294967295u, Struct_1(vec4<i32>(20844i, 36523i, 23942i, -1i))), Struct_2(-1136f, Struct_1(vec4<i32>(-21245i, -24068i, 0i, i32(-2147483648))), vec4<u32>(4924u, 4294967295u, 30180u, 39978u), 0u, Struct_1(vec4<i32>(-3657i, 6697i, 8622i, -36171i))), Struct_2(1000f, Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), -37645i)), vec4<u32>(1370u, 4294967295u, 3974u, 1u), 4294967295u, Struct_1(vec4<i32>(-1i, -1i, 16823i, -26987i))), Struct_2(-2184f, Struct_1(vec4<i32>(2147483647i, 94853i, 8065i, -1i)), vec4<u32>(1u, 0u, 101001u, 112777u), 0u, Struct_1(vec4<i32>(-58088i, -1i, 53498i, -26193i))), Struct_2(625f, Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 1i)), vec4<u32>(0u, 0u, 1u, 0u), 15701u, Struct_1(vec4<i32>(i32(-2147483648), 0i, 40800i, -9747i))), Struct_2(571f, Struct_1(vec4<i32>(4789i, 20583i, -29885i, 0i)), vec4<u32>(1u, 0u, 0u, 0u), 30662u, Struct_1(vec4<i32>(2147483647i, -36262i, 2147483647i, i32(-2147483648)))), Struct_2(645f, Struct_1(vec4<i32>(-1i, -2260i, 1i, -47398i)), vec4<u32>(73716u, 22459u, 1u, 73224u), 3169u, Struct_1(vec4<i32>(-2684i, 34367i, 20755i, 19174i))), Struct_2(667f, Struct_1(vec4<i32>(1741i, 20898i, -4667i, 0i)), vec4<u32>(34571u, 37677u, 1u, 1u), 29762u, Struct_1(vec4<i32>(-51174i, -9502i, -4184i, 2147483647i))), Struct_2(1149f, Struct_1(vec4<i32>(-44943i, 1i, 16051i, 2147483647i)), vec4<u32>(0u, 58072u, 32726u, 0u), 42701u, Struct_1(vec4<i32>(i32(-2147483648), 0i, -10894i, -953i))), Struct_2(-1000f, Struct_1(vec4<i32>(-15076i, 1i, 7963i, -26366i)), vec4<u32>(33033u, 20794u, 32210u, 31534u), 1u, Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 48189i))), Struct_2(-1000f, Struct_1(vec4<i32>(2147483647i, -1i, 1i, 1i)), vec4<u32>(1u, 0u, 1u, 6315u), 4294967295u, Struct_1(vec4<i32>(-1i, 0i, -1i, -2108i))));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<f32, 22> = array<f32, 22>(623f, -719f, 454f, -658f, 1352f, 559f, -1520f, -386f, -198f, -714f, -1395f, 345f, 2059f, -992f, -704f, 519f, 2487f, -925f, -561f, 333f, 997f, -589f);

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = global2.x;
    global2 = vec2<bool>(true, global2.x);
    let var_1 = abs(~_wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(-5171i, -27607i)));
    var var_2 = arg_3.d.a;
    let var_3 = vec4<i32>(select(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, arg_3.d.e.a.x), arg_3.d.b.a.zy ^ vec2<i32>(-33238i, arg_3.c.a.x), true), _wgslsmith_mod_vec2_i32(arg_3.d.e.a.ww, u_input.a.yy) << (select(u_input.c.xz, vec2<u32>(u_input.c.x, arg_3.d.c.x), vec2<bool>(arg_1, global2.x)) % vec2<u32>(32u))), -(~6136i), global2.x), -18760i, ~(~(-2147483647i)), -_wgslsmith_sub_i32(abs(-20423i), _wgslsmith_add_i32(select(23136i, 0i, false), var_1)));
    return 1338u;
}

fn func_3(arg_0: u32) -> Struct_1 {
    var var_0 = false & global2.x;
    global2 = select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(any(!(!vec3<bool>(global2.x, global2.x, true))), global2.x), true);
    global1 = array<Struct_2, 19>();
    global3 = array<f32, 22>();
    global3 = array<f32, 22>();
    return global4[_wgslsmith_index_u32(1u, 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global1 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 22u)] + -342f), _wgslsmith_f_op_f32(-arg_1.x)))) - vec2<f32>(400f, 665f)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 22u)] - -755f), _wgslsmith_f_op_f32(max(991f, 267f))))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(21360u | u_input.c.x, 22u)] + -2240f)));
    global3 = array<f32, 22>();
    var var_1 = func_3(_wgslsmith_clamp_u32(u_input.c.x, ~min(countOneBits(u_input.c.x), max(u_input.c.x, 465u)), _wgslsmith_clamp_u32(~u_input.c.x >> (u_input.c.x % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.c.x), firstLeadingBit(1u)), firstTrailingBit(u_input.c.x))));
    let var_2 = Struct_3(u_input.a, ~(-36484i), func_3(~countOneBits(u_input.c.x) << (1u % 32u)), global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) ^ u_input.c.x), 19u)]);
    return ~_wgslsmith_add_i32(2147483647i, u_input.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    global1 = array<Struct_2, 19>();
    var var_0 = u_input.c.x;
    global1 = array<Struct_2, 19>();
    global2 = vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(global2.x, true, global2.x, arg_1), vec4<bool>(false, global2.x, false, global2.x), global2.x), (u_input.a.x ^ -2147483647i) <= 1i)));
    let var_1 = vec4<i32>(select(firstTrailingBit(-1i), _wgslsmith_sub_i32(u_input.b, -1i), true), func_4(func_3(func_2(vec3<f32>(arg_0.x, -1050f, 371f), global2.x, global4[_wgslsmith_index_u32(u_input.c.x, 26u)], Struct_3(vec3<i32>(-48146i, u_input.a.x, u_input.b), u_input.b, global4[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)]))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(1299f - 328f))) ^ -u_input.a.x, -_wgslsmith_add_i32(i32(-1i) * -1i, -1i), 8136i);
    return _wgslsmith_mult_u32(~(~reverseBits(_wgslsmith_clamp_u32(21528u, 0u, u_input.c.x))), _wgslsmith_div_u32(20690u, 20634u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 26>();
    global4 = array<Struct_1, 26>();
    var var_0 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(func_1(vec4<f32>(1000f, -347f, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)]), global2.x), abs(0u)), u_input.c.zz), ~(~abs(u_input.c.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(func_2(vec3<f32>(625f, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(0u, 22u)]), global2.x, Struct_1(vec4<i32>(-32810i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(u_input.a, u_input.b, global4[_wgslsmith_index_u32(u_input.c.x, 26u)], Struct_2(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global4[_wgslsmith_index_u32(u_input.c.x, 26u)], vec4<u32>(36589u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x, global4[_wgslsmith_index_u32(142951u, 26u)]))), 45669u), (u_input.c.x << (u_input.c.x % 32u)) >> (~0u % 32u))) << (firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(21476u), 4294967295u, 4294967295u >> (0u % 32u)), 1u)) % vec4<u32>(32u));
    let var_1 = global1[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u << (var_0.x % 32u), 22u)])), _wgslsmith_f_op_f32(max(-1170f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -298f))))), var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-538f, _wgslsmith_f_op_f32(-824f + -573f), 244f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 31107u, 4294967295u), u_input.c ^ var_1.c.xzx), 22u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.b.a.x);
}

