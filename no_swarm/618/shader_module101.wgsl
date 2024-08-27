struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<u32>(4294967295u, 28233u, 0u)), Struct_2(vec3<u32>(16357u, 1u, 1u)), Struct_2(vec3<u32>(37048u, 0u, 1u)), Struct_2(vec3<u32>(41184u, 0u, 1u)), Struct_2(vec3<u32>(77267u, 55200u, 75203u)), Struct_2(vec3<u32>(21574u, 4294967295u, 0u)), Struct_2(vec3<u32>(0u, 4294967295u, 55205u)), Struct_2(vec3<u32>(7526u, 1184u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 0u, 0u)), Struct_2(vec3<u32>(34556u, 0u, 7763u)), Struct_2(vec3<u32>(91831u, 0u, 19008u)), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_2(vec3<u32>(1u, 1u, 33800u)), Struct_2(vec3<u32>(4294967295u, 6253u, 4294967295u)), Struct_2(vec3<u32>(1u, 19593u, 0u)), Struct_2(vec3<u32>(0u, 42981u, 1u)), Struct_2(vec3<u32>(0u, 23494u, 80196u)), Struct_2(vec3<u32>(10072u, 4294967295u, 0u)), Struct_2(vec3<u32>(12601u, 21984u, 95173u)), Struct_2(vec3<u32>(14205u, 0u, 24242u)), Struct_2(vec3<u32>(4294967295u, 31321u, 4294967295u)), Struct_2(vec3<u32>(9399u, 3390u, 1u)), Struct_2(vec3<u32>(51443u, 6612u, 56772u)), Struct_2(vec3<u32>(0u, 15517u, 33862u)), Struct_2(vec3<u32>(0u, 8784u, 4294967295u)), Struct_2(vec3<u32>(0u, 15440u, 89536u)), Struct_2(vec3<u32>(1u, 4294967295u, 6526u)), Struct_2(vec3<u32>(0u, 16376u, 28271u)));

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_4(arg_2.a.xy, Struct_2(global1.wwx | vec3<u32>(global1.x, firstTrailingBit(1u), ~4294967295u)), global0[_wgslsmith_index_u32(reverseBits(min(~u_input.a, global1.x)) & _wgslsmith_add_u32(global1.x, ~19079u), 29u)], Struct_1(!(!vec4<bool>(true, arg_2.a.x, arg_2.a.x, false))), Struct_2(~(~vec3<u32>(global2[_wgslsmith_index_u32(global1.x, 8u)], global1.x, 4294967295u))));
    var var_1 = vec4<u32>(firstLeadingBit(firstLeadingBit(firstTrailingBit(~global1.x))), abs((72571u >> (_wgslsmith_div_u32(u_input.a, 46173u) % 32u)) ^ ~(1u | global1.x)), 1u, firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)));
    global1 = ~vec4<u32>(~global1.x, ~(~40033u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(global1.yyz), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, global2[_wgslsmith_index_u32(13315u, 8u)], var_0.c.a.x), var_0.e.a, vec3<u32>(13540u, 40573u, global1.x))), ~_wgslsmith_add_u32(0u, 34445u)), 0u);
    let var_2 = var_0.c;
    var var_3 = firstTrailingBit(vec4<i32>(~_wgslsmith_mult_i32(1i, -2147483647i), -_wgslsmith_sub_i32(-5162i, u_input.d), countOneBits(-12806i), _wgslsmith_sub_i32(-arg_1.x, -2147483647i)) & vec4<i32>(firstLeadingBit(abs(u_input.c)), firstTrailingBit(arg_1.x), 421i, 0i));
    return max(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u) & _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, global1.x), global1.zx), global1.wz), var_0.e.a.yz), ~_wgslsmith_mod_u32(~var_1.x, ~(~4294967295u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(10461u, 29u)];
    let var_1 = vec4<u32>(select(1u, _wgslsmith_clamp_u32(abs(7089u), global1.x & global2[_wgslsmith_index_u32(27089u, 8u)], _wgslsmith_sub_u32(0u, 0u)) & (~arg_0.x >> (~0u % 32u)), true), arg_0.x, _wgslsmith_dot_vec2_u32(select(arg_0.xw, countOneBits(vec2<u32>(1u, 4294967295u)), vec2<bool>(true, true)), reverseBits(~var_0.a.zx)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 27713u), arg_0.zy));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1365f);
    let var_3 = reverseBits(firstTrailingBit(reverseBits(vec4<i32>(~u_input.d, _wgslsmith_clamp_i32(u_input.b.x, -25533i, u_input.c), 14388i, firstLeadingBit(u_input.b.x)))));
    let var_4 = Struct_4(!select(vec2<bool>(true, true), vec2<bool>(select(true, false, false), any(vec3<bool>(false, true, false))), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(firstTrailingBit(var_0.a.x), 29u)], global0[_wgslsmith_index_u32(10372u, 29u)], Struct_1(!vec4<bool>(true, true, var_3.x != u_input.c, select(false, true, false))), Struct_2(_wgslsmith_div_vec3_u32(~countOneBits(var_1.yyy), (var_0.a << (vec3<u32>(6940u, arg_1, global1.x) % vec3<u32>(32u))) ^ firstLeadingBit(arg_0.zzx))));
    return vec4<u32>(~max(_wgslsmith_clamp_u32(48751u, 4294967295u, arg_0.x), _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(arg_0.x, 8u)], 21366u)), (reverseBits(87128u) ^ ~_wgslsmith_dot_vec2_u32(arg_0.xz, var_1.xx)) << (_wgslsmith_div_u32(~var_0.a.x, ~(~var_1.x)) % 32u), 4294967295u, (~(~arg_1) & 32905u) & 1u);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    global2 = array<u32, 8>();
    global1 = func_4(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global1.x, 51042u << (1u % 32u), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(93989u, 0u, 0u, u_input.a), vec4<u32>(u_input.a, global1.x, 18743u, 0u)))), vec4<u32>(reverseBits(0u) | _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global1.x, 8u)], 1u, global1.x), func_3(arg_0, ~vec3<i32>(u_input.c, u_input.c, -7163i), Struct_1(arg_1)), ~abs(global2[_wgslsmith_index_u32(0u, 8u)]), u_input.a)), ~(~1u));
    let var_0 = vec2<u32>(61681u >> (global1.x % 32u), ~(~u_input.a << (u_input.a % 32u)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(514f, 2095f)))), 32885i);
}

fn func_1() -> vec2<bool> {
    let var_0 = vec2<bool>(true, any(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))));
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(ceil(-1219f));
    var_1 = min(-(u_input.b.x | select(u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.b.x), true)), 2147483647i);
    var var_3 = func_2(!((global1.x >> (~1u % 32u)) < _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(max(u_input.a, global1.x), 8u)], countOneBits(4294967295u))), !vec4<bool>(var_0.x, false, var_0.x, all(!vec2<bool>(var_0.x, false))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(select(vec2<bool>(true, true), func_1(), func_1()), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(false, true, true, true)))), !(!any(vec4<bool>(false, false, true, true)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(abs(~global1.x), max(global2[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a)), ~23399u), 29u)], Struct_2(reverseBits(global1.xwz)), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), false), true)), global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    var var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -u_input.d, countOneBits(u_input.b.x), u_input.b.x), vec4<i32>(~u_input.c, ~u_input.c, ~u_input.c, abs(2147483647i))) ^ vec4<i32>(u_input.c, -30504i, u_input.b.x, u_input.b.x);
    let var_2 = var_0.e;
    let var_3 = firstTrailingBit((select(min(vec2<i32>(-1i, -6685i), var_1.wx), -var_1.yz, !var_0.a) >> (abs(vec2<u32>(global2[_wgslsmith_index_u32(24482u, 8u)], 1u)) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(var_1.zz, reverseBits(reverseBits(vec2<i32>(-1i, -1i)))));
    var var_4 = _wgslsmith_mod_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.c) ^ vec4<i32>(var_1.x, -35057i, var_3.x, 18136i), vec4<i32>(u_input.d, 44255i, var_3.x, -2147483647i) & vec4<i32>(0i, var_1.x, -1i, 15078i)) ^ vec4<i32>(_wgslsmith_mod_i32(1i, u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, var_3.x), vec2<i32>(-19194i, u_input.c)), -var_1.x, _wgslsmith_div_i32(23312i, u_input.d))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(~var_2.a.x, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(func_3(var_0.a.x, var_1.wyy, Struct_1(var_0.d.a)), 8u)], global1.x), vec4<u32>(var_2.a.x, u_input.a, var_0.e.a.x, abs(4294967295u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(min(vec4<i32>(1i, -u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c, u_input.b.x), var_1.wwz), max(-2147483647i, var_3.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(11517i, 56396i, var_1.x, -12804i), vec4<i32>(var_1.x, var_1.x, 21797i, -2147483647i)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.x, -2147483647i, -2147483647i, var_3.x), vec4<i32>(u_input.d, -1i, var_1.x, 2798i) >> (select(vec4<u32>(32709u, 69556u, 6686u, 0u), vec4<u32>(var_0.c.a.x, global1.x, 34696u, u_input.a), var_0.d.a) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.d), 0i, 0i, firstLeadingBit(u_input.d)))));
    var var_5 = Struct_2(var_2.a);
    let var_6 = -(max(vec4<i32>(var_4.x, u_input.b.x, ~var_1.x, 1i), vec4<i32>(-1i, -var_3.x, firstLeadingBit(-1351i), func_2(var_0.a.x, var_0.d.a).b)) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, var_5.a.x, global2[_wgslsmith_index_u32(39130u, 8u)], 4294967295u), ~vec4<u32>(1u, global2[_wgslsmith_index_u32(102230u, 8u)], var_0.b.a.x, u_input.a))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~var_0.e.a, select(~abs(var_0.b.a), var_2.a, select(var_0.d.a.ywy, vec3<bool>(var_0.d.a.x, false, var_0.a.x), var_0.a.x))), -15218i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(0u, _wgslsmith_sub_u32(0u, global2[_wgslsmith_index_u32(var_2.a.x, 8u)] << (global2[_wgslsmith_index_u32(global1.x, 8u)] % 32u))), var_2.a.x | func_4(vec4<u32>(1u, var_0.e.a.x, global2[_wgslsmith_index_u32(global1.x, 8u)], var_5.a.x) ^ vec4<u32>(4294967295u, 0u, 0u, var_0.b.a.x), 0u).x, ~34983u), 8u)], ~abs(vec2<u32>(28231u, 26956u)) | abs(~var_5.a.yx));
}

