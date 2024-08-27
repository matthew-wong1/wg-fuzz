struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(1i, -17733i, -26677i, 0i, 2147483647i, 17014i, -1i, 1i, -6373i, -1i, 36302i, -1i, 1i, 35794i, 24462i, 1i, -1i);

var<private> global1: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(46031u, 4294967295u), vec2<u32>(76848u, 4294967295u), 561f);

var<private> global3: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    return global1[_wgslsmith_index_u32(1u, 4u)];
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global2 = Struct_1(~u_input.a.yz, vec2<u32>(~1u, abs(58663u)), _wgslsmith_f_op_f32(select(141f, _wgslsmith_f_op_f32(step(1669f, _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(ceil(-106f))))), !(arg_1.x & false))));
    let var_0 = arg_3;
    var var_1 = -u_input.c.x;
    var var_2 = 2449f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-710f, 1248f, 1491f))))), vec3<f32>(global2.c, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1631f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(636f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1305f)), _wgslsmith_f_op_f32(-1365f + arg_3.c))))));
    return arg_1.x;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_1(select(abs(select(~u_input.a.xx, vec2<u32>(0u, u_input.a.x), false || arg_2.x)), ~vec2<u32>(countOneBits(23390u), countOneBits(u_input.d)), global1[_wgslsmith_index_u32(0u << (abs(~global3.x) % 32u), 4u)]), global2.b, global2.c);
    var var_1 = select(~abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(31650u, u_input.d, 1u, arg_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(76962u, 0u, var_0.a.x, arg_0), u_input.a, vec4<u32>(u_input.d, global3.x, global3.x, arg_0)))), max(~(~u_input.a), min(vec4<u32>(~arg_0, global3.x, ~70306u, global2.b.x), u_input.a)), any(!(!(!vec3<bool>(arg_1, false, false)))));
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(max(vec2<u32>(~var_0.a.x, ~arg_0), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 29416u, global2.b.x, 4294967295u), u_input.a), 0u)), countOneBits(~vec2<u32>(var_0.a.x, arg_0))), ~_wgslsmith_sub_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(var_0.b.x, global2.b.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(22834u, 0u), select(global3.zz, vec2<u32>(1u, 4294967295u), vec2<bool>(true, arg_2.x)), vec2<u32>(global2.a.x, 1u))), var_0.c);
    global3 = u_input.a.wwx;
    var_0 = Struct_1(~countOneBits(~u_input.a.xx), var_2.b | ~vec2<u32>(var_0.a.x, reverseBits(2649u)), var_2.c);
    return max(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xxy, vec3<u32>(32169u, 1u, global2.b.x)), abs(var_1.x)), firstLeadingBit(vec2<u32>(9449u, arg_0)) & ~max(vec2<u32>(4294967295u, 0u), var_1.zx)), vec2<u32>(~47794u, u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = !(!select(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, false), global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_1, 4u)]), arg_0), global1[_wgslsmith_index_u32(arg_1, 4u)], vec2<bool>(arg_0, !arg_0)));
    let var_2 = Struct_1(func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 0u, 12864u, global2.b.x)), ~global3.x), reverseBits(u_input.a.www)), func_4(global3.x, func_3(1u), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(global3.x, 4294967295u, global3.x, 1u)), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 73178u), vec2<u32>(global2.b.x, u_input.b), vec2<u32>(arg_1, 3409u)), vec2<u32>(13403u, 1u), -113f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(global2.b.x, u_input.b, arg_1, 0u)), u_input.a), 4u)]), u_input.a.wz, 427f);
    let var_3 = arg_2;
    var_1 = vec2<bool>(true, (!var_1.x & !(!var_1.x)) & any(select(!vec4<bool>(true, true, false, arg_0), vec4<bool>(var_1.x, false, arg_0, var_1.x), vec4<bool>(true, var_1.x, arg_0, false))));
    return var_2.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~min(firstLeadingBit(6415u), _wgslsmith_mod_u32(u_input.b, u_input.d)), arg_0.a.x), u_input.a.xz, 1980f);
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32((var_0.a.x ^ global2.a.x) ^ u_input.d, global3.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.a.x, global3.x, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(9241u, u_input.a.x, global3.x, u_input.b), u_input.a), select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2))), u_input.a)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(arg_1.a.x, _wgslsmith_mult_u32(arg_0.a.x, global2.a.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, 1u), u_input.a.yz), vec2<u32>(43563u, arg_1.b.x))), firstTrailingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(14478u, global3.x), arg_0.a), vec2<u32>(global2.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - -320f) * arg_0.c));
    let var_2 = arg_0;
    global1 = array<vec2<bool>, 4>();
    let var_3 = u_input.c;
    return var_2;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> bool {
    var var_0 = func_6(Struct_1(arg_1.zx, vec2<u32>(abs(arg_1.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, 6576u), arg_1), 35601u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c)) - _wgslsmith_div_f32(-1304f, -218f))), Struct_1(firstTrailingBit(vec2<u32>(u_input.d, _wgslsmith_sub_u32(arg_0, 58412u))), ~min(reverseBits(u_input.a.yz), ~global3.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, 21149u, vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 17u)], -317i)))) - _wgslsmith_div_f32(-1452f, -281f))), true);
    let var_1 = vec4<bool>(false, true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), any(global1[_wgslsmith_index_u32(arg_1.x, 4u)]))) | !(!all(vec4<bool>(false, true, false, true))), true);
    var var_2 = select(var_1, !select(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), true | var_1.x), vec4<bool>(true || var_1.x, var_1.x, select(false, true, true), -64187i > global0[_wgslsmith_index_u32(59111u, 17u)]), !select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1, false)), !func_3(_wgslsmith_mult_u32(arg_1.x, arg_0) | global3.x).x);
    var var_3 = vec3<bool>(true, !((-33623i & (-10749i >> (arg_0 % 32u))) < global0[_wgslsmith_index_u32(var_0.a.x, 17u)]), var_1.x);
    var var_4 = u_input.e;
    return _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_0, 17u)], 1i, u_input.c.x), vec4<i32>(51i, global0[_wgslsmith_index_u32(global3.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], -5079i) >> (u_input.a % vec4<u32>(32u)))), 0i) != min(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(1u, 17u)]), -abs(vec3<i32>(-34898i, 0i, u_input.e))), global0[_wgslsmith_index_u32(4294967295u, 17u)]);
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = arg_1;
    let var_0 = func_6(func_6(func_6(func_6(func_6(arg_1, Struct_1(u_input.a.yx, vec2<u32>(57958u, 4294967295u), -1924f), false), func_6(Struct_1(vec2<u32>(1u, u_input.d), vec2<u32>(4294967295u, global3.x), 1000f), arg_1, false), true), Struct_1(vec2<u32>(u_input.b, global2.a.x), select(vec2<u32>(51262u, arg_1.b.x), u_input.a.wx, false), _wgslsmith_f_op_f32(1518f * arg_2.x)), true), arg_1, false), func_6(func_6(Struct_1(_wgslsmith_sub_vec2_u32(global2.b, vec2<u32>(u_input.d, 9806u)), select(global2.a, arg_1.a, false), _wgslsmith_f_op_f32(-arg_1.c)), arg_1, true), arg_1, true), true);
    global3 = vec3<u32>(arg_1.a.x, var_0.a.x, _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(0u, 4984u)), ~(~4294967295u)));
    global0 = array<i32, 17>();
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(max(-15582i >> (global3.x % 32u), -32597i), _wgslsmith_sub_i32(0i, 44483i), -54624i), u_input.c.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(global0[_wgslsmith_index_u32(global3.x, 17u)], Struct_1(select(~abs(global2.b), global3.yz, func_1(global2.b.x | 1u, ~vec3<u32>(u_input.d, 20264u, u_input.d))), vec2<u32>(firstLeadingBit(68681u), u_input.a.x), 525f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.c, 1014f, func_6(func_6(Struct_1(u_input.a.yw, global2.a, -2574f), Struct_1(global3.yy, vec2<u32>(37066u, 40388u), global2.c), false), func_6(Struct_1(global3.xz, vec2<u32>(38063u, u_input.a.x), global2.c), Struct_1(u_input.a.zw, global2.b, -1309f), true), true).c))), ~vec4<i32>(2147483647i, 1i, -86947i, u_input.e) ^ select(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 12140i, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), vec4<i32>(-1i, 0i, -21977i, -29385i)), vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, -2147483647i), vec4<bool>(false, true, true, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(63920i, u_input.c.x, global0[_wgslsmith_index_u32(1u, 17u)], 2147483647i) ^ vec4<i32>(0i, 2147483647i, 1i, u_input.e), firstLeadingBit(vec4<i32>(-24652i, global0[_wgslsmith_index_u32(global3.x, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)], 1i))), global2.a.x <= (u_input.b & global2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.c.x, u_input.a.xyz, -1636f, vec3<u32>(reverseBits(global2.a.x << (~global2.a.x % 32u)), ~(1379u >> (abs(var_0.a.x) % 32u)), ~(u_input.a.x ^ global2.a.x)));
}

