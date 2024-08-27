struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(vec4<i32>(-26866i, 2147483647i, 42084i, -70603i), 1u), 0u, Struct_2(Struct_1(vec4<i32>(32969i, i32(-2147483648), 2147483647i, -4430i), 0u), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-14340i, 0i, -39737i, -1i), 70959u)), Struct_3(Struct_1(vec4<i32>(7907i, -8519i, -3487i, -1i), 1u), 4294967295u, Struct_2(Struct_1(vec4<i32>(-13527i, 1i, -39144i, -4074i), 0u), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 56861i, -1i), 1u)), Struct_3(Struct_1(vec4<i32>(4606i, 1i, 6834i, 37710i), 4294967295u), 4294967295u, Struct_2(Struct_1(vec4<i32>(56313i, 59637i, i32(-2147483648), 1i), 27384u), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-33927i, -39122i, i32(-2147483648), -5907i), 19700u)), Struct_3(Struct_1(vec4<i32>(1i, -27492i, 26794i, 60825i), 1u), 1u, Struct_2(Struct_1(vec4<i32>(87104i, 38643i, -1i, 2147483647i), 1u), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-34790i, 12316i, i32(-2147483648), 2147483647i), 1u)), Struct_3(Struct_1(vec4<i32>(2147483647i, 64734i, -13165i, 30571i), 64978u), 46530u, Struct_2(Struct_1(vec4<i32>(1i, -18781i, -1i, 1498i), 0u), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(i32(-2147483648), 0i, -1i, 36686i), 91139u)), Struct_3(Struct_1(vec4<i32>(-1247i, -1i, 1i, -32659i), 1u), 45873u, Struct_2(Struct_1(vec4<i32>(25224i, -907i, -1i, 0i), 0u), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(-1i, 24078i, 0i, -7633i), 1u)), Struct_3(Struct_1(vec4<i32>(-1815i, 2147483647i, 2147483647i, 68897i), 4294967295u), 9078u, Struct_2(Struct_1(vec4<i32>(1i, -23177i, 1i, i32(-2147483648)), 4294967295u), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(7207i, 2147483647i, 2882i, -7428i), 40986u)), Struct_3(Struct_1(vec4<i32>(-5952i, i32(-2147483648), -47557i, i32(-2147483648)), 4294967295u), 4704u, Struct_2(Struct_1(vec4<i32>(-1i, -1i, 25591i, 0i), 52839u), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(i32(-2147483648), 9153i, 0i, 3620i), 75525u)), Struct_3(Struct_1(vec4<i32>(0i, -6669i, -10323i, 1i), 0u), 1u, Struct_2(Struct_1(vec4<i32>(12285i, 2147483647i, 2147483647i, 22315i), 0u), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(-92641i, 1i, 0i, -55921i), 60326u)), Struct_3(Struct_1(vec4<i32>(1i, 29609i, 0i, 0i), 25003u), 4294967295u, Struct_2(Struct_1(vec4<i32>(-1i, -36227i, 2147483647i, 0i), 0u), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -28183i, 7747i), 0u)), Struct_3(Struct_1(vec4<i32>(-22380i, -2283i, 62903i, 28203i), 0u), 4294967295u, Struct_2(Struct_1(vec4<i32>(1i, 27590i, 46536i, -1i), 68023u), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(i32(-2147483648), 6716i, -38190i, 40546i), 73499u)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -15072i, 22999i, 0i), 1u), 4294967295u, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 4253i, -29042i, 1i), 98242u), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(1i, 56763i, i32(-2147483648), -12077i), 4294967295u)), Struct_3(Struct_1(vec4<i32>(-1i, 1i, 28808i, 37350i), 0u), 1u, Struct_2(Struct_1(vec4<i32>(2147483647i, 29633i, -31240i, 30882i), 23156u), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 0i), 4294967295u)), Struct_3(Struct_1(vec4<i32>(-55242i, -2692i, 17751i, -28124i), 4294967295u), 4294967295u, Struct_2(Struct_1(vec4<i32>(33050i, -1i, 0i, i32(-2147483648)), 39742u), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -42498i), 42980u)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 3720i, -1i), 18747u), 4294967295u, Struct_2(Struct_1(vec4<i32>(3423i, 5838i, 0i, i32(-2147483648)), 44957u), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(-14487i, -13268i, -1i, 26488i), 102614u)));

var<private> global1: vec4<i32> = vec4<i32>(-1i, 22714i, -2243i, 8982i);

var<private> global2: array<f32, 17>;

var<private> global3: vec4<u32>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    var var_0 = arg_0.d.a.a.x;
    global4 = arg_0.a.c.b.ww;
    let var_1 = -4827i;
    let var_2 = arg_0.a.c.a.a;
    global0 = array<Struct_3, 15>();
    return global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(4294967295u, u_input.c.x)), 17u)];
}

fn func_3() -> bool {
    global0 = array<Struct_3, 15>();
    let var_0 = true;
    global1 = ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -u_input.a, ~(-2147483647i), ~global1.x));
    global3 = vec4<u32>(max(abs(22411u), ~(~(~u_input.c.x))), 1u, select(u_input.c.x, countOneBits(18196u), true), u_input.c.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global1.x, countOneBits(31618i), 0i), max(vec4<i32>(global1.x, global1.x, u_input.e, -40385i), -vec4<i32>(global1.x, 0i, global1.x, u_input.e))), abs(u_input.c.x)), !select(vec4<bool>(!var_0, true, all(vec2<bool>(false, true)), true), !(!vec4<bool>(true, false, var_0, global4.x)), !vec4<bool>(true, global4.x, global4.x, var_0)));
    return global4.x;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(10970u, 15u)], vec2<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 17u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(Struct_1(vec4<i32>(global1.x, -2147483647i, 0i, u_input.b), 30610u), u_input.c.x, Struct_2(Struct_1(vec4<i32>(global1.x, u_input.a, u_input.e, u_input.b), u_input.d), vec4<bool>(global4.x, global4.x, true, false)), Struct_1(vec4<i32>(u_input.b, global1.x, global1.x, global1.x), 17445u)), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], global2[_wgslsmith_index_u32(27547u, 17u)]), global1.x, Struct_2(Struct_1(vec4<i32>(-2147483647i, global1.x, global1.x, u_input.b), global3.x), vec4<bool>(false, global4.x, true, global4.x)), u_input.a), u_input.c & vec2<u32>(5152u, u_input.d), 2147483647i)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 17u)])))), ~abs(_wgslsmith_mod_i32(u_input.b >> (52356u % 32u), 40290i)), Struct_2(Struct_1(-(vec4<i32>(47649i, u_input.a, -9471i, global1.x) ^ vec4<i32>(14669i, u_input.e, u_input.a, 7703i)), 0u), select(vec4<bool>(false, select(false, true, global4.x), !global4.x, global4.x), !vec4<bool>(global4.x, true, global4.x, global4.x), func_3())), -65619i);
    var var_1 = Struct_2(Struct_1(var_0.d.a.a & _wgslsmith_sub_vec4_i32(select(var_0.a.a.a, var_0.d.a.a, var_0.d.b), ~var_0.a.c.a.a), global3.x), select(var_0.d.b, !(!select(vec4<bool>(var_0.d.b.x, true, var_0.d.b.x, var_0.d.b.x), var_0.d.b, vec4<bool>(global4.x, false, global4.x, true))), any(!var_0.d.b.zxx) && true));
    global3 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 23398u, 0u, var_1.a.b)) ^ ~vec4<u32>(4294967295u, 4294967295u, ~1u, _wgslsmith_mult_u32(33465u, 12999u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(4294967295u, var_1.a.b), 1u, 31751u), ~vec4<u32>(global3.x, var_0.a.c.a.b, var_1.a.b, 0u)), vec4<u32>(1u, u_input.c.x, 4294967295u, 21107u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a.b, 33255u, 26287u, 10687u) | vec4<u32>(81992u, 1u, u_input.c.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 16623u, var_1.a.b, u_input.c.x), vec4<u32>(131841u, 34541u, 1u, 1u))), vec4<u32>(1u, ~4294967295u, 0u, 1u))));
    global4 = !vec2<bool>(var_1.b.x, true);
    global2 = array<f32, 17>();
    return Struct_5(var_0.d, var_0.a.c, global4.x, !select(select(var_0.a.c.b.yzy, select(vec3<bool>(global4.x, false, var_0.a.c.b.x), vec3<bool>(false, var_1.b.x, true), true), true || var_1.b.x), vec3<bool>(var_1.b.x, func_3(), global4.x), !(!global4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~((_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a.b, 1u, 0u, u_input.d), vec4<u32>(global3.x, 12029u, var_0.b.a.b, 73215u)) >> (select(vec4<u32>(global3.x, 7401u, 32859u, 72875u), vec4<u32>(var_0.b.a.b, 121233u, global3.x, var_0.b.a.b), global4.x) % vec4<u32>(32u))) | ~vec4<u32>(1u, u_input.d, 1u, 42308u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(abs(var_0.b.a.b), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global3.x, global3.x), _wgslsmith_add_u32(1u, u_input.c.x)), ~(~u_input.d), ~(~var_0.a.a.b)), max(vec4<u32>(func_1().b.a.b, 1u ^ global3.x, global3.x, 25077u >> (global3.x % 32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, 13244u, u_input.d), vec4<u32>(85041u, 58193u, 17954u, 4294967295u)))) % vec4<u32>(32u));
    let var_2 = func_1().b.a;
    let var_3 = _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(func_1().b.a, var_1.x, func_1().b, func_1().b.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1157f, global2[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec2<f32>(-1189f, global2[_wgslsmith_index_u32(41607u, 17u)]))))), 51587i, var_0.b, max(0i, var_2.a.x)), max(~(~vec2<u32>(u_input.d, 1u)), vec2<u32>(75076u, abs(u_input.c.x))), global1.x)) > _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x << (abs(~4294967295u) % 32u), 17u)]);
    var var_4 = Struct_4(Struct_3(func_1().a.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, global3.x, 23368u), global3.xwz), firstLeadingBit(global3.zxy)) ^ u_input.d, Struct_2(var_2, select(!vec4<bool>(var_0.d.x, global4.x, false, var_3), select(var_0.a.b, var_0.b.b, global4.x), true)), var_0.a.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 17u)])))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~var_0.a.a.a ^ var_0.b.a.a, countOneBits(firstLeadingBit(var_2.a))), 0i), var_0.b, global1.x);
    global2 = array<f32, 17>();
    var var_5 = Struct_2(var_0.a.a, var_4.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(114613u, 17u)], -715f, -622f) * vec3<f32>(1172f, var_4.b.x, var_4.b.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-850f)) - -691f), var_4.b.x)));
}

