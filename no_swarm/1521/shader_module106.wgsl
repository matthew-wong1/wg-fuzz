struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
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

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: array<u32, 14>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>) -> bool {
    var var_0 = u_input.e;
    let var_1 = _wgslsmith_clamp_vec2_i32(var_0.xz, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(0i, var_0.x)), -u_input.d) | ~(~firstLeadingBit(var_0.zy)), vec2<i32>(_wgslsmith_dot_vec3_i32(~var_0.zwx, -vec3<i32>(-18864i, arg_1, arg_1)) >> (abs(~u_input.b.x) % 32u), _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 2136i), vec2<i32>(u_input.e.x, arg_1)), 2147483647i)));
    let var_2 = Struct_1(-var_0.x, true, (-43388i & abs(var_1.x)) >> (~global2[_wgslsmith_index_u32(1u, 14u)] % 32u), abs(1i), global1[_wgslsmith_index_u32(~91664u, 26u)]);
    let var_3 = true;
    global1 = array<vec3<bool>, 26>();
    return arg_2.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, any(select(vec3<bool>(true, true, true), select(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], vec3<bool>(false, false, false), false), false)), func_3(vec2<bool>(5485i <= global0.x, all(vec2<bool>(true, true))), 1i, vec2<bool>(true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f + _wgslsmith_f_op_f32(ceil(1378f))), 1368f) > 252f);
    var var_1 = arg_0;
    var var_2 = !select(select(!all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), ~global0.x < max(60924i, 0i), all(vec2<bool>(var_0.x, var_0.x))), true, true);
    let var_3 = ~firstTrailingBit(global0.x);
    var var_4 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.d, u_input.e.zy), func_3(vec2<bool>(!func_3(var_0.zy, var_3, vec2<bool>(true, true)), any(var_0)), 2147483647i, select(select(vec2<bool>(true, false), var_0.zz, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), !(!var_0.zy), any(!var_0.zy))), global0.x, ~(i32(-1i) * -(var_3 << (global2[_wgslsmith_index_u32(u_input.c.x, 14u)] % 32u))), var_0);
    return Struct_1(1i, false, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.d.x, ~(-1i)), -vec2<i32>(u_input.e.x, 2147483647i) >> (~u_input.b % vec2<u32>(32u)))), min(-_wgslsmith_dot_vec2_i32(min(vec2<i32>(0i, 2147483647i), u_input.d), u_input.d), var_3), vec3<bool>(var_4.b, true, func_3(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(u_input.e.wxx, vec3<i32>(1i, 19133i, -1i)) ^ var_3, !var_4.e.yy)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = u_input.e.xy;
    var var_0 = -_wgslsmith_sub_vec4_i32(u_input.e, ~u_input.e);
    global2 = array<u32, 14>();
    global0 = ~reverseBits(select(var_0.zy, min(-u_input.d, firstLeadingBit(vec2<i32>(global0.x, -2147483647i))), arg_0.e.xx));
    var_0 = u_input.e;
    return func_2(_wgslsmith_add_vec4_u32(vec4<u32>(~423u, global2[_wgslsmith_index_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), 14u)], ~(~4294967295u), global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<u32>((0u & u_input.b.x) << ((global2[_wgslsmith_index_u32(u_input.c.x, 14u)] << (0u % 32u)) % 32u), 1u, _wgslsmith_sub_u32(~u_input.a.x, 0u >> (u_input.c.x % 32u)), 16012u)), ~7629u, select(1u, ~9295u, !func_3(arg_0.e.yy, firstLeadingBit(2147483647i), vec2<bool>(false, true))));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(786f, 835f, 165f, 1000f), vec4<f32>(-309f, 1353f, -827f, -446f)) - vec4<f32>(-162f, 1019f, -1191f, 405f)))));
    global2 = array<u32, 14>();
    let var_2 = Struct_1(-5720i, func_4(Struct_1(arg_0 & abs(-62970i), all(vec4<bool>(true, arg_1.e.x, arg_1.e.x, true)), u_input.e.x, global0.x, !global1[_wgslsmith_index_u32(~u_input.b.x, 26u)]), Struct_1(0i, var_0 == -1i, 3101i, arg_0, !select(arg_1.e, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 26u)], false)), arg_1).b, var_0, var_0, select(!global1[_wgslsmith_index_u32(u_input.c.x, 26u)], select(!func_2(vec4<u32>(8116u, 53733u, 20378u, u_input.c.x), u_input.b.x, u_input.c.x).e, !select(vec3<bool>(arg_1.b, true, true), vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15934u, 14u)], 26u)]), select(select(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 26u)], false), arg_1.e, select(vec3<bool>(true, arg_1.e.x, false), vec3<bool>(arg_1.b, arg_1.b, arg_1.b), true))), func_3(select(vec2<bool>(false, arg_1.e.x), select(arg_1.e.zy, vec2<bool>(false, arg_1.b), vec2<bool>(false, arg_1.e.x)), arg_1.e.xz), -1i, vec2<bool>(true, arg_1.b))));
    global0 = _wgslsmith_clamp_vec2_i32(u_input.d, abs(min(u_input.d & u_input.e.zz, -u_input.e.wy)) << (~u_input.b % vec2<u32>(32u)), u_input.d);
    return ~_wgslsmith_add_i32(_wgslsmith_mod_i32(-15595i, -2147483647i), -u_input.e.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(u_input.e >> (vec4<u32>(4294967295u, u_input.a.x, 49128u, u_input.c.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.e.x, global0.x, u_input.d.x, 1i)), true, 1i, func_5(abs(0i), func_4(Struct_1(u_input.d.x, true, 18769i, u_input.e.x, vec3<bool>(false, false, false)), func_2(u_input.a, u_input.c.x, 1u), func_2(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 33115u), 1u, 0u))) >> (u_input.b.x % 32u), !(!select(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], vec3<bool>(true, true, true), true)));
    var var_1 = vec4<bool>(any(func_2(~max(u_input.a, vec4<u32>(10160u, 1u, 1795u, u_input.b.x)), _wgslsmith_div_u32(abs(u_input.c.x), u_input.a.x), ~_wgslsmith_mod_u32(u_input.b.x, u_input.c.x)).e.zz), false, var_0.b | (_wgslsmith_sub_i32(_wgslsmith_mult_i32(18140i, global0.x), var_0.a) <= -var_0.a), 44535i <= ~global0.x);
    var_1 = !select(select(select(select(vec4<bool>(false, false, var_0.e.x, var_0.b), vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, var_0.e.x, var_1.x)), select(vec4<bool>(var_1.x, var_0.e.x, var_1.x, var_0.b), vec4<bool>(var_0.b, var_1.x, var_1.x, var_1.x), vec4<bool>(var_0.e.x, true, var_0.b, var_1.x)), vec4<bool>(false, var_0.b, var_1.x, false)), select(select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, false, false, true), var_0.e.x), vec4<bool>(var_1.x, var_0.b, var_0.b, var_0.b), !vec4<bool>(false, var_1.x, false, var_0.b)), !select(vec4<bool>(var_0.b, var_0.e.x, true, false), vec4<bool>(false, var_0.b, false, false), false)), vec4<bool>(false, select(var_1.x, true, var_0.b || var_1.x), true, true), vec4<bool>(func_3(select(vec2<bool>(var_1.x, true), vec2<bool>(var_0.e.x, var_1.x), var_1.x), ~(-1i), var_0.e.zx), !all(vec4<bool>(true, var_0.e.x, var_1.x, var_0.b)), select(var_1.x, false, func_3(var_1.yz, 1i, var_1.wz)), true | func_4(Struct_1(-2447i, true, u_input.e.x, global0.x, vec3<bool>(var_0.e.x, var_0.e.x, false)), Struct_1(global0.x, var_0.b, u_input.e.x, var_0.a, vec3<bool>(false, var_0.e.x, true)), Struct_1(-4257i, var_0.e.x, -4702i, 18717i, var_1.wzx)).e.x));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(1u, 14u)], ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 31053u & u_input.c.x)), vec2<u32>(~(~0u), ~(u_input.c.x ^ 4294967295u)) & vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 14u)] << (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)], 14u)], 78346u), 14u)] % 32u)));
    var var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(~vec2<i32>(36012i, var_0.d), firstLeadingBit(vec2<i32>(-1i, -1i)), ~u_input.d)), max(u_input.d, u_input.e.wx)) << (0u % 32u);
    return var_0;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) * _wgslsmith_f_op_f32(509f + 1000f)), _wgslsmith_f_op_f32(-1714f - _wgslsmith_f_op_f32(sign(1239f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(276f, -987f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-765f + 257f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f - 887f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, 434f, 1554f, -308f) + vec4<f32>(597f, -279f, 2057f, 632f)))));
    let var_1 = true;
    let var_2 = u_input.e;
    var var_3 = -638f;
    let var_4 = ~u_input.e.xw;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8660i;
    global1 = array<vec3<bool>, 26>();
    let var_1 = Struct_1(firstTrailingBit(-_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.d.x, 0i)), u_input.e.zx | u_input.d)), !all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), all(vec2<bool>(false, true)))), func_6(80568u, func_1()), global0.x, func_4(Struct_1(_wgslsmith_mult_i32(~global0.x, 1i), global2[_wgslsmith_index_u32(~u_input.a.x, 14u)] != countOneBits(22269u), firstTrailingBit(u_input.e.x), -global0.x & 26304i, vec3<bool>(true, true, u_input.b.x > global2[_wgslsmith_index_u32(41805u, 14u)])), Struct_1(_wgslsmith_div_i32(func_2(u_input.a, u_input.a.x, 1u).d, -1i), true, -12293i, 24462i, func_2(countOneBits(vec4<u32>(817u, u_input.c.x, u_input.c.x, global2[_wgslsmith_index_u32(1557u, 14u)])), ~6825u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 40643u, global2[_wgslsmith_index_u32(16475u, 14u)]), vec3<u32>(u_input.a.x, 92721u, u_input.c.x))).e), func_1()).e);
    let var_2 = select(select(select(!vec4<bool>(var_1.b, false, var_1.b, var_1.e.x), !vec4<bool>(true, var_1.b, var_1.b, var_1.e.x), false), select(!select(vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.b), vec4<bool>(true, var_1.e.x, var_1.e.x, true), vec4<bool>(var_1.b, var_1.b, true, var_1.b)), !select(vec4<bool>(false, false, var_1.e.x, false), vec4<bool>(true, false, var_1.e.x, var_1.e.x), var_1.e.x), true), false), !select(vec4<bool>(false, var_1.b | false, var_1.b || var_1.e.x, var_1.b), vec4<bool>(true, false | var_1.e.x, var_1.e.x, false), !(!vec4<bool>(var_1.b, false, false, var_1.b))), select(select(vec4<bool>(u_input.e.x > var_0, !var_1.b, select(var_1.e.x, false, false), false), !vec4<bool>(var_1.e.x, false, true, var_1.b), false), select(select(!vec4<bool>(var_1.b, var_1.e.x, var_1.e.x, true), vec4<bool>(var_1.e.x, var_1.b, var_1.e.x, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, var_1.b, false, false), !vec4<bool>(false, true, var_1.b, var_1.b), true), !(!var_1.e.x)), select(select(!vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.b), vec4<bool>(var_1.b, var_1.b, true, true), false), !select(vec4<bool>(false, var_1.b, false, false), vec4<bool>(false, var_1.e.x, true, var_1.b), false), !vec4<bool>(false, true, var_1.e.x, var_1.e.x))));
    let var_3 = vec3<bool>(true, any(!select(var_2, select(var_2, vec4<bool>(true, var_1.b, false, var_2.x), var_2), var_2)), false);
    global1 = array<vec3<bool>, 26>();
    var var_4 = Struct_1(var_1.d, true, _wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, u_input.e.x, 25925i, 41990i))) << (select(_wgslsmith_add_u32(26698u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)]), 66695u, any(var_2)) % 32u), _wgslsmith_add_i32(~(-74171i | var_0), _wgslsmith_sub_i32(_wgslsmith_add_i32(-26755i, 3857i), _wgslsmith_add_i32(var_1.c, 8178i)))), 1i, !vec3<bool>(var_1.b, true, true));
    let var_5 = -reverseBits(vec2<i32>((u_input.d.x << (3192u % 32u)) & 1i, var_0));
    var var_6 = _wgslsmith_mult_u32(reverseBits(~(~u_input.b.x)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2251f, -871f), _wgslsmith_f_op_f32(1000f + -1540f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1709f) + _wgslsmith_f_op_f32(f32(-1f) * -300f))) * -810f));
}

