struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, vec4<u32>(119793u, 46580u, 1u, 1u), vec2<u32>(1u, 25096u), vec2<i32>(i32(-2147483648), 22589i));

var<private> global1: array<vec3<bool>, 10>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(true, vec4<u32>(15094u, 4294967295u, 0u, 119842u), vec2<u32>(1u, 28345u), vec2<i32>(29858i, -1i)), Struct_2(false, vec4<u32>(1u, 91332u, 2675u, 4294967295u), vec2<u32>(0u, 3440u), vec2<i32>(-21156i, 18388i)), Struct_2(true, vec4<u32>(35009u, 4294967295u, 4294967295u, 0u), vec2<u32>(11419u, 4294967295u), vec2<i32>(27227i, 18307i)), Struct_2(false, vec4<u32>(3184u, 4294967295u, 45275u, 0u), vec2<u32>(1u, 1u), vec2<i32>(1i, 2147483647i)), Struct_2(true, vec4<u32>(0u, 4294967295u, 1u, 10919u), vec2<u32>(36821u, 1u), vec2<i32>(27655i, 126601i)), Struct_2(false, vec4<u32>(46224u, 28873u, 1u, 1u), vec2<u32>(0u, 0u), vec2<i32>(-1i, -63151i)), Struct_2(true, vec4<u32>(1u, 1u, 4294967295u, 12960u), vec2<u32>(8949u, 10217u), vec2<i32>(4607i, -5353i)), Struct_2(true, vec4<u32>(4294967295u, 11661u, 35750u, 4294967295u), vec2<u32>(0u, 7754u), vec2<i32>(-1i, 39395i)), Struct_2(true, vec4<u32>(1u, 41191u, 1u, 61582u), vec2<u32>(0u, 1u), vec2<i32>(0i, 10737i)), Struct_2(true, vec4<u32>(9776u, 0u, 35325u, 23378u), vec2<u32>(58049u, 10176u), vec2<i32>(30641i, -31426i)), Struct_2(true, vec4<u32>(34936u, 4294967295u, 7323u, 82466u), vec2<u32>(4294967295u, 0u), vec2<i32>(-63908i, -11662i)), Struct_2(false, vec4<u32>(1u, 4294967295u, 51868u, 32933u), vec2<u32>(20523u, 4294967295u), vec2<i32>(i32(-2147483648), 0i)), Struct_2(false, vec4<u32>(4294967295u, 4294967295u, 8063u, 78881u), vec2<u32>(53903u, 5696u), vec2<i32>(-1i, 18747i)), Struct_2(false, vec4<u32>(43719u, 58676u, 1u, 69317u), vec2<u32>(4294967295u, 6297u), vec2<i32>(1i, -52253i)), Struct_2(true, vec4<u32>(4294967295u, 9112u, 1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<i32>(-1i, -1i)), Struct_2(true, vec4<u32>(26534u, 4294967295u, 4294967295u, 0u), vec2<u32>(19950u, 42008u), vec2<i32>(-81613i, 0i)), Struct_2(true, vec4<u32>(0u, 67659u, 4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-30368i, 4314i)), Struct_2(false, vec4<u32>(27610u, 0u, 9023u, 31624u), vec2<u32>(4294967295u, 1u), vec2<i32>(-83220i, i32(-2147483648))), Struct_2(false, vec4<u32>(1u, 0u, 73570u, 0u), vec2<u32>(4294967295u, 55546u), vec2<i32>(-1i, -19717i)), Struct_2(false, vec4<u32>(103817u, 0u, 7004u, 46116u), vec2<u32>(20316u, 47686u), vec2<i32>(i32(-2147483648), -10265i)), Struct_2(true, vec4<u32>(55273u, 1u, 4294967295u, 4294967295u), vec2<u32>(58947u, 12368u), vec2<i32>(i32(-2147483648), 38651i)), Struct_2(true, vec4<u32>(17195u, 35752u, 1u, 4294967295u), vec2<u32>(6784u, 60116u), vec2<i32>(0i, i32(-2147483648))), Struct_2(true, vec4<u32>(118805u, 18970u, 4294967295u, 37118u), vec2<u32>(0u, 1u), vec2<i32>(-2193i, i32(-2147483648))), Struct_2(false, vec4<u32>(37687u, 30534u, 19159u, 89508u), vec2<u32>(1u, 15825u), vec2<i32>(-6113i, 0i)));

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(false, vec4<u32>(4294967295u, 0u, 25524u, 80739u), vec2<u32>(22743u, 1u), vec2<i32>(32238i, i32(-2147483648))));

var<private> global4: array<i32, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global2 = array<Struct_2, 24>();
    global0 = Struct_2(!arg_0.a, _wgslsmith_clamp_vec4_u32(global0.b >> (~_wgslsmith_sub_vec4_u32(global0.b, global0.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(arg_0.b, ~vec4<u32>(35879u, u_input.e.x, global0.b.x, arg_0.b.x)), ~vec4<u32>(arg_0.c.x, arg_0.b.x, reverseBits(4294967295u), 0u)), u_input.a ^ vec2<u32>(global0.b.x, ~global0.b.x), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(48365u, 13u)], 2147483647i, -44440i) & vec4<i32>(-638i, arg_0.d.x, u_input.b, global0.d.x), ~vec4<i32>(-1i, arg_0.d.x, arg_0.d.x, 4691i)), abs(vec4<i32>(global0.d.x, u_input.b, global0.d.x, 11093i))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(0i, 54403i, -48860i)), ~(~vec3<i32>(-17318i, -13456i, 0i)))));
    let var_0 = !(!(!any(select(vec4<bool>(arg_0.a, arg_0.a, global0.a, arg_0.a), vec4<bool>(true, arg_0.a, global0.a, true), vec4<bool>(global0.a, true, global0.a, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-275f, -611f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f + 1126f) + 113f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1022f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1091f - 797f), -1081f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(256f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1302f))))), _wgslsmith_sub_vec2_u32(vec2<u32>(max(0u, u_input.a.x), ~global0.c.x) >> (vec2<u32>(u_input.e.x, _wgslsmith_add_u32(75487u, global0.b.x)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(arg_0.b.x, global0.c.x), ~u_input.e), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.b.x), arg_0.b.zw), vec2<u32>(1u, global0.c.x) | vec2<u32>(u_input.e.x, 28685u)))));
    var var_2 = u_input.b;
    return min(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, abs(u_input.d)), ~(-43845i), _wgslsmith_add_i32(-907i, arg_0.d.x) & -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, 0i, -4950i, 4536i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.d.x, -2147483647i, -3169i, arg_0.d.x), vec4<i32>(0i, 1i, -57148i, global4[_wgslsmith_index_u32(0u, 13u)])))) ^ vec4<i32>(reverseBits(global0.d.x), -35005i, 2147483647i, _wgslsmith_mod_i32(-11509i, 1i) ^ _wgslsmith_div_i32(-27673i, global0.d.x)), _wgslsmith_mod_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.x, global4[_wgslsmith_index_u32(arg_0.c.x, 13u)], -19225i, 2147483647i), vec4<i32>(arg_0.d.x, 25017i, global0.d.x, -7969i), vec4<i32>(global4[_wgslsmith_index_u32(global0.b.x, 13u)], global4[_wgslsmith_index_u32(u_input.e.x, 13u)], global4[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(arg_0.c.x, 13u)]))), vec4<i32>(1i, ~1i, 0i, ~global0.d.x) & vec4<i32>(0i, global4[_wgslsmith_index_u32(~0u, 13u)], 0i, 19913i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(-884f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1240f, _wgslsmith_f_op_f32(ceil(646f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-333f)), _wgslsmith_f_op_f32(ceil(-1048f)), global0.a & global0.a))), 150f)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(70797u, u_input.a.x), u_input.a, global0.c) | u_input.a);
    var var_1 = _wgslsmith_clamp_vec4_i32(func_3(Struct_2(-1845f > var_0.b.x, global0.b, min(~vec2<u32>(var_0.d.x, u_input.e.x), vec2<u32>(39483u, 52651u)), global0.d)), ~vec4<i32>(52436i >> (u_input.e.x % 32u), ~(-u_input.b), _wgslsmith_clamp_i32(-2147483647i, -10329i, ~u_input.b), -40178i), max((-vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.d, global4[_wgslsmith_index_u32(global0.c.x, 13u)], global4[_wgslsmith_index_u32(4294967295u, 13u)]) | countOneBits(vec4<i32>(-12525i, -1i, 2147483647i, 50960i))) & vec4<i32>(-global4[_wgslsmith_index_u32(u_input.e.x, 13u)], _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(global0.c.x, 13u)], global0.d.x), u_input.c & 2147483647i, _wgslsmith_sub_i32(u_input.b, u_input.d)), -(~firstLeadingBit(vec4<i32>(-1i, u_input.c, -18887i, -2147483647i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.c, 289f) + vec4<f32>(-859f, var_0.c, var_0.c, 430f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) + vec4<f32>(-477f, var_0.b.x, -433f, -357f)), all(vec2<bool>(global0.a, true))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, 391f, var_0.a, var_0.a)))) * vec4<f32>(-416f, -1286f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.b.x + var_0.a)))));
    var var_3 = Struct_2(any(vec4<bool>(global0.a, !(2147483647i <= u_input.d), false, false)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global0.b, global0.b), ~vec4<u32>(u_input.e.x, 0u, global0.c.x, 1879u), ~select(global0.b, vec4<u32>(20362u, global0.c.x, 4880u, global0.b.x), global0.a)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(17362u, global0.b.x, var_0.d.x, u_input.e.x) | vec4<u32>(23976u, global0.b.x, 4294967295u, 31535u), countOneBits(vec4<u32>(u_input.e.x, var_0.d.x, 1u, var_0.d.x))) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(28911u, global0.c.x, 1u, 11817u)), global0.b) << (var_0.d.x % 32u), _wgslsmith_mod_u32(abs(4294967295u), 43351u >> (u_input.e.x % 32u)) << (~0u % 32u)), vec2<i32>(_wgslsmith_mult_i32(-58042i, 0i), _wgslsmith_dot_vec2_i32(var_1.ww, var_1.yz)));
    var var_4 = global3[_wgslsmith_index_u32(var_3.c.x, 1u)];
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<bool>, 10>();
    var var_0 = func_2();
    let var_1 = vec4<i32>(global0.d.x, global0.d.x | _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-32601i & global4[_wgslsmith_index_u32(var_0.d.x, 13u)], _wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(11937i, global0.d.x)), -2564i), ~firstTrailingBit(-1i)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(2147483647i, -14085i, u_input.c) & vec3<i32>(global4[_wgslsmith_index_u32(u_input.e.x, 13u)], u_input.c, 1i)) >> (global0.b.zyz % vec3<u32>(32u)), vec3<i32>(global4[_wgslsmith_index_u32(firstTrailingBit(0u), 13u)], firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(1u, 13u)], -11684i, -1i, global4[_wgslsmith_index_u32(global0.c.x, 13u)]), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], -8623i, 22577i, 1i))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(0u, 13u)], 18139i), 62929i << (0u % 32u)))), -(-(~global4[_wgslsmith_index_u32(4294967295u, 13u)]) | abs(global4[_wgslsmith_index_u32(~var_0.d.x, 13u)])));
    global1 = array<vec3<bool>, 10>();
    let var_2 = vec3<u32>(4294967295u, 166333u, ~var_0.d.x) >> (global0.b.wwz % vec3<u32>(32u));
    return func_2();
}

fn func_4(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(func_1())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-641f * -782f), 866f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(577f))), _wgslsmith_f_op_f32(-1340f - 610f)), abs(firstTrailingBit(global0.c) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(27142u, 19460u), u_input.a, u_input.a)));
    let var_1 = func_2().b;
    global3 = array<Struct_2, 1>();
    global4 = array<i32, 13>();
    global1 = array<vec3<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(62597u, _wgslsmith_div_u32(0u, firstLeadingBit(12919u) & ~var_0.d.x), ~4294967295u), global4[_wgslsmith_index_u32(u_input.a.x, 13u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(var_0.c + -1143f))))));
}

