struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(2147483647i, i32(-2147483648), 0u, vec3<i32>(0i, -7737i, 2147483647i), vec2<i32>(4044i, -12191i)), Struct_1(-43889i, 22384i, 6681u, vec3<i32>(2790i, 1506i, 1i), vec2<i32>(2147483647i, i32(-2147483648))), false), Struct_3(Struct_1(2147483647i, 0i, 4294967295u, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(-41987i, 28993i, 110293u, vec3<i32>(24901i, -5392i, 2147483647i), vec2<i32>(0i, -120i)), false), Struct_3(Struct_1(24491i, -8561i, 73321u, vec3<i32>(-9219i, -1i, 1i), vec2<i32>(2147483647i, -31163i)), Struct_1(i32(-2147483648), 2147483647i, 87792u, vec3<i32>(8120i, i32(-2147483648), 2147483647i), vec2<i32>(-1i, -10710i)), true), Struct_3(Struct_1(94i, 42408i, 14098u, vec3<i32>(13718i, i32(-2147483648), 2147483647i), vec2<i32>(-61134i, 591i)), Struct_1(-23599i, 1i, 1u, vec3<i32>(-1i, 0i, -1063i), vec2<i32>(25139i, -20477i)), false), Struct_3(Struct_1(2147483647i, 22779i, 0u, vec3<i32>(-19200i, 1i, i32(-2147483648)), vec2<i32>(2147483647i, 1i)), Struct_1(1i, 28169i, 0u, vec3<i32>(1i, 19978i, 24845i), vec2<i32>(-62476i, 3064i)), true), Struct_3(Struct_1(1i, 65654i, 56993u, vec3<i32>(48764i, 0i, -1i), vec2<i32>(0i, 14667i)), Struct_1(-8156i, 11413i, 4294967295u, vec3<i32>(0i, i32(-2147483648), 1i), vec2<i32>(-25424i, -15129i)), false), Struct_3(Struct_1(0i, 18344i, 1u, vec3<i32>(0i, 28005i, -29803i), vec2<i32>(1438i, -38816i)), Struct_1(i32(-2147483648), -46126i, 1u, vec3<i32>(i32(-2147483648), -1i, 13574i), vec2<i32>(-25263i, 1i)), true), Struct_3(Struct_1(0i, -6241i, 4294967295u, vec3<i32>(-39639i, -24920i, 0i), vec2<i32>(-36614i, 2147483647i)), Struct_1(-36347i, 12516i, 23820u, vec3<i32>(0i, -37990i, -18107i), vec2<i32>(-2028i, -71251i)), true), Struct_3(Struct_1(1146i, 51423i, 1u, vec3<i32>(-14879i, 104056i, -14077i), vec2<i32>(1i, -1i)), Struct_1(21040i, 1i, 1u, vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec2<i32>(1i, -1213i)), true), Struct_3(Struct_1(34781i, -62766i, 66786u, vec3<i32>(51443i, 31331i, -404i), vec2<i32>(-19759i, 0i)), Struct_1(26712i, 1i, 2940u, vec3<i32>(-5350i, 17648i, 1i), vec2<i32>(-1i, 8158i)), true), Struct_3(Struct_1(i32(-2147483648), -7797i, 21742u, vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec2<i32>(21453i, 2147483647i)), Struct_1(i32(-2147483648), -1i, 0u, vec3<i32>(i32(-2147483648), 1i, -19841i), vec2<i32>(8016i, -40678i)), false));

var<private> global1: Struct_3 = Struct_3(Struct_1(10346i, 1i, 0u, vec3<i32>(2147483647i, 2147483647i, -45262i), vec2<i32>(0i, 2147483647i)), Struct_1(1i, 39473i, 32735u, vec3<i32>(44048i, 40717i, -35198i), vec2<i32>(13766i, i32(-2147483648))), true);

var<private> global2: array<f32, 24>;

var<private> global3: array<bool, 18> = array<bool, 18>(true, false, false, true, true, false, true, true, false, false, false, false, false, false, false, true, false, false);

var<private> global4: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(all(vec2<bool>(true, any(vec2<bool>(global3[_wgslsmith_index_u32(global1.b.c, 18u)], false)))), global1.c);
    let var_1 = global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 25u)];
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(var_1.b.c, 11u)], abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25586i, 24971i, global1.a.b), -global1.b.d), 1i)));
    var_2 = Struct_4(Struct_3(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, var_1.b.a), vec2<i32>(var_1.b.b, var_2.b)), var_2.b, countOneBits(global1.a.c) >> (~var_1.b.c % 32u), vec3<i32>(-1i) * -var_1.b.d, min(select(vec2<i32>(var_2.b, global1.b.b), var_1.b.d.yx, var_0), var_2.a.b.e)), global1.a, false), abs(0i));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-522f, 928f)) * _wgslsmith_f_op_f32(f32(-1f) * -885f));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 0u | var_1.b.c)), vec2<u32>(global1.b.c, 30685u)), ~_wgslsmith_add_u32(global1.b.c << (var_1.a.c % 32u), 49615u));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1.a.c, 11u)];
    var var_1 = Struct_1(max(abs(firstTrailingBit(_wgslsmith_div_i32(-16708i, arg_1.a.d.x))), 8954i), 1i, func_3(), vec3<i32>(global1.a.d.x << (~(~34548u) % 32u), abs(~0i), -abs(countOneBits(-4724i))), firstLeadingBit(arg_1.b.e));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_add_u32(var_1.c, u_input.a.x), 1u), ~(~var_1.c)), 24u)]));
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.a.c, u_input.a.x), 0u);
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_3, 11>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(251f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(42444u, 24u)] + global2[_wgslsmith_index_u32(global1.b.c, 24u)]), global2[_wgslsmith_index_u32(func_2(true, global4[_wgslsmith_index_u32(u_input.b.x, 25u)]), 24u)])) - _wgslsmith_f_op_f32(round(-264f))))));
    let var_1 = u_input.c.wy;
    let var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 1i), -(~vec2<i32>(2147483647i, global1.b.e.x))), global1.a.b, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.c.x, 0u, global1.a.c, u_input.d.x)), ~23099u), global1.b.d, _wgslsmith_mod_vec2_i32(global1.b.e, vec2<i32>(~2147483647i, 18401i << (global1.a.c % 32u)))), global1.b, global1.c);
    var var_3 = Struct_1(_wgslsmith_clamp_i32(var_2.b.e.x, -26794i, var_2.a.a), _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, global1.a.d.x, var_2.a.d.x), vec4<i32>(-21043i, var_2.a.d.x, global1.a.b, 0i), vec4<i32>(32663i, -32213i, global1.b.d.x, -32833i)) ^ (vec4<i32>(-47914i, -10035i, 2147483647i, var_2.a.a) << (vec4<u32>(var_2.a.c, global1.a.c, 1u, 0u) % vec4<u32>(32u))), select(vec4<i32>(20292i, var_2.a.b, global1.b.d.x, -45415i), vec4<i32>(-11167i, var_2.b.b, -1i, global1.b.d.x), vec4<bool>(var_2.c, var_2.c, true, true)) ^ abs(vec4<i32>(-9070i, global1.a.e.x, var_2.a.d.x, global1.b.b)), select(false, false, global1.c) == var_2.c), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(0i, var_2.a.a, var_2.a.b, -7599i)), vec4<i32>(-1i, global1.b.b, var_2.a.a, global1.b.d.x)) >> (~(u_input.c | vec4<u32>(0u, 0u, var_1.x, 4294967295u)) % vec4<u32>(32u))), var_1.x, abs(vec3<i32>(2147483647i, i32(-1i) * -global1.b.a, var_2.b.a)), countOneBits(~global1.b.e) & ~(vec2<i32>(0i, var_2.b.e.x) >> (~var_1 % vec2<u32>(32u))));
    return Struct_4(Struct_3(Struct_1(~17953i, -2147483647i ^ (global1.b.a | 27652i), 14684u, -vec3<i32>(-2147483647i, -40198i, var_3.e.x), firstTrailingBit(vec2<i32>(var_2.a.e.x, -59862i))), Struct_1(11886i, ~(-26436i), u_input.a.x, vec3<i32>(30951i, -2147483647i, _wgslsmith_dot_vec2_i32(var_3.d.yx, vec2<i32>(var_2.a.e.x, var_3.e.x))), vec2<i32>(select(2147483647i, global1.b.d.x, false), global1.b.d.x)), any(!(!vec4<bool>(var_2.c, var_2.c, false, var_2.c)))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<f32, 24>();
    var var_1 = abs(-abs(vec4<i32>(_wgslsmith_sub_i32(0i, -1i), _wgslsmith_div_i32(global1.a.e.x, global1.a.d.x), -var_0.b, firstTrailingBit(2147483647i))));
    var var_2 = vec2<u32>(func_2(all(vec2<bool>(global1.c, global3[_wgslsmith_index_u32(global1.b.c, 18u)])) && true, global4[_wgslsmith_index_u32(var_0.a.a.c, 25u)]) ^ (u_input.c.x ^ ~(global1.b.c | 1u)), _wgslsmith_mult_u32(select(16154u >> (global1.b.c % 32u), 4294967295u >> (var_0.a.b.c % 32u), global1.c) ^ var_0.a.a.c, u_input.b.x));
    global4 = array<Struct_2, 25>();
    var var_3 = global0[_wgslsmith_index_u32(var_2.x, 11u)];
    var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~(4215u >> (var_3.b.c % 32u))), _wgslsmith_div_vec2_u32(select(vec2<u32>(var_0.a.b.c, global1.b.c), vec2<u32>(global1.b.c, u_input.a.x), all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], true))), ~reverseBits(u_input.a.yy))) & vec2<u32>(4294967295u, _wgslsmith_add_u32(abs(29019u), reverseBits(abs(var_2.x))));
    var var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(~var_0.a.b.c, 0u), 53758u), 24u)], var_3.b.e.x, _wgslsmith_div_vec4_i32(reverseBits(abs(vec4<i32>(global1.a.b, 4332i, -13915i, var_0.a.a.d.x) | vec4<i32>(global1.b.b, -1i, var_0.a.a.e.x, -18630i))), select(vec4<i32>(var_3.b.d.x, ~2283i, -var_0.b, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.a.e.x, var_0.a.a.a, var_0.b, var_1.x) >> (u_input.d % vec4<u32>(32u)), ~vec4<i32>(var_0.a.b.a, global1.b.a, 1i, var_1.x)), var_0.a.c)), global2[_wgslsmith_index_u32(global1.b.c, 24u)], global1.a.e.x);
}

