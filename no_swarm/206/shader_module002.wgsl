struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 90312u, 45481u, 94224u, 67910u, 1u, 4294967295u, 12215u, 1u, 4294967295u, 57990u, 96346u, 0u, 2167u, 1u, 6597u);

var<private> global1: array<Struct_3, 20>;

var<private> global2: vec3<i32> = vec3<i32>(39621i, i32(-2147483648), -1i);

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.b)) * -1000f);
    var var_1 = ~global0[_wgslsmith_index_u32(~(~countOneBits(28280u) ^ _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))), 16u)];
    var var_2 = Struct_1(select(global3.a, select(vec3<bool>(true, select(global3.a.x, global3.a.x, false), all(vec2<bool>(true, global3.a.x))), vec3<bool>(all(vec4<bool>(true, true, false, global3.a.x)), global3.a.x, !global3.a.x), any(global3.a.yx) & select(true, true, global3.a.x)), false), var_0);
    let var_3 = arg_0;
    let var_4 = ~(~select(countOneBits(u_input.a) & vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(62845u, 16u)], u_input.a.x), u_input.a, global3.a.x));
    return firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(~select(u_input.c.x, 16493i, false), _wgslsmith_mult_i32(var_3 >> (u_input.a.x % 32u), ~(-1i))), _wgslsmith_mult_i32(arg_0, -firstLeadingBit(global2.x))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    global2 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.c, (~u_input.d.xxy ^ vec3<i32>(global2.x, -3395i, -2147483647i)) >> (~vec3<u32>(0u, arg_1.x, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b.x, 1i), vec3<i32>(~select(global2.x, -56148i, arg_2.b.a.x), arg_3.x, ~u_input.b.x | 0i), ~(select(u_input.b.xxz, vec3<i32>(0i, 1i, 76977i), arg_2.b.a) >> ((vec3<u32>(601u, arg_1.x, 1u) & vec3<u32>(u_input.a.x, arg_1.x, 5274u)) % vec3<u32>(32u)))));
    global2 = firstLeadingBit(u_input.c);
    let var_0 = Struct_1(select(select(vec3<bool>(true, true, true), select(global3.a, !vec3<bool>(global3.a.x, false, false), true), global3.a), !arg_2.b.a, select(vec3<bool>(1191f == arg_2.a.x, arg_2.b.a.x & global3.a.x, false), select(select(global3.a, vec3<bool>(true, true, global3.a.x), arg_2.b.a), vec3<bool>(arg_2.b.a.x, global3.a.x, true), arg_2.b.a), !arg_2.b.a.x && (arg_2.b.a.x != global3.a.x))), global3.b);
    let var_1 = Struct_3(Struct_1(!(!select(arg_2.b.a, global3.a, vec3<bool>(arg_2.b.a.x, true, arg_2.b.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.x)))), ~vec4<u32>(~global0[_wgslsmith_index_u32(~arg_1.x, 16u)], _wgslsmith_div_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 34624u), ~72524u), ~(~813u), ~global0[_wgslsmith_index_u32(~arg_1.x, 16u)]), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~(~arg_1.x), 16u)], 16u)], _wgslsmith_sub_u32(u_input.a.x, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x << (0u % 32u)), 16u)])));
    var var_2 = _wgslsmith_f_op_f32(abs(-660f));
    return 824f;
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global3 = Struct_1(global3.a, _wgslsmith_f_op_f32(func_4(func_3(1i) << (~select(29075u, 1u, global3.a.x) % 32u), vec2<u32>(4294967295u, arg_0.b.x), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(693f, arg_0.a.b, global3.b), vec3<f32>(-1214f, global3.b, 1050f))), arg_0.a), vec2<i32>(0i, -1i))));
    var var_0 = !global3.a.x;
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-850f)));
    global3 = arg_0.a;
    return arg_0.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.a.x << (global0[_wgslsmith_index_u32(u_input.a.x, 16u)] % 32u)), _wgslsmith_dot_vec2_u32(~arg_0.yx, ~(~arg_0.zw)), _wgslsmith_div_u32(arg_0.x, ~global0[_wgslsmith_index_u32(arg_0.x, 16u)]) ^ ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)])), vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 16u)], func_2(global1[_wgslsmith_index_u32(u_input.a.x, 20u)]).x), max(7016u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 16u)]), arg_0), 24329u, !global3.a.x)), ~firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, 21271u, global0[_wgslsmith_index_u32(57363u, 16u)])))), 20u)];
    var var_1 = u_input.d;
    var_1 = firstLeadingBit(-(abs(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(-18004i, u_input.d.x, u_input.d.x, var_1.x))) << (var_0.b % vec4<u32>(32u))));
    global1 = array<Struct_3, 20>();
    let var_2 = func_2(global1[_wgslsmith_index_u32(1u, 20u)]).wx | vec2<u32>(arg_0.x, 0u);
    return var_0.a;
}

fn func_1() -> Struct_1 {
    global3 = func_5(_wgslsmith_add_vec4_u32(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(70216u, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 4294967295u) | vec3<u32>(1u, 554u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)]), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(0u, 16u)]), u_input.a)), u_input.a.x, global0[_wgslsmith_index_u32(~(~1u), 16u)], global0[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 20u)]).x, 16u)])), any(global3.a) && (!(!global3.a.x) & all(global3.a)));
    global1 = array<Struct_3, 20>();
    let var_0 = Struct_3(func_5(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 29433u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 1u, 1u, 72901u))), func_5(func_2(Struct_3(Struct_1(vec3<bool>(true, false, false), 556f), vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], u_input.a.x), u_input.a.x)), true).a.x), ~(~vec4<u32>(u_input.a.x, 0u, 0u, 1u)), ~select(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40662u, 16u)], 16u)], 16u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21150u, 16u)], 16u)], u_input.a.x), 31549u, global3.a.x));
    let var_1 = 0u;
    var var_2 = Struct_3(Struct_1(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1648f + 195f)))), _wgslsmith_sub_vec4_u32(~(~var_0.b), ~vec4<u32>(4294967295u, 17906u, u_input.a.x, var_1) << (~vec4<u32>(var_0.c, var_0.c, var_1, global0[_wgslsmith_index_u32(var_0.b.x, 16u)]) % vec4<u32>(32u))) << ((var_0.b >> (~var_0.b % vec4<u32>(32u))) % vec4<u32>(32u)), 4294967295u);
    return func_5(vec4<u32>(1u, var_1, ~4294967295u << (var_2.b.x % 32u), u_input.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(1088f, 1563f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), -120f)))), func_1());
    global3 = var_0.b;
    global1 = array<Struct_3, 20>();
    let var_1 = Struct_3(func_5(~(func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 20u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25148u, 16u)], 16u)], 1u, 0u, 13087u) % vec4<u32>(32u))), false), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 64739u, 12675u, u_input.a.x), vec4<u32>(0u, 11069u, 4294967295u, 3131u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], u_input.a.x, u_input.a.x, 21660u)) << (~vec4<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], u_input.a.x) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(~23180u, u_input.a.x), ~(u_input.a.x ^ 17291u), global0[_wgslsmith_index_u32(u_input.a.x, 16u)], ~0u) % vec4<u32>(32u)), min(18659u, reverseBits(u_input.a.x << (~1u % 32u))));
    let var_2 = !(!select(select(global3.a.yy, !var_0.b.a.yz, !vec2<bool>(global3.a.x, false)), !func_1().a.xz, false));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_add_u32(97462u ^ abs(var_1.c), (~global0[_wgslsmith_index_u32(19711u, 16u)] >> (abs(var_1.c) % 32u)) | _wgslsmith_sub_u32(u_input.a.x, u_input.a.x ^ 1u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.x, 2147483647i), vec2<i32>(func_3(u_input.b.x), _wgslsmith_div_i32(u_input.d.x, -2147483647i))) & 13515i, vec3<i32>(u_input.d.x | _wgslsmith_add_i32(10134i, 21924i), _wgslsmith_mod_i32(0i, -1i), reverseBits(-2147483647i) ^ -global2.x) & vec3<i32>(-countOneBits(11282i), global2.x, -59506i));
}

