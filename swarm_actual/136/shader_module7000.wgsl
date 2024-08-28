struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: i32 = 46813i;

var<private> global2: array<u32, 4> = array<u32, 4>(0u, 3190u, 1u, 0u);

var<private> global3: u32 = 19596u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<u32>(global2[_wgslsmith_index_u32(~56141u, 4u)], ~(~(global2[_wgslsmith_index_u32(25202u, 4u)] ^ global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 4u)], 4u)])), ~(~max(global2[_wgslsmith_index_u32(30082u, 4u)], 4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 4u)], 1u, global2[_wgslsmith_index_u32(0u, 4u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 43692u, 0u, 35722u))));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_u32(var_0, vec3<u32>(~_wgslsmith_mod_u32(var_0.x, var_0.x), global2[_wgslsmith_index_u32(7663u, 4u)], 1u)), true, select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true), false));
    var var_2 = Struct_4(vec4<bool>(true, ~(~42445u) >= ~(global2[_wgslsmith_index_u32(21789u, 4u)] & global2[_wgslsmith_index_u32(129248u, 4u)]), !(!select(var_1.c.x, false, true)), false), vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a) > -_wgslsmith_add_i32(u_input.a.x, -33596i), any(select(vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(false, var_1.b), var_1.b)) | true, var_1.c.x, all(vec3<bool>(true, false, true)) != var_1.c.x));
    var_2 = Struct_4(!vec4<bool>(false, u_input.a.x < _wgslsmith_sub_i32(u_input.a.x, 1i), true, var_2.a.x), var_2.a);
    let var_3 = -1i;
    return select(select(select(var_2.b, select(!vec4<bool>(var_2.a.x, true, var_1.c.x, true), !var_2.b, var_1.c.x), select(!var_2.a, select(var_2.a, var_2.a, vec4<bool>(var_1.c.x, false, var_2.a.x, true)), true)), !select(!var_2.b, !vec4<bool>(var_2.a.x, var_2.b.x, var_2.b.x, false), var_2.b), any(select(select(vec2<bool>(var_2.b.x, true), vec2<bool>(false, true), var_1.c.zz), !vec2<bool>(var_2.a.x, var_1.b), !var_2.b.xx))), var_2.b, abs(~var_0.x ^ var_1.a.x) != var_1.a.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = abs(_wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.a.x, u_input.a.x, -50637i, u_input.a.x) << (vec4<u32>(23812u, 1u, 28415u, 1873u) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 124192u, 36924u, 38477u), abs(vec4<u32>(global2[_wgslsmith_index_u32(33549u, 4u)], 30578u, global2[_wgslsmith_index_u32(32133u, 4u)], 1u))) % vec4<u32>(32u)), (-vec4<i32>(u_input.a.x, 27278i, -2147483647i, u_input.a.x) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0i, -9725i, 11458i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) << (~(~vec4<u32>(59236u, 4294967295u, 30324u, global2[_wgslsmith_index_u32(19620u, 4u)])) % vec4<u32>(32u))));
    var var_1 = !select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), func_3(), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), (u_input.a.x >> (4294967295u % 32u)) > -7511i), vec4<bool>(all(vec2<bool>(true, true)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), vec4<bool>(true, true, true, true));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-346f)))))));
    var var_3 = Struct_3(max(-vec2<i32>(firstLeadingBit(1i), var_0.x), var_0.zw), var_0.x, -(~_wgslsmith_add_vec4_i32(~var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.x, 30393i, 26934i), vec4<i32>(0i, 0i, -58783i, u_input.a.x)))));
    global2 = array<u32, 4>();
    return !vec3<bool>(true, true, var_1.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = vec3<i32>(abs(0i), ~arg_2.x, countOneBits(-20085i));
    var var_1 = select(vec3<bool>(any(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), ~2147483647i == (-2384i << (_wgslsmith_div_u32(arg_0.x, arg_0.x) % 32u)), true), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(func_2(), vec3<bool>(true, true, true), true), !func_3().xyx), true);
    global2 = array<u32, 4>();
    var_1 = func_3().xxy;
    var_1 = select(!vec3<bool>(var_1.x, false, var_1.x), func_3().zwy, true);
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_4) -> vec3<u32> {
    global2 = array<u32, 4>();
    var var_0 = (arg_1.xy >> (arg_1.xz % vec2<u32>(32u))) ^ ~vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(arg_1.x, 4u)], arg_0, 4294967295u)), ~vec3<u32>(arg_1.x, 10002u, arg_1.x)), ~56168u);
    var var_1 = max(_wgslsmith_sub_i32(u_input.a.x, i32(-1i) * -12441i) >> (~abs(13876u) % 32u), firstTrailingBit(~33783i));
    global2 = array<u32, 4>();
    var var_2 = Struct_2(Struct_1(arg_1, false, arg_3.a.yzw), _wgslsmith_sub_vec2_u32(arg_1.yz, ~abs(~arg_1.xz)), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, 4294967295u), 4u)], 114659u, var_0.x), arg_3.b.x, vec3<bool>(arg_3.a.x, arg_3.b.x, false)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 4>();
    var var_0 = Struct_1(abs(max(func_4(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 4u)], 7129u), ~vec3<u32>(global2[_wgslsmith_index_u32(1139u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9805u, 4u)], 4u)], 4u)], 4u)]), func_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14597u, 4u)], 4u)], 4u)], 4u)], 4u)], global2[_wgslsmith_index_u32(51786u, 4u)]), Struct_3(u_input.a, u_input.a.x, vec4<i32>(-2147483647i, u_input.a.x, -19122i, u_input.a.x)), vec3<i32>(52847i, u_input.a.x, 419i)), Struct_4(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), vec3<u32>(abs(5823u), 903u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92161u, 4u)], 4u)], 4u)], 4u)]))), select(all(vec2<bool>(true, true)), true, global2[_wgslsmith_index_u32(1u, 4u)] > global2[_wgslsmith_index_u32((4294967295u | global2[_wgslsmith_index_u32(4294967295u, 4u)]) ^ ~0u, 4u)]), func_3().xwz);
    let var_1 = vec2<u32>(~(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x), 1u) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4177u, global2[_wgslsmith_index_u32(0u, 4u)], 3836u, global2[_wgslsmith_index_u32(5604u, 4u)]), vec4<u32>(1u, 1183u, 0u, global2[_wgslsmith_index_u32(0u, 4u)])))), 0u);
    let var_2 = Struct_1(var_0.a, func_2().x, vec3<bool>(var_0.b, var_0.c.x, false));
    var_0 = Struct_1(firstTrailingBit(vec3<u32>(~25131u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(57368u, var_0.a.x)), vec2<u32>(var_2.a.x, 0u)), 4u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.x, 1u), vec3<u32>(1u, var_1.x, 0u)))), var_0.b, vec3<bool>(var_0.b, false == !var_0.c.x, var_2.b));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(374f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(313f)), _wgslsmith_f_op_f32(1447f - -1129f))))))));
    let var_4 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a, _wgslsmith_mod_vec3_u32(~var_0.a, ~vec3<u32>(global2[_wgslsmith_index_u32(11576u, 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4294967295u))), abs(1u), ~min(var_1.x, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)])), true, select(vec3<bool>(true, any(vec4<bool>(true, true, var_0.b, var_2.c.x)) | func_3().x, false), select(vec3<bool>(var_2.c.x, any(vec3<bool>(false, false, var_0.c.x)), true), !var_2.c, func_3().xyw), !vec3<bool>(var_2.c.x, any(var_2.c.yx), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, -1651f, var_3), vec3<f32>(-806f, var_3, -315f)) + _wgslsmith_div_vec3_f32(vec3<f32>(480f, 897f, var_3), vec3<f32>(1092f, var_3, var_3)))))), select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -7262i) ^ (vec2<i32>(u_input.a.x, -7425i) | vec2<i32>(1i, u_input.a.x)), ~_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))), vec2<i32>(max(24451i, 1i), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 4u)], 3u)], vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))) >> (firstLeadingBit(vec2<u32>(1u, 12422u)) % vec2<u32>(32u)), true), _wgslsmith_add_vec3_u32(~((vec3<u32>(40980u, var_0.a.x, 0u) ^ var_0.a) | select(var_4.a, vec3<u32>(21491u, 44286u, var_4.a.x), var_0.c.x)), ~((var_2.a | var_2.a) << (min(vec3<u32>(global2[_wgslsmith_index_u32(6900u, 4u)], var_2.a.x, 4294967295u), vec3<u32>(34155u, var_0.a.x, 1u)) % vec3<u32>(32u)))));
}

