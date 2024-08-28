struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    let var_0 = global1.b.zy;
    var var_1 = global1.a;
    let var_2 = global0[_wgslsmith_index_u32(60023u, 21u)];
    global2 = array<u32, 26>();
    var_1 = global1.a;
    return arg_2.a.b;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(global1.b.x, true, global1.b.x);
    var var_1 = Struct_2(Struct_1(false, any(!vec3<bool>(global1.a.b, var_0.x, var_0.x)), -478f), !global1.b);
    var var_2 = Struct_2(Struct_1(any(vec4<bool>(true, true, false, false)), !global1.b.x, var_1.a.c), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -18848i, -52477i, -2663i), vec4<i32>(6905i, 2147483647i, -27592i, 1i), vec4<i32>(1i, 9102i, 37718i, 2147483647i)) ^ vec4<i32>(8130i, 14193i, -2147483647i, -2147483647i)), global0[_wgslsmith_index_u32(~12620u, 21u)], _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4734u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 26u)], u_input.a)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 1u, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 42844u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35656u, 26u)], 26u)], 0u), vec4<u32>(4294967295u, 0u, 35500u, 4294967295u))))));
    var var_3 = -max(-(~vec3<i32>(1i, 1i, 1i)), vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(0i), ~1i), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -1i, 63067i), vec4<i32>(27076i, -22435i, 0i, -38837i))));
    var_1 = Struct_2(Struct_1(true, var_0.x, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.c - -208f)))))), !select(vec4<bool>(var_0.x, select(true, global1.b.x, true), true, any(vec4<bool>(true, false, var_1.a.a, var_2.a.a))), vec4<bool>(false && global1.b.x, func_3(-483f, vec4<i32>(0i, -2147483647i, var_3.x, var_3.x), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63527u, 26u)], 21u)], 27038u).x, global1.b.x, var_1.b.x || global1.a.b), func_3(_wgslsmith_f_op_f32(round(var_1.a.c)), -vec4<i32>(var_3.x, -3385i, var_3.x, var_3.x), Struct_3(Struct_2(var_1.a, var_2.b), global1.a), 1u)));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = var_0.b.wxy;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, arg_1.a.c)) * arg_3);
    let var_3 = global1.a;
    global0 = array<Struct_3, 21>();
    return Struct_2(arg_0, func_3(var_0.a.c, vec4<i32>(1i, arg_2.x, arg_2.x, _wgslsmith_sub_i32(max(-4813i, arg_2.x), -2147483647i << (global2[_wgslsmith_index_u32(u_input.a, 26u)] % 32u))), global0[_wgslsmith_index_u32(countOneBits(0u), 21u)], u_input.a ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 26u)], u_input.a, global2[_wgslsmith_index_u32(u_input.a, 26u)], 0u), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(34876u, 26u)], 0u, 18974u)) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5676u, 26u)], 26u)] % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    var var_0 = countOneBits(39578u);
    var var_1 = arg_1;
    let var_2 = 1u;
    var_0 = 19375u;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.c)), 1f, -377f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1744f), _wgslsmith_f_op_f32(round(arg_2.b.c)), arg_2.a.a.c))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.c, 438f, global1.a.c) - vec3<f32>(global1.a.c, arg_0.c, -237f)))))))));
    return Struct_1(func_2().a, _wgslsmith_clamp_i32(-14841i, _wgslsmith_mult_i32(1i, 1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(88985i, 2147483647i, -33699i), _wgslsmith_add_i32(0i, 31608i))) <= _wgslsmith_mod_i32(1i, abs(2147483647i)), _wgslsmith_f_op_f32(-1361f - global1.a.c));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(func_5(global1.a, func_4(global1.a, Struct_2(func_2(), vec4<bool>(arg_0.a.a.b, arg_0.a.b.x, global1.a.a, arg_0.a.a.a)), arg_3, 1000f), arg_0), !func_4(func_4(Struct_1(global1.b.x, global1.a.a, global1.a.c), arg_0.a, select(arg_3, vec4<i32>(0i, -25351i, arg_3.x, 6462i), arg_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -534f)).a, Struct_2(Struct_1(true, false, arg_0.a.a.c), func_4(Struct_1(false, arg_0.a.a.a, global1.a.c), arg_0.a, vec4<i32>(1i, 5737i, arg_1.x, 44146i), 861f).b), vec4<i32>(arg_3.x, arg_1.x, _wgslsmith_mult_i32(arg_3.x, arg_1.x), 10578i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-311f, arg_0.a.a.c)))).b);
    let var_1 = Struct_3(Struct_2(Struct_1(all(arg_0.a.b.xzz), arg_0.a.b.x, arg_0.b.c), var_0.b), Struct_1(var_0.a.a, true, global1.a.c));
    var var_2 = var_1;
    var var_3 = arg_3.x;
    let var_4 = _wgslsmith_div_vec2_u32(arg_2.xx, vec2<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)]), select(~(3586u << (arg_2.x % 32u)), u_input.a, var_2.a.b.x)));
    return var_1.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(287f, _wgslsmith_f_op_f32(-690f * -210f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c) * arg_0.a.a.c)) <= 2091f, global1.b.x, arg_0.b.c);
    let var_1 = min(vec3<u32>(28618u, u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(65322u, 0u, u_input.a) >> (vec3<u32>(36105u, 52692u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(0u, countOneBits(1u), abs(global2[_wgslsmith_index_u32(u_input.a, 26u)]))), 26u)]), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 26u)]) << (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 20218u, u_input.a) % vec3<u32>(32u)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], u_input.a, 68410u), ~vec3<u32>(3413u, global2[_wgslsmith_index_u32(4294967295u, 26u)], 0u)) >> (abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 26u)], 26u)] << (94358u % 32u), 1u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], _wgslsmith_mult_u32(1u, 4294967295u))) % vec3<u32>(32u)));
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_1.x, ~(16173u << (1u % 32u))), 15117u, global2[_wgslsmith_index_u32(u_input.a, 26u)]);
    let var_3 = vec3<u32>(select(~(~select(1u, 18219u, global1.b.x)), firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(var_1), ~vec3<u32>(var_2, 10267u, 0u))), true), var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2, 4294967295u, global2[_wgslsmith_index_u32(58461u, 26u)], 4294967295u), vec4<u32>(var_2, 4294967295u, 4294967295u, global2[_wgslsmith_index_u32(0u, 26u)]), true), ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, 74661u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(var_2, 26u)])), ~select(u_input.a, u_input.a, arg_1.x)), select(vec4<u32>(~global2[_wgslsmith_index_u32(var_2, 26u)], u_input.a, ~1u, 78735u << (var_2 % 32u)), (vec4<u32>(0u, 0u, 31247u, var_2) << (vec4<u32>(53384u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18942u, 26u)], 26u)], var_2, var_2) % vec4<u32>(32u))) & ~vec4<u32>(var_2, var_2, global2[_wgslsmith_index_u32(var_1.x, 26u)], 70070u), global1.b)));
    global0 = array<Struct_3, 21>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.c;
    var var_1 = vec3<i32>(func_6(Struct_3(func_1(global0[_wgslsmith_index_u32(~45985u, 21u)], vec3<i32>(13754i, -6375i, 0i), ~vec4<u32>(4294967295u, 28168u, 1u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<i32>(1i, 1i, 1i, 1i)), func_4(func_2(), Struct_2(Struct_1(true, global1.b.x, global1.a.c), global1.b), countOneBits(vec4<i32>(-2147483647i, -77067i, -6558i, 3598i)), _wgslsmith_f_op_f32(f32(-1f) * -1615f)).a), func_1(Struct_3(Struct_2(Struct_1(true, global1.a.a, global1.a.c), vec4<bool>(false, global1.b.x, global1.a.b, global1.b.x)), Struct_1(global1.a.b, true, 533f)), vec3<i32>(abs(-9420i), 1i, -1i), vec4<u32>(1u, ~31365u, global2[_wgslsmith_index_u32(1u, 26u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)] % 32u), _wgslsmith_add_u32(u_input.a, global2[_wgslsmith_index_u32(39347u, 26u)])), vec4<i32>(1i, -2147483647i, 1i, _wgslsmith_sub_i32(-2147483647i, -2147483647i))).b.zzx), reverseBits(_wgslsmith_add_i32(select(_wgslsmith_sub_i32(25719i, 2830i), ~(-1i), func_4(Struct_1(global1.a.a, true, -497f), Struct_2(global1.a, vec4<bool>(global1.a.b, false, false, false)), vec4<i32>(6606i, -5907i, -2147483647i, 0i), global1.a.c).a.a), -2147483647i)), _wgslsmith_div_i32(1201i, -46646i));
    var var_2 = 209f;
    global0 = array<Struct_3, 21>();
    var_2 = _wgslsmith_f_op_f32(max(-335f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(global1.a.c - global1.a.c)), _wgslsmith_f_op_f32(global1.a.c * -125f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-913f, global1.a.c, 1422f, global1.a.c) - vec4<f32>(global1.a.c, -296f, global1.a.c, global1.a.c)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.c, 1821f, global1.a.c, 554f), vec4<f32>(-514f, global1.a.c, global1.a.c, 1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(497f * -1973f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x)))), -382f), _wgslsmith_clamp_vec2_i32(-var_1.xx, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(var_1.x, -5184i), -6095i), var_1.x), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.x, var_1.x, -2147483647i, -8923i)), vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i)), 2147483647i)), u_input.a, -countOneBits(~var_1.x), var_3.zx);
}

