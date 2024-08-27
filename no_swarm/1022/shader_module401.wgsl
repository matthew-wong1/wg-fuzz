struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(1u, 0u, 1u, 37540u, 4294967295u, 19441u);

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(-13978i, 0u, vec3<f32>(768f, 188f, -134f), vec3<bool>(false, false, true), true), Struct_2(vec4<bool>(true, true, false, false), 2147483647i), vec3<u32>(4294967295u, 1u, 52882u), vec4<bool>(false, true, true, false), Struct_1(i32(-2147483648), 1u, vec3<f32>(1101f, 614f, 2107f), vec3<bool>(false, false, false), true)), Struct_3(Struct_1(2147483647i, 1u, vec3<f32>(701f, -325f, -1698f), vec3<bool>(true, true, true), false), Struct_2(vec4<bool>(false, false, true, false), 40409i), vec3<u32>(0u, 4294967295u, 24619u), vec4<bool>(true, true, true, false), Struct_1(51619i, 56402u, vec3<f32>(-245f, -899f, 1000f), vec3<bool>(true, true, true), false)), Struct_3(Struct_1(-2919i, 60683u, vec3<f32>(401f, -1000f, 287f), vec3<bool>(false, true, false), true), Struct_2(vec4<bool>(true, true, false, true), -1i), vec3<u32>(32574u, 10264u, 19016u), vec4<bool>(false, true, true, false), Struct_1(2147483647i, 97959u, vec3<f32>(-297f, -643f, -849f), vec3<bool>(false, true, false), false)), Struct_3(Struct_1(1i, 17577u, vec3<f32>(-669f, -457f, -220f), vec3<bool>(true, false, true), false), Struct_2(vec4<bool>(false, false, true, true), 42878i), vec3<u32>(1u, 4294967295u, 27031u), vec4<bool>(false, false, false, false), Struct_1(-22848i, 1u, vec3<f32>(555f, -1499f, -421f), vec3<bool>(false, false, false), true)), Struct_3(Struct_1(-3271i, 1u, vec3<f32>(830f, 678f, -1260f), vec3<bool>(false, false, false), false), Struct_2(vec4<bool>(false, false, true, false), 2147483647i), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, false), Struct_1(2147483647i, 1u, vec3<f32>(-1959f, 619f, 1000f), vec3<bool>(true, false, true), false)), Struct_3(Struct_1(2147483647i, 28751u, vec3<f32>(1266f, -671f, 1275f), vec3<bool>(true, false, true), true), Struct_2(vec4<bool>(true, true, false, false), -1i), vec3<u32>(93933u, 1u, 31059u), vec4<bool>(false, false, false, true), Struct_1(12888i, 44674u, vec3<f32>(239f, -1024f, -1261f), vec3<bool>(false, true, false), false)), Struct_3(Struct_1(2147483647i, 1u, vec3<f32>(-1022f, 522f, 1000f), vec3<bool>(false, false, false), false), Struct_2(vec4<bool>(true, true, false, true), 8099i), vec3<u32>(4294967295u, 1u, 1u), vec4<bool>(false, false, false, false), Struct_1(-25340i, 1u, vec3<f32>(-155f, 1954f, 1384f), vec3<bool>(false, false, true), true)), Struct_3(Struct_1(19776i, 36403u, vec3<f32>(355f, 1154f, 1037f), vec3<bool>(false, false, true), false), Struct_2(vec4<bool>(false, true, true, true), -1i), vec3<u32>(93938u, 23057u, 19762u), vec4<bool>(false, true, false, true), Struct_1(2147483647i, 4294967295u, vec3<f32>(915f, -1644f, -962f), vec3<bool>(true, false, false), false)));

var<private> global3: Struct_3 = Struct_3(Struct_1(2147483647i, 1u, vec3<f32>(1507f, 333f, -1036f), vec3<bool>(true, true, true), false), Struct_2(vec4<bool>(true, false, true, true), 2147483647i), vec3<u32>(0u, 15912u, 61017u), vec4<bool>(false, false, false, false), Struct_1(-22134i, 0u, vec3<f32>(1026f, 3134f, -668f), vec3<bool>(false, true, true), false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_4(all(vec2<bool>(!(-634f <= global3.a.c.x), global1.x)), Struct_1(46838i, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, global3.a.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 26601u)), vec4<u32>(32006u, 59418u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.e.b, 6u)], 6u)], 0u), abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14100u, 6u)], 6u)], 4294967295u, global0[_wgslsmith_index_u32(global3.a.b, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]))), ~vec4<u32>(4294967295u, 4294967295u, 46686u, global3.a.b) | _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 6u)], global3.e.b, 0u, global3.a.b), vec4<u32>(global0[_wgslsmith_index_u32(15008u, 6u)], 20610u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50426u, 6u)], 6u)], global3.e.b))), global3.e.c, !(!global1.yzw), true), ~countOneBits(-vec3<i32>(u_input.b, u_input.b, 2147483647i) & vec3<i32>(0i, u_input.a.x, -2147483647i)), ~vec4<u32>(~0u ^ ~global0[_wgslsmith_index_u32(70098u, 6u)], 16717u, firstTrailingBit(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(global3.c.x, 6u)])), 3513u), true && any(!vec4<bool>(global3.b.a.x, global1.x, false, true)));
    var var_1 = _wgslsmith_f_op_f32(round(arg_0));
    var var_2 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~24032u, 6u)], 8u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.c.x * var_0.b.c.x)))) + var_0.b.c.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.c.x, var_0.b.c.x), _wgslsmith_f_op_f32(step(-620f, var_3)))), -1388f, var_0.b.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1751f, var_3, 515f, -317f) * vec4<f32>(-623f, 1598f, -416f, global3.a.c.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-584f, var_0.b.c.x)), _wgslsmith_f_op_f32(-277f * var_2.a.c.x), _wgslsmith_f_op_f32(var_3 - -270f), _wgslsmith_f_op_f32(-var_3)))));
    return var_2.b.a.x;
}

fn func_2() -> Struct_3 {
    global3 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a.x, 14667i, u_input.b, -5062i) << (vec4<u32>(1u, 0u, global3.a.b, 93208u) % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(global3.a.a, -1i, u_input.a.x, 2147483647i), vec4<i32>(-1i, u_input.b, u_input.a.x, -2147483647i))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, global3.c.x) | vec2<u32>(global3.e.b, 4294967295u), vec2<u32>(24762u, global3.c.x) >> (global3.c.yy % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(firstTrailingBit(global3.c.xy), max(global3.c.xy, global3.c.zz))), global3.e.c, select(!global3.d.wwx, select(vec3<bool>(global3.b.a.x, false, global3.a.d.x), !global1.zww, !vec3<bool>(global3.b.a.x, true, global1.x)), false), global1.x), Struct_2(vec4<bool>(true, _wgslsmith_add_i32(20969i, u_input.b) != ~0i, !func_3(global3.a.c.x), global1.x), _wgslsmith_div_i32(global3.e.a, global3.b.b)), _wgslsmith_add_vec3_u32(vec3<u32>(min(49316u, global3.e.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.x, 32087u, 1u, global3.e.b) & vec4<u32>(27147u, 12933u, 0u, 36048u), ~vec4<u32>(global3.a.b, global3.a.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 44731u)), 4294967295u | global0[_wgslsmith_index_u32(~1u, 6u)]), vec3<u32>(~1u, ~1u, select(11462u, ~33139u, true && global3.d.x))), vec4<bool>(true, all(!select(global1.wwy, global1.xyx, global3.b.a.x)), false, !global1.x), Struct_1(u_input.a.x, global3.a.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global3.a.c * global3.a.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global3.a.c))), !vec3<bool>(global3.d.x, global1.x, global1.x))), global1.xzz, all(select(select(vec4<bool>(global1.x, global3.a.d.x, global1.x, true), global3.d, global3.b.a), select(global3.d, global3.d, global3.d.x), global3.b.a))));
    global2 = array<Struct_3, 8>();
    var var_0 = global3.b;
    global1 = select(select(select(!var_0.a, !global3.b.a, select(select(var_0.a, global3.b.a, false), select(vec4<bool>(global1.x, global3.e.d.x, var_0.a.x, var_0.a.x), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), !var_0.a)), var_0.a, true), select(select(select(!vec4<bool>(false, global3.e.e, global3.d.x, global1.x), var_0.a, vec4<bool>(false, var_0.a.x, false, global1.x)), var_0.a, (global3.c.x < 20652u) | (global3.e.a <= u_input.a.x)), select(vec4<bool>(true, any(global1.xwx), true, global1.x), !(!var_0.a), !var_0.a), global3.b.a), !(!(!vec4<bool>(global1.x, false, var_0.a.x, true))));
    global2 = array<Struct_3, 8>();
    return global2[_wgslsmith_index_u32(0u, 8u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_3 {
    global3 = func_2();
    let var_0 = false;
    global0 = array<u32, 6>();
    var var_1 = func_2().e;
    var_1 = Struct_1(abs(var_1.a), ~arg_0.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - arg_2.e.c.x)), _wgslsmith_f_op_f32(round(func_2().e.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1707f)))), func_2().a.d, global3.b.a.x);
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u, 5128u), vec3<u32>(73714u, arg_2.a.b, 4294967295u)), var_1.b, arg_0.x), ~arg_1.c) >> (1u % 32u), 8u)];
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_4(false, func_4(abs(~(~vec4<u32>(global3.e.b, 1u, 49547u, global0[_wgslsmith_index_u32(arg_0.a.b, 6u)]))), arg_0, func_4(~vec4<u32>(global3.a.b, arg_0.e.b, 0u, global0[_wgslsmith_index_u32(44114u, 6u)]), global2[_wgslsmith_index_u32(arg_0.c.x, 8u)], func_4(vec4<u32>(global0[_wgslsmith_index_u32(global3.e.b, 6u)], arg_3.x, 5933u, global0[_wgslsmith_index_u32(4294967295u, 6u)]) & vec4<u32>(40205u, arg_0.a.b, arg_1.x, 50975u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global3.c.x, 6u)], 0u), 8u)], func_4(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 32889u, global0[_wgslsmith_index_u32(global3.e.b, 6u)]), Struct_3(arg_0.a, arg_0.b, arg_3, vec4<bool>(arg_0.a.e, global1.x, arg_2.x, false), global3.e), Struct_3(Struct_1(1i, arg_0.a.b, vec3<f32>(global3.e.c.x, 351f, arg_0.a.c.x), arg_0.d.zxx, global1.x), global3.b, arg_0.c, arg_0.b.a, Struct_1(global3.a.a, arg_1.x, global3.e.c, global1.zzw, true)), vec4<i32>(u_input.b, 2147483647i, 23950i, arg_0.a.a)), firstLeadingBit(vec4<i32>(global3.e.a, 5521i, u_input.b, 1i))), vec4<i32>(u_input.b | u_input.b, ~(-1i), -arg_0.b.b, ~1i)), abs(firstLeadingBit(vec4<i32>(global3.e.a, u_input.b, u_input.a.x, -1i) << (vec4<u32>(99220u, 1u, 4294967295u, 1u) % vec4<u32>(32u))))).a, firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.a & -vec3<i32>(-2147483647i, 5167i, -29435i), u_input.a)), ~(~(~(~vec4<u32>(5852u, arg_0.c.x, 1u, 6774u)))), global3.b.a.x);
    var var_1 = Struct_1(31077i, ~_wgslsmith_mult_u32(~16031u, arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.c) - vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-484f))), _wgslsmith_f_op_f32(-1f))), global3.e.d, true);
    let var_2 = func_2().a;
    var var_3 = var_2;
    global3 = Struct_3(func_4(min(_wgslsmith_add_vec4_u32(firstTrailingBit(var_0.d), _wgslsmith_clamp_vec4_u32(var_0.d, var_0.d, var_0.d)), vec4<u32>(_wgslsmith_div_u32(39295u, 12711u), 0u ^ global3.c.x, 48013u, ~4294967295u)), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2.b, arg_0.c.x), 8u)], arg_0, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_1.a, u_input.b, 2147483647i, 2147483647i)), ~(~vec4<i32>(1i, 0i, var_0.c.x, var_0.c.x)))).a, global3.b, ~(vec3<u32>(select(30502u, 0u, var_3.d.x), global3.c.x, var_2.b) >> (vec3<u32>(countOneBits(arg_0.a.b), firstTrailingBit(var_2.b), 1u) % vec3<u32>(32u))), select(!arg_0.d, !vec4<bool>(global3.d.x, true, false, all(vec4<bool>(var_3.d.x, var_3.d.x, false, arg_0.e.d.x))), all(!var_1.d)), func_2().e);
    return Struct_3(Struct_1(25754i, arg_0.c.x, _wgslsmith_f_op_vec3_f32(var_0.b.c * func_4(abs(vec4<u32>(arg_1.x, var_0.d.x, 4294967295u, 28212u)), Struct_3(Struct_1(15614i, 64768u, vec3<f32>(arg_0.e.c.x, var_1.c.x, global3.a.c.x), vec3<bool>(true, false, var_2.e), global3.e.d.x), arg_0.b, global3.c, vec4<bool>(arg_0.e.d.x, false, false, true), Struct_1(-5710i, var_3.b, var_0.b.c, var_2.d, var_2.d.x)), func_2(), -vec4<i32>(var_2.a, -8693i, global3.e.a, -45097i)).e.c), !var_0.b.d, any(!arg_0.b.a)), func_4(~_wgslsmith_add_vec4_u32(var_0.d, countOneBits(vec4<u32>(arg_1.x, 33865u, var_3.b, 40783u))), func_4(~countOneBits(vec4<u32>(arg_1.x, 0u, global0[_wgslsmith_index_u32(69686u, 6u)], 16043u)), arg_0, Struct_3(arg_0.a, global3.b, _wgslsmith_add_vec3_u32(var_0.d.zwx, arg_3), arg_0.d, func_4(vec4<u32>(arg_1.x, 18508u, var_2.b, 20497u), global2[_wgslsmith_index_u32(0u, 8u)], Struct_3(arg_0.e, Struct_2(arg_0.b.a, 0i), vec3<u32>(0u, 30360u, 4294967295u), vec4<bool>(true, arg_0.b.a.x, var_0.a, false), arg_0.e), vec4<i32>(-764i, var_2.a, global3.a.a, 2147483647i)).e), vec4<i32>(i32(-1i) * -46647i, -2147483647i, -15116i ^ var_0.b.a, u_input.b)), Struct_3(Struct_1(0i << (arg_0.e.b % 32u), ~var_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2300f, global3.a.c.x, var_1.c.x)), global1.xyw, all(vec2<bool>(arg_2.x, var_1.d.x))), arg_0.b, vec3<u32>(arg_0.a.b, func_2().e.b, 65360u), !arg_0.d, Struct_1(func_4(vec4<u32>(var_2.b, 52847u, arg_3.x, 0u), Struct_3(global3.a, Struct_2(vec4<bool>(global1.x, var_3.e, true, false), arg_0.b.b), var_0.d.zxw, vec4<bool>(var_3.d.x, global3.a.e, arg_2.x, true), global3.a), Struct_3(arg_0.a, Struct_2(vec4<bool>(var_2.d.x, true, false, arg_2.x), -4851i), vec3<u32>(59062u, 4294967295u, var_3.b), vec4<bool>(true, true, false, global1.x), Struct_1(var_3.a, 38750u, vec3<f32>(var_3.c.x, -1000f, -552f), vec3<bool>(false, arg_2.x, false), false)), vec4<i32>(var_1.a, global3.e.a, -54676i, 14099i)).a.a, arg_3.x, _wgslsmith_f_op_vec3_f32(global3.e.c - vec3<f32>(-147f, var_3.c.x, 1000f)), vec3<bool>(false, false, true), false)), countOneBits(vec4<i32>(~u_input.a.x, -2147483647i, var_1.a, -8853i))).b, vec3<u32>(max(8476u, 4294967295u) >> ((arg_3.x | var_0.d.x) % 32u), ~1u, _wgslsmith_clamp_u32(min(4294967295u, 0u) & max(29097u, var_1.b), global3.c.x, ~46204u)), select(global3.d, select(vec4<bool>(var_3.d.x, var_2.d.x, any(vec4<bool>(var_1.d.x, arg_2.x, true, true)), var_3.d.x), !(!global3.d), func_4(var_0.d, func_4(var_0.d, arg_0, global2[_wgslsmith_index_u32(65062u, 8u)], vec4<i32>(var_0.b.a, var_1.a, -892i, arg_0.e.a)), func_4(var_0.d, Struct_3(Struct_1(arg_0.b.b, 1u, var_2.c, var_2.d, var_3.d.x), global3.b, vec3<u32>(21862u, var_3.b, 0u), arg_0.b.a, Struct_1(var_2.a, arg_1.x, var_0.b.c, global3.b.a.ywx, global3.d.x)), arg_0, vec4<i32>(2147483647i, -12403i, var_0.c.x, -1i)), vec4<i32>(var_3.a, var_3.a, var_1.a, var_1.a)).b.a), vec4<bool>(any(!vec3<bool>(var_3.d.x, var_2.e, false)), true, all(!vec4<bool>(false, arg_2.x, true, true)), true)), var_2);
}

fn func_6(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.d.x;
    global3 = func_4(_wgslsmith_div_vec4_u32(~vec4<u32>(select(1u, global3.e.b, global1.x), _wgslsmith_dot_vec3_u32(arg_0.c, global3.c), firstLeadingBit(global0[_wgslsmith_index_u32(arg_0.c.x, 6u)]), 37652u), vec4<u32>(arg_0.c.x, ~1u, global0[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_mult_u32(global3.c.x, 0u) & ~global0[_wgslsmith_index_u32(97800u, 6u)])), Struct_3(Struct_1(~(~u_input.b), 0u, vec3<f32>(_wgslsmith_f_op_f32(max(604f, -192f)), _wgslsmith_f_op_f32(trunc(global3.e.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(!global3.e.d, vec3<bool>(global3.a.e, global1.x, false), arg_0.d.x && arg_0.e.e), false), Struct_2(!func_2().d, 0i), ~max(vec3<u32>(41908u, arg_0.a.b, 10276u), _wgslsmith_mod_vec3_u32(vec3<u32>(global3.a.b, arg_0.e.b, 0u), arg_0.c)), arg_0.b.a, func_5(func_5(Struct_3(global3.e, Struct_2(vec4<bool>(global3.a.d.x, true, true, global3.b.a.x), u_input.a.x), vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_0.a.b, 6u)], 5684u), vec4<bool>(arg_0.e.e, global3.b.a.x, true, global3.e.e), global3.a), arg_0.c.xy, !global3.b.a.xxx, firstTrailingBit(vec3<u32>(arg_0.e.b, arg_0.c.x, 1395u))), ~vec2<u32>(arg_0.e.b, global3.e.b), vec3<bool>(true, true, false), vec3<u32>(~global0[_wgslsmith_index_u32(global3.e.b, 6u)], 87855u, 4294967295u)).a), Struct_3(Struct_1(arg_0.e.a, global3.c.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.e.c.x, 1000f, arg_0.e.c.x))))), func_5(Struct_3(arg_0.e, arg_0.b, global3.c, global3.d, arg_0.a), firstLeadingBit(vec2<u32>(global3.a.b, 0u)), vec3<bool>(true, true, false), vec3<u32>(4294967295u, arg_0.a.b, arg_0.a.b)).e.d, global1.x), Struct_2(func_5(func_4(vec4<u32>(10250u, 0u, global0[_wgslsmith_index_u32(1u, 6u)], arg_0.e.b), global2[_wgslsmith_index_u32(global3.a.b, 8u)], Struct_3(Struct_1(global3.b.b, 0u, vec3<f32>(1635f, arg_0.a.c.x, -1600f), vec3<bool>(true, true, true), global3.e.d.x), global3.b, global3.c, vec4<bool>(global1.x, true, true, global3.e.e), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(1u, 6u)], vec3<f32>(arg_0.e.c.x, global3.e.c.x, arg_0.e.c.x), vec3<bool>(false, arg_0.b.a.x, global1.x), global1.x)), vec4<i32>(48656i, -48767i, -1i, 2147483647i)), ~vec2<u32>(arg_0.c.x, arg_0.c.x), arg_0.d.xzy, arg_0.c << (vec3<u32>(1u, 13195u, global0[_wgslsmith_index_u32(global3.c.x, 6u)]) % vec3<u32>(32u))).b.a, _wgslsmith_div_i32(u_input.b, -8996i)), arg_0.c, arg_0.d, arg_0.e), -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -8565i, arg_0.e.a, -1i), vec4<i32>(u_input.b, arg_0.e.a, global3.b.b, arg_0.b.b)), arg_0.a.a & u_input.b), -u_input.b, -36414i, _wgslsmith_sub_i32(select(arg_0.e.a, -35599i, arg_0.e.d.x), max(-1i, -1i))));
    let var_1 = select(global3.c >> (abs(countOneBits(select(arg_0.c, global3.c, global3.d.xyy))) % vec3<u32>(32u)), func_2().c, !vec3<bool>(global1.x, arg_0.b.a.x, all(!global1.yzx)));
    let var_2 = true;
    global1 = vec4<bool>(func_2().e.d.x, func_4(abs(~(~vec4<u32>(0u, 35379u, 0u, 1u))), func_5(Struct_3(Struct_1(arg_0.b.b, global0[_wgslsmith_index_u32(arg_0.c.x, 6u)], vec3<f32>(1224f, 412f, -592f), vec3<bool>(arg_0.b.a.x, false, global1.x), true), func_2().b, min(var_1, vec3<u32>(global3.a.b, arg_0.c.x, 71862u)), global3.b.a, Struct_1(global3.e.a, var_1.x, arg_0.e.c, arg_0.a.d, false)), abs(vec2<u32>(1u, 21825u)), func_4(~vec4<u32>(1u, 67991u, 17178u, var_1.x), arg_0, func_4(vec4<u32>(global3.e.b, global0[_wgslsmith_index_u32(global3.c.x, 6u)], arg_0.e.b, arg_0.c.x), arg_0, Struct_3(Struct_1(-59326i, 0u, arg_0.a.c, arg_0.d.zww, var_2), Struct_2(global3.b.a, u_input.a.x), var_1, arg_0.d, global3.e), vec4<i32>(-2147483647i, -2147483647i, u_input.b, global3.a.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.b, arg_0.b.b, 12806i, 12357i), vec4<i32>(13777i, arg_0.b.b, 2147483647i, global3.e.a))).e.d, reverseBits(select(arg_0.c, var_1, global1.zzw))), func_4(~vec4<u32>(arg_0.a.b, 60012u, 1078u, 0u), func_5(func_4(vec4<u32>(4294967295u, global3.a.b, global0[_wgslsmith_index_u32(global3.c.x, 6u)], 76960u), global2[_wgslsmith_index_u32(arg_0.c.x, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global3.a.a)), vec2<u32>(39811u, global0[_wgslsmith_index_u32(0u, 6u)]), global3.d.zzz, global3.c), Struct_3(func_2().e, arg_0.b, var_1, arg_0.d, func_4(vec4<u32>(0u, 4294967295u, global3.a.b, global3.c.x), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2740u, 6u)], 8u)], arg_0, vec4<i32>(67481i, 19968i, arg_0.a.a, 0i)).a), countOneBits(vec4<i32>(1i, u_input.b, -4526i, arg_0.a.a))), -min(-vec4<i32>(1i, 2147483647i, arg_0.a.a, 7448i), -vec4<i32>(17596i, arg_0.e.a, 10683i, -58975i))).d.x, global3.b.a.x, arg_0.b.a.x);
    return select(vec4<bool>(any(vec2<bool>(func_2().d.x, true)), 30211u == arg_0.e.b, arg_0.e.d.x, all(arg_0.b.a.zzx)), !(!(!vec4<bool>(arg_0.b.a.x, arg_0.e.d.x, arg_0.d.x, global1.x))), func_4(abs(vec4<u32>(arg_0.a.b, reverseBits(12784u), 85481u, reverseBits(4294967295u))), arg_0, arg_0, abs(vec4<i32>(46025i >> (arg_0.e.b % 32u), func_5(Struct_3(Struct_1(global3.a.a, 18831u, arg_0.a.c, vec3<bool>(false, false, true), true), arg_0.b, vec3<u32>(1u, arg_0.c.x, global0[_wgslsmith_index_u32(arg_0.a.b, 6u)]), arg_0.b.a, arg_0.e), vec2<u32>(1u, global3.c.x), arg_0.a.d, arg_0.c).e.a, ~(-9570i), countOneBits(u_input.b)))).b.a);
}

fn func_1() -> vec3<u32> {
    let var_0 = -_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-u_input.b, 0i, 1i, -1i)), reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.a.a, u_input.a.x, -2147483647i, -47308i), vec4<i32>(u_input.a.x, -18510i, -2147483647i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.e.a, 22136i, global3.a.a, 9297i), vec4<i32>(global3.b.b, u_input.b, global3.a.a, 33939i)))));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_div_i32(-1i, -806i), ~(~(~global3.a.b)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1155f * 266f)), _wgslsmith_f_op_f32(-413f * _wgslsmith_f_op_f32(select(global3.e.c.x, 105f, global1.x)))), select(!select(vec3<bool>(true, global3.a.e, global3.e.d.x), global1.yyx, vec3<bool>(global3.b.a.x, false, false)), global1.zxw, vec3<bool>(!global3.a.e, any(vec3<bool>(global1.x, false, false)), true)), global3.b.a.x), Struct_2(vec4<bool>(select(global3.e.e, any(vec4<bool>(true, global3.b.a.x, false, global1.x)), true | global3.b.a.x), true, true, global1.x), var_0.x), global3.c, func_6(func_5(func_4(vec4<u32>(global3.e.b, global0[_wgslsmith_index_u32(31049u, 6u)], 69189u, global3.c.x), global2[_wgslsmith_index_u32(global3.e.b, 8u)], func_2(), var_0), countOneBits(select(global3.c.xz, vec2<u32>(4294967295u, 21805u), vec2<bool>(false, global1.x))), func_4(vec4<u32>(8385u, 75967u, global3.a.b, global0[_wgslsmith_index_u32(26967u, 6u)]) | vec4<u32>(global3.a.b, global3.c.x, global3.c.x, 14709u), Struct_3(Struct_1(var_0.x, 33119u, global3.a.c, vec3<bool>(true, global3.e.e, global1.x), global1.x), Struct_2(global3.b.a, u_input.b), global3.c, global3.b.a, global3.a), Struct_3(Struct_1(var_0.x, 15130u, vec3<f32>(global3.a.c.x, 925f, global3.a.c.x), global1.yzz, global1.x), Struct_2(global3.b.a, -1i), global3.c, vec4<bool>(global1.x, false, global3.a.e, true), global3.e), var_0).a.d, global3.c)), global3.e);
    var var_2 = -656f;
    global2 = array<Struct_3, 8>();
    let var_3 = func_5(Struct_3(Struct_1(64274i, _wgslsmith_mod_u32(abs(global3.a.b), ~global3.e.b), vec3<f32>(-203f, var_1.e.c.x, _wgslsmith_f_op_f32(-var_1.a.c.x)), func_2().a.d, !all(global3.d)), global3.b, select(var_1.c, vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.e.b, var_1.e.b, 4294967295u), 6u)], 15427u << (1u % 32u), var_1.c.x), false), var_1.b.a, func_5(global2[_wgslsmith_index_u32(var_1.e.b, 8u)], max(var_1.c.yy, global3.c.zz), func_6(func_2()).wxw, ~vec3<u32>(global0[_wgslsmith_index_u32(global3.e.b, 6u)], 0u, 4294967295u)).e), _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(var_1.a.b, 1u), ~_wgslsmith_mod_u32(var_1.e.b, global0[_wgslsmith_index_u32(10199u, 6u)])), vec2<u32>(global3.e.b, _wgslsmith_mod_u32(~global3.a.b, 0u))), !(!global1.wyw), var_1.c).b;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.b.a;
    let var_0 = global3.b;
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.c.x, -999f, global3.e.c.x)))) - _wgslsmith_f_op_vec3_f32(global3.a.c - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(global3.e.c, vec3<f32>(-781f, 383f, global3.e.c.x)))))));
    let var_2 = global3.a.e;
    var var_3 = Struct_3(global3.a, Struct_2(vec4<bool>(var_0.a.x || true, false, true, (-1i <= u_input.b) | (global3.a.b != 23464u)), ~var_0.b), func_1(), var_0.a, global3.a);
    var var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(-vec2<i32>(0i, 42438i)), firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(var_0.b, 1i), ~2147483647i))), ~vec2<i32>(var_0.b, firstLeadingBit(global3.a.a ^ var_3.e.a)));
    var var_5 = -391f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(vec3<i32>(var_0.b, 30533i, u_input.a.x)) | -(vec3<i32>(6159i, global3.b.b, 19513i) | vec3<i32>(u_input.b, var_3.a.a, var_0.b))), min(abs(abs(37609u)), global3.a.b), 1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1455f, _wgslsmith_f_op_f32(ceil(1591f))), vec2<f32>(_wgslsmith_f_op_f32(floor(606f)), -137f))), vec2<bool>(global1.x, any(!vec3<bool>(true, global1.x, global3.d.x))))), var_1.x);
}

